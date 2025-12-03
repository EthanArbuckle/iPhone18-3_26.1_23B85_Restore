@interface UICompatibilityPredictiveViewController
- (void)setCustomView:(id)view;
- (void)viewDidLayoutSubviews;
@end

@implementation UICompatibilityPredictiveViewController

- (void)setCustomView:(id)view
{
  viewCopy = view;
  customView = self->_customView;
  if (customView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)customView removeFromSuperview];
    objc_storeStrong(&self->_customView, view);
    viewCopy = v8;
    if (v8)
    {
      view = [(UIViewController *)self view];
      [view addSubview:v8];

      viewCopy = v8;
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = UICompatibilityPredictiveViewController;
  [(UIViewController *)&v23 viewDidLayoutSubviews];
  customView = [(UICompatibilityPredictiveViewController *)self customView];

  if (customView)
  {
    view = [(UIViewController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
    customView2 = [(UICompatibilityPredictiveViewController *)self customView];
    [customView2 setFrame:{v11, v12, v8, 36.0}];

    customView3 = [(UICompatibilityPredictiveViewController *)self customView];
    [customView3 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = round(v6 + (v10 - v19) * 0.5);
    customView4 = [(UICompatibilityPredictiveViewController *)self customView];
    [customView4 setFrame:{v16, v21, v18, v20}];
  }
}

@end