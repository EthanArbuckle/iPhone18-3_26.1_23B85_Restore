@interface PGZeroKeywordMapping
- (PGZeroKeywordMapping)initWithDisplayNode:(id)node mappedMeaningNodes:(id)nodes;
@end

@implementation PGZeroKeywordMapping

- (PGZeroKeywordMapping)initWithDisplayNode:(id)node mappedMeaningNodes:(id)nodes
{
  nodeCopy = node;
  nodesCopy = nodes;
  v12.receiver = self;
  v12.super_class = PGZeroKeywordMapping;
  v9 = [(PGZeroKeywordMapping *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayNode, node);
    objc_storeStrong(&v10->_mappedMeaningNodes, nodes);
  }

  return v10;
}

@end