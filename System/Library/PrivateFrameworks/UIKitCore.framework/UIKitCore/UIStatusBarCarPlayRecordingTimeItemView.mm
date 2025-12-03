@interface UIStatusBarCarPlayRecordingTimeItemView
- (CGRect)_pillFrame;
- (UIStatusBarCarPlayRecordingTimeItemView)initWithFrame:(CGRect)frame;
- (void)_updatePillFrame;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)movedToSuperview:(id)superview;
- (void)removeFromSuperview;
- (void)setFrame:(CGRect)frame;
@end

@implementation UIStatusBarCarPlayRecordingTimeItemView

- (UIStatusBarCarPlayRecordingTimeItemView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = UIStatusBarCarPlayRecordingTimeItemView;
  v3 = [(UIView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = UIStatusBarCarPlayRecordingTimeItemView;
  [(UIView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIStatusBarCarPlayRecordingTimeItemView *)self _updatePillFrame];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIStatusBarCarPlayRecordingTimeItemView;
  [(UIStatusBarButtonActionItemView *)&v3 layoutSubviews];
  [(UIStatusBarCarPlayRecordingTimeItemView *)self _updatePillFrame];
}

- (void)movedToSuperview:(id)superview
{
  [superview insertSubview:self->_pillView below:self];
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v11.receiver = self;
  v11.super_class = UIStatusBarCarPlayRecordingTimeItemView;
  contextCopy = context;
  [(UIStatusBarButtonActionItemView *)&v11 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];

  pillView = self->_pillView;
  if (nextFocusedItem == self)
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