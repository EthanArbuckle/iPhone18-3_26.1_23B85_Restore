@interface _UIBackButtonMaskView
- (_UIBackButtonMaskView)initWithFrame:(CGRect)frame;
@end

@implementation _UIBackButtonMaskView

- (_UIBackButtonMaskView)initWithFrame:(CGRect)frame
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = _UIBackButtonMaskView;
  v3 = [(UIView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    [(UIView *)v4 setCompositingMode:19];
    v5 = objc_opt_new();
    maskImageView = v4->_maskImageView;
    v4->_maskImageView = v5;

    [(UIImageView *)v4->_maskImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = +[UIColor whiteColor];
    [(UIView *)v4->_maskImageView setTintColor:v7];

    [(UIView *)v4 addSubview:v4->_maskImageView];
    v8 = objc_opt_new();
    maskExtensionView = v4->_maskExtensionView;
    v4->_maskExtensionView = v8;

    v10 = +[UIColor whiteColor];
    [(UIView *)v4->_maskExtensionView setBackgroundColor:v10];

    [(UIView *)v4->_maskExtensionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v4->_maskExtensionView];
    v21 = MEMORY[0x1E69977A0];
    leadingAnchor = [(UIView *)v4 leadingAnchor];
    leadingAnchor2 = [(UIView *)v4->_maskImageView leadingAnchor];
    v23 = [leadingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor2];
    v27[0] = v23;
    trailingAnchor = [(UIView *)v4->_maskExtensionView trailingAnchor];
    trailingAnchor2 = [(UIView *)v4 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v27[1] = v12;
    topAnchor = [(UIView *)v4 topAnchor];
    topAnchor2 = [(UIView *)v4->_maskExtensionView topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v27[2] = v15;
    bottomAnchor = [(UIView *)v4 bottomAnchor];
    bottomAnchor2 = [(UIView *)v4->_maskExtensionView bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v27[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [v21 activateConstraints:v19];
  }

  return v4;
}

@end