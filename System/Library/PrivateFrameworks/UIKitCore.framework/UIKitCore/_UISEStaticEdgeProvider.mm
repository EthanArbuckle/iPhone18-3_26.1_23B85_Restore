@interface _UISEStaticEdgeProvider
- (_UISEStaticEdgeProvider)initWithProvidedEdges:(unint64_t)edges;
@end

@implementation _UISEStaticEdgeProvider

- (_UISEStaticEdgeProvider)initWithProvidedEdges:(unint64_t)edges
{
  v5.receiver = self;
  v5.super_class = _UISEStaticEdgeProvider;
  result = [(_UISEStaticEdgeProvider *)&v5 init];
  if (result)
  {
    result->_providedEdges = edges;
  }

  return result;
}

@end