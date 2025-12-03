@interface VIOntologyGraph
- (VIOntologyGraph)initWithOntologyGraph:(id)graph;
@end

@implementation VIOntologyGraph

- (VIOntologyGraph)initWithOntologyGraph:(id)graph
{
  graphCopy = graph;
  v9.receiver = self;
  v9.super_class = VIOntologyGraph;
  v6 = [(VIOntologyGraph *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_compatGraph, graph);
  }

  return v7;
}

@end