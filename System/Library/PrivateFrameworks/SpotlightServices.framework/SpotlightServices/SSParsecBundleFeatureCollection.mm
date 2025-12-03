@interface SSParsecBundleFeatureCollection
- (id)description;
@end

@implementation SSParsecBundleFeatureCollection

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = SSParsecBundleFeatureCollection;
  v16 = [(SSParsecBundleFeatureCollection *)&v17 description];
  maxScore = [(SSParsecBundleFeatureCollection *)self maxScore];
  originalOrderAbsRank = [(SSParsecBundleFeatureCollection *)self originalOrderAbsRank];
  originalOrderRelRank = [(SSParsecBundleFeatureCollection *)self originalOrderRelRank];
  numResults = [(SSParsecBundleFeatureCollection *)self numResults];
  v7 = [(SSParsecBundleFeatureCollection *)self cep];
  maxCEPAbsRank = [(SSParsecBundleFeatureCollection *)self maxCEPAbsRank];
  maxCEPRelRank = [(SSParsecBundleFeatureCollection *)self maxCEPRelRank];
  cepMaxRatio = [(SSParsecBundleFeatureCollection *)self cepMaxRatio];
  cepAllMaxRatio = [(SSParsecBundleFeatureCollection *)self cepAllMaxRatio];
  blockIdValue = [(SSParsecBundleFeatureCollection *)self blockIdValue];
  v15 = [v14 stringWithFormat:@"%@ maxScore:%@ absRank:%@ relRank:%@ numResults:%lu cep:%@ maxCEPAbs:%@ maxCEPRel:%@ cepMaxRatio:%@ cepAllMaxRatio:%@ blockIdValue: %@", v16, maxScore, originalOrderAbsRank, originalOrderRelRank, numResults, v7, maxCEPAbsRank, maxCEPRelRank, cepMaxRatio, cepAllMaxRatio, blockIdValue];

  return v15;
}

@end