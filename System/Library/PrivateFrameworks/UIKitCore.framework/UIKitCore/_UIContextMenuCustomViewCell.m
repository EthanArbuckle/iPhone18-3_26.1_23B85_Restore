@interface _UIContextMenuCustomViewCell
- (_UIContextMenuCustomViewCell)initWithFrame:(CGRect)a3;
- (void)setCustomContentView:(id)a3;
@end

@implementation _UIContextMenuCustomViewCell

- (_UIContextMenuCustomViewCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _UIContextMenuCustomViewCell;
  v3 = [(_UIContextMenuCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UICollectionViewCell *)v3 _setFocusStyle:0];
    v5 = [(UICollectionViewCell *)v4 contentView];
    v6 = [v5 heightAnchor];
    v7 = [v6 constraintGreaterThanOrEqualToConstant:1.0];
    [v7 setActive:1];
  }

  return v4;
}

- (void)setCustomContentView:(id)a3
{
  v5 = a3;
  customContentView = self->_customContentView;
  if (customContentView != v5)
  {
    v10 = v5;
    [(UIView *)customContentView removeFromSuperview];
    objc_storeStrong(&self->_customContentView, a3);
    v7 = [(UICollectionViewCell *)self contentView];
    v8 = v7;
    if (v7)
    {
      v9 = self->_customContentView;
      [v7 addSubview:v9];
      [v8 _addBoundsMatchingConstraintsForView:v9];
    }

    v5 = v10;
  }
}

@end