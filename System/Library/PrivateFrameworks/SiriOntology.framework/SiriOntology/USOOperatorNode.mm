@interface USOOperatorNode
- (USOOperatorNode)initWithCppOperatorNode:(UsoOperatorNode *)node;
@end

@implementation USOOperatorNode

- (USOOperatorNode)initWithCppOperatorNode:(UsoOperatorNode *)node
{
  v5.receiver = self;
  v5.super_class = USOOperatorNode;
  result = [(USOGraphNode *)&v5 initWithCppGraphNode:?];
  if (result)
  {
    result->_usoOperatorNode = node;
  }

  return result;
}

@end