@interface _UIContextMenuCustomViewCell
- (_UIContextMenuCustomViewCell)initWithFrame:(CGRect)frame;
- (void)setCustomContentView:(id)view;
@end

@implementation _UIContextMenuCustomViewCell

- (_UIContextMenuCustomViewCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _UIContextMenuCustomViewCell;
  v3 = [(_UIContextMenuCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UICollectionViewCell *)v3 _setFocusStyle:0];
    contentView = [(UICollectionViewCell *)v4 contentView];
    heightAnchor = [contentView heightAnchor];
    v7 = [heightAnchor constraintGreaterThanOrEqualToConstant:1.0];
    [v7 setActive:1];
  }

  return v4;
}

- (void)setCustomContentView:(id)view
{
  viewCopy = view;
  customContentView = self->_customContentView;
  if (customContentView != viewCopy)
  {
    v10 = viewCopy;
    [(UIView *)customContentView removeFromSuperview];
    objc_storeStrong(&self->_customContentView, view);
    contentView = [(UICollectionViewCell *)self contentView];
    v8 = contentView;
    if (contentView)
    {
      v9 = self->_customContentView;
      [contentView addSubview:v9];
      [v8 _addBoundsMatchingConstraintsForView:v9];
    }

    viewCopy = v10;
  }
}

@end