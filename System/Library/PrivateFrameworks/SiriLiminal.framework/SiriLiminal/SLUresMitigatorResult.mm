@interface SLUresMitigatorResult
- (SLUresMitigatorResult)initWithScore:(float)score decision:(BOOL)decision decisionLevel:(double)level detailedResults:(id)results extractedFeats:(id)feats;
@end

@implementation SLUresMitigatorResult

- (SLUresMitigatorResult)initWithScore:(float)score decision:(BOOL)decision decisionLevel:(double)level detailedResults:(id)results extractedFeats:(id)feats
{
  resultsCopy = results;
  featsCopy = feats;
  v24.receiver = self;
  v24.super_class = SLUresMitigatorResult;
  v15 = [(SLUresMitigatorResult *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_score = score;
    v15->_didMitigate = decision;
    objc_storeStrong(&v15->_detailedResult, results);
    v16->_decisionLevel = level;
    objc_storeStrong(&v16->_extractedFeats, feats);
    v17 = [resultsCopy objectForKeyedSubscript:@"assetVersion"];
    assetVersion = v16->_assetVersion;
    v16->_assetVersion = v17;

    v19 = [resultsCopy objectForKeyedSubscript:@"threshold"];
    [v19 floatValue];
    v16->_threshold = v20;

    v21 = [resultsCopy objectForKeyedSubscript:@"speakerIDthreshold"];
    [v21 floatValue];
    v16->_speakerIDThreshold = v22;
  }

  return v16;
}

@end