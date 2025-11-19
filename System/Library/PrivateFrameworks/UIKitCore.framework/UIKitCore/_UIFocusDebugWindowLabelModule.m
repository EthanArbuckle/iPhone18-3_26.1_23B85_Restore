@interface _UIFocusDebugWindowLabelModule
- (_UIFocusDebugWindowLabelModule)initWithFrame:(CGRect)a3;
- (id)updatedLabelContent;
- (void)update;
@end

@implementation _UIFocusDebugWindowLabelModule

- (_UIFocusDebugWindowLabelModule)initWithFrame:(CGRect)a3
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = _UIFocusDebugWindowLabelModule;
  v3 = [(UIView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v23 = [(UIView *)v8 leadingAnchor];
    v22 = [(UIView *)v3 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22 constant:4.0];
    v25[0] = v21;
    v20 = [(UIView *)v8 trailingAnchor];
    v19 = [(UIView *)v3 trailingAnchor];
    v9 = [v20 constraintEqualToAnchor:v19 constant:-4.0];
    v25[1] = v9;
    v10 = [(UIView *)v8 topAnchor];
    v11 = [(UIView *)v3 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:4.0];
    v25[2] = v12;
    v13 = [(UIView *)v8 bottomAnchor];
    v14 = [(UIView *)v3 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-4.0];
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
  v3 = [(_UIFocusDebugWindowLabelModule *)self updatedLabelContent];
  [(UILabel *)self->_content setText:v3];
}

@end