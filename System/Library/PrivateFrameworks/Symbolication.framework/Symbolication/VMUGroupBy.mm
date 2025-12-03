@interface VMUGroupBy
- (VMUGroupBy)initWithGraph:(id)graph;
@end

@implementation VMUGroupBy

- (VMUGroupBy)initWithGraph:(id)graph
{
  graphCopy = graph;
  v5 = [(VMUGroupBy *)self init];
  graph = v5->_graph;
  v5->_graph = graphCopy;

  return v5;
}

@end