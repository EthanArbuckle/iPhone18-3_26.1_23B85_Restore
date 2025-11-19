@interface USORootNode
- (USORootNode)initWithCppRootNode:(void *)a3;
@end

@implementation USORootNode

- (USORootNode)initWithCppRootNode:(void *)a3
{
  v5.receiver = self;
  v5.super_class = USORootNode;
  result = [(USOGraphNode *)&v5 initWithCppGraphNode:?];
  if (result)
  {
    result->_usoRootNode = a3;
  }

  return result;
}

@end