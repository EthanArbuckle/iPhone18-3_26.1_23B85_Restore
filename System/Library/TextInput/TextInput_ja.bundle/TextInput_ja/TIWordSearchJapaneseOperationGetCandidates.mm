@interface TIWordSearchJapaneseOperationGetCandidates
- (TIWordSearchJapaneseOperationGetCandidates)initWithWordSearch:(id)search inputString:(id)string keyboardInput:(id)input contextString:(id)contextString segmentBreakIndex:(unint64_t)index predictionEnabled:(BOOL)enabled reanalysisMode:(BOOL)mode autocapitalizationType:(unint64_t)self0 target:(id)self1 action:(SEL)self2 geometryModelData:(id)self3 flickUsed:(BOOL)self4 phraseBoundarySet:(BOOL)self5 hardwareKeyboardMode:(BOOL)self6 logger:(id)self7;
- (id)results;
- (void)checkForCachedResultsIfNeeded;
@end

@implementation TIWordSearchJapaneseOperationGetCandidates

- (TIWordSearchJapaneseOperationGetCandidates)initWithWordSearch:(id)search inputString:(id)string keyboardInput:(id)input contextString:(id)contextString segmentBreakIndex:(unint64_t)index predictionEnabled:(BOOL)enabled reanalysisMode:(BOOL)mode autocapitalizationType:(unint64_t)self0 target:(id)self1 action:(SEL)self2 geometryModelData:(id)self3 flickUsed:(BOOL)self4 phraseBoundarySet:(BOOL)self5 hardwareKeyboardMode:(BOOL)self6 logger:(id)self7
{
  enabledCopy = enabled;
  contextStringCopy = contextString;
  v29.receiver = self;
  v29.super_class = TIWordSearchJapaneseOperationGetCandidates;
  v23 = [(TIWordSearchOperationGetCandidates *)&v29 initWithWordSearch:search inputString:string keyboardInput:input segmentBreakIndex:index predictionEnabled:enabledCopy reanalysisMode:mode autocapitalizationType:0 target:target action:action geometryModelData:data hardwareKeyboardMode:keyboardMode logger:logger];
  if (v23)
  {
    v24 = [contextStringCopy copy];
    contextString = v23->_contextString;
    v23->_contextString = v24;

    v23->_flickUsed = used;
    v23->_phraseBoundarySet = set;
  }

  return v23;
}

- (id)results
{
  [(TIWordSearchJapaneseOperationGetCandidates *)self checkForCachedResultsIfNeeded];
  v5.receiver = self;
  v5.super_class = TIWordSearchJapaneseOperationGetCandidates;
  results = [(TIWordSearchOperationGetCandidates *)&v5 results];

  return results;
}

- (void)checkForCachedResultsIfNeeded
{
  wordSearch = [(TIWordSearchOperationGetCandidates *)self wordSearch];
  v8 = [wordSearch candidatesCacheKeyForOperation:self];

  previousCacheKey = [(TIWordSearchJapaneseOperationGetCandidates *)self previousCacheKey];
  if (!previousCacheKey || (v5 = previousCacheKey, -[TIWordSearchJapaneseOperationGetCandidates previousCacheKey](self, "previousCacheKey"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v8 isEqualToString:v6], v6, v5, (v7 & 1) == 0))
  {
    [(TIWordSearchOperationGetCandidates *)self checkForCachedResults];
    [(TIWordSearchJapaneseOperationGetCandidates *)self setPreviousCacheKey:v8];
  }
}

@end