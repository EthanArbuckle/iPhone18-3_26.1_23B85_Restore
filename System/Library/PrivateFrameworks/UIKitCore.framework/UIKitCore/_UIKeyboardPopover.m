@interface _UIKeyboardPopover
- (_UIKeyboardPopover)initWithPopoverView:(id)a3;
- (void)_setRenderConfig:(id)a3;
@end

@implementation _UIKeyboardPopover

- (_UIKeyboardPopover)initWithPopoverView:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = _UIKeyboardPopover;
  v6 = [(UIView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_popoverView, a3);
    [(UIView *)v7 addSubview:v7->_popoverView];
    [(UIView *)v7->_popoverView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(UIView *)v7->_popoverView topAnchor];
    v9 = [(UIView *)v7 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    v11 = [(UIView *)v7->_popoverView leftAnchor];
    v12 = [(UIView *)v7 leftAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(UIView *)v7->_popoverView widthAnchor];
    v15 = [(UIView *)v7 widthAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(UIView *)v7->_popoverView heightAnchor];
    v18 = [(UIView *)v7 heightAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];
  }

  return v7;
}

- (void)_setRenderConfig:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardPopoverContainer borderColor];
  v6 = [v5 CGColor];
  v7 = [(_UIPopoverView *)self->_popoverView contentView];
  v8 = [v7 layer];
  [v8 setBorderColor:v6];

  v9 = [(_UIPopoverView *)self->_popoverView contentView];
  [v9 _setRenderConfig:v4];
}

@end