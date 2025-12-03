@interface UPResultIntermediateNode
- (UPResultIntermediateNode)initWithLabel:(id)label andLeafNodes:(id)nodes;
@end

@implementation UPResultIntermediateNode

- (UPResultIntermediateNode)initWithLabel:(id)label andLeafNodes:(id)nodes
{
  nodesCopy = nodes;
  v11.receiver = self;
  v11.super_class = UPResultIntermediateNode;
  v8 = [(UPResultNode *)&v11 initWithLabel:label];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_leafNodes, nodes);
  }

  return v9;
}

@end