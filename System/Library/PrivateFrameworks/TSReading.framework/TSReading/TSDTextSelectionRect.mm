@interface TSDTextSelectionRect
- (CGRect)rect;
- (TSDTextSelectionRect)initWithRect:(CGRect)rect direction:(int64_t)direction range:(id)range containsStart:(BOOL)start containsEnd:(BOOL)end isVertical:(BOOL)vertical;
- (void)dealloc;
@end

@implementation TSDTextSelectionRect

- (TSDTextSelectionRect)initWithRect:(CGRect)rect direction:(int64_t)direction range:(id)range containsStart:(BOOL)start containsEnd:(BOOL)end isVertical:(BOOL)vertical
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v20.receiver = self;
  v20.super_class = TSDTextSelectionRect;
  v17 = [(TSDTextSelectionRect *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_rect.origin.x = x;
    v17->_rect.origin.y = y;
    v17->_rect.size.width = width;
    v17->_rect.size.height = height;
    v17->_writingDirection = direction;
    v17->_range = range;
    v18->_containsStart = start;
    v18->_containsEnd = end;
    v18->_isVertical = vertical;
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDTextSelectionRect;
  [(TSDTextSelectionRect *)&v3 dealloc];
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end