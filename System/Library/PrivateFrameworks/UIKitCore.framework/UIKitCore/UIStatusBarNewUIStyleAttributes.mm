@interface UIStatusBarNewUIStyleAttributes
- (BOOL)isTranslucent;
- (UIStatusBarNewUIStyleAttributes)initWithRequest:(id)a3 backgroundColor:(id)a4 foregroundColor:(id)a5 hasBusyBackground:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newForegroundStyleWithHeight:(double)a3;
- (int64_t)legibilityStyle;
@end

@implementation UIStatusBarNewUIStyleAttributes

- (UIStatusBarNewUIStyleAttributes)initWithRequest:(id)a3 backgroundColor:(id)a4 foregroundColor:(id)a5 hasBusyBackground:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = UIStatusBarNewUIStyleAttributes;
  v13 = [(UIStatusBarStyleAttributes *)&v19 initWithRequest:v10];
  if (v13)
  {
    if (v11 || ([v10 foregroundColor], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v14 = v12;
    }

    else
    {
      v14 = [v10 foregroundColor];
    }

    foregroundColor = v13->_foregroundColor;
    v13->_foregroundColor = v14;
    v17 = v14;

    objc_storeStrong(&v13->_backgroundColor, a4);
    v13->_hasBusyBackground = a6;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = UIStatusBarNewUIStyleAttributes;
  v4 = [(UIStatusBarStyleAttributes *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 4, self->_backgroundColor);
  objc_storeStrong(v4 + 5, self->_foregroundColor);
  *(v4 + 48) = self->_hasBusyBackground;
  return v4;
}

- (int64_t)legibilityStyle
{
  if (self->_backgroundColor)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = UIStatusBarNewUIStyleAttributes;
  return [(UIStatusBarStyleAttributes *)&v5 legibilityStyle];
}

- (BOOL)isTranslucent
{
  backgroundColor = self->_backgroundColor;
  if (!backgroundColor)
  {
    return 1;
  }

  [(UIColor *)backgroundColor alphaComponent];
  return v3 < 1.0;
}

- (id)newForegroundStyleWithHeight:(double)a3
{
  v5 = objc_alloc([(UIStatusBarNewUIStyleAttributes *)self foregroundStyleClass]);
  v6 = [(UIStatusBarNewUIStyleAttributes *)self legibilityStyle];
  foregroundColor = self->_foregroundColor;
  hasBusyBackground = self->_hasBusyBackground;
  v9 = [(UIStatusBarStyleAttributes *)self idiom];

  return [v5 initWithHeight:v6 legibilityStyle:foregroundColor tintColor:hasBusyBackground hasBusyBackground:v9 idiom:a3];
}

@end