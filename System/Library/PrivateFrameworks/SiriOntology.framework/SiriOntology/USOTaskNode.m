@interface USOTaskNode
- (USOTaskNode)initWithCppTaskNode:(void *)a3;
@end

@implementation USOTaskNode

- (USOTaskNode)initWithCppTaskNode:(void *)a3
{
  v5.receiver = self;
  v5.super_class = USOTaskNode;
  result = [(USOEntityNode *)&v5 initWithCppEntityNode:?];
  if (result)
  {
    result->_usoTaskNode = a3;
  }

  return result;
}

@end