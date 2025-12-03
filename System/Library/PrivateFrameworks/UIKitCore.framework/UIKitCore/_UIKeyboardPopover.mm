@interface _UIKeyboardPopover
- (_UIKeyboardPopover)initWithPopoverView:(id)view;
- (void)_setRenderConfig:(id)config;
@end

@implementation _UIKeyboardPopover

- (_UIKeyboardPopover)initWithPopoverView:(id)view
{
  viewCopy = view;
  v21.receiver = self;
  v21.super_class = _UIKeyboardPopover;
  v6 = [(UIView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_popoverView, view);
    [(UIView *)v7 addSubview:v7->_popoverView];
    [(UIView *)v7->_popoverView setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(UIView *)v7->_popoverView topAnchor];
    topAnchor2 = [(UIView *)v7 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v10 setActive:1];

    leftAnchor = [(UIView *)v7->_popoverView leftAnchor];
    leftAnchor2 = [(UIView *)v7 leftAnchor];
    v13 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v13 setActive:1];

    widthAnchor = [(UIView *)v7->_popoverView widthAnchor];
    widthAnchor2 = [(UIView *)v7 widthAnchor];
    v16 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v16 setActive:1];

    heightAnchor = [(UIView *)v7->_popoverView heightAnchor];
    heightAnchor2 = [(UIView *)v7 heightAnchor];
    v19 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [v19 setActive:1];
  }

  return v7;
}

- (void)_setRenderConfig:(id)config
{
  configCopy = config;
  v5 = +[UIKeyboardPopoverContainer borderColor];
  cGColor = [v5 CGColor];
  contentView = [(_UIPopoverView *)self->_popoverView contentView];
  layer = [contentView layer];
  [layer setBorderColor:cGColor];

  contentView2 = [(_UIPopoverView *)self->_popoverView contentView];
  [contentView2 _setRenderConfig:configCopy];
}

@end