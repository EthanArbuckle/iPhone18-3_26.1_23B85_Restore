@interface TIWordSearch50onKana
- (id)uncachedCandidatesForOperation:(id)a3;
@end

@implementation TIWordSearch50onKana

- (id)uncachedCandidatesForOperation:(id)a3
{
  v4 = a3;
  v5 = [v4 inputString];
  v6 = [v4 keyboardInput];
  v7 = [v4 segmentBreakIndex];
  v8 = [v4 predictionEnabled];
  v9 = [v4 reanalysisMode];
  v10 = objc_alloc_init(MEMORY[0x29EDC7278]);
  if ([(TIWordSearch *)self addFacemarkCandidatesToResultSet:v10 forInput:v5])
  {
    [(TIWordSearchKana *)self setCandidateResultSet:v10];
    goto LABEL_20;
  }

  v43 = v6;
  v41 = v10;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = 0;
  }

  else
  {
    v44 = [v5 substringFromIndex:v7];
    v11 = [v5 substringToIndex:v7];

    v8 = 0;
    v9 = 1;
    v5 = v11;
  }

  v12 = [v4 contextString];
  v13 = [v4 flickUsed];
  v14 = [v4 geometryModelData];
  v15 = [v4 hardwareKeyboardMode];
  v16 = [v4 referenceMode];
  BYTE3(v39) = [v4 singlePhrase];
  BYTE2(v39) = v16;
  BYTE1(v39) = v15;
  LOBYTE(v39) = v13;
  v6 = v43;
  v42 = v12;
  v17 = [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:v5 contextString:v43 predictionEnabled:v12 reanalysisMode:v8 withInputManager:v9 geometryModelData:0 flickUsed:v14 hardwareKeyboardMode:v39 referenceMode:? singlePhrase:?];
  [(TIWordSearchKana *)self setCandidateResultSet:v17];

  v18 = [(TIWordSearchKana *)self candidateResultSet];
  v19 = [v18 candidates];
  if ([v19 count])
  {

LABEL_10:
    goto LABEL_11;
  }

  v20 = [v5 length];

  if (v20)
  {
    v18 = [(TIWordSearchKana *)self candidateResultSet];
    [v18 addSyntheticMecabraCandidateWithSurface:v5 input:v5];
    goto LABEL_10;
  }

LABEL_11:
  if ([v44 length])
  {
    if ([v4 hardwareKeyboardMode])
    {
      v21 = [(TIWordSearchKana *)self candidateResultSet];
      v22 = [v21 candidates];
      v23 = [v22 objectAtIndexedSubscript:0];

      v24 = [v23 candidate];
      LOBYTE(v21) = [v4 referenceMode];
      BYTE3(v40) = [v4 singlePhrase];
      BYTE2(v40) = v21;
      LOWORD(v40) = 256;
      [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:v44 contextString:v43 predictionEnabled:v24 reanalysisMode:v8 withInputManager:v9 geometryModelData:0 flickUsed:0 hardwareKeyboardMode:v40 referenceMode:? singlePhrase:?];
    }

    else
    {
      v23 = [v4 target];
      v24 = [v4 geometryModelData];
      v25 = [v4 referenceMode];
      BYTE3(v40) = [v4 singlePhrase];
      BYTE2(v40) = v25;
      LOWORD(v40) = 0;
      [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:v44 contextString:v43 predictionEnabled:v5 reanalysisMode:v8 withInputManager:v9 geometryModelData:v23 flickUsed:v24 hardwareKeyboardMode:v40 referenceMode:? singlePhrase:?];
    }
    v26 = ;

    v27 = [v26 candidates];
    v28 = [v27 count];

    if (v28)
    {
      v29 = [v26 candidates];
      v30 = [v29 objectAtIndexedSubscript:0];
      [v4 setCandidateAfterSegmentBreak:v30];

      v31 = [v26 candidates];
      v32 = [v31 objectAtIndexedSubscript:0];
      v33 = [(TIWordSearchKana *)self candidateResultSet];
      [v33 setCandidateAfterSegmentBreak:v32];

      v34 = [(TIWordSearchKana *)self candidateResultSet];
      v35 = [v34 candidateRefsDictionary];
      v36 = [v26 candidateRefsDictionary];
      [v35 addEntriesFromDictionary:v36];
    }

    else
    {
      [v4 setCandidateAfterSegmentBreak:0];
      v34 = [(TIWordSearchKana *)self candidateResultSet];
      [v34 setCandidateAfterSegmentBreak:0];
    }

    v6 = v43;
  }

  v10 = v41;
LABEL_20:
  v37 = [(TIWordSearchKana *)self candidateResultSet];

  return v37;
}

@end