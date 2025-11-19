@interface _UISearchCancelButtonCarPlay
- (_UISearchCancelButtonCarPlay)initWithFrame:(CGRect)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
@end

@implementation _UISearchCancelButtonCarPlay

- (_UISearchCancelButtonCarPlay)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _UISearchCancelButtonCarPlay;
  v3 = [(UIButton *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    focusedView = v3->focusedView;
    v3->focusedView = v5;

    [(UIView *)v3->focusedView setUserInteractionEnabled:0];
    v7 = v3->focusedView;
    v8 = +[UIColor _carSystemFocusColor];
    [(UIView *)v7 setBackgroundColor:v8];

    [(UIView *)v3->focusedView setHidden:1];
    [(UIView *)v3 addSubview:v3->focusedView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UISearchCancelButtonCarPlay;
  [(UIButton *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  v5 = CGRectInset(v4, 4.0, 4.0);
  [(UIView *)self->focusedView setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
  [(UIView *)self->focusedView frame];
  [(UIView *)self->focusedView _setContinuousCornerRadius:CGRectGetHeight(v6) * 0.5];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v15.receiver = self;
  v15.super_class = _UISearchCancelButtonCarPlay;
  v6 = a3;
  [(UIView *)&v15 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];

  focusedView = self->focusedView;
  if (v7 == self)
  {
    [(UIView *)focusedView setHidden:0];
    [(UIView *)self sendSubviewToBack:self->focusedView];
    v9 = [(UIButton *)self imageView];
    v10 = [(UIButton *)self imageView];
    v11 = [v10 traitCollection];
    v12 = [v11 userInterfaceStyle];
    v13 = 1;
    if (v12 != 2)
    {
      v13 = v12;
    }

    if (v12 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13;
    }

    [v9 setOverrideUserInterfaceStyle:v14];
  }

  else
  {
    [(UIView *)focusedView setHidden:1];
    v9 = [(UIButton *)self imageView];
    [v9 setOverrideUserInterfaceStyle:0];
  }
}

@end