@interface UIKBShadowEffect
+ (id)effectWithColor:(id)color offset:(CGSize)offset insets:(UIEdgeInsets)insets weight:(double)weight;
- (BOOL)isEqual:(id)equal;
- (BOOL)usesRGBColors;
- (CGColor)CGColor;
- (CGSize)offset;
- (NSString)description;
- (UIEdgeInsets)concaveInsets;
- (UIEdgeInsets)insets;
- (UIKBShadowEffect)initWithColor:(id)color offset:(CGSize)offset insets:(UIEdgeInsets)insets weight:(double)weight;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIKBShadowEffect

- (BOOL)usesRGBColors
{
  cGColor = [(UIKBShadowEffect *)self CGColor];
  v3 = UIKBColorUsesRGB(cGColor);
  CFRelease(cGColor);
  return v3;
}

+ (id)effectWithColor:(id)color offset:(CGSize)offset insets:(UIEdgeInsets)insets weight:(double)weight
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = offset.height;
  width = offset.width;
  colorCopy = color;
  v15 = [[self alloc] initWithColor:colorCopy offset:width insets:height weight:{top, left, bottom, right, weight}];

  return v15;
}

- (UIKBShadowEffect)initWithColor:(id)color offset:(CGSize)offset insets:(UIEdgeInsets)insets weight:(double)weight
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = offset.height;
  width = offset.width;
  colorCopy = color;
  v19.receiver = self;
  v19.super_class = UIKBShadowEffect;
  v16 = [(UIKBShadowEffect *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_colorName, color);
    v17->_offset.height = height;
    v17->_insets.top = top;
    v17->_insets.left = left;
    v17->_insets.bottom = bottom;
    v17->_insets.right = right;
    v17->_weight = weight;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && (colorName = self->_colorName, (equalCopy->_colorName != 0) != (colorName == 0)) && (!colorName || [(NSString *)colorName isEqualToString:?]) && (self->_offset.width == equalCopy->_offset.width ? (v6 = self->_offset.height == equalCopy->_offset.height) : (v6 = 0), v6 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_insets.top, *&equalCopy->_insets.top), vceqq_f64(*&self->_insets.bottom, *&equalCopy->_insets.bottom)))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_concaveInsets.top, *&equalCopy->_concaveInsets.top), vceqq_f64(*&self->_concaveInsets.bottom, *&equalCopy->_concaveInsets.bottom)))) & 1) != 0) && self->_weight == equalCopy->_weight;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIKBShadowEffect allocWithZone:zone];
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