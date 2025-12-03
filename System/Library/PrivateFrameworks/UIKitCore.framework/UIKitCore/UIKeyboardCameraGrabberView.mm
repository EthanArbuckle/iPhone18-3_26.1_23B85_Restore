@interface UIKeyboardCameraGrabberView
- (UIKeyboardCameraGrabberView)init;
@end

@implementation UIKeyboardCameraGrabberView

- (UIKeyboardCameraGrabberView)init
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = UIKeyboardCameraGrabberView;
  v2 = [(UIView *)&v24 init];
  if (v2)
  {
    v3 = [UIVisualEffectView alloc];
    v4 = [UIBlurEffect effectWithStyle:1];
    v5 = [(UIVisualEffectView *)v3 initWithEffect:v4];
    blurView = v2->_blurView;
    v2->_blurView = v5;

    [(UIView *)v2->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)v2->_blurView layer];
    [layer setMasksToBounds:1];

    layer2 = [(UIView *)v2->_blurView layer];
    [layer2 setCornerRadius:2.5];

    [(UIView *)v2->_blurView setUserInteractionEnabled:0];
    [(UIView *)v2 addSubview:v2->_blurView];
    v21 = MEMORY[0x1E69977A0];
    topAnchor = [(UIView *)v2->_blurView topAnchor];
    topAnchor2 = [(UIView *)v2 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v25[0] = v9;
    centerXAnchor = [(UIView *)v2->_blurView centerXAnchor];
    centerXAnchor2 = [(UIView *)v2 centerXAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v25[1] = v12;
    widthAnchor = [(UIView *)v2->_blurView widthAnchor];
    v14 = [widthAnchor constraintEqualToConstant:36.0];
    v25[2] = v14;
    heightAnchor = [(UIView *)v2->_blurView heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:5.0];
    v25[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v21 activateConstraints:v17];

    v18 = +[UIColor blackColor];
    v19 = [v18 colorWithAlphaComponent:0.01];
    [(UIView *)v2 setBackgroundColor:v19];
  }

  return v2;
}

@end