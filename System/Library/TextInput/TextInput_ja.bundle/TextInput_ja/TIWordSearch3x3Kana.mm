@interface TIWordSearch3x3Kana
- (id)uncachedCandidatesForOperation:(id)operation;
@end

@implementation TIWordSearch3x3Kana

- (id)uncachedCandidatesForOperation:(id)operation
{
  operationCopy = operation;
  inputString = [operationCopy inputString];
  keyboardInput = [operationCopy keyboardInput];
  v7 = operationCopy;
  v8 = objc_alloc_init(MEMORY[0x29EDC7278]);
  if ([(TIWordSearch *)self addFacemarkCandidatesToResultSet:v8 forInput:inputString])
  {
    [(TIWordSearchKana *)self setCandidateResultSet:v8];
    goto LABEL_23;
  }

  v32 = v8;
  contextString = [v7 contextString];
  flickUsed = [v7 flickUsed];
  v33 = inputString;
  v9 = inputString;
  if (!getNumericStringForTapsOnNumberPlane(NSString *)::symbolToNumberDictionary)
  {
    keyCallBacks = *byte_2A2525930;
    getNumericStringForTapsOnNumberPlane(NSString *)::symbolToNumberDictionary = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], &getNumericStringForTapsOnNumberPlane(NSString *)::keys, getNumericStringForTapsOnNumberPlane(NSString *)::values, 29, &keyCallBacks, MEMORY[0x29EDB9020]);
  }

  v10 = [MEMORY[0x29EDBA050] stringWithCapacity:10];
  v11 = [v9 length];
  if (v11)
  {
    v12 = v11;
    for (i = 0; i != v12; ++i)
    {
      v14 = [v9 characterAtIndex:i];
      LOWORD(keyCallBacks.version) = v14;
      v15 = CFDictionaryGetValue(getNumericStringForTapsOnNumberPlane(NSString *)::symbolToNumberDictionary, v14);
      if (v15)
      {
        [v10 appendString:v15];
      }

      else
      {
        v16 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&keyCallBacks length:1];
        [v10 appendString:v16];
      }
    }
  }

  if ([v10 isEqualToString:v9])
  {
    v29 = 0;
  }

  else
  {
    v29 = v10;
  }

  predictionEnabled = [v7 predictionEnabled];
  reanalysisMode = [v7 reanalysisMode];
  geometryModelData = [v7 geometryModelData];
  hardwareKeyboardMode = [v7 hardwareKeyboardMode];
  referenceMode = [v7 referenceMode];
  BYTE3(v28) = [v7 singlePhrase];
  BYTE2(v28) = referenceMode;
  BYTE1(v28) = hardwareKeyboardMode;
  LOBYTE(v28) = flickUsed;
  v22 = [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:v9 contextString:keyboardInput predictionEnabled:contextString reanalysisMode:predictionEnabled withInputManager:reanalysisMode geometryModelData:0 flickUsed:geometryModelData hardwareKeyboardMode:v28 referenceMode:? singlePhrase:?];
  [(TIWordSearchKana *)self setCandidateResultSet:v22];

  if (v29 && !(([v9 length] != 1) | flickUsed & 1))
  {
    [(TIWordSearchKana *)self _insertString:v29 input:v9 at:2 force:1];
  }

  candidateResultSet = [(TIWordSearchKana *)self candidateResultSet];
  candidates = [candidateResultSet candidates];
  inputString = v33;
  if ([candidates count])
  {

LABEL_21:
    goto LABEL_22;
  }

  v25 = [v9 length];

  if (v25)
  {
    candidateResultSet = [(TIWordSearchKana *)self candidateResultSet];
    [candidateResultSet addSyntheticMecabraCandidateWithSurface:v9 input:v9];
    goto LABEL_21;
  }

LABEL_22:

  v8 = v32;
LABEL_23:
  candidateResultSet2 = [(TIWordSearchKana *)self candidateResultSet];

  return candidateResultSet2;
}

@end