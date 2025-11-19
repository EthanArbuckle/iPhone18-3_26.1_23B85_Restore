@interface USOGraphNode
- (USOGraphNode)initWithCppGraphNode:(UsoGraphNode *)a3;
@end

@implementation USOGraphNode

- (USOGraphNode)initWithCppGraphNode:(UsoGraphNode *)a3
{
  v5.receiver = self;
  v5.super_class = USOGraphNode;
  result = [(USOGraphNode *)&v5 init];
  if (result)
  {
    result->_usoGraphNode = a3;
  }

  return result;
}

@end