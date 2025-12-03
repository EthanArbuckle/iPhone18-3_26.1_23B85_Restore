@interface _UIFocusDebugWindowLabelModule
- (_UIFocusDebugWindowLabelModule)initWithFrame:(CGRect)frame;
- (id)updatedLabelContent;
- (void)update;
@end

@implementation _UIFocusDebugWindowLabelModule

- (_UIFocusDebugWindowLabelModule)initWithFrame:(CGRect)frame
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = _UIFocusDebugWindowLabelModule;
  v3 = [(UIView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [off_1E70ECC18 fontWithName:@"Menlo" size:11.0];
    [(UILabel *)v4 setFont:v5];

    v6 = +[UIColor whiteColor];
    [(UILabel *)v4 setTextColor:v6];

    [(UIView *)v4 setAutoresizingMask:18];
    [(UILabel *)v4 setNumberOfLines:0];
    content = v3->_content;
    v3->_content = v4;
    v8 = v4;

    [(UIView *)v3 addSubview:v8];
    v18 = MEMORY[0x1E69977A0];
    leadingAnchor = [(UIView *)v8 leadingAnchor];
    leadingAnchor2 = [(UIView *)v3 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
    v25[0] = v21;
    trailingAnchor = [(UIView *)v8 trailingAnchor];
    trailingAnchor2 = [(UIView *)v3 trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
    v25[1] = v9;
    topAnchor = [(UIView *)v8 topAnchor];
    topAnchor2 = [(UIView *)v3 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    v25[2] = v12;
    bottomAnchor = [(UIView *)v8 bottomAnchor];
    bottomAnchor2 = [(UIView *)v3 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
    v25[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v18 activateConstraints:v16];
  }

  return v3;
}

- (id)updatedLabelContent
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@:\nSubclasses need to override %@ and return the text that should be shown here.", v5, v6];

  return v7;
}

- (void)update
{
  updatedLabelContent = [(_UIFocusDebugWindowLabelModule *)self updatedLabelContent];
  [(UILabel *)self->_content setText:updatedLabelContent];
}

@end