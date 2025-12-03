@interface USOTaskNode
- (USOTaskNode)initWithCppTaskNode:(void *)node;
@end

@implementation USOTaskNode

- (USOTaskNode)initWithCppTaskNode:(void *)node
{
  v5.receiver = self;
  v5.super_class = USOTaskNode;
  result = [(USOEntityNode *)&v5 initWithCppEntityNode:?];
  if (result)
  {
    result->_usoTaskNode = node;
  }

  return result;
}

@end