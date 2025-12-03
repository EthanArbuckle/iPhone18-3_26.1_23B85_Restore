@interface USOGraphNode
- (USOGraphNode)initWithCppGraphNode:(UsoGraphNode *)node;
@end

@implementation USOGraphNode

- (USOGraphNode)initWithCppGraphNode:(UsoGraphNode *)node
{
  v5.receiver = self;
  v5.super_class = USOGraphNode;
  result = [(USOGraphNode *)&v5 init];
  if (result)
  {
    result->_usoGraphNode = node;
  }

  return result;
}

@end