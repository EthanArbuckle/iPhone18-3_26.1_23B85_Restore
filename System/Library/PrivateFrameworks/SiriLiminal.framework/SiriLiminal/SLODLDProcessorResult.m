@interface SLODLDProcessorResult
- (SLODLDProcessorResult)initWithScore:(float)a3 withVersion:(id)a4 tokens:(id)a5 features:(id)a6 outputEmb:(id)a7 outputAnchor:(float)a8 conversationalScore:(float)a9;
@end

@implementation SLODLDProcessorResult

- (SLODLDProcessorResult)initWithScore:(float)a3 withVersion:(id)a4 tokens:(id)a5 features:(id)a6 outputEmb:(id)a7 outputAnchor:(float)a8 conversationalScore:(float)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v31.receiver = self;
  v31.super_class = SLODLDProcessorResult;
  v20 = [(SLODLDProcessorResult *)&v31 init];
  v21 = v20;
  if (v20)
  {
    v20->_odldScore = a3;
    v22 = [v16 copy];
    configVersion = v21->_configVersion;
    v21->_configVersion = v22;

    v24 = [v17 copy];
    tokens = v21->_tokens;
    v21->_tokens = v24;

    v26 = [v18 copy];
    features = v21->_features;
    v21->_features = v26;

    v28 = [v19 copy];
    outputEmb = v21->_outputEmb;
    v21->_outputEmb = v28;

    v21->_outputAnchor = a8;
    v21->_conversationalScore = a9;
  }

  return v21;
}

@end