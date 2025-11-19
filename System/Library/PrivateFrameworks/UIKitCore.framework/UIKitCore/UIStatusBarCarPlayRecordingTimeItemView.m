@interface UIStatusBarCarPlayRecordingTimeItemView
- (CGRect)_pillFrame;
- (UIStatusBarCarPlayRecordingTimeItemView)initWithFrame:(CGRect)a3;
- (void)_updatePillFrame;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)movedToSuperview:(id)a3;
- (void)removeFromSuperview;
- (void)setFrame:(CGRect)a3;
@end

@implementation UIStatusBarCarPlayRecordingTimeItemView

- (UIStatusBarCarPlayRecordingTimeItemView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = UIStatusBarCarPlayRecordingTimeItemView;
  v3 = [(UIView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [_UIStatusBarRoundedCornerView alloc];
    v5 = [(_UIStatusBarRoundedCornerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    pillView = v3->_pillView;
    v3->_pillView = v5;

    v7 = v3->_pillView;
    v8 = +[UIColor externalSystemRedColor];
    [(UIView *)v7 setBackgroundColor:v8];
  }

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = UIStatusBarCarPlayRecordingTimeItemView;
  [(UIView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIStatusBarCarPlayRecordingTimeItemView *)self _updatePillFrame];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIStatusBarCarPlayRecordingTimeItemView;
  [(UIStatusBarButtonActionItemView *)&v3 layoutSubviews];
  [(UIStatusBarCarPlayRecordingTimeItemView *)self _updatePillFrame];
}

- (void)movedToSuperview:(id)a3
{
  [a3 insertSubview:self->_pillView below:self];
  pillView = self->_pillView;
  [(UIStatusBarCarPlayRecordingTimeItemView *)self _pillFrame];

  [(UIView *)pillView setFrame:?];
}

- (void)removeFromSuperview
{
  [(UIView *)self->_pillView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = UIStatusBarCarPlayRecordingTimeItemView;
  [(UIView *)&v3 removeFromSuperview];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v11.receiver = self;
  v11.super_class = UIStatusBarCarPlayRecordingTimeItemView;
  v6 = a3;
  [(UIStatusBarButtonActionItemView *)&v11 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];

  pillView = self->_pillView;
  if (v7 == self)
  {
    v9 = +[UIColor externalSystemTealColor];
  }

  else
  {
    if (!pillView)
    {
      return;
    }

    v9 = +[UIColor externalSystemRedColor];
  }

  v10 = v9;
  [(UIView *)pillView setBackgroundColor:v9];
}

- (CGRect)_pillFrame
{
  [(UIView *)self frame];
  v4 = v3 + -4.0;
  [(UIView *)self frame];
  v9 = round(v8 + v7 * 0.5 + -8.0);
  v10 = round(v6 + v5 * 0.5 - v4 * 0.5);
  v11 = 16.0;
  v12 = v4;
  result.size.height = v11;
  result.size.width = v12;
  result.origin.y = v9;
  result.origin.x = v10;
  return result;
}

- (void)_updatePillFrame
{
  pillView = self->_pillView;
  [(UIStatusBarCarPlayRecordingTimeItemView *)self _pillFrame];

  [(UIView *)pillView setFrame:?];
}

@end