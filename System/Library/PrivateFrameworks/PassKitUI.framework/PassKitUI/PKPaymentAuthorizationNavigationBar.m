@interface PKPaymentAuthorizationNavigationBar
+ (id)_leftBarButtonItemWithImage:(id)a3;
+ (id)applePayBarButtonItem;
+ (id)cardOnFileBarButtonItemForRequestor:(unint64_t)a3;
- (PKPaymentAuthorizationNavigationBar)initWithFrame:(CGRect)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)didUpdateInterfaceStyle;
- (void)layoutSubviews;
@end

@implementation PKPaymentAuthorizationNavigationBar

+ (id)_leftBarButtonItemWithImage:(id)a3
{
  v3 = MEMORY[0x1E69DCAE0];
  v4 = a3;
  v5 = [[v3 alloc] initWithImage:v4];

  v6 = [MEMORY[0x1E69DC888] labelColor];
  [v5 setTintColor:v6];

  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v9, v11, v13}];
  [v15 addSubview:v5];
  v16 = [MEMORY[0x1E69DC668] sharedApplication];
  v17 = [v16 userInterfaceLayoutDirection];

  if (v17 == 1)
  {
    v18 = 4.0;
  }

  else
  {
    v18 = -4.0;
  }

  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  v23 = CGRectOffset(v22, v18, 1.0);
  [v5 setFrame:{v23.origin.x, v23.origin.y, v23.size.width, v23.size.height}];
  v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v15];
  if (_UISolariumFeatureFlagEnabled())
  {
    [v19 _setPrefersNoPlatter:1];
  }

  return v19;
}

+ (id)cardOnFileBarButtonItemForRequestor:(unint64_t)a3
{
  if (a3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E8023158[a3];
  }

  v5 = PKUIImageNamed(v4);
  v6 = [v5 imageWithRenderingMode:2];
  v7 = [a1 _leftBarButtonItemWithImage:v6];

  return v7;
}

+ (id)applePayBarButtonItem
{
  v3 = PKUIImageNamed(@"Payment_Logo");
  v4 = [v3 imageWithRenderingMode:2];
  v5 = [a1 _leftBarButtonItemWithImage:v4];

  return v5;
}

- (PKPaymentAuthorizationNavigationBar)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = PKPaymentAuthorizationNavigationBar;
  v3 = [(PKPaymentAuthorizationNavigationBar *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    environmentLabel = v3->_environmentLabel;
    v3->_environmentLabel = v4;

    v6 = v3->_environmentLabel;
    v7 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
    [(UILabel *)v6 setFont:v7];

    v8 = v3->_environmentLabel;
    v9 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UILabel *)v8 setTextColor:v9];

    v10 = v3->_environmentLabel;
    v11 = PKLocalizedEnvironmentHint();
    [(UILabel *)v10 setText:v11];

    [(UILabel *)v3->_environmentLabel sizeToFit];
    [(PKPaymentAuthorizationNavigationBar *)v3 addSubview:v3->_environmentLabel];
    v12 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    [(PKPaymentAuthorizationNavigationBar *)v3 setBackgroundImage:v12 forBarMetrics:0];
    [(PKPaymentAuthorizationNavigationBar *)v3 setTranslucent:1];
    [(PKPaymentAuthorizationNavigationBar *)v3 didUpdateInterfaceStyle];
  }

  return v3;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = PKPaymentAuthorizationNavigationBar;
  [(PKPaymentAuthorizationNavigationBar *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(PKPaymentAuthorizationNavigationBar *)self didUpdateInterfaceStyle];
}

- (void)didUpdateInterfaceStyle
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__60;
  v9 = __Block_byref_object_dispose__60;
  v10 = 0;
  v3 = [(PKPaymentAuthorizationNavigationBar *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PKPaymentAuthorizationNavigationBar_didUpdateInterfaceStyle__block_invoke;
  v4[3] = &unk_1E8011A18;
  v4[4] = &v5;
  PKUIPerformWithEffectiveTraitCollection(v3, v4);

  [(PKPaymentAuthorizationNavigationBar *)self setShadowImage:v6[5]];
  _Block_object_dispose(&v5, 8);
}

void __62__PKPaymentAuthorizationNavigationBar_didUpdateInterfaceStyle__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DCAB8];
  v6 = PKAuthorizationSeparatorColor();
  v3 = [v2 pkui_imageWithColor:v6];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PKPaymentAuthorizationNavigationBar;
  [(PKPaymentAuthorizationNavigationBar *)&v14 layoutSubviews];
  v3 = [(PKPaymentAuthorizationNavigationBar *)self backItem];

  v4 = 0.0;
  if (!v3)
  {
    v5 = [(PKPaymentAuthorizationNavigationBar *)self topItem];
    v6 = [v5 leftBarButtonItem];
    v7 = [v6 customView];

    if (v7)
    {
      [(UILabel *)self->_environmentLabel frame];
      v8 = [MEMORY[0x1E69DC668] sharedApplication];
      v9 = [v8 userInterfaceLayoutDirection];

      [v7 frame];
      if (v9 == 1)
      {
        CGRectGetMinX(*&v10);
      }

      else
      {
        CGRectGetMaxX(*&v10);
      }

      [(PKPaymentAuthorizationNavigationBar *)self frame];
      UIRectCenteredYInRect();
      [(UILabel *)self->_environmentLabel setFrame:?];
      v4 = 1.0;
    }
  }

  [(UILabel *)self->_environmentLabel setAlpha:v4];
}

@end