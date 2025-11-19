@interface USOStringNode
- (USOStringNode)initWithCppStringNode:(void *)a3;
@end

@implementation USOStringNode

- (USOStringNode)initWithCppStringNode:(void *)a3
{
  v5.receiver = self;
  v5.super_class = USOStringNode;
  result = [(USOEntityNode *)&v5 initWithCppEntityNode:?];
  if (result)
  {
    result->_usoStringNode = a3;
  }

  return result;
}

@end