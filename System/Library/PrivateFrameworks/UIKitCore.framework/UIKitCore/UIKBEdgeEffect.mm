@interface UIKBEdgeEffect
+ (id)effectWithColor:(id)color edges:(unint64_t)edges inset:(double)inset weight:(double)weight;
+ (id)effectWithColor:(id)color edges:(unint64_t)edges insets:(UIEdgeInsets)insets weight:(double)weight;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (BOOL)usesRGBColors;
- (CGColor)CGColor;
- (NSString)description;
- (UIEdgeInsets)insets;
- (UIKBEdgeEffect)initWithColor:(id)color edges:(unint64_t)edges insets:(UIEdgeInsets)insets weight:(double)weight;
- (id)copyWithZone:(_NSZone *)zone;
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
    gradient = [(UIKBEdgeEffect *)self gradient];
    v4 = gradient && ([(UIKBEdgeEffect *)self weight], v6 > 0.0) && [(UIKBEdgeEffect *)self edges]!= 0;
  }

  return v4;
}

- (BOOL)usesRGBColors
{
  gradient = [(UIKBEdgeEffect *)self gradient];

  if (gradient)
  {
    gradient2 = [(UIKBEdgeEffect *)self gradient];
    usesRGBColors = [gradient2 usesRGBColors];
  }

  else
  {
    cGColor = [(UIKBEdgeEffect *)self CGColor];
    usesRGBColors = UIKBColorUsesRGB(cGColor);
    CFRelease(cGColor);
  }

  return usesRGBColors;
}

+ (id)effectWithColor:(id)color edges:(unint64_t)edges inset:(double)inset weight:(double)weight
{
  colorCopy = color;
  v11 = [self alloc];
  insetCopy4 = 0.0;
  if (edges)
  {
    insetCopy = inset;
  }

  else
  {
    insetCopy = 0.0;
  }

  if ((edges & 2) != 0)
  {
    insetCopy2 = inset;
  }

  else
  {
    insetCopy2 = 0.0;
  }

  if ((edges & 4) != 0)
  {
    insetCopy3 = inset;
  }

  else
  {
    insetCopy3 = 0.0;
  }

  if ((edges & 8) != 0)
  {
    insetCopy4 = inset;
  }

  v16 = [v11 initWithColor:colorCopy edges:edges insets:insetCopy weight:{insetCopy2, insetCopy3, insetCopy4, weight}];

  return v16;
}

+ (id)effectWithColor:(id)color edges:(unint64_t)edges insets:(UIEdgeInsets)insets weight:(double)weight
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  colorCopy = color;
  v14 = [[self alloc] initWithColor:colorCopy edges:edges insets:top weight:{left, bottom, right, weight}];

  return v14;
}

- (UIKBEdgeEffect)initWithColor:(id)color edges:(unint64_t)edges insets:(UIEdgeInsets)insets weight:(double)weight
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  colorCopy = color;
  v18.receiver = self;
  v18.super_class = UIKBEdgeEffect;
  v15 = [(UIKBEdgeEffect *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_colorName, color);
    v16->_edges = edges;
    v16->_insets.top = top;
    v16->_insets.left = left;
    v16->_insets.bottom = bottom;
    v16->_insets.right = right;
    v16->_weight = weight;
    v16->_opacity = 1.0;
  }

  return v16;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  gradient = [(UIKBEdgeEffect *)self gradient];

  if (gradient)
  {
    gradient2 = [(UIKBEdgeEffect *)self gradient];
    [v3 appendFormat:@"; gradient = %@", gradient2];
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
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && (colorName = self->_colorName, (equalCopy->_colorName != 0) != (colorName == 0)) && (!colorName || [(NSString *)colorName isEqualToString:?]) && (gradient = self->_gradient, (gradient == 0) != (equalCopy->_gradient != 0)) && (!gradient || [(UIKBGradient *)gradient isEqual:?]) && self->_edges == equalCopy->_edges && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_insets.top, *&equalCopy->_insets.top), vceqq_f64(*&self->_insets.bottom, *&equalCopy->_insets.bottom)))) & 1) != 0 && self->_weight == equalCopy->_weight && self->_opacity == equalCopy->_opacity;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIKBEdgeEffect allocWithZone:zone];
  colorName = self->_colorName;
  edges = [(UIKBEdgeEffect *)self edges];
  [(UIKBEdgeEffect *)self insets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UIKBEdgeEffect *)self weight];
  v16 = [(UIKBEdgeEffect *)v4 initWithColor:colorName edges:edges insets:v8 weight:v10, v12, v14, v15];
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