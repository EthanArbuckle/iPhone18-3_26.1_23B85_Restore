@interface _UIKeyShortcutHUDSeparatorView
- (UIColor)separatorColor;
- (_UIKeyShortcutHUDSeparatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setSeparatorColor:(id)a3;
@end

@implementation _UIKeyShortcutHUDSeparatorView

- (_UIKeyShortcutHUDSeparatorView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _UIKeyShortcutHUDSeparatorView;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(UIView *)self layoutMarginsGuide];
  [v3 layoutFrame];
  [(UIView *)self->_separatorVisualEffectView setFrame:?];
}

- (UIColor)separatorColor
{
  v2 = [(UIVisualEffectView *)self->_separatorVisualEffectView contentView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setSeparatorColor:(id)a3
{
  separatorVisualEffectView = self->_separatorVisualEffectView;
  v4 = a3;
  v5 = [(UIVisualEffectView *)separatorVisualEffectView contentView];
  [v5 setBackgroundColor:v4];
}

@end