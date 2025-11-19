@interface UIPopoverBackgroundView
+ (UIEdgeInsets)contentViewInsets;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGRect)_backgroundContentViewFrame;
- (CGRect)_contentViewFrame;
- (CGSize)_shadowOffset;
- (UIEdgeInsets)_contentViewInsets;
- (UIEdgeInsets)_shadowInsets;
- (UIPopoverBackgroundView)initWithFrame:(CGRect)a3;
- (UIPopoverPresentationController)_presentationController;
- (id)_shadowPath;
- (id)_shadowPathForRect:(CGRect)a3 arrowDirection:(unint64_t)a4;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)_setBackgroundBlurEffectStyle:(int64_t)a3;
- (void)_setChromeHidden:(BOOL)a3;
- (void)_updateShadow;
- (void)layoutSubviews;
@end

@implementation UIPopoverBackgroundView

- (UIPopoverBackgroundView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = UIPopoverBackgroundView;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UICornerRadius containerConcentricRadius];
    v5 = [UICornerConfiguration configurationWithRadius:v4];
    [(UIView *)v3 setCornerConfiguration:v5];
  }

  return v3;
}

+ (UIEdgeInsets)contentViewInsets
{
  _UIPopoverBackgroundViewThrowForSelector(a2);
  v2 = NAN;
  v3 = NAN;
  v4 = NAN;
  v5 = NAN;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)_contentViewInsets
{
  v2 = objc_opt_class();

  [v2 contentViewInsets];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)_setChromeHidden:(BOOL)a3
{
  if (self->__chromeHidden != a3)
  {
    self->__chromeHidden = a3;
    [(UIPopoverBackgroundView *)self _updateChrome];
  }
}

- (void)_setBackgroundBlurEffectStyle:(int64_t)a3
{
  if (self->__backgroundBlurEffectStyle != a3)
  {
    self->__backgroundBlurEffectStyle = a3;
    [(UIPopoverBackgroundView *)self _updateChrome];
  }
}

- (id)_shadowPathForRect:(CGRect)a3 arrowDirection:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = 6.0;
  v10 = 0.0;
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      [objc_opt_class() arrowHeight];
      v9 = v13 + 6.0;
    }

    else if (a4 == 2)
    {
      [objc_opt_class() arrowHeight];
      v10 = v11;
    }

    goto LABEL_9;
  }

  if (a4 != 4)
  {
    if (a4 == 8)
    {
      [objc_opt_class() arrowHeight];
LABEL_10:
      v14 = 0.0;
      goto LABEL_11;
    }

LABEL_9:
    v12 = 0.0;
    goto LABEL_10;
  }

  [objc_opt_class() arrowHeight];
  v14 = v22;
  v12 = 0.0;
LABEL_11:
  v15 = x + v14;
  v16 = width - (v12 + v14);
  [(UIPopoverBackgroundView *)self _shadowInsets];

  return [UIBezierPath bezierPathWithRoundedRect:v15 + v18 cornerRadius:y + v9 + v17, v16 - (v18 + v20), height - (v10 + v9) - (v17 + v19), 8.0];
}

- (UIEdgeInsets)_shadowInsets
{
  v2 = 2.0;
  v3 = 2.0;
  v4 = 2.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)_shadowOffset
{
  v2 = 0.0;
  v3 = 6.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_shadowPath
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIPopoverBackgroundView *)self arrowDirection];

  return [(UIPopoverBackgroundView *)self _shadowPathForRect:v11 arrowDirection:v4, v6, v8, v10];
}

- (void)_updateShadow
{
  v3 = [(UIPopoverBackgroundView *)self _shadowPath];
  v4 = [v3 CGPath];

  if (v4)
  {
    v5 = [(UIView *)self layer];
    [v5 setShadowPath:v4];

    v6 = [(UIView *)self layer];
    [(UIPopoverBackgroundView *)self _shadowOpacity];
    *&v7 = v7;
    [v6 setShadowOpacity:v7];

    v8 = [(UIView *)self layer];
    [(UIPopoverBackgroundView *)self _shadowRadius];
    [v8 setShadowRadius:?];

    v9 = [(UIView *)self layer];
    [(UIPopoverBackgroundView *)self _shadowOffset];
    [v9 setShadowOffset:?];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"shadowPath"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIPopoverBackgroundView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v22.receiver = self;
  v22.super_class = UIPopoverBackgroundView;
  v7 = a3;
  v8 = [(UIView *)&v22 actionForLayer:v7 forKey:v6];
  v9 = [v7 hasBeenCommitted];

  if (v9 && [v6 isEqual:@"shadowPath"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [(UIView *)self layer];
    v11 = [v10 presentationLayer];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [(UIPopoverBackgroundView *)self _shadowPathForRect:[(UIPopoverBackgroundView *)self arrowDirection] arrowDirection:v13, v15, v17, v19];
    [v8 setFromValue:{objc_msgSend(v20, "CGPath")}];
  }

  return v8;
}

- (CGRect)_contentViewFrame
{
  [(UIPopoverBackgroundView *)self _backgroundContentViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIPopoverBackgroundView *)self _contentViewInsets];
  v12 = v6 + v11;
  v15 = v8 - (v13 + v14);
  v17 = v10 - (v11 + v16);
  v18 = v4 + v13;
  v19 = v12;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_backgroundContentViewFrame
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIPopoverBackgroundView *)self arrowDirection];
  v12 = 0.0;
  if (v10 > 44.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 6.0;
  }

  if (v11 > 3)
  {
    if (v11 == 4)
    {
      [objc_opt_class() arrowHeight];
      v16 = v13 + v19;
      v15 = 0.0;
      goto LABEL_15;
    }

    if (v11 == 8)
    {
      [objc_opt_class() arrowHeight];
      v15 = v13 + v17;
LABEL_13:
      v16 = 0.0;
LABEL_15:
      v14 = 0.0;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v11 == 1)
  {
    [objc_opt_class() arrowHeight];
    v12 = v18;
    goto LABEL_12;
  }

  if (v11 != 2)
  {
LABEL_12:
    v15 = 0.0;
    goto LABEL_13;
  }

  [objc_opt_class() arrowHeight];
  v15 = 0.0;
  v16 = 0.0;
LABEL_16:
  v20 = v4 + v16;
  v21 = v6 + v12;
  v22 = v8 - (v15 + v16);
  v23 = v10 - (v14 + v12);
  v24 = v20;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v24;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIPopoverBackgroundView;
  [(UIView *)&v3 layoutSubviews];
  [(UIPopoverBackgroundView *)self _updateShadow];
}

- (UIPopoverPresentationController)_presentationController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);

  return WeakRetained;
}

@end