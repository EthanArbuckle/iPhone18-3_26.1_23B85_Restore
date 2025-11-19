@interface VMUGroupBy
- (VMUGroupBy)initWithGraph:(id)a3;
@end

@implementation VMUGroupBy

- (VMUGroupBy)initWithGraph:(id)a3
{
  v4 = a3;
  v5 = [(VMUGroupBy *)self init];
  graph = v5->_graph;
  v5->_graph = v4;

  return v5;
}

@end