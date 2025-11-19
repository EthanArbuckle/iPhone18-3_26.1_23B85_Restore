@interface _TVLoadingView
- (UIActivityIndicatorView)spinnerView;
- (UIView)labelContainer;
- (UIView)loadingTitleLabel;
- (UIView)spinnerContainer;
- (_TVImageView)backgroundImageView;
- (_TVLoadingView)initWithFrame:(CGRect)a3;
- (void)_showSpinner;
- (void)layoutSubviews;
- (void)setLoadingTitleLabel:(id)a3;
@end

@implementation _TVLoadingView

- (_TVLoadingView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _TVLoadingView;
  v3 = [(_TVLoadingView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_shouldShowSpinner = 1;
    v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(_TVLoadingView *)v4 addSubview:v5];
    objc_storeWeak(&v4->_spinnerView, v5);
    objc_storeWeak(&v4->_spinnerContainer, v5);
    [v5 setAlpha:0.0];
    v6 = [v5 layer];
    [v6 setAllowsGroupOpacity:0];

    v7 = [v5 layer];
    [v7 setAllowsGroupOpacity:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = _TVLoadingView;
  [(_TVLoadingView *)&v29 layoutSubviews];
  [(_TVLoadingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_TVLoadingView *)self backgroundImageView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [MEMORY[0x277D750E8] defaultSizeForStyle:100];
  v12 = [(_TVLoadingView *)self spinnerContainer];
  UIRectCenteredIntegralRect();
  [v12 setFrame:?];

  v13 = [(_TVLoadingView *)self labelContainer];
  [v13 sizeToFit];

  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  v14 = CGRectGetWidth(v30) + -40.0;
  v15 = [(_TVLoadingView *)self labelContainer];
  [v15 sizeThatFits:{v14, 0.0}];
  v17 = v16;

  v18 = [(_TVLoadingView *)self spinnerContainer];
  [v18 frame];
  CGRectGetMaxY(v31);

  UIRectCenteredIntegralRect();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v17 + v25 + 10.0;
  v27 = [(_TVLoadingView *)self labelContainer];
  [v27 setFrame:{v20, v26, v22, v24}];

  v28 = [(_TVLoadingView *)self labelContainer];
  [v28 setAutoresizingMask:37];
}

- (void)setLoadingTitleLabel:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_loadingTitleLabel);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_loadingTitleLabel);
    [v5 removeFromSuperview];

    [(_TVLoadingView *)self addSubview:obj];
    objc_storeWeak(&self->_labelContainer, obj);
    objc_storeWeak(&self->_loadingTitleLabel, obj);
    [(_TVLoadingView *)self setNeedsLayout];
  }
}

- (void)_showSpinner
{
  v10 = [(_TVLoadingView *)self spinnerView];
  v3 = [v10 window];
  if (v3)
  {
    shouldShowSpinner = self->_shouldShowSpinner;

    if (shouldShowSpinner)
    {
      v5 = [(_TVLoadingView *)self loadingTitleLabel];
      v6 = [(_TVLoadingView *)self spinnerView];
      v7 = MEMORY[0x277D75D18];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __30___TVLoadingView__showSpinner__block_invoke;
      v11[3] = &unk_279D6E2F8;
      v12 = v5;
      v13 = v6;
      v8 = v6;
      v9 = v5;
      [v7 animateWithDuration:v11 animations:0.4];
    }
  }

  else
  {
  }
}

- (_TVImageView)backgroundImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundImageView);

  return WeakRetained;
}

- (UIView)loadingTitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_loadingTitleLabel);

  return WeakRetained;
}

- (UIActivityIndicatorView)spinnerView
{
  WeakRetained = objc_loadWeakRetained(&self->_spinnerView);

  return WeakRetained;
}

- (UIView)spinnerContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_spinnerContainer);

  return WeakRetained;
}

- (UIView)labelContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_labelContainer);

  return WeakRetained;
}

@end