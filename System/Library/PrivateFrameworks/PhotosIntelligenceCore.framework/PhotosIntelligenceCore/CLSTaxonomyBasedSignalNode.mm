@interface CLSTaxonomyBasedSignalNode
- (CLSTaxonomyBasedSignalNode)initWithTaxonomyNode:(id)a3;
@end

@implementation CLSTaxonomyBasedSignalNode

- (CLSTaxonomyBasedSignalNode)initWithTaxonomyNode:(id)a3
{
  v4 = a3;
  v5 = [v4 extendedSceneClassId];
  v6 = [v4 name];
  [v4 f1Threshold];
  v8 = v7;
  [v4 f0point5Threshold];
  v10 = v9;
  [v4 f2Threshold];
  v17.receiver = self;
  v17.super_class = CLSTaxonomyBasedSignalNode;
  v12 = [(CLSSignalNode *)&v17 initWithIdentifier:v5 name:v6 operatingPoint:v8 highPrecisionOperatingPoint:v10 highRecallOperatingPoint:v11];

  if (v12)
  {
    [v4 searchThreshold];
    v12->_searchThreshold = v13;
    [v4 graphHighPrecisionThreshold];
    v12->_graphHighPrecisionThreshold = v14;
    [v4 graphHighRecallThreshold];
    v12->_graphHighRecallThreshold = v15;
  }

  return v12;
}

@end