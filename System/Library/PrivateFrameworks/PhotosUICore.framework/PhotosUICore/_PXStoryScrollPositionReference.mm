@interface _PXStoryScrollPositionReference
- (_PXStoryScrollPositionReference)initWithScrollPosition:(id *)position;
@end

@implementation _PXStoryScrollPositionReference

- (_PXStoryScrollPositionReference)initWithScrollPosition:(id *)position
{
  v6.receiver = self;
  v6.super_class = _PXStoryScrollPositionReference;
  result = [(_PXStoryScrollPositionReference *)&v6 init];
  if (result)
  {
    v5 = *&position->var0;
    result->_scrollPosition.secondSegmentIdentifier = position->var2;
    *&result->_scrollPosition.firstSegmentIdentifier = v5;
  }

  return result;
}

@end