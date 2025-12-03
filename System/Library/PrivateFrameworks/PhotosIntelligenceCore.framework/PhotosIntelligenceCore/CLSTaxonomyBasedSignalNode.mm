@interface CLSTaxonomyBasedSignalNode
- (CLSTaxonomyBasedSignalNode)initWithTaxonomyNode:(id)node;
@end

@implementation CLSTaxonomyBasedSignalNode

- (CLSTaxonomyBasedSignalNode)initWithTaxonomyNode:(id)node
{
  nodeCopy = node;
  extendedSceneClassId = [nodeCopy extendedSceneClassId];
  name = [nodeCopy name];
  [nodeCopy f1Threshold];
  v8 = v7;
  [nodeCopy f0point5Threshold];
  v10 = v9;
  [nodeCopy f2Threshold];
  v17.receiver = self;
  v17.super_class = CLSTaxonomyBasedSignalNode;
  v12 = [(CLSSignalNode *)&v17 initWithIdentifier:extendedSceneClassId name:name operatingPoint:v8 highPrecisionOperatingPoint:v10 highRecallOperatingPoint:v11];

  if (v12)
  {
    [nodeCopy searchThreshold];
    v12->_searchThreshold = v13;
    [nodeCopy graphHighPrecisionThreshold];
    v12->_graphHighPrecisionThreshold = v14;
    [nodeCopy graphHighRecallThreshold];
    v12->_graphHighRecallThreshold = v15;
  }

  return v12;
}

@end