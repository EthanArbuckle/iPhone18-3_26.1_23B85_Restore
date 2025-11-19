@interface _UIFloatingTabBarCollectionView
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation _UIFloatingTabBarCollectionView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _UIFloatingTabBarCollectionView;
  [(UICollectionView *)&v4 layoutSubviews];
  layoutSubviewHandler = self->_layoutSubviewHandler;
  if (layoutSubviewHandler)
  {
    layoutSubviewHandler[2]();
  }
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = _UIFloatingTabBarCollectionView;
  return [&v3 accessibilityTraits]| 0x8000;
}

@end