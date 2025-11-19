@interface SLUresMitigatorResult
- (SLUresMitigatorResult)initWithScore:(float)a3 decision:(BOOL)a4 decisionLevel:(double)a5 detailedResults:(id)a6 extractedFeats:(id)a7;
@end

@implementation SLUresMitigatorResult

- (SLUresMitigatorResult)initWithScore:(float)a3 decision:(BOOL)a4 decisionLevel:(double)a5 detailedResults:(id)a6 extractedFeats:(id)a7
{
  v13 = a6;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = SLUresMitigatorResult;
  v15 = [(SLUresMitigatorResult *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_score = a3;
    v15->_didMitigate = a4;
    objc_storeStrong(&v15->_detailedResult, a6);
    v16->_decisionLevel = a5;
    objc_storeStrong(&v16->_extractedFeats, a7);
    v17 = [v13 objectForKeyedSubscript:@"assetVersion"];
    assetVersion = v16->_assetVersion;
    v16->_assetVersion = v17;

    v19 = [v13 objectForKeyedSubscript:@"threshold"];
    [v19 floatValue];
    v16->_threshold = v20;

    v21 = [v13 objectForKeyedSubscript:@"speakerIDthreshold"];
    [v21 floatValue];
    v16->_speakerIDThreshold = v22;
  }

  return v16;
}

@end