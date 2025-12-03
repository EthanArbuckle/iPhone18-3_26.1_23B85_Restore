@interface UIStatusBarStyleAttributes
- (BOOL)usesVerticalLayout;
- (UIStatusBarStyleAttributes)initWithRequest:(id)request;
- (double)heightForOrientation:(int64_t)orientation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)foregroundStyle;
- (int64_t)idiom;
- (void)setForegroundAlpha:(double)alpha;
@end

@implementation UIStatusBarStyleAttributes

- (UIStatusBarStyleAttributes)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = UIStatusBarStyleAttributes;
  v5 = [(UIStatusBarStyleAttributes *)&v9 init];
  if (v5)
  {
    v6 = [requestCopy copy];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(UIStatusBarStyleRequest *)self->_request copy];
  v6 = [v4 initWithRequest:v5];

  v7 = [(UIStatusBarStyleRequest *)self->_request copy];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(UIStatusBarForegroundStyleAttributes *)self->_foregroundStyle copy];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (void)setForegroundAlpha:(double)alpha
{
  v5 = [(UIStatusBarStyleRequest *)self->_request mutableCopy];
  [(UIStatusBarStyleRequest *)v5 setForegroundAlpha:alpha];
  request = self->_request;
  self->_request = v5;
}

- (id)foregroundStyle
{
  foregroundStyle = self->_foregroundStyle;
  if (!foregroundStyle)
  {
    [(UIStatusBarStyleAttributes *)self heightForMetrics:0];
    v4 = [(UIStatusBarStyleAttributes *)self newForegroundStyleWithHeight:?];
    v5 = self->_foregroundStyle;
    self->_foregroundStyle = v4;

    style = [(UIStatusBarStyleAttributes *)self style];
    if (style - 300 < 6 || style - 103 <= 7 && ((1 << (style - 103)) & 0x99) != 0 || (v7 = 0, style <= 3) && style != 2)
    {
      v7 = 1;
    }

    [(UIStatusBarForegroundStyleAttributes *)self->_foregroundStyle setCanShowBreadcrumbs:v7];
    foregroundStyle = self->_foregroundStyle;
  }

  return foregroundStyle;
}

- (int64_t)idiom
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  return userInterfaceIdiom;
}

- (double)heightForOrientation:(int64_t)orientation
{
  overrideHeight = [(UIStatusBarStyleRequest *)self->_request overrideHeight];

  if (overrideHeight)
  {
    overrideHeight2 = [(UIStatusBarStyleRequest *)self->_request overrideHeight];
    [overrideHeight2 doubleValue];
    v8 = v7;

    return v8;
  }

  else
  {
    v10 = _UIDeviceNativeUserInterfaceIdiom();
    v12 = (orientation - 5) < 0xFFFFFFFFFFFFFFFELL && v10 != 1;

    [(UIStatusBarStyleAttributes *)self heightForMetrics:v12];
  }

  return result;
}

- (BOOL)usesVerticalLayout
{
  foregroundStyle = [(UIStatusBarStyleAttributes *)self foregroundStyle];
  usesVerticalLayout = [foregroundStyle usesVerticalLayout];

  return usesVerticalLayout;
}

@end