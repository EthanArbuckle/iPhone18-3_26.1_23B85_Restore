@interface UIStatusBarStyleAttributes
- (BOOL)usesVerticalLayout;
- (UIStatusBarStyleAttributes)initWithRequest:(id)a3;
- (double)heightForOrientation:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)foregroundStyle;
- (int64_t)idiom;
- (void)setForegroundAlpha:(double)a3;
@end

@implementation UIStatusBarStyleAttributes

- (UIStatusBarStyleAttributes)initWithRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIStatusBarStyleAttributes;
  v5 = [(UIStatusBarStyleAttributes *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)setForegroundAlpha:(double)a3
{
  v5 = [(UIStatusBarStyleRequest *)self->_request mutableCopy];
  [(UIStatusBarStyleRequest *)v5 setForegroundAlpha:a3];
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

    v6 = [(UIStatusBarStyleAttributes *)self style];
    if (v6 - 300 < 6 || v6 - 103 <= 7 && ((1 << (v6 - 103)) & 0x99) != 0 || (v7 = 0, v6 <= 3) && v6 != 2)
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
  v3 = [v2 userInterfaceIdiom];

  return v3;
}

- (double)heightForOrientation:(int64_t)a3
{
  v5 = [(UIStatusBarStyleRequest *)self->_request overrideHeight];

  if (v5)
  {
    v6 = [(UIStatusBarStyleRequest *)self->_request overrideHeight];
    [v6 doubleValue];
    v8 = v7;

    return v8;
  }

  else
  {
    v10 = _UIDeviceNativeUserInterfaceIdiom();
    v12 = (a3 - 5) < 0xFFFFFFFFFFFFFFFELL && v10 != 1;

    [(UIStatusBarStyleAttributes *)self heightForMetrics:v12];
  }

  return result;
}

- (BOOL)usesVerticalLayout
{
  v2 = [(UIStatusBarStyleAttributes *)self foregroundStyle];
  v3 = [v2 usesVerticalLayout];

  return v3;
}

@end