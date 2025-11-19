@interface _UITextFieldBackgroundCacheKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCacheKey:(id)a3;
- (_UITextFieldBackgroundCacheKey)initWithClassName:(id)a3 scale:(double)a4 cornerRadius:(double)a5 lineWidth:(double)a6 strokeColor:(CGColor *)a7 fillColor:(CGColor *)a8;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _UITextFieldBackgroundCacheKey

- (_UITextFieldBackgroundCacheKey)initWithClassName:(id)a3 scale:(double)a4 cornerRadius:(double)a5 lineWidth:(double)a6 strokeColor:(CGColor *)a7 fillColor:(CGColor *)a8
{
  v15 = a3;
  v19.receiver = self;
  v19.super_class = _UITextFieldBackgroundCacheKey;
  v16 = [(_UITextFieldBackgroundCacheKey *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_className, a3);
    v17->_scale = a4;
    v17->_cornerRadius = a5;
    v17->_lineWidth = a6;
    CGColorRetain(a7);
    v17->_strokeColor = a7;
    CGColorRetain(a8);
    v17->_fillColor = a8;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_className hash];
  scale = self->_scale;
  cornerRadius = self->_cornerRadius;
  lineWidth = self->_lineWidth;
  strokeColor = self->_strokeColor;
  if (strokeColor)
  {
    v8 = CFHash(strokeColor);
  }

  else
  {
    v8 = 0;
  }

  fillColor = self->_fillColor;
  if (fillColor)
  {
    fillColor = CFHash(fillColor);
  }

  return v3 ^ scale ^ cornerRadius ^ lineWidth ^ v8 ^ fillColor;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UITextFieldBackgroundCacheKey *)self isEqualToCacheKey:v4];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)a3
{
  v4 = a3;
  v6 = v4 && ((className = self->_className, className == *(v4 + 1)) || [(NSString *)className isEqualToString:?]) && self->_scale == *(v4 + 2) && self->_cornerRadius == *(v4 + 3) && self->_lineWidth == *(v4 + 4) && CGColorEqualToColor(self->_strokeColor, *(v4 + 5)) && CGColorEqualToColor(self->_fillColor, *(v4 + 6));

  return v6;
}

- (void)dealloc
{
  CGColorRelease(self->_strokeColor);
  CGColorRelease(self->_fillColor);
  v3.receiver = self;
  v3.super_class = _UITextFieldBackgroundCacheKey;
  [(_UITextFieldBackgroundCacheKey *)&v3 dealloc];
}

@end