@interface TIWordSearchChinesePhoneticOperationGetCandidates
- (TIWordSearchChinesePhoneticOperationGetCandidates)initWithWordSearch:(id)search inputString:(id)string keyboardInput:(id)input segmentBreakIndex:(unint64_t)index disambiguationCandidates:(id)candidates unambiguousSyllableCount:(unint64_t)count selectedDisambiguationCandidateIndex:(unint64_t)candidateIndex regenerateDisambiguationCandidates:(BOOL)self0 predictionEnabled:(BOOL)self1 reanalysisMode:(BOOL)self2 target:(id)self3 action:(SEL)self4 geometryModelData:(id)self5 hardwareKeyboardMode:(BOOL)self6 logger:(id)self7;
@end

@implementation TIWordSearchChinesePhoneticOperationGetCandidates

- (TIWordSearchChinesePhoneticOperationGetCandidates)initWithWordSearch:(id)search inputString:(id)string keyboardInput:(id)input segmentBreakIndex:(unint64_t)index disambiguationCandidates:(id)candidates unambiguousSyllableCount:(unint64_t)count selectedDisambiguationCandidateIndex:(unint64_t)candidateIndex regenerateDisambiguationCandidates:(BOOL)self0 predictionEnabled:(BOOL)self1 reanalysisMode:(BOOL)self2 target:(id)self3 action:(SEL)self4 geometryModelData:(id)self5 hardwareKeyboardMode:(BOOL)self6 logger:(id)self7
{
  candidatesCopy = candidates;
  v29.receiver = self;
  v29.super_class = TIWordSearchChinesePhoneticOperationGetCandidates;
  v22 = [(TIWordSearchOperationGetCandidates *)&v29 initWithWordSearch:search inputString:string keyboardInput:input segmentBreakIndex:index predictionEnabled:enabled reanalysisMode:mode autocapitalizationType:0 target:target action:action geometryModelData:data hardwareKeyboardMode:keyboardMode logger:logger];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_disambiguationCandidates, candidates);
    v23->_unambiguousSyllableCount = count;
    v23->_selectedDisambiguationCandidateIndex = candidateIndex;
    v23->_regenerateDisambiguationCandidates = disambiguationCandidates;
    [(TIWordSearchOperationGetCandidates *)v23 checkForCachedResults];
  }

  return v23;
}

@end