@interface USOIntNode
- (USOIntNode)initWithCppIntNode:(void *)node;
@end

@implementation USOIntNode

- (USOIntNode)initWithCppIntNode:(void *)node
{
  v5.receiver = self;
  v5.super_class = USOIntNode;
  result = [(USOEntityNode *)&v5 initWithCppEntityNode:?];
  if (result)
  {
    result->_usoIntNode = node;
  }

  return result;
}

@end