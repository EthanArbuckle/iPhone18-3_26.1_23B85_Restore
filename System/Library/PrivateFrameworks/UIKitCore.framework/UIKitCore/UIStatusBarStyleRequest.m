@interface UIStatusBarStyleRequest
- (BOOL)isDoubleHeight;
- (BOOL)isEqual:(id)a3;
- (BOOL)isTranslucent;
- (UIStatusBarStyleRequest)initWithStyle:(int64_t)a3 legibilityStyle:(int64_t)a4 foregroundColor:(id)a5 foregroundAlpha:(double)a6 overrideHeight:(id)a7;
- (id)_copyWithZone:(_NSZone *)a3 class:(Class)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation UIStatusBarStyleRequest

- (BOOL)isDoubleHeight
{
  v2 = [UIStatusBar _styleAttributesForRequest:self];
  v3 = [v2 isDoubleHeight];

  return v3;
}

- (unint64_t)hash
{
  v3 = 1000 * self->_legibilityStyle + 31000 * self->_style;
  v4 = [(UIColor *)self->_foregroundColor hash]- v3 + 32 * v3;
  return [(NSNumber *)self->_overrideHeight hash]- v4 + 32 * v4 + 923521;
}

- (UIStatusBarStyleRequest)initWithStyle:(int64_t)a3 legibilityStyle:(int64_t)a4 foregroundColor:(id)a5 foregroundAlpha:(double)a6 overrideHeight:(id)a7
{
  v13 = a5;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = UIStatusBarStyleRequest;
  v15 = [(UIStatusBarStyleRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_style = a3;
    v15->_legibilityStyle = a4;
    objc_storeStrong(&v15->_foregroundColor, a5);
    objc_storeStrong(&v16->_overrideHeight, a7);
    v16->_foregroundAlpha = a6;
  }

  return v16;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(UIStatusBarStyleRequest *)self _copyWithZone:a3 class:v5];
}

- (id)_copyWithZone:(_NSZone *)a3 class:(Class)a4
{
  v5 = [(objc_class *)a4 allocWithZone:a3];
  v6 = [(UIStatusBarStyleRequest *)self style];
  v7 = [(UIStatusBarStyleRequest *)self legibilityStyle];
  v8 = [(UIStatusBarStyleRequest *)self foregroundColor];
  v9 = [(UIStatusBarStyleRequest *)self overrideHeight];
  v10 = [(objc_class *)v5 initWithStyle:v6 legibilityStyle:v7 foregroundColor:v8 overrideHeight:v9];

  v10[5] = self->_foregroundAlpha;
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    style = self->_style;
    if (style != [v6 style] || (legibilityStyle = self->_legibilityStyle, legibilityStyle != objc_msgSend(v6, "legibilityStyle")))
    {
      v12 = 0;
LABEL_18:

      goto LABEL_19;
    }

    foregroundColor = self->_foregroundColor;
    v10 = [v6 foregroundColor];
    if (foregroundColor != v10)
    {
      v11 = self->_foregroundColor;
      v3 = [v6 foregroundColor];
      if (![(UIColor *)v11 isEqual:v3])
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    overrideHeight = self->_overrideHeight;
    v14 = [v6 overrideHeight];
    if (overrideHeight == v14)
    {
      foregroundAlpha = self->_foregroundAlpha;
      [v6 foregroundAlpha];
      v12 = foregroundAlpha == v20;
    }

    else
    {
      v15 = self->_overrideHeight;
      v16 = [v6 overrideHeight];
      if (([(NSNumber *)v15 isEqual:v16]& 1) == 0)
      {

        v12 = 0;
LABEL_15:
        if (foregroundColor == v10)
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
  v3 = [v2 isTranslucent];

  return v3;
}

@end