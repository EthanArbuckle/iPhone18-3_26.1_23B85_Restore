@interface VTSinglePhraseResult
- (VTSinglePhraseResult)initWithPhId:(unint64_t)id keywordDetectorDecision:(unint64_t)decision combinedScore:(float)score ndapiScore:(float)ndapiScore ndapiResult:(id)result recognizerScore:(float)recognizerScore isSecondChance:(BOOL)chance isSecondChanceCandidate:(BOOL)self0 isRunningQuasar:(BOOL)self1;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VTSinglePhraseResult

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VTSinglePhraseResult alloc];
  phId = self->_phId;
  decision = self->_decision;
  combinedScore = self->_combinedScore;
  ndapiScore = self->_ndapiScore;
  v9 = [(VTKeywordAnalyzerNDAPIResult *)self->_ndapiResult copy];
  *&v10 = self->_recognizerScore;
  *&v11 = combinedScore;
  *&v12 = ndapiScore;
  v13 = [(VTSinglePhraseResult *)v4 initWithPhId:phId keywordDetectorDecision:decision combinedScore:v9 ndapiScore:self->_isSecondChance ndapiResult:self->_isSecondChanceCandidate recognizerScore:self->_isRunningQuasar isSecondChance:v11 isSecondChanceCandidate:v12 isRunningQuasar:v10];

  return v13;
}

- (VTSinglePhraseResult)initWithPhId:(unint64_t)id keywordDetectorDecision:(unint64_t)decision combinedScore:(float)score ndapiScore:(float)ndapiScore ndapiResult:(id)result recognizerScore:(float)recognizerScore isSecondChance:(BOOL)chance isSecondChanceCandidate:(BOOL)self0 isRunningQuasar:(BOOL)self1
{
  resultCopy = result;
  v25.receiver = self;
  v25.super_class = VTSinglePhraseResult;
  v22 = [(VTSinglePhraseResult *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_phId = id;
    v22->_decision = decision;
    v22->_combinedScore = score;
    v22->_ndapiScore = ndapiScore;
    objc_storeStrong(&v22->_ndapiResult, result);
    v23->_recognizerScore = recognizerScore;
    v23->_isSecondChance = chance;
    v23->_isSecondChanceCandidate = candidate;
    v23->_isRunningQuasar = quasar;
  }

  return v23;
}

@end