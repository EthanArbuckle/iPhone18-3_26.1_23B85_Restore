@interface UIKBEdgeEffect
+ (id)effectWithColor:(id)a3 edges:(unint64_t)a4 inset:(double)a5 weight:(double)a6;
+ (id)effectWithColor:(id)a3 edges:(unint64_t)a4 insets:(UIEdgeInsets)a5 weight:(double)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (BOOL)usesRGBColors;
- (CGColor)CGColor;
- (NSString)description;
- (UIEdgeInsets)insets;
- (UIKBEdgeEffect)initWithColor:(id)a3 edges:(unint64_t)a4 insets:(UIEdgeInsets)a5 weight:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIKBEdgeEffect

- (BOOL)isValid
{
  if (self->_colorName)
  {
    [(UIKBEdgeEffect *)self weight];
    return v3 > 0.0 && [(UIKBEdgeEffect *)self edges]!= 0;
  }

  else
  {
    v5 = [(UIKBEdgeEffect *)self gradient];
    v4 = v5 && ([(UIKBEdgeEffect *)self weight], v6 > 0.0) && [(UIKBEdgeEffect *)self edges]!= 0;
  }

  return v4;
}

- (BOOL)usesRGBColors
{
  v3 = [(UIKBEdgeEffect *)self gradient];

  if (v3)
  {
    v4 = [(UIKBEdgeEffect *)self gradient];
    v5 = [v4 usesRGBColors];
  }

  else
  {
    v6 = [(UIKBEdgeEffect *)self CGColor];
    v5 = UIKBColorUsesRGB(v6);
    CFRelease(v6);
  }

  return v5;
}

+ (id)effectWithColor:(id)a3 edges:(unint64_t)a4 inset:(double)a5 weight:(double)a6
{
  v10 = a3;
  v11 = [a1 alloc];
  v12 = 0.0;
  if (a4)
  {
    v13 = a5;
  }

  else
  {
    v13 = 0.0;
  }

  if ((a4 & 2) != 0)
  {
    v14 = a5;
  }

  else
  {
    v14 = 0.0;
  }

  if ((a4 & 4) != 0)
  {
    v15 = a5;
  }

  else
  {
    v15 = 0.0;
  }

  if ((a4 & 8) != 0)
  {
    v12 = a5;
  }

  v16 = [v11 initWithColor:v10 edges:a4 insets:v13 weight:{v14, v15, v12, a6}];

  return v16;
}

+ (id)effectWithColor:(id)a3 edges:(unint64_t)a4 insets:(UIEdgeInsets)a5 weight:(double)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v13 = a3;
  v14 = [[a1 alloc] initWithColor:v13 edges:a4 insets:top weight:{left, bottom, right, a6}];

  return v14;
}

- (UIKBEdgeEffect)initWithColor:(id)a3 edges:(unint64_t)a4 insets:(UIEdgeInsets)a5 weight:(double)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v14 = a3;
  v18.receiver = self;
  v18.super_class = UIKBEdgeEffect;
  v15 = [(UIKBEdgeEffect *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_colorName, a3);
    v16->_edges = a4;
    v16->_insets.top = top;
    v16->_insets.left = left;
    v16->_insets.bottom = bottom;
    v16->_insets.right = right;
    v16->_weight = a6;
    v16->_opacity = 1.0;
  }

  return v16;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(UIKBEdgeEffect *)self gradient];

  if (v4)
  {
    v5 = [(UIKBEdgeEffect *)self gradient];
    [v3 appendFormat:@"; gradient = %@", v5];
  }

  else
  {
    [v3 appendFormat:@"; color = %@", self->_colorName];
  }

  [v3 appendFormat:@"; edges = %x", -[UIKBEdgeEffect edges](self, "edges")];
  [(UIKBEdgeEffect *)self insets];
  v6 = NSStringFromUIEdgeInsets(v12);
  [v3 appendFormat:@"; insets = %@", v6];

  [(UIKBEdgeEffect *)self weight];
  [v3 appendFormat:@"; weight = %f", v7];
  [(UIKBEdgeEffect *)self opacity];
  if (v8 != 1.0)
  {
    [(UIKBEdgeEffect *)self opacity];
    [v3 appendFormat:@"; opacity = %f", v9];
  }

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
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && (colorName = self->_colorName, (v4->_colorName != 0) != (colorName == 0)) && (!colorName || [(NSString *)colorName isEqualToString:?]) && (gradient = self->_gradient, (gradient == 0) != (v4->_gradient != 0)) && (!gradient || [(UIKBGradient *)gradient isEqual:?]) && self->_edges == v4->_edges && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_insets.top, *&v4->_insets.top), vceqq_f64(*&self->_insets.bottom, *&v4->_insets.bottom)))) & 1) != 0 && self->_weight == v4->_weight && self->_opacity == v4->_opacity;
  }

  return v7;
}

- (CGColor)CGColor
{
  colorName = self->_colorName;
  if (!colorName)
  {
    return 0;
  }

  v4 = UIKBGetNamedColor(colorName);
  [(UIKBEdgeEffect *)self opacity];
  if (v5 == 1.0)
  {
    CGColorRetain(v4);
    return v4;
  }

  [(UIKBEdgeEffect *)self opacity];

  return CGColorCreateCopyWithAlpha(v4, v6);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIKBEdgeEffect allocWithZone:a3];
  colorName = self->_colorName;
  v6 = [(UIKBEdgeEffect *)self edges];
  [(UIKBEdgeEffect *)self insets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UIKBEdgeEffect *)self weight];
  v16 = [(UIKBEdgeEffect *)v4 initWithColor:colorName edges:v6 insets:v8 weight:v10, v12, v14, v15];
  v17 = [(UIKBGradient *)self->_gradient copy];
  v18 = *(v16 + 32);
  *(v16 + 32) = v17;

  *(v16 + 40) = self->_opacity;
  return v16;
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

@end