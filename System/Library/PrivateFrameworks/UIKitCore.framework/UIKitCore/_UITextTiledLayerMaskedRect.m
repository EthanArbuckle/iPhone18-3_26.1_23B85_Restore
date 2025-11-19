@interface _UITextTiledLayerMaskedRect
+ (id)ghostedRect:(CGRect)a3;
+ (id)rect:(CGRect)a3 alpha:(double)a4;
- (CGRect)boundingRect;
- (_UITextTiledLayerMaskedRect)initWithRect:(CGRect)a3 alpha:(double)a4;
- (id)description;
@end

@implementation _UITextTiledLayerMaskedRect

+ (id)ghostedRect:(CGRect)a3
{
  v3 = [[a1 alloc] initWithRect:a3.origin.x alpha:{a3.origin.y, a3.size.width, a3.size.height, 0.2}];

  return v3;
}

+ (id)rect:(CGRect)a3 alpha:(double)a4
{
  v4 = [[a1 alloc] initWithRect:a3.origin.x alpha:{a3.origin.y, a3.size.width, a3.size.height, a4}];

  return v4;
}

- (_UITextTiledLayerMaskedRect)initWithRect:(CGRect)a3 alpha:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = _UITextTiledLayerMaskedRect;
  result = [(_UITextTiledLayerMaskedRect *)&v10 init];
  if (result)
  {
    result->_alpha = a4;
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