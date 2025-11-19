@interface UICompatibilityPredictiveViewController
- (void)setCustomView:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation UICompatibilityPredictiveViewController

- (void)setCustomView:(id)a3
{
  v5 = a3;
  customView = self->_customView;
  if (customView != v5)
  {
    v8 = v5;
    [(UIView *)customView removeFromSuperview];
    objc_storeStrong(&self->_customView, a3);
    v5 = v8;
    if (v8)
    {
      v7 = [(UIViewController *)self view];
      [v7 addSubview:v8];

      v5 = v8;
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = UICompatibilityPredictiveViewController;
  [(UIViewController *)&v23 viewDidLayoutSubviews];
  v3 = [(UICompatibilityPredictiveViewController *)self customView];

  if (v3)
  {
    v4 = [(UIViewController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
    v13 = [(UICompatibilityPredictiveViewController *)self customView];
    [v13 setFrame:{v11, v12, v8, 36.0}];

    v14 = [(UICompatibilityPredictiveViewController *)self customView];
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = round(v6 + (v10 - v19) * 0.5);
    v22 = [(UICompatibilityPredictiveViewController *)self customView];
    [v22 setFrame:{v16, v21, v18, v20}];
  }
}

@end