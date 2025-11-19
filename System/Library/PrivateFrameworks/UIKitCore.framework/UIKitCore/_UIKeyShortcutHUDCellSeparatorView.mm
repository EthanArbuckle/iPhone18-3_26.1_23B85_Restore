@interface _UIKeyShortcutHUDCellSeparatorView
- (_UIKeyShortcutHUDCellSeparatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _UIKeyShortcutHUDCellSeparatorView

- (_UIKeyShortcutHUDCellSeparatorView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UIKeyShortcutHUDCellSeparatorView;
  v3 = [(UICollectionReusableView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setDirectionalLayoutMargins:0.0, 0.0, 0.0, 0.0];
    v5 = objc_opt_new();
    separatorView = v4->_separatorView;
    v4->_separatorView = v5;

    [(UIView *)v4 addSubview:v4->_separatorView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _UIKeyShortcutHUDCellSeparatorView;
  [(UIView *)&v4 layoutSubviews];
  v3 = [(UIView *)self layoutMarginsGuide];
  [v3 layoutFrame];
  [(UIView *)self->_separatorView setFrame:?];
}

@end