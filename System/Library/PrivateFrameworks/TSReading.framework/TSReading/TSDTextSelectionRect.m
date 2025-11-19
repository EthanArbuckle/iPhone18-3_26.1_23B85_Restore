@interface TSDTextSelectionRect
- (CGRect)rect;
- (TSDTextSelectionRect)initWithRect:(CGRect)a3 direction:(int64_t)a4 range:(id)a5 containsStart:(BOOL)a6 containsEnd:(BOOL)a7 isVertical:(BOOL)a8;
- (void)dealloc;
@end

@implementation TSDTextSelectionRect

- (TSDTextSelectionRect)initWithRect:(CGRect)a3 direction:(int64_t)a4 range:(id)a5 containsStart:(BOOL)a6 containsEnd:(BOOL)a7 isVertical:(BOOL)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v17->_writingDirection = a4;
    v17->_range = a5;
    v18->_containsStart = a6;
    v18->_containsEnd = a7;
    v18->_isVertical = a8;
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