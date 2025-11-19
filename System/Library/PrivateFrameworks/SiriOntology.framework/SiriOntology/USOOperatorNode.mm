@interface USOOperatorNode
- (USOOperatorNode)initWithCppOperatorNode:(UsoOperatorNode *)a3;
@end

@implementation USOOperatorNode

- (USOOperatorNode)initWithCppOperatorNode:(UsoOperatorNode *)a3
{
  v5.receiver = self;
  v5.super_class = USOOperatorNode;
  result = [(USOGraphNode *)&v5 initWithCppGraphNode:?];
  if (result)
  {
    result->_usoOperatorNode = a3;
  }

  return result;
}

@end