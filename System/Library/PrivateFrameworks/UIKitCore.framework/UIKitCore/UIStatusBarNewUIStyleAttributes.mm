@interface UIStatusBarNewUIStyleAttributes
- (BOOL)isTranslucent;
- (UIStatusBarNewUIStyleAttributes)initWithRequest:(id)request backgroundColor:(id)color foregroundColor:(id)foregroundColor hasBusyBackground:(BOOL)background;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newForegroundStyleWithHeight:(double)height;
- (int64_t)legibilityStyle;
@end

@implementation UIStatusBarNewUIStyleAttributes

- (UIStatusBarNewUIStyleAttributes)initWithRequest:(id)request backgroundColor:(id)color foregroundColor:(id)foregroundColor hasBusyBackground:(BOOL)background
{
  requestCopy = request;
  colorCopy = color;
  foregroundColorCopy = foregroundColor;
  v19.receiver = self;
  v19.super_class = UIStatusBarNewUIStyleAttributes;
  v13 = [(UIStatusBarStyleAttributes *)&v19 initWithRequest:requestCopy];
  if (v13)
  {
    if (colorCopy || ([requestCopy foregroundColor], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      foregroundColor = foregroundColorCopy;
    }

    else
    {
      foregroundColor = [requestCopy foregroundColor];
    }

    foregroundColor = v13->_foregroundColor;
    v13->_foregroundColor = foregroundColor;
    v17 = foregroundColor;

    objc_storeStrong(&v13->_backgroundColor, color);
    v13->_hasBusyBackground = background;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = UIStatusBarNewUIStyleAttributes;
  v4 = [(UIStatusBarStyleAttributes *)&v6 copyWithZone:zone];
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

- (id)newForegroundStyleWithHeight:(double)height
{
  v5 = objc_alloc([(UIStatusBarNewUIStyleAttributes *)self foregroundStyleClass]);
  legibilityStyle = [(UIStatusBarNewUIStyleAttributes *)self legibilityStyle];
  foregroundColor = self->_foregroundColor;
  hasBusyBackground = self->_hasBusyBackground;
  idiom = [(UIStatusBarStyleAttributes *)self idiom];

  return [v5 initWithHeight:legibilityStyle legibilityStyle:foregroundColor tintColor:hasBusyBackground hasBusyBackground:idiom idiom:height];
}

@end