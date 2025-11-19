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
  v3 = [(SSParsecBundleFeatureCollection *)self maxScore];
  v4 = [(SSParsecBundleFeatureCollection *)self originalOrderAbsRank];
  v5 = [(SSParsecBundleFeatureCollection *)self originalOrderRelRank];
  v6 = [(SSParsecBundleFeatureCollection *)self numResults];
  v7 = [(SSParsecBundleFeatureCollection *)self cep];
  v8 = [(SSParsecBundleFeatureCollection *)self maxCEPAbsRank];
  v9 = [(SSParsecBundleFeatureCollection *)self maxCEPRelRank];
  v10 = [(SSParsecBundleFeatureCollection *)self cepMaxRatio];
  v11 = [(SSParsecBundleFeatureCollection *)self cepAllMaxRatio];
  v12 = [(SSParsecBundleFeatureCollection *)self blockIdValue];
  v15 = [v14 stringWithFormat:@"%@ maxScore:%@ absRank:%@ relRank:%@ numResults:%lu cep:%@ maxCEPAbs:%@ maxCEPRel:%@ cepMaxRatio:%@ cepAllMaxRatio:%@ blockIdValue: %@", v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

@end