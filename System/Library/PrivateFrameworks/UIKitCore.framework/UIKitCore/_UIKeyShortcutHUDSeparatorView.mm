@interface _UIKeyShortcutHUDSeparatorView
- (UIColor)separatorColor;
- (_UIKeyShortcutHUDSeparatorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setSeparatorColor:(id)color;
@end

@implementation _UIKeyShortcutHUDSeparatorView

- (_UIKeyShortcutHUDSeparatorView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _UIKeyShortcutHUDSeparatorView;
  v3 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setDirectionalLayoutMargins:0.0, 0.0, 0.0, 0.0];
    v5 = [UIVisualEffectView alloc];
    [(UIView *)v4 bounds];
    v6 = [(UIVisualEffectView *)v5 initWithFrame:?];
    separatorVisualEffectView = v4->_separatorVisualEffectView;
    v4->_separatorVisualEffectView = v6;

    [(UIView *)v4 addSubview:v4->_separatorVisualEffectView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _UIKeyShortcutHUDSeparatorView;
  [(UIView *)&v4 layoutSubviews];
  layoutMarginsGuide = [(UIView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  [(UIView *)self->_separatorVisualEffectView setFrame:?];
}

- (UIColor)separatorColor
{
  contentView = [(UIVisualEffectView *)self->_separatorVisualEffectView contentView];
  backgroundColor = [contentView backgroundColor];

  return backgroundColor;
}

- (void)setSeparatorColor:(id)color
{
  separatorVisualEffectView = self->_separatorVisualEffectView;
  colorCopy = color;
  contentView = [(UIVisualEffectView *)separatorVisualEffectView contentView];
  [contentView setBackgroundColor:colorCopy];
}

@end