@interface USORootNode
- (USORootNode)initWithCppRootNode:(void *)node;
@end

@implementation USORootNode

- (USORootNode)initWithCppRootNode:(void *)node
{
  v5.receiver = self;
  v5.super_class = USORootNode;
  result = [(USOGraphNode *)&v5 initWithCppGraphNode:?];
  if (result)
  {
    result->_usoRootNode = node;
  }

  return result;
}

@end