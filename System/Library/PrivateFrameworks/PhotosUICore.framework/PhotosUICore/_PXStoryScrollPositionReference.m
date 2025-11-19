@interface _PXStoryScrollPositionReference
- (_PXStoryScrollPositionReference)initWithScrollPosition:(id *)a3;
@end

@implementation _PXStoryScrollPositionReference

- (_PXStoryScrollPositionReference)initWithScrollPosition:(id *)a3
{
  v6.receiver = self;
  v6.super_class = _PXStoryScrollPositionReference;
  result = [(_PXStoryScrollPositionReference *)&v6 init];
  if (result)
  {
    v5 = *&a3->var0;
    result->_scrollPosition.secondSegmentIdentifier = a3->var2;
    *&result->_scrollPosition.firstSegmentIdentifier = v5;
  }

  return result;
}

@end