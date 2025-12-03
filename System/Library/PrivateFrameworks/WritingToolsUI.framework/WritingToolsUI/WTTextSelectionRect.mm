@interface WTTextSelectionRect
+ (id)rectWithRect:(CGRect)rect;
- (CGRect)rect;
- (id)description;
@end

@implementation WTTextSelectionRect

+ (id)rectWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = objc_alloc_init(WTTextSelectionRect);
  v7->_rect.origin.x = x;
  v7->_rect.origin.y = y;
  v7->_rect.size.width = width;
  v7->_rect.size.height = height;

  return v7;
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromCGRect(self->_rect);
  v5 = [v3 stringWithFormat:@"<%p>: %@", self, v4];

  return v5;
}

@end