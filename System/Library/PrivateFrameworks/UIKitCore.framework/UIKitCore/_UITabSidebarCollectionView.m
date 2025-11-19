@interface _UITabSidebarCollectionView
- (void)layoutSubviews;
@end

@implementation _UITabSidebarCollectionView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _UITabSidebarCollectionView;
  [(UICollectionView *)&v4 layoutSubviews];
  layoutSubviewHandler = self->_layoutSubviewHandler;
  if (layoutSubviewHandler)
  {
    layoutSubviewHandler[2]();
  }
}

@end