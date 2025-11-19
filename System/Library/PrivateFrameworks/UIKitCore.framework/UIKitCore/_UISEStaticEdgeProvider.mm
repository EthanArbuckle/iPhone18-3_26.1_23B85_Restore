@interface _UISEStaticEdgeProvider
- (_UISEStaticEdgeProvider)initWithProvidedEdges:(unint64_t)a3;
@end

@implementation _UISEStaticEdgeProvider

- (_UISEStaticEdgeProvider)initWithProvidedEdges:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UISEStaticEdgeProvider;
  result = [(_UISEStaticEdgeProvider *)&v5 init];
  if (result)
  {
    result->_providedEdges = a3;
  }

  return result;
}

@end