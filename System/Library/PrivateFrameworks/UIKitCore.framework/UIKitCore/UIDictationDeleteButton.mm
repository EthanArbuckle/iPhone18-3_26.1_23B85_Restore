@interface UIDictationDeleteButton
- (UIDictationDeleteButton)initWithFrame:(CGRect)a3 actionHandler:(id)a4 tintColor:(id)a5;
- (void)commonInitWithActionHandler:(id)a3 tintColor:(id)a4;
- (void)layoutSubviews;
@end

@implementation UIDictationDeleteButton

- (UIDictationDeleteButton)initWithFrame:(CGRect)a3 actionHandler:(id)a4 tintColor:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = UIDictationDeleteButton;
  v13 = [(UIView *)&v16 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    [(UIDictationDeleteButton *)v13 commonInitWithActionHandler:v11 tintColor:v12];
  }

  return v14;
}

- (void)commonInitWithActionHandler:(id)a3 tintColor:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v30 = [UIBlurEffect effectWithStyle:8];
  v8 = [[UIVisualEffectView alloc] initWithEffect:v30];
  blurView = self->_blurView;
  self->_blurView = v8;

  [(UIView *)self->_blurView setUserInteractionEnabled:0];
  [(UIView *)self addSubview:self->_blurView];
  v10 = [[_UIDictationInternalButton alloc] initWithHandler:v7];

  button = self->_button;
  self->_button = v10;

  v12 = +[UIButtonConfiguration borderlessButtonConfiguration];
  v13 = [UIImage systemImageNamed:@"delete.backward.fill"];
  v14 = [v13 imageWithTintColor:v6 renderingMode:1];

  [v12 setImage:v14];
  [v12 setCornerStyle:3];
  [v12 setButtonSize:3];
  [(UIButton *)self->_button setConfiguration:v12];
  [(UIView *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[UIColor blackColor];
  v16 = [v15 CGColor];
  v17 = [(UIView *)self->_button layer];
  [v17 setShadowColor:v16];

  v18 = [(UIView *)self->_button layer];
  LODWORD(v19) = 0.25;
  [v18 setShadowOpacity:v19];

  v20 = [(UIView *)self->_button layer];
  [v20 setShadowOffset:{0.0, 0.0}];

  v21 = [(UIView *)self->_button layer];
  [v21 setShadowRadius:8.0];

  [(UIView *)self addSubview:self->_button];
  v22 = MEMORY[0x1E69977A0];
  v23 = [(UIView *)self->_button centerXAnchor];
  v24 = [(UIView *)self centerXAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v31[0] = v25;
  v26 = [(UIView *)self->_button centerYAnchor];
  v27 = [(UIView *)self centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v31[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  [v22 activateConstraints:v29];
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = UIDictationDeleteButton;
  [(UIView *)&v26 layoutSubviews];
  v3 = [(UIDictationDeleteButton *)self button];
  [v3 layoutIfNeeded];

  v4 = [(UIDictationDeleteButton *)self button];
  v5 = [v4 imageView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(UIDictationDeleteButton *)self button];
  [v14 convertRect:self toView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  v23 = CGRectGetWidth(v27) + -12.0;
  v28.origin.x = v16;
  v28.origin.y = v18;
  v28.size.width = v20;
  v28.size.height = v22;
  v24 = CGRectGetHeight(v28) + -6.0;
  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  v25 = CGRectGetMidX(v29) - v23 * 0.5;
  v30.origin.x = v16;
  v30.origin.y = v18;
  v30.size.width = v20;
  v30.size.height = v22;
  [(UIView *)self->_blurView setFrame:v25, CGRectGetMidY(v30) - v24 * 0.5, v23, v24];
  [(UIVisualEffectView *)self->_blurView _setCornerRadius:v24 * 0.5];
}

@end