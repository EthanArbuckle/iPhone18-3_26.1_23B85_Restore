@interface VUIAppLoadingViewController
- (void)setLoading:(BOOL)a3;
- (void)setView:(id)a3;
@end

@implementation VUIAppLoadingViewController

- (void)setView:(id)a3
{
  v4 = a3;
  if (!self->_parentView)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    parentView = self->_parentView;
    self->_parentView = v5;

    [(UIView *)self->_parentView setAutoresizingMask:18];
    v7 = self->_parentView;
    v27.receiver = self;
    v27.super_class = VUIAppLoadingViewController;
    [(VUIAppLoadingViewController *)&v27 setView:v7];
  }

  if (!self->_loadingView)
  {
    v8 = objc_alloc_init(VUIAppSpinnerView);
    loadingView = self->_loadingView;
    self->_loadingView = v8;

    [(VUIAppSpinnerView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_parentView addSubview:self->_loadingView];
    v10 = [(VUIAppSpinnerView *)self->_loadingView leadingAnchor];
    v11 = [(VUIAppLoadingViewController *)self view];
    v12 = [v11 leadingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(VUIAppSpinnerView *)self->_loadingView topAnchor];
    v15 = [(VUIAppLoadingViewController *)self view];
    v16 = [v15 topAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    v18 = [(VUIAppSpinnerView *)self->_loadingView trailingAnchor];
    v19 = [(VUIAppLoadingViewController *)self view];
    v20 = [v19 trailingAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [(VUIAppSpinnerView *)self->_loadingView bottomAnchor];
    v23 = [(VUIAppLoadingViewController *)self view];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    [(VUIAppSpinnerView *)self->_loadingView setAlpha:0.0];
  }

  [(UIView *)v4 setAutoresizingMask:18];
  [(UIView *)self->_parentView addSubview:v4];
  principalView = self->_principalView;
  self->_principalView = v4;
}

- (void)setLoading:(BOOL)a3
{
  if (self->_loading != a3)
  {
    v9[7] = v3;
    v9[8] = v4;
    self->_loading = a3;
    if (a3)
    {
      v6 = dispatch_time(0, 500000000);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __42__VUIAppLoadingViewController_setLoading___block_invoke;
      v9[3] = &unk_1E872D768;
      v9[4] = self;
      dispatch_after(v6, MEMORY[0x1E69E96A0], v9);
      [(UIView *)self->_principalView setAlpha:0.0];
    }

    else
    {
      self->_cancelLoading = 1;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __42__VUIAppLoadingViewController_setLoading___block_invoke_4;
      v8[3] = &unk_1E872D768;
      v8[4] = self;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __42__VUIAppLoadingViewController_setLoading___block_invoke_5;
      v7[3] = &unk_1E872F758;
      v7[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:v7 completion:0.25];
    }
  }
}

_BYTE *__42__VUIAppLoadingViewController_setLoading___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[1016] & 1) == 0)
  {
    v3 = [result view];
    [v3 bringSubviewToFront:*(*(a1 + 32) + 992)];

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__VUIAppLoadingViewController_setLoading___block_invoke_2;
    v5[3] = &unk_1E872D768;
    v6 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __42__VUIAppLoadingViewController_setLoading___block_invoke_3;
    v4[3] = &unk_1E872F758;
    v4[4] = v6;
    return [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v4 completion:0.25];
  }

  return result;
}

uint64_t __42__VUIAppLoadingViewController_setLoading___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 992) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 1008);

  return [v2 setAlpha:1.0];
}

uint64_t __42__VUIAppLoadingViewController_setLoading___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 sendSubviewToBack:*(*(a1 + 32) + 992)];

  v3 = *(a1 + 32);

  return [v3 setNeedsFocusUpdate];
}

@end