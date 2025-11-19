@interface UIKBShadowEffect
+ (id)effectWithColor:(id)a3 offset:(CGSize)a4 insets:(UIEdgeInsets)a5 weight:(double)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)usesRGBColors;
- (CGColor)CGColor;
- (CGSize)offset;
- (NSString)description;
- (UIEdgeInsets)concaveInsets;
- (UIEdgeInsets)insets;
- (UIKBShadowEffect)initWithColor:(id)a3 offset:(CGSize)a4 insets:(UIEdgeInsets)a5 weight:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIKBShadowEffect

- (BOOL)usesRGBColors
{
  v2 = [(UIKBShadowEffect *)self CGColor];
  v3 = UIKBColorUsesRGB(v2);
  CFRelease(v2);
  return v3;
}

+ (id)effectWithColor:(id)a3 offset:(CGSize)a4 insets:(UIEdgeInsets)a5 weight:(double)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = [[a1 alloc] initWithColor:v14 offset:width insets:height weight:{top, left, bottom, right, a6}];

  return v15;
}

- (UIKBShadowEffect)initWithColor:(id)a3 offset:(CGSize)a4 insets:(UIEdgeInsets)a5 weight:(double)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v19.receiver = self;
  v19.super_class = UIKBShadowEffect;
  v16 = [(UIKBShadowEffect *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_colorName, a3);
    v17->_offset.height = height;
    v17->_insets.top = top;
    v17->_insets.left = left;
    v17->_insets.bottom = bottom;
    v17->_insets.right = right;
    v17->_weight = a6;
    v17->_offset.width = width;
  }

  return v17;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; color = %@", self->_colorName];
  [(UIKBShadowEffect *)self offset];
  v4 = NSStringFromCGSize(v10);
  [v3 appendFormat:@"; offset = %@", v4];

  [(UIKBShadowEffect *)self insets];
  v5 = NSStringFromUIEdgeInsets(v11);
  [v3 appendFormat:@"; insets = %@", v5];

  [(UIKBShadowEffect *)self concaveInsets];
  v6 = NSStringFromUIEdgeInsets(v12);
  [v3 appendFormat:@"; concaveInsets = %@", v6];

  [(UIKBShadowEffect *)self weight];
  [v3 appendFormat:@"; weight = %f", v7];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && (colorName = self->_colorName, (v4->_colorName != 0) != (colorName == 0)) && (!colorName || [(NSString *)colorName isEqualToString:?]) && (self->_offset.width == v4->_offset.width ? (v6 = self->_offset.height == v4->_offset.height) : (v6 = 0), v6 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_insets.top, *&v4->_insets.top), vceqq_f64(*&self->_insets.bottom, *&v4->_insets.bottom)))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_concaveInsets.top, *&v4->_concaveInsets.top), vceqq_f64(*&self->_concaveInsets.bottom, *&v4->_concaveInsets.bottom)))) & 1) != 0) && self->_weight == v4->_weight;
  }

  return v7;
}

- (CGColor)CGColor
{
  result = self->_colorName;
  if (result)
  {
    v3 = UIKBGetNamedColor(result);

    return CGColorRetain(v3);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIKBShadowEffect allocWithZone:a3];
  colorName = self->_colorName;
  [(UIKBShadowEffect *)self offset];
  v7 = v6;
  v9 = v8;
  [(UIKBShadowEffect *)self insets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIKBShadowEffect *)self weight];
  v19 = [(UIKBShadowEffect *)v4 initWithColor:colorName offset:v7 insets:v9 weight:v11, v13, v15, v17, v18];
  [(UIKBShadowEffect *)self concaveInsets];
  [(UIKBShadowEffect *)v19 setConcaveInsets:?];
  return v19;
}

- (CGSize)offset
{
  width = self->_offset.width;
  height = self->_offset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)concaveInsets
{
  top = self->_concaveInsets.top;
  left = self->_concaveInsets.left;
  bottom = self->_concaveInsets.bottom;
  right = self->_concaveInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end