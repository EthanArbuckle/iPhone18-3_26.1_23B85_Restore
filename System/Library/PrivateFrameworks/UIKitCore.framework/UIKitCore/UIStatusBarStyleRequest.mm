@interface UIStatusBarStyleRequest
- (BOOL)isDoubleHeight;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTranslucent;
- (UIStatusBarStyleRequest)initWithStyle:(int64_t)style legibilityStyle:(int64_t)legibilityStyle foregroundColor:(id)color foregroundAlpha:(double)alpha overrideHeight:(id)height;
- (id)_copyWithZone:(_NSZone *)zone class:(Class)class;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation UIStatusBarStyleRequest

- (BOOL)isDoubleHeight
{
  v2 = [UIStatusBar _styleAttributesForRequest:self];
  isDoubleHeight = [v2 isDoubleHeight];

  return isDoubleHeight;
}

- (unint64_t)hash
{
  v3 = 1000 * self->_legibilityStyle + 31000 * self->_style;
  v4 = [(UIColor *)self->_foregroundColor hash]- v3 + 32 * v3;
  return [(NSNumber *)self->_overrideHeight hash]- v4 + 32 * v4 + 923521;
}

- (UIStatusBarStyleRequest)initWithStyle:(int64_t)style legibilityStyle:(int64_t)legibilityStyle foregroundColor:(id)color foregroundAlpha:(double)alpha overrideHeight:(id)height
{
  colorCopy = color;
  heightCopy = height;
  v18.receiver = self;
  v18.super_class = UIStatusBarStyleRequest;
  v15 = [(UIStatusBarStyleRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_style = style;
    v15->_legibilityStyle = legibilityStyle;
    objc_storeStrong(&v15->_foregroundColor, color);
    objc_storeStrong(&v16->_overrideHeight, height);
    v16->_foregroundAlpha = alpha;
  }

  return v16;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(UIStatusBarStyleRequest *)self _copyWithZone:zone class:v5];
}

- (id)_copyWithZone:(_NSZone *)zone class:(Class)class
{
  v5 = [(objc_class *)class allocWithZone:zone];
  style = [(UIStatusBarStyleRequest *)self style];
  legibilityStyle = [(UIStatusBarStyleRequest *)self legibilityStyle];
  foregroundColor = [(UIStatusBarStyleRequest *)self foregroundColor];
  overrideHeight = [(UIStatusBarStyleRequest *)self overrideHeight];
  v10 = [(objc_class *)v5 initWithStyle:style legibilityStyle:legibilityStyle foregroundColor:foregroundColor overrideHeight:overrideHeight];

  v10[5] = self->_foregroundAlpha;
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    style = self->_style;
    if (style != [v6 style] || (legibilityStyle = self->_legibilityStyle, legibilityStyle != objc_msgSend(v6, "legibilityStyle")))
    {
      v12 = 0;
LABEL_18:

      goto LABEL_19;
    }

    foregroundColor = self->_foregroundColor;
    foregroundColor = [v6 foregroundColor];
    if (foregroundColor != foregroundColor)
    {
      v11 = self->_foregroundColor;
      foregroundColor2 = [v6 foregroundColor];
      if (![(UIColor *)v11 isEqual:foregroundColor2])
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    overrideHeight = self->_overrideHeight;
    overrideHeight = [v6 overrideHeight];
    if (overrideHeight == overrideHeight)
    {
      foregroundAlpha = self->_foregroundAlpha;
      [v6 foregroundAlpha];
      v12 = foregroundAlpha == v20;
    }

    else
    {
      v15 = self->_overrideHeight;
      overrideHeight2 = [v6 overrideHeight];
      if (([(NSNumber *)v15 isEqual:overrideHeight2]& 1) == 0)
      {

        v12 = 0;
LABEL_15:
        if (foregroundColor == foregroundColor)
        {
LABEL_17:

          goto LABEL_18;
        }

LABEL_16:

        goto LABEL_17;
      }

      v17 = self->_foregroundAlpha;
      [v6 foregroundAlpha];
      v12 = v17 == v18;
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (BOOL)isTranslucent
{
  v2 = [UIStatusBar _styleAttributesForRequest:self];
  isTranslucent = [v2 isTranslucent];

  return isTranslucent;
}

@end