@interface UIDictationDeleteButton
- (UIDictationDeleteButton)initWithFrame:(CGRect)frame actionHandler:(id)handler tintColor:(id)color;
- (void)commonInitWithActionHandler:(id)handler tintColor:(id)color;
- (void)layoutSubviews;
@end

@implementation UIDictationDeleteButton

- (UIDictationDeleteButton)initWithFrame:(CGRect)frame actionHandler:(id)handler tintColor:(id)color
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  handlerCopy = handler;
  colorCopy = color;
  v16.receiver = self;
  v16.super_class = UIDictationDeleteButton;
  height = [(UIView *)&v16 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    [(UIDictationDeleteButton *)height commonInitWithActionHandler:handlerCopy tintColor:colorCopy];
  }

  return v14;
}

- (void)commonInitWithActionHandler:(id)handler tintColor:(id)color
{
  v31[2] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  handlerCopy = handler;
  v30 = [UIBlurEffect effectWithStyle:8];
  v8 = [[UIVisualEffectView alloc] initWithEffect:v30];
  blurView = self->_blurView;
  self->_blurView = v8;

  [(UIView *)self->_blurView setUserInteractionEnabled:0];
  [(UIView *)self addSubview:self->_blurView];
  v10 = [[_UIDictationInternalButton alloc] initWithHandler:handlerCopy];

  button = self->_button;
  self->_button = v10;

  v12 = +[UIButtonConfiguration borderlessButtonConfiguration];
  v13 = [UIImage systemImageNamed:@"delete.backward.fill"];
  v14 = [v13 imageWithTintColor:colorCopy renderingMode:1];

  [v12 setImage:v14];
  [v12 setCornerStyle:3];
  [v12 setButtonSize:3];
  [(UIButton *)self->_button setConfiguration:v12];
  [(UIView *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[UIColor blackColor];
  cGColor = [v15 CGColor];
  layer = [(UIView *)self->_button layer];
  [layer setShadowColor:cGColor];

  layer2 = [(UIView *)self->_button layer];
  LODWORD(v19) = 0.25;
  [layer2 setShadowOpacity:v19];

  layer3 = [(UIView *)self->_button layer];
  [layer3 setShadowOffset:{0.0, 0.0}];

  layer4 = [(UIView *)self->_button layer];
  [layer4 setShadowRadius:8.0];

  [(UIView *)self addSubview:self->_button];
  v22 = MEMORY[0x1E69977A0];
  centerXAnchor = [(UIView *)self->_button centerXAnchor];
  centerXAnchor2 = [(UIView *)self centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v31[0] = v25;
  centerYAnchor = [(UIView *)self->_button centerYAnchor];
  centerYAnchor2 = [(UIView *)self centerYAnchor];
  v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v31[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  [v22 activateConstraints:v29];
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = UIDictationDeleteButton;
  [(UIView *)&v26 layoutSubviews];
  button = [(UIDictationDeleteButton *)self button];
  [button layoutIfNeeded];

  button2 = [(UIDictationDeleteButton *)self button];
  imageView = [button2 imageView];
  [imageView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  button3 = [(UIDictationDeleteButton *)self button];
  [button3 convertRect:self toView:{v7, v9, v11, v13}];
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