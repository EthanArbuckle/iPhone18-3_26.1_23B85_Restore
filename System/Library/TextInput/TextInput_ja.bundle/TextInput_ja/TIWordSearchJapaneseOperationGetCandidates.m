@interface TIWordSearchJapaneseOperationGetCandidates
- (TIWordSearchJapaneseOperationGetCandidates)initWithWordSearch:(id)a3 inputString:(id)a4 keyboardInput:(id)a5 contextString:(id)a6 segmentBreakIndex:(unint64_t)a7 predictionEnabled:(BOOL)a8 reanalysisMode:(BOOL)a9 autocapitalizationType:(unint64_t)a10 target:(id)a11 action:(SEL)a12 geometryModelData:(id)a13 flickUsed:(BOOL)a14 phraseBoundarySet:(BOOL)a15 hardwareKeyboardMode:(BOOL)a16 logger:(id)a17;
- (id)results;
- (void)checkForCachedResultsIfNeeded;
@end

@implementation TIWordSearchJapaneseOperationGetCandidates

- (TIWordSearchJapaneseOperationGetCandidates)initWithWordSearch:(id)a3 inputString:(id)a4 keyboardInput:(id)a5 contextString:(id)a6 segmentBreakIndex:(unint64_t)a7 predictionEnabled:(BOOL)a8 reanalysisMode:(BOOL)a9 autocapitalizationType:(unint64_t)a10 target:(id)a11 action:(SEL)a12 geometryModelData:(id)a13 flickUsed:(BOOL)a14 phraseBoundarySet:(BOOL)a15 hardwareKeyboardMode:(BOOL)a16 logger:(id)a17
{
  v28 = a8;
  v22 = a6;
  v29.receiver = self;
  v29.super_class = TIWordSearchJapaneseOperationGetCandidates;
  v23 = [(TIWordSearchOperationGetCandidates *)&v29 initWithWordSearch:a3 inputString:a4 keyboardInput:a5 segmentBreakIndex:a7 predictionEnabled:v28 reanalysisMode:a9 autocapitalizationType:0 target:a11 action:a12 geometryModelData:a13 hardwareKeyboardMode:a16 logger:a17];
  if (v23)
  {
    v24 = [v22 copy];
    contextString = v23->_contextString;
    v23->_contextString = v24;

    v23->_flickUsed = a14;
    v23->_phraseBoundarySet = a15;
  }

  return v23;
}

- (id)results
{
  [(TIWordSearchJapaneseOperationGetCandidates *)self checkForCachedResultsIfNeeded];
  v5.receiver = self;
  v5.super_class = TIWordSearchJapaneseOperationGetCandidates;
  v3 = [(TIWordSearchOperationGetCandidates *)&v5 results];

  return v3;
}

- (void)checkForCachedResultsIfNeeded
{
  v3 = [(TIWordSearchOperationGetCandidates *)self wordSearch];
  v8 = [v3 candidatesCacheKeyForOperation:self];

  v4 = [(TIWordSearchJapaneseOperationGetCandidates *)self previousCacheKey];
  if (!v4 || (v5 = v4, -[TIWordSearchJapaneseOperationGetCandidates previousCacheKey](self, "previousCacheKey"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v8 isEqualToString:v6], v6, v5, (v7 & 1) == 0))
  {
    [(TIWordSearchOperationGetCandidates *)self checkForCachedResults];
    [(TIWordSearchJapaneseOperationGetCandidates *)self setPreviousCacheKey:v8];
  }
}

@end