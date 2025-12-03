@interface VMUReverseGraphEnumerator
- (VMUReverseGraphEnumerator)initWithGraph:(id)graph;
@end

@implementation VMUReverseGraphEnumerator

- (VMUReverseGraphEnumerator)initWithGraph:(id)graph
{
  invertedGraph = [graph invertedGraph];
  v7.receiver = self;
  v7.super_class = VMUReverseGraphEnumerator;
  v5 = [(VMUGraphEnumerator *)&v7 initWithGraph:invertedGraph];

  return v5;
}

@end