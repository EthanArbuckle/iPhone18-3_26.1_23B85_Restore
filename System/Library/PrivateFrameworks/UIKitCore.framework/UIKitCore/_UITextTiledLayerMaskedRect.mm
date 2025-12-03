@interface _UITextTiledLayerMaskedRect
+ (id)ghostedRect:(CGRect)rect;
+ (id)rect:(CGRect)rect alpha:(double)alpha;
- (CGRect)boundingRect;
- (_UITextTiledLayerMaskedRect)initWithRect:(CGRect)rect alpha:(double)alpha;
- (id)description;
@end

@implementation _UITextTiledLayerMaskedRect

+ (id)ghostedRect:(CGRect)rect
{
  v3 = [[self alloc] initWithRect:rect.origin.x alpha:{rect.origin.y, rect.size.width, rect.size.height, 0.2}];

  return v3;
}

+ (id)rect:(CGRect)rect alpha:(double)alpha
{
  v4 = [[self alloc] initWithRect:rect.origin.x alpha:{rect.origin.y, rect.size.width, rect.size.height, alpha}];

  return v4;
}

- (_UITextTiledLayerMaskedRect)initWithRect:(CGRect)rect alpha:(double)alpha
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10.receiver = self;
  v10.super_class = _UITextTiledLayerMaskedRect;
  result = [(_UITextTiledLayerMaskedRect *)&v10 init];
  if (result)
  {
    result->_alpha = alpha;
    result->_boundingRect.origin.x = x;
    result->_boundingRect.origin.y = y;
    result->_boundingRect.size.width = width;
    result->_boundingRect.size.height = height;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromCGRect(self->_boundingRect);
  v6 = [v3 stringWithFormat:@"<%@:%p %@ alpha=%f>", v4, self, v5, *&self->_alpha];

  return v6;
}

- (CGRect)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end