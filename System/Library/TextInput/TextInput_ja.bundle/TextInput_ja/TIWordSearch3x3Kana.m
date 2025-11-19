@interface TIWordSearch3x3Kana
- (id)uncachedCandidatesForOperation:(id)a3;
@end

@implementation TIWordSearch3x3Kana

- (id)uncachedCandidatesForOperation:(id)a3
{
  v4 = a3;
  v5 = [v4 inputString];
  v6 = [v4 keyboardInput];
  v7 = v4;
  v8 = objc_alloc_init(MEMORY[0x29EDC7278]);
  if ([(TIWordSearch *)self addFacemarkCandidatesToResultSet:v8 forInput:v5])
  {
    [(TIWordSearchKana *)self setCandidateResultSet:v8];
    goto LABEL_23;
  }

  v32 = v8;
  v31 = [v7 contextString];
  v30 = [v7 flickUsed];
  v33 = v5;
  v9 = v5;
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

  v17 = [v7 predictionEnabled];
  v18 = [v7 reanalysisMode];
  v19 = [v7 geometryModelData];
  v20 = [v7 hardwareKeyboardMode];
  v21 = [v7 referenceMode];
  BYTE3(v28) = [v7 singlePhrase];
  BYTE2(v28) = v21;
  BYTE1(v28) = v20;
  LOBYTE(v28) = v30;
  v22 = [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:v9 contextString:v6 predictionEnabled:v31 reanalysisMode:v17 withInputManager:v18 geometryModelData:0 flickUsed:v19 hardwareKeyboardMode:v28 referenceMode:? singlePhrase:?];
  [(TIWordSearchKana *)self setCandidateResultSet:v22];

  if (v29 && !(([v9 length] != 1) | v30 & 1))
  {
    [(TIWordSearchKana *)self _insertString:v29 input:v9 at:2 force:1];
  }

  v23 = [(TIWordSearchKana *)self candidateResultSet];
  v24 = [v23 candidates];
  v5 = v33;
  if ([v24 count])
  {

LABEL_21:
    goto LABEL_22;
  }

  v25 = [v9 length];

  if (v25)
  {
    v23 = [(TIWordSearchKana *)self candidateResultSet];
    [v23 addSyntheticMecabraCandidateWithSurface:v9 input:v9];
    goto LABEL_21;
  }

LABEL_22:

  v8 = v32;
LABEL_23:
  v26 = [(TIWordSearchKana *)self candidateResultSet];

  return v26;
}

@end