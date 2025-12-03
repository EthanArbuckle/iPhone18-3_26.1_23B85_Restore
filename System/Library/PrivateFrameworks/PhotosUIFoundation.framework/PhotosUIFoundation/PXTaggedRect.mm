@interface PXTaggedRect
- (CGRect)rect;
- (PXTaggedRect)init;
- (PXTaggedRect)initWithRect:(CGRect)rect tag:(unint64_t)tag;
- (id)description;
@end

@implementation PXTaggedRect

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
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXTaggedRect *)self tag];
  [(PXTaggedRect *)self rect];
  v7 = NSStringFromCGRect(v11);
  v8 = [v3 stringWithFormat:@"<%@: %p, tag=%lu rect=%@>", v5, self, v6, v7];

  return v8;
}

- (PXTaggedRect)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXTaggedRect.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXTaggedRect init]"}];

  abort();
}

- (PXTaggedRect)initWithRect:(CGRect)rect tag:(unint64_t)tag
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10.receiver = self;
  v10.super_class = PXTaggedRect;
  result = [(PXTaggedRect *)&v10 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_tag = tag;
  }

  return result;
}

@end