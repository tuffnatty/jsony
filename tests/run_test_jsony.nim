# Rebuild with: nim c -d:release

import json
import os

let fn = os.paramStr(1)

try:
  discard fn.readFile().parseJson()
  quit(2)
except:
  quit(1)
