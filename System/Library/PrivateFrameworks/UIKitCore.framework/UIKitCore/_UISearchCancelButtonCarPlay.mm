@interface _UISearchCancelButtonCarPlay
- (_UISearchCancelButtonCarPlay)initWithFrame:(CGRect)frame;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
@end

@implementation _UISearchCancelButtonCarPlay

- (_UISearchCancelButtonCarPlay)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _UISearchCancelButtonCarPlay;
  v3 = [(UIButton *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v15.receiver = self;
  v15.super_class = _UISearchCancelButtonCarPlay;
  contextCopy = context;
  [(UIView *)&v15 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];

  focusedView = self->focusedView;
  if (nextFocusedItem == self)
  {
    [(UIView *)focusedView setHidden:0];
    [(UIView *)self sendSubviewToBack:self->focusedView];
    imageView = [(UIButton *)self imageView];
    imageView2 = [(UIButton *)self imageView];
    traitCollection = [imageView2 traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    v13 = 1;
    if (userInterfaceStyle != 2)
    {
      v13 = userInterfaceStyle;
    }

    if (userInterfaceStyle == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13;
    }

    [imageView setOverrideUserInterfaceStyle:v14];
  }

  else
  {
    [(UIView *)focusedView setHidden:1];
    imageView = [(UIButton *)self imageView];
    [imageView setOverrideUserInterfaceStyle:0];
  }
}

@end