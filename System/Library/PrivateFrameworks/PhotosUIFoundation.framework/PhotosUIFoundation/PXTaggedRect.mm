@interface PXTaggedRect
- (CGRect)rect;
- (PXTaggedRect)init;
- (PXTaggedRect)initWithRect:(CGRect)a3 tag:(unint64_t)a4;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXTaggedRect.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXTaggedRect init]"}];

  abort();
}

- (PXTaggedRect)initWithRect:(CGRect)a3 tag:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = PXTaggedRect;
  result = [(PXTaggedRect *)&v10 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_tag = a4;
  }

  return result;
}

@end