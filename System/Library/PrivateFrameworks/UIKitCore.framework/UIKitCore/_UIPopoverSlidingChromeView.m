@interface _UIPopoverSlidingChromeView
+ (UIEdgeInsets)contentViewInsets;
- (CGSize)_shadowOffset;
- (UIEdgeInsets)_contentViewInsets;
- (UIEdgeInsets)_shadowInsets;
- (id)_shadowPathForRect:(CGRect)a3 arrowDirection:(unint64_t)a4;
- (void)layoutSubviews;
@end

@implementation _UIPopoverSlidingChromeView

+ (UIEdgeInsets)contentViewInsets
{
  [UISplitViewControllerClassicImpl _defaultGutterWidthInView:0];
  v3 = v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v3;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)_contentViewInsets
{
  [UISplitViewControllerClassicImpl _defaultGutterWidthInView:self];
  v4 = *(&self->super.super._viewFlags + 2);
  v5 = 0.0;
  if ((v4 & 0x400000) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0.0;
  }

  if ((v4 & 0x400000) != 0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  v8 = 0.0;
  result.right = v7;
  result.bottom = v5;
  result.left = v6;
  result.top = v8;
  return result;
}

- (UIEdgeInsets)_shadowInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)_shadowOffset
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_shadowPathForRect:(CGRect)a3 arrowDirection:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [objc_opt_class() cornerRadius];

  return [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, width, height, v8];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _UIPopoverSlidingChromeView;
  [(UIPopoverBackgroundView *)&v6 layoutSubviews];
  v3 = [(UIView *)self layer];
  v4 = +[UIColor systemGrayColor];
  [v3 setBorderColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [(UIView *)self layer];
  [v5 setBorderWidth:10.0];
}

@end