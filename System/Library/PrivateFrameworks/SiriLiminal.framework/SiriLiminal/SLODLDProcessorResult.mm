@interface SLODLDProcessorResult
- (SLODLDProcessorResult)initWithScore:(float)score withVersion:(id)version tokens:(id)tokens features:(id)features outputEmb:(id)emb outputAnchor:(float)anchor conversationalScore:(float)conversationalScore;
@end

@implementation SLODLDProcessorResult

- (SLODLDProcessorResult)initWithScore:(float)score withVersion:(id)version tokens:(id)tokens features:(id)features outputEmb:(id)emb outputAnchor:(float)anchor conversationalScore:(float)conversationalScore
{
  versionCopy = version;
  tokensCopy = tokens;
  featuresCopy = features;
  embCopy = emb;
  v31.receiver = self;
  v31.super_class = SLODLDProcessorResult;
  v20 = [(SLODLDProcessorResult *)&v31 init];
  v21 = v20;
  if (v20)
  {
    v20->_odldScore = score;
    v22 = [versionCopy copy];
    configVersion = v21->_configVersion;
    v21->_configVersion = v22;

    v24 = [tokensCopy copy];
    tokens = v21->_tokens;
    v21->_tokens = v24;

    v26 = [featuresCopy copy];
    features = v21->_features;
    v21->_features = v26;

    v28 = [embCopy copy];
    outputEmb = v21->_outputEmb;
    v21->_outputEmb = v28;

    v21->_outputAnchor = anchor;
    v21->_conversationalScore = conversationalScore;
  }

  return v21;
}

@end