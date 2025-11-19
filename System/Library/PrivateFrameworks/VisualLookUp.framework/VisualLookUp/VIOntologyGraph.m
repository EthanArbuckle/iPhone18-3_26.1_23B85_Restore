@interface VIOntologyGraph
- (VIOntologyGraph)initWithOntologyGraph:(id)a3;
@end

@implementation VIOntologyGraph

- (VIOntologyGraph)initWithOntologyGraph:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VIOntologyGraph;
  v6 = [(VIOntologyGraph *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_compatGraph, a3);
  }

  return v7;
}

@end