@interface TIWordSearchRomajiKana
- (id)uncachedCandidatesForOperation:(id)operation;
@end

@implementation TIWordSearchRomajiKana

- (id)uncachedCandidatesForOperation:(id)operation
{
  operationCopy = operation;
  inputString = [operationCopy inputString];
  keyboardInput = [operationCopy keyboardInput];
  contextString = [operationCopy contextString];
  segmentBreakIndex = [operationCopy segmentBreakIndex];
  hardwareKeyboardMode = [operationCopy hardwareKeyboardMode];
  predictionEnabled = [operationCopy predictionEnabled];
  reanalysisMode = [operationCopy reanalysisMode];
  [(TIWordSearchKana *)self setCandidateResultSet:0];
  [operationCopy setCandidateAfterSegmentBreak:0];
  if (![inputString length])
  {
    inputs = [keyboardInput inputs];
    v11 = [inputs count];

    if (!v11)
    {
      predictionEnabled2 = [operationCopy predictionEnabled];
      reanalysisMode2 = [operationCopy reanalysisMode];
      referenceMode = [operationCopy referenceMode];
      BYTE3(v53) = [operationCopy singlePhrase];
      BYTE2(v53) = referenceMode;
      BYTE1(v53) = hardwareKeyboardMode;
      LOBYTE(v53) = 0;
      v17 = [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:&stru_2A2525CC0 contextString:keyboardInput predictionEnabled:contextString reanalysisMode:predictionEnabled2 withInputManager:reanalysisMode2 geometryModelData:0 flickUsed:0 hardwareKeyboardMode:v53 referenceMode:? singlePhrase:?];
      [(TIWordSearchKana *)self setCandidateResultSet:v17];
      goto LABEL_33;
    }
  }

  inputs2 = [keyboardInput inputs];
  v13 = [inputs2 count];

  if (v13)
  {
    asSearchString = [keyboardInput asSearchString];

    inputString = asSearchString;
  }

  if (!self->_romakana)
  {
    v15 = objc_alloc_init(Romakana);
    romakana = self->_romakana;
    self->_romakana = v15;
  }

  if (segmentBreakIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = [inputString substringFromIndex:segmentBreakIndex];
    v18 = [inputString substringToIndex:segmentBreakIndex];

    predictionEnabled = 0;
    reanalysisMode = 1;
    inputString = v18;
  }

  inputString = inputString;
  v19 = inputString;
  if (([operationCopy allowIncompleteRomaji] & 1) == 0)
  {
    v19 = inputString;
    if (([operationCopy predictionEnabled] & 1) == 0)
    {
      v19 = inputString;
      if (!v17)
      {
        v19 = [(Romakana *)self->_romakana adjustIncompleteRomaji:inputString];
      }
    }
  }

  v20 = objc_alloc_init(MEMORY[0x29EDC7278]);
  v58 = keyboardInput;
  v55 = predictionEnabled;
  v56 = v20;
  if ([(TIWordSearch *)self addFacemarkCandidatesToResultSet:v20 forInput:inputString])
  {
    [(TIWordSearchKana *)self setCandidateResultSet:v20];
  }

  else
  {
    if (hardwareKeyboardMode)
    {
      referenceMode2 = [operationCopy referenceMode];
      BYTE3(v53) = [operationCopy singlePhrase];
      BYTE2(v53) = referenceMode2;
      LOWORD(v53) = 256;
      target = [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:v19 contextString:keyboardInput predictionEnabled:contextString reanalysisMode:predictionEnabled withInputManager:reanalysisMode geometryModelData:0 flickUsed:0 hardwareKeyboardMode:v53 referenceMode:? singlePhrase:?];
      [(TIWordSearchKana *)self setCandidateResultSet:target];
    }

    else
    {
      target = [operationCopy target];
      [operationCopy geometryModelData];
      v54 = v17;
      v24 = v23 = reanalysisMode;
      referenceMode3 = [operationCopy referenceMode];
      BYTE3(v53) = [operationCopy singlePhrase];
      BYTE2(v53) = referenceMode3;
      LOWORD(v53) = 0;
      v26 = [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:v19 contextString:v58 predictionEnabled:contextString reanalysisMode:predictionEnabled withInputManager:v23 geometryModelData:target flickUsed:v24 hardwareKeyboardMode:v53 referenceMode:? singlePhrase:?];
      [(TIWordSearchKana *)self setCandidateResultSet:v26];

      reanalysisMode = v23;
      v17 = v54;
    }
  }

  candidateResultSet = [(TIWordSearchKana *)self candidateResultSet];
  candidates = [candidateResultSet candidates];
  if ([candidates count])
  {

LABEL_24:
    goto LABEL_25;
  }

  v29 = [v19 length];

  if (v29)
  {
    candidateResultSet = [(TIWordSearchKana *)self candidateResultSet];
    [candidateResultSet addSyntheticMecabraCandidateWithSurface:v19 input:v19];
    goto LABEL_24;
  }

LABEL_25:
  if ([v17 length])
  {
    v30 = [(Romakana *)self->_romakana adjustIncompleteRomaji:v17];
    if (hardwareKeyboardMode)
    {
      candidateResultSet2 = [(TIWordSearchKana *)self candidateResultSet];
      candidates2 = [candidateResultSet2 candidates];
      target2 = [candidates2 objectAtIndexedSubscript:0];

      candidate = [target2 candidate];
      LOBYTE(candidates2) = [operationCopy referenceMode];
      BYTE3(v53) = [operationCopy singlePhrase];
      BYTE2(v53) = candidates2;
      LOWORD(v53) = 256;
      [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:v30 contextString:v58 predictionEnabled:candidate reanalysisMode:v55 withInputManager:reanalysisMode geometryModelData:0 flickUsed:0 hardwareKeyboardMode:v53 referenceMode:? singlePhrase:?];
    }

    else
    {
      target2 = [operationCopy target];
      candidate = [operationCopy geometryModelData];
      referenceMode4 = [operationCopy referenceMode];
      BYTE3(v53) = [operationCopy singlePhrase];
      BYTE2(v53) = referenceMode4;
      LOWORD(v53) = 0;
      [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:v30 contextString:v58 predictionEnabled:inputString reanalysisMode:v55 withInputManager:reanalysisMode geometryModelData:target2 flickUsed:candidate hardwareKeyboardMode:v53 referenceMode:? singlePhrase:?];
    }
    v36 = ;

    candidates3 = [v36 candidates];
    v38 = [candidates3 count];

    if (v38)
    {
      candidates4 = [v36 candidates];
      v40 = [candidates4 objectAtIndexedSubscript:0];
      [operationCopy setCandidateAfterSegmentBreak:v40];

      candidates5 = [v36 candidates];
      v42 = [candidates5 objectAtIndexedSubscript:0];
      [(TIWordSearchKana *)self candidateResultSet];
      v44 = v43 = v30;
      [v44 setCandidateAfterSegmentBreak:v42];

      candidateResultSet3 = [(TIWordSearchKana *)self candidateResultSet];
      candidateRefsDictionary = [candidateResultSet3 candidateRefsDictionary];
      candidateRefsDictionary2 = [v36 candidateRefsDictionary];
      [candidateRefsDictionary addEntriesFromDictionary:candidateRefsDictionary2];

      v30 = v43;
    }
  }

  keyboardInput = v58;
LABEL_33:

  candidateResultSet4 = [(TIWordSearchKana *)self candidateResultSet];

  return candidateResultSet4;
}

@end