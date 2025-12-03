@interface TIWordSearch50onKana
- (id)uncachedCandidatesForOperation:(id)operation;
@end

@implementation TIWordSearch50onKana

- (id)uncachedCandidatesForOperation:(id)operation
{
  operationCopy = operation;
  inputString = [operationCopy inputString];
  keyboardInput = [operationCopy keyboardInput];
  segmentBreakIndex = [operationCopy segmentBreakIndex];
  predictionEnabled = [operationCopy predictionEnabled];
  reanalysisMode = [operationCopy reanalysisMode];
  v10 = objc_alloc_init(MEMORY[0x29EDC7278]);
  if ([(TIWordSearch *)self addFacemarkCandidatesToResultSet:v10 forInput:inputString])
  {
    [(TIWordSearchKana *)self setCandidateResultSet:v10];
    goto LABEL_20;
  }

  v43 = keyboardInput;
  v41 = v10;
  if (segmentBreakIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = 0;
  }

  else
  {
    v44 = [inputString substringFromIndex:segmentBreakIndex];
    v11 = [inputString substringToIndex:segmentBreakIndex];

    predictionEnabled = 0;
    reanalysisMode = 1;
    inputString = v11;
  }

  contextString = [operationCopy contextString];
  flickUsed = [operationCopy flickUsed];
  geometryModelData = [operationCopy geometryModelData];
  hardwareKeyboardMode = [operationCopy hardwareKeyboardMode];
  referenceMode = [operationCopy referenceMode];
  BYTE3(v39) = [operationCopy singlePhrase];
  BYTE2(v39) = referenceMode;
  BYTE1(v39) = hardwareKeyboardMode;
  LOBYTE(v39) = flickUsed;
  keyboardInput = v43;
  v42 = contextString;
  v17 = [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:inputString contextString:v43 predictionEnabled:contextString reanalysisMode:predictionEnabled withInputManager:reanalysisMode geometryModelData:0 flickUsed:geometryModelData hardwareKeyboardMode:v39 referenceMode:? singlePhrase:?];
  [(TIWordSearchKana *)self setCandidateResultSet:v17];

  candidateResultSet = [(TIWordSearchKana *)self candidateResultSet];
  candidates = [candidateResultSet candidates];
  if ([candidates count])
  {

LABEL_10:
    goto LABEL_11;
  }

  v20 = [inputString length];

  if (v20)
  {
    candidateResultSet = [(TIWordSearchKana *)self candidateResultSet];
    [candidateResultSet addSyntheticMecabraCandidateWithSurface:inputString input:inputString];
    goto LABEL_10;
  }

LABEL_11:
  if ([v44 length])
  {
    if ([operationCopy hardwareKeyboardMode])
    {
      candidateResultSet2 = [(TIWordSearchKana *)self candidateResultSet];
      candidates2 = [candidateResultSet2 candidates];
      target = [candidates2 objectAtIndexedSubscript:0];

      candidate = [target candidate];
      LOBYTE(candidateResultSet2) = [operationCopy referenceMode];
      BYTE3(v40) = [operationCopy singlePhrase];
      BYTE2(v40) = candidateResultSet2;
      LOWORD(v40) = 256;
      [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:v44 contextString:v43 predictionEnabled:candidate reanalysisMode:predictionEnabled withInputManager:reanalysisMode geometryModelData:0 flickUsed:0 hardwareKeyboardMode:v40 referenceMode:? singlePhrase:?];
    }

    else
    {
      target = [operationCopy target];
      candidate = [operationCopy geometryModelData];
      referenceMode2 = [operationCopy referenceMode];
      BYTE3(v40) = [operationCopy singlePhrase];
      BYTE2(v40) = referenceMode2;
      LOWORD(v40) = 0;
      [TIWordSearchKana makeCandidates:"makeCandidates:input:contextString:predictionEnabled:reanalysisMode:withInputManager:geometryModelData:flickUsed:hardwareKeyboardMode:referenceMode:singlePhrase:" input:v44 contextString:v43 predictionEnabled:inputString reanalysisMode:predictionEnabled withInputManager:reanalysisMode geometryModelData:target flickUsed:candidate hardwareKeyboardMode:v40 referenceMode:? singlePhrase:?];
    }
    v26 = ;

    candidates3 = [v26 candidates];
    v28 = [candidates3 count];

    if (v28)
    {
      candidates4 = [v26 candidates];
      v30 = [candidates4 objectAtIndexedSubscript:0];
      [operationCopy setCandidateAfterSegmentBreak:v30];

      candidates5 = [v26 candidates];
      v32 = [candidates5 objectAtIndexedSubscript:0];
      candidateResultSet3 = [(TIWordSearchKana *)self candidateResultSet];
      [candidateResultSet3 setCandidateAfterSegmentBreak:v32];

      candidateResultSet4 = [(TIWordSearchKana *)self candidateResultSet];
      candidateRefsDictionary = [candidateResultSet4 candidateRefsDictionary];
      candidateRefsDictionary2 = [v26 candidateRefsDictionary];
      [candidateRefsDictionary addEntriesFromDictionary:candidateRefsDictionary2];
    }

    else
    {
      [operationCopy setCandidateAfterSegmentBreak:0];
      candidateResultSet4 = [(TIWordSearchKana *)self candidateResultSet];
      [candidateResultSet4 setCandidateAfterSegmentBreak:0];
    }

    keyboardInput = v43;
  }

  v10 = v41;
LABEL_20:
  candidateResultSet5 = [(TIWordSearchKana *)self candidateResultSet];

  return candidateResultSet5;
}

@end