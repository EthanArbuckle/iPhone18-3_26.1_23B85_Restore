@interface PKAnimatedNavigationBarTitleView
- (PKAnimatedNavigationBarTitleView)initWithFrame:(CGRect)a3;
- (void)_animateTitleView:(id)a3 animateIn:(BOOL)a4 completion:(id)a5;
- (void)layoutSubviews;
- (void)setTitleView:(id)a3 alpha:(double)a4;
- (void)setTitleView:(id)a3 animated:(BOOL)a4;
@end

@implementation PKAnimatedNavigationBarTitleView

- (PKAnimatedNavigationBarTitleView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKAnimatedNavigationBarTitleView;
  v3 = [(PKAnimatedNavigationBarTitleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKAnimatedNavigationBarTitleView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)setTitleView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  titleView = self->_titleView;
  if (titleView != v7)
  {
    v9 = titleView;
    if (_UISolariumFeatureFlagEnabled())
    {
      objc_storeStrong(&self->_titleView, a3);
      if (self->_titleView)
      {
        [(PKAnimatedNavigationBarTitleView *)self addSubview:?];
        [(PKAnimatedNavigationBarTitleView *)self setNeedsLayout];
        [(PKAnimatedNavigationBarTitleView *)self layoutIfNeeded];
        v10 = [(UIView *)self->_titleView layer];
        v11 = objc_alloc(MEMORY[0x1E6979378]);
        v12 = [v11 initWithType:*MEMORY[0x1E6979928]];
        [v12 setName:@"gaussianBlur"];
        v36[0] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
        [v10 setFilters:v13];
      }

      if (v4)
      {
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __58__PKAnimatedNavigationBarTitleView_setTitleView_animated___block_invoke_4;
        v25 = &unk_1E8010A10;
        v26 = v9;
        v27 = self;
        [(PKAnimatedNavigationBarTitleView *)self _animateTitleView:v26 animateIn:0 completion:&v22];
        [(PKAnimatedNavigationBarTitleView *)self _animateTitleView:self->_titleView animateIn:1 completion:0, v22, v23, v24, v25];
      }

      else
      {
        [(UIView *)v9 removeFromSuperview];
        v21 = [(UIView *)v9 layer];
        [v21 setFilters:0];
      }
    }

    else
    {
      if (v9)
      {
        v14 = !v4;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        [(UIView *)v9 removeFromSuperview];
      }

      else
      {
        objc_initWeak(&location, self);
        v15 = MEMORY[0x1E69DD250];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __58__PKAnimatedNavigationBarTitleView_setTitleView_animated___block_invoke;
        v32[3] = &unk_1E8010A10;
        v16 = v9;
        v33 = v16;
        v34 = self;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __58__PKAnimatedNavigationBarTitleView_setTitleView_animated___block_invoke_2;
        v29[3] = &unk_1E80113B0;
        objc_copyWeak(&v31, &location);
        v30 = v16;
        [v15 pkui_animateUsingOptions:4 animations:v32 completion:v29];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }

      objc_storeStrong(&self->_titleView, a3);
      v17 = self->_titleView;
      if (v17)
      {
        v18 = [(UIView *)v17 superview];
        v19 = v18 == self;

        if (!v19)
        {
          [(PKAnimatedNavigationBarTitleView *)self addSubview:self->_titleView];
        }

        [(PKAnimatedNavigationBarTitleView *)self setNeedsLayout];
        self->_viewState = !v4;
        [(PKAnimatedNavigationBarTitleView *)self layoutIfNeeded];
        v20 = self->_titleView;
        if (v4)
        {
          [(UIView *)v20 setAlpha:0.0];
          self->_viewState = 1;
          [(PKAnimatedNavigationBarTitleView *)self setNeedsLayout];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __58__PKAnimatedNavigationBarTitleView_setTitleView_animated___block_invoke_3;
          v28[3] = &unk_1E8010970;
          v28[4] = self;
          [MEMORY[0x1E69DD250] pkui_animateUsingOptions:4 animations:v28 completion:0];
        }

        else
        {
          [(UIView *)v20 setAlpha:1.0];
        }
      }
    }
  }
}

uint64_t __58__PKAnimatedNavigationBarTitleView_setTitleView_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) bounds];
  [*(a1 + 32) frame];
  PKSizeAlignedInRect();
  v2 = *(a1 + 32);

  return [v2 setFrame:?];
}

void __58__PKAnimatedNavigationBarTitleView_setTitleView_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3 != WeakRetained[51])
    {
      v4 = WeakRetained;
      [v3 removeFromSuperview];
      WeakRetained = v4;
    }
  }
}

uint64_t __58__PKAnimatedNavigationBarTitleView_setTitleView_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(*(a1 + 32) + 408);

  return [v2 setAlpha:1.0];
}

void __58__PKAnimatedNavigationBarTitleView_setTitleView_animated___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != *(*(a1 + 40) + 408))
  {
    [v2 removeFromSuperview];
    v3 = [*(a1 + 32) layer];
    [v3 setFilters:0];
  }
}

- (void)setTitleView:(id)a3 alpha:(double)a4
{
  v7 = a3;
  titleView = self->_titleView;
  v12 = v7;
  if (titleView != v7)
  {
    [(UIView *)titleView removeFromSuperview];
    objc_storeStrong(&self->_titleView, a3);
    v9 = self->_titleView;
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = [(UIView *)v9 superview];

    titleView = self->_titleView;
    if (v10 != self)
    {
      [(PKAnimatedNavigationBarTitleView *)self addSubview:titleView];
      [(PKAnimatedNavigationBarTitleView *)self setNeedsLayout];
      [(PKAnimatedNavigationBarTitleView *)self layoutIfNeeded];
      titleView = self->_titleView;
    }
  }

  [(UIView *)titleView alpha];
  if (v11 != a4)
  {
    [(UIView *)self->_titleView setAlpha:a4];
  }

LABEL_7:
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = PKAnimatedNavigationBarTitleView;
  [(PKAnimatedNavigationBarTitleView *)&v27 layoutSubviews];
  [(PKAnimatedNavigationBarTitleView *)self bounds];
  v4 = v3 + -10.0;
  [(UIView *)self->_titleView sizeThatFits:v5, v3 + -10.0];
  v7 = v6;
  v9 = v8;
  v10 = [(UIView *)self->_titleView layer];
  maxWidth = self->_maxWidth;
  if (maxWidth <= 0.0 || v7 <= maxWidth)
  {
    PKSizeAspectFit();
    v7 = v13;
    v9 = v14;
  }

  else
  {
    v15 = _UISolariumFeatureFlagEnabled();
    if ((v15 & 1) == 0)
    {
      CATransform3DMakeScale(&v26, self->_maxWidth / v7, self->_maxWidth / v7, 1.0);
      [v10 setTransform:&v26];
    }

    PKSizeAspectFit();
  }

  PKSizeAspectFit();
  PKSizeAlignedInRect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0 && !self->_viewState)
  {
    v19 = v4;
  }

  [v10 setBounds:{0.0, 0.0, v7, v9}];
  [v10 anchorPoint];
  [v10 setPosition:{v17 + v24 * v21, v19 + v25 * v23}];
}

- (void)_animateTitleView:(id)a3 animateIn:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = a3;
    v10 = [v9 layer];
    v11 = !v5;
    if (v5)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 30.0;
    }

    if (v5)
    {
      v13 = 30.0;
    }

    else
    {
      v13 = 0.0;
    }

    [(PKAnimatedNavigationBarTitleView *)self bounds];
    [v9 sizeThatFits:{v15, v14 + -10.0}];
    v17 = v16;

    maxWidth = self->_maxWidth;
    v19 = v17 <= maxWidth || maxWidth <= 0.0;
    v20 = maxWidth / v17;
    memset(&v43.m21, 0, 96);
    if (v19)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = v20;
    }

    memset(&v43, 0, 32);
    if (!v5)
    {
      CATransform3DMakeScale(&v43, 0.1, 0.1, 1.0);
      memset(&v42, 0, sizeof(v42));
      v24 = 1.0;
      v22 = v21;
      v23 = v21;
    }

    else
    {
      CATransform3DMakeScale(&v43, v21, v21, 1.0);
      memset(&v42, 0, sizeof(v42));
      v22 = 0.0;
      v23 = 0.0;
      v24 = 1.0;
    }

    CATransform3DMakeScale(&v42, v22, v23, v24);
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v5 == v11)
    {
      v28 = 0.0;
    }

    else
    {
      v26 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v26 pkui_updateForAdditiveAnimationFromScalar:v11 toScalar:v5];
      [v25 addObject:v26];
      [v26 duration];
      v28 = fmax(v27, 0.0);
    }

    a = v43;
    b = v42;
    if (!CATransform3DEqualToTransform(&a, &b))
    {
      v29 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"transform"];
      a = v42;
      b = v43;
      [v29 pkui_updateForAdditiveAnimationFromTransform:&a toTransform:&b];
      [v25 addObject:v29];
      [v29 duration];
      v28 = fmax(v30, v28);
    }

    v31 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v31 pkui_updateForAdditiveAnimationFromScalar:v13 toScalar:v12];
    [v25 addObject:v31];
    [v31 duration];
    v33 = v32;

    if ([v25 count])
    {
      v34 = [MEMORY[0x1E6979308] animation];
      [v34 setDuration:{fmax(v33, v28)}];
      [v34 setAnimations:v25];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __75__PKAnimatedNavigationBarTitleView__animateTitleView_animateIn_completion___block_invoke;
      v38[3] = &unk_1E8010AD8;
      v39 = v8;
      [v34 pkui_setCompletionHandler:v38];
      v35 = [v10 pkui_addAdditiveAnimation:v34];
      *&v36 = v5;
      [v10 setOpacity:v36];
      v37 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
      [v10 setValue:v37 forKeyPath:@"filters.gaussianBlur.inputRadius"];

      a = v43;
      [v10 setTransform:&a];
    }

    else if (v8)
    {
      v8[2](v8);
    }
  }
}

uint64_t __75__PKAnimatedNavigationBarTitleView__animateTitleView_animateIn_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end