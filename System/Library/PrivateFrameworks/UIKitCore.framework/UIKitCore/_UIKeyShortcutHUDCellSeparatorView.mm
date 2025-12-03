@interface _UIKeyShortcutHUDCellSeparatorView
- (_UIKeyShortcutHUDCellSeparatorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _UIKeyShortcutHUDCellSeparatorView

- (_UIKeyShortcutHUDCellSeparatorView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIKeyShortcutHUDCellSeparatorView;
  v3 = [(UICollectionReusableView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  layoutMarginsGuide = [(UIView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  [(UIView *)self->_separatorView setFrame:?];
}

@end