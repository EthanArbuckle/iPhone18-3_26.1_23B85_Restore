@interface UIKBBlurredKeyView
- (UIKBBlurredKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (void)layoutSubviews;
- (void)setRenderConfig:(id)a3;
@end

@implementation UIKBBlurredKeyView

- (UIKBBlurredKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  v19.receiver = self;
  v19.super_class = UIKBBlurredKeyView;
  v5 = [(UIKBContainerKeyView *)&v19 initWithFrame:a4 keyplane:a5 key:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [UIKBBackdropView alloc];
    [(UIView *)v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(UIView *)v5 _inheritedRenderConfig];
    v16 = -[UIKBBackdropView initWithFrame:style:](v6, "initWithFrame:style:", [v15 keyBackdropStyle], v8, v10, v12, v14);
    backdropView = v5->_backdropView;
    v5->_backdropView = v16;

    [(UIView *)v5 insertSubview:v5->_backdropView atIndex:0];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIKBBlurredKeyView;
  [(UIKBKeyView *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_backdropView setFrame:?];
}

- (void)setRenderConfig:(id)a3
{
  v4 = a3;
  if ([v4 animatedBackground] && (-[UIKBContainerKeyView key](self, "key"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "interactionType"), v5, v6 == 14))
  {
    [(UIView *)self->_backdropView removeFromSuperview];
    v25.receiver = self;
    v25.super_class = UIKBBlurredKeyView;
    [(UIKBContainerKeyView *)&v25 setRenderConfig:v4, v22.receiver, v22.super_class];
  }

  else
  {
    if (!self->_backdropView)
    {
      v7 = [UIKBBackdropView alloc];
      [(UIView *)self bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(UIView *)self _inheritedRenderConfig];
      v17 = -[UIKBBackdropView initWithFrame:style:](v7, "initWithFrame:style:", [v16 keyBackdropStyle], v9, v11, v13, v15);
      backdropView = self->_backdropView;
      self->_backdropView = v17;

      [(UIView *)self insertSubview:self->_backdropView atIndex:0];
    }

    v19 = [(UIKBContainerKeyView *)self keyplane];
    if (([v19 visualStyling] & 0xFF00) == 0x7F00)
    {
      v20 = 1;
    }

    else
    {
      v21 = [(UIKBContainerKeyView *)self keyplane];
      v20 = [v21 visualStyle] == 5;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __38__UIKBBlurredKeyView_setRenderConfig___block_invoke;
    v23[3] = &unk_1E70F35E0;
    v24 = v20;
    v23[4] = self;
    [UIView performWithoutAnimation:v23];
    [(UIKBKeyView *)self configureBackdropView:self->_backdropView forRenderConfig:v4];
    [(UIKBContainerKeyView *)&v22 setRenderConfig:v4, self, UIKBBlurredKeyView];
  }
}

uint64_t __38__UIKBBlurredKeyView_setRenderConfig___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 3900;
  }

  else
  {
    v3 = [*(a1 + 32) _inheritedRenderConfig];
    v2 = [v3 keyBackdropStyle];
  }

  v4 = *(*(a1 + 32) + 640);

  return [v4 transitionToStyle:v2];
}

@end