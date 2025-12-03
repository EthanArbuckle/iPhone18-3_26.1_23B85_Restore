@interface PKAnimatedNavigationBarTitleView
- (PKAnimatedNavigationBarTitleView)initWithFrame:(CGRect)frame;
- (void)_animateTitleView:(id)view animateIn:(BOOL)in completion:(id)completion;
- (void)layoutSubviews;
- (void)setTitleView:(id)view alpha:(double)alpha;
- (void)setTitleView:(id)view animated:(BOOL)animated;
@end

@implementation PKAnimatedNavigationBarTitleView

- (PKAnimatedNavigationBarTitleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKAnimatedNavigationBarTitleView;
  v3 = [(PKAnimatedNavigationBarTitleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKAnimatedNavigationBarTitleView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)setTitleView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  v36[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  titleView = self->_titleView;
  if (titleView != viewCopy)
  {
    v9 = titleView;
    if (_UISolariumFeatureFlagEnabled())
    {
      objc_storeStrong(&self->_titleView, view);
      if (self->_titleView)
      {
        [(PKAnimatedNavigationBarTitleView *)self addSubview:?];
        [(PKAnimatedNavigationBarTitleView *)self setNeedsLayout];
        [(PKAnimatedNavigationBarTitleView *)self layoutIfNeeded];
        layer = [(UIView *)self->_titleView layer];
        v11 = objc_alloc(MEMORY[0x1E6979378]);
        v12 = [v11 initWithType:*MEMORY[0x1E6979928]];
        [v12 setName:@"gaussianBlur"];
        v36[0] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
        [layer setFilters:v13];
      }

      if (animatedCopy)
      {
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __58__PKAnimatedNavigationBarTitleView_setTitleView_animated___block_invoke_4;
        v25 = &unk_1E8010A10;
        v26 = v9;
        selfCopy = self;
        [(PKAnimatedNavigationBarTitleView *)self _animateTitleView:v26 animateIn:0 completion:&v22];
        [(PKAnimatedNavigationBarTitleView *)self _animateTitleView:self->_titleView animateIn:1 completion:0, v22, v23, v24, v25];
      }

      else
      {
        [(UIView *)v9 removeFromSuperview];
        layer2 = [(UIView *)v9 layer];
        [layer2 setFilters:0];
      }
    }

    else
    {
      if (v9)
      {
        v14 = !animatedCopy;
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
        selfCopy2 = self;
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

      objc_storeStrong(&self->_titleView, view);
      v17 = self->_titleView;
      if (v17)
      {
        superview = [(UIView *)v17 superview];
        v19 = superview == self;

        if (!v19)
        {
          [(PKAnimatedNavigationBarTitleView *)self addSubview:self->_titleView];
        }

        [(PKAnimatedNavigationBarTitleView *)self setNeedsLayout];
        self->_viewState = !animatedCopy;
        [(PKAnimatedNavigationBarTitleView *)self layoutIfNeeded];
        v20 = self->_titleView;
        if (animatedCopy)
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

- (void)setTitleView:(id)view alpha:(double)alpha
{
  viewCopy = view;
  titleView = self->_titleView;
  v12 = viewCopy;
  if (titleView != viewCopy)
  {
    [(UIView *)titleView removeFromSuperview];
    objc_storeStrong(&self->_titleView, view);
    v9 = self->_titleView;
    if (!v9)
    {
      goto LABEL_7;
    }

    superview = [(UIView *)v9 superview];

    titleView = self->_titleView;
    if (superview != self)
    {
      [(PKAnimatedNavigationBarTitleView *)self addSubview:titleView];
      [(PKAnimatedNavigationBarTitleView *)self setNeedsLayout];
      [(PKAnimatedNavigationBarTitleView *)self layoutIfNeeded];
      titleView = self->_titleView;
    }
  }

  [(UIView *)titleView alpha];
  if (v11 != alpha)
  {
    [(UIView *)self->_titleView setAlpha:alpha];
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
  layer = [(UIView *)self->_titleView layer];
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
      [layer setTransform:&v26];
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

  [layer setBounds:{0.0, 0.0, v7, v9}];
  [layer anchorPoint];
  [layer setPosition:{v17 + v24 * v21, v19 + v25 * v23}];
}

- (void)_animateTitleView:(id)view animateIn:(BOOL)in completion:(id)completion
{
  inCopy = in;
  completionCopy = completion;
  if (view)
  {
    viewCopy = view;
    layer = [viewCopy layer];
    v11 = !inCopy;
    if (inCopy)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 30.0;
    }

    if (inCopy)
    {
      v13 = 30.0;
    }

    else
    {
      v13 = 0.0;
    }

    [(PKAnimatedNavigationBarTitleView *)self bounds];
    [viewCopy sizeThatFits:{v15, v14 + -10.0}];
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
    if (!inCopy)
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
    if (inCopy == v11)
    {
      v28 = 0.0;
    }

    else
    {
      v26 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v26 pkui_updateForAdditiveAnimationFromScalar:v11 toScalar:inCopy];
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
      animation = [MEMORY[0x1E6979308] animation];
      [animation setDuration:{fmax(v33, v28)}];
      [animation setAnimations:v25];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __75__PKAnimatedNavigationBarTitleView__animateTitleView_animateIn_completion___block_invoke;
      v38[3] = &unk_1E8010AD8;
      v39 = completionCopy;
      [animation pkui_setCompletionHandler:v38];
      v35 = [layer pkui_addAdditiveAnimation:animation];
      *&v36 = inCopy;
      [layer setOpacity:v36];
      v37 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
      [layer setValue:v37 forKeyPath:@"filters.gaussianBlur.inputRadius"];

      a = v43;
      [layer setTransform:&a];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
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