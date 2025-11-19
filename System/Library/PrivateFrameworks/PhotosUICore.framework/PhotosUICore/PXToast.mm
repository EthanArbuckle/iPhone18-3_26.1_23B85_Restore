@interface PXToast
+ (id)show:(id)a3;
- (PXToast)initWithConfiguration:(id)a3;
- (void)_dismissAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)_handleSwipe:(id)a3;
- (void)_present;
- (void)dismissAnimated:(BOOL)a3 afterDelay:(double)a4;
- (void)setBottomMargin:(double)a3;
- (void)setIsShown:(BOOL)a3;
@end

@implementation PXToast

- (void)_handleSwipe:(id)a3
{
  if ([a3 state] == 3)
  {

    [(PXToast *)self dismissAnimated:1];
  }
}

- (void)_dismissAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PXToast *)self view];
  [(PXToastConfiguration *)self->_configuration setContentView:0];
  v8 = [v7 window];
  v9 = v8;
  if (v4 && v8)
  {
    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69DD250];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __46__PXToast__dismissAnimated_completionHandler___block_invoke;
    v21[3] = &unk_1E774C620;
    v21[4] = self;
    v22 = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __46__PXToast__dismissAnimated_completionHandler___block_invoke_2;
    v17[3] = &unk_1E77349B0;
    v11 = v7;
    v18 = v11;
    v19 = v6;
    objc_copyWeak(&v20, &location);
    [v10 animateWithDuration:0x10000 delay:v21 options:v17 animations:0.5 completion:0.0];
    v12 = [v11 layer];
    LODWORD(v13) = 1.0;
    [v12 setOpacity:v13];

    v14 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__PXToast__dismissAnimated_completionHandler___block_invoke_3;
    v15[3] = &unk_1E774C648;
    v16 = v11;
    [v14 animateWithDuration:0x20000 delay:v15 options:0 animations:0.2 completion:0.0];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    [v7 removeFromSuperview];
    [(PXToast *)self setIsShown:0];
    v6[2](v6);
  }
}

uint64_t __46__PXToast__dismissAnimated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) offscreenConstraint];
  [v2 setActive:1];

  v3 = [*(a1 + 32) onscreenConstraint];
  [v3 setActive:0];

  v4 = *(a1 + 40);

  return [v4 layoutIfNeeded];
}

void __46__PXToast__dismissAnimated_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setIsShown:0];
}

void __46__PXToast__dismissAnimated_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setOpacity:0.0];
}

- (void)dismissAnimated:(BOOL)a3 afterDelay:(double)a4
{
  objc_initWeak(&location, self);
  v6 = dispatch_time(0, (a4 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PXToast_dismissAnimated_afterDelay___block_invoke;
  block[3] = &unk_1E774A170;
  objc_copyWeak(&v8, &location);
  v9 = a3;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __38__PXToast_dismissAnimated_afterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAnimated:*(a1 + 40) completionHandler:&__block_literal_global_11];
}

- (void)setBottomMargin:(double)a3
{
  if (self->_bottomMargin != a3)
  {
    self->_bottomMargin = a3;
    v4 = -a3;
    v5 = [(PXToast *)self onscreenConstraint];
    [v5 setConstant:v4];
  }
}

- (void)_present
{
  v47[1] = *MEMORY[0x1E69E9840];
  if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0 && ![(PXToast *)self isShown])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v4 = [v3 px_firstKeyWindow];

    v5 = [(PXToastConfiguration *)self->_configuration sourceView];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;

    if (!v8)
    {
      PXAssertGetLog();
    }

    v36 = v4;
    [(PXToast *)self setIsShown:1];
    v9 = [(PXToastConfiguration *)self->_configuration contentView];
    if (!v9)
    {
      v9 = [[PXToastDefaultContentView alloc] initWithToastConfiguration:self->_configuration];
    }

    [(PXToast *)self setView:v9];
    [v8 addSubview:v9];
    [v8 bringSubviewToFront:v9];
    [(PXToastDefaultContentView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = MEMORY[0x1E696ACD8];
    v11 = [(PXToastDefaultContentView *)v9 widthAnchor];
    [v8 bounds];
    v12 = [v11 constraintLessThanOrEqualToConstant:CGRectGetWidth(v48) + -20.0];
    v47[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    [v10 activateConstraints:v13];

    if ([(PXToastConfiguration *)self->_configuration canSwipeToDismiss])
    {
      v14 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:self action:sel__handleSwipe_];
      [v14 setDirection:8];
      [(PXToastDefaultContentView *)v9 addGestureRecognizer:v14];
    }

    v15 = [(PXToastDefaultContentView *)v9 bottomAnchor];
    v16 = [v8 bottomAnchor];
    [(PXToast *)self bottomMargin];
    v18 = [v15 constraintEqualToAnchor:v16 constant:-v17];

    v19 = [(PXToastDefaultContentView *)v9 topAnchor];
    v20 = [v8 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];

    v22 = MEMORY[0x1E696ACD8];
    v23 = [(PXToastDefaultContentView *)v9 centerXAnchor];
    v24 = [v8 centerXAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v46[0] = v25;
    v46[1] = v21;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    [v22 activateConstraints:v26];

    [v8 layoutIfNeeded];
    v27 = MEMORY[0x1E69DD250];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __19__PXToast__present__block_invoke;
    v42[3] = &unk_1E774A1B8;
    v28 = v21;
    v43 = v28;
    v29 = v18;
    v44 = v29;
    v45 = v8;
    [v27 animateWithDuration:0x20000 delay:v42 options:0 animations:0.5 completion:0.0];
    v30 = [(PXToastDefaultContentView *)v9 layer];
    [v30 setOpacity:0.0];

    v31 = MEMORY[0x1E69DD250];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __19__PXToast__present__block_invoke_2;
    v40[3] = &unk_1E774C648;
    v32 = v9;
    v41 = v32;
    [v31 animateWithDuration:0x10000 delay:v40 options:0 animations:0.2 completion:0.3];
    [(PXToast *)self setOnscreenConstraint:v29];
    [(PXToast *)self setOffscreenConstraint:v28];
    [(PXToastConfiguration *)self->_configuration autoDismissalDelay];
    if (v33 > 0.0)
    {
      v34 = v33;
      objc_initWeak(&location, self);
      v35 = dispatch_time(0, (v34 * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __19__PXToast__present__block_invoke_3;
      block[3] = &unk_1E774C318;
      objc_copyWeak(&v38, &location);
      dispatch_after(v35, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __19__PXToast__present__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActive:0];
  [*(a1 + 40) setActive:1];
  v2 = *(a1 + 48);

  return [v2 layoutIfNeeded];
}

void __19__PXToast__present__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  LODWORD(v1) = 1.0;
  [v2 setOpacity:v1];
}

void __19__PXToast__present__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissAnimated:1];
}

- (void)setIsShown:(BOOL)a3
{
  if (self->_isShown != a3)
  {
    self->_isShown = a3;
    v4 = _activeToasts;
    if (a3)
    {
      if (!_activeToasts)
      {
        v5 = [MEMORY[0x1E695DFA8] set];
        v6 = _activeToasts;
        _activeToasts = v5;

        v4 = _activeToasts;
      }

      [v4 addObject:self];
    }

    else
    {

      [v4 removeObject:self];
    }
  }
}

- (PXToast)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXToast;
  v6 = [(PXToast *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    [v5 bottomMargin];
    [(PXToast *)v7 setBottomMargin:?];
  }

  return v7;
}

+ (id)show:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PXToastConfiguration);
  v4[2](v4, v5);

  v6 = [[a1 alloc] initWithConfiguration:v5];
  [v6 _present];

  return v6;
}

@end