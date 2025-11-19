@interface SSBlurringFlashView
- (SSBlurringFlashView)initWithFrame:(CGRect)a3;
- (void)_runCompletionBlockIfAppropriate;
- (void)_setCornerRadius:(double)a3;
- (void)flashWithCompletion:(id)a3;
- (void)layoutSubviews;
@end

@implementation SSBlurringFlashView

- (SSBlurringFlashView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SSBlurringFlashView;
  v3 = [(SSFlashView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(SSBlurView);
  blurView = v3->_blurView;
  v3->_blurView = v4;

  [(SSBlurView *)v3->_blurView setBlurRadius:120.0];
  [(SSBlurView *)v3->_blurView setScale:0.125];
  [(SSBlurringFlashView *)v3 addSubview:v3->_blurView];
  v6 = objc_alloc_init(_SSSFlashSuperColorView);
  superColorView = v3->_superColorView;
  v3->_superColorView = v6;

  [(SSBlurringFlashView *)v3 addSubview:v3->_superColorView];
  [(SSBlurView *)v3->_blurView setHidden:1];
  [(_SSSFlashSuperColorView *)v3->_superColorView setHidden:1];
  [(SSBlurringFlashView *)v3 setNeedsLayout];
  return v3;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SSBlurringFlashView;
  [(SSBlurringFlashView *)&v5 layoutSubviews];
  blurView = self->_blurView;
  [(SSBlurringFlashView *)self bounds];
  [(SSBlurView *)blurView setFrame:?];
  superColorView = self->_superColorView;
  [(SSBlurringFlashView *)self bounds];
  [(_SSSFlashSuperColorView *)superColorView setFrame:?];
  [(_SSSFlashSuperColorView *)self->_superColorView setStyle:[(SSFlashView *)self style]];
}

- (void)flashWithCompletion:(id)a3
{
  v4 = a3;
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2]();
    v6 = self->_completionBlock;
    self->_completionBlock = 0;
  }

  self->_superColorViewBackgroundColorAnimatorCompleted = 0;
  self->_blurViewRadiusAnimatorCompleted = 0;
  v7 = [v4 copy];
  v8 = self->_completionBlock;
  self->_completionBlock = v7;

  v9 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.25 controlPoint2:{0.100000001, 0.25, 1.0}];
  [v9 controlPoint1];
  v11 = v10;
  [v9 controlPoint2];
  v13 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.1 controlPoint2:{v11, 0.0, v12}];
  v14 = self;
  [(SSBlurView *)v14->_blurView setHidden:0];
  [(_SSSFlashSuperColorView *)v14->_superColorView setHidden:0];
  v15 = [(SSFlashView *)v14 style];
  v16 = objc_alloc(MEMORY[0x1E69DD278]);
  v17 = 2.0;
  if (v15 == 2)
  {
    v17 = 1.5;
    v18 = 0.5;
  }

  else
  {
    v18 = 1.6;
  }

  v19 = [v16 initWithDuration:v13 timingParameters:v17];
  superColorViewOpacityAnimator = v14->_superColorViewOpacityAnimator;
  v14->_superColorViewOpacityAnimator = v19;

  v21 = v14->_superColorViewOpacityAnimator;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __43__SSBlurringFlashView_flashWithCompletion___block_invoke;
  v35[3] = &unk_1E8590600;
  v35[4] = v14;
  [(UIViewPropertyAnimator *)v21 addAnimations:v35];
  v22 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v9 timingParameters:v18];
  blurViewRadiusAnimator = v14->_blurViewRadiusAnimator;
  v14->_blurViewRadiusAnimator = v22;

  v24 = v14->_blurViewRadiusAnimator;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __43__SSBlurringFlashView_flashWithCompletion___block_invoke_2;
  v34[3] = &unk_1E8590600;
  v34[4] = v14;
  [(UIViewPropertyAnimator *)v24 addAnimations:v34];
  v25 = v14->_blurViewRadiusAnimator;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __43__SSBlurringFlashView_flashWithCompletion___block_invoke_3;
  v33[3] = &unk_1E8590600;
  v33[4] = v14;
  [(UIViewPropertyAnimator *)v25 addAnimations:v33];
  objc_initWeak(&location, v14);
  v26 = v14->_blurViewRadiusAnimator;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __43__SSBlurringFlashView_flashWithCompletion___block_invoke_4;
  v30[3] = &unk_1E85908A8;
  objc_copyWeak(&v31, &location);
  [(UIViewPropertyAnimator *)v26 addCompletion:v30];
  v27 = v14->_superColorViewOpacityAnimator;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __43__SSBlurringFlashView_flashWithCompletion___block_invoke_5;
  v28[3] = &unk_1E85908A8;
  objc_copyWeak(&v29, &location);
  [(UIViewPropertyAnimator *)v27 addCompletion:v28];
  [(UIViewPropertyAnimator *)v14->_superColorViewOpacityAnimator startAnimationAfterDelay:0.1];
  [(UIViewPropertyAnimator *)v14->_blurViewRadiusAnimator startAnimationAfterDelay:0.0];
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __43__SSBlurringFlashView_flashWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _blurViewRadiusAnimatorCompleted];
}

void __43__SSBlurringFlashView_flashWithCompletion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _superColorViewBackgroundColorAnimatorCompleted];
}

- (void)_runCompletionBlockIfAppropriate
{
  if (self->_superColorViewBackgroundColorAnimatorCompleted && self->_blurViewRadiusAnimatorCompleted)
  {
    completionBlock = self->_completionBlock;
    if (completionBlock)
    {
      completionBlock[2](completionBlock, a2);
      v4 = self->_completionBlock;
      self->_completionBlock = 0;
    }
  }
}

- (void)_setCornerRadius:(double)a3
{
  [(SSBlurView *)self->_blurView _setCornerRadius:?];
  superColorView = self->_superColorView;

  [(_SSSFlashSuperColorView *)superColorView _setCornerRadius:a3];
}

@end