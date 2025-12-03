@interface USOStringNode
- (USOStringNode)initWithCppStringNode:(void *)node;
@end

@implementation USOStringNode

- (USOStringNode)initWithCppStringNode:(void *)node
{
  v5.receiver = self;
  v5.super_class = USOStringNode;
  result = [(USOEntityNode *)&v5 initWithCppEntityNode:?];
  if (result)
  {
    result->_usoStringNode = node;
  }

  return result;
}

@end