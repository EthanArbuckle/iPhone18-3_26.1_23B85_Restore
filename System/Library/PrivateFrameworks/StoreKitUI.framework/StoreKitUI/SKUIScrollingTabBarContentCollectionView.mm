@interface SKUIScrollingTabBarContentCollectionView
- (void)_reuseCell:(id)a3;
- (void)layoutSubviews;
@end

@implementation SKUIScrollingTabBarContentCollectionView

- (void)layoutSubviews
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScrollingTabBarContentCollectionView layoutSubviews]";
}

- (void)_reuseCell:(id)a3
{
  v6 = a3;
  [v6 removeFromSuperview];
  v4 = [(SKUIScrollingTabBarContentCollectionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 indexPath];
    [v4 collectionView:self didEndDisplayingCell:v6 forItemAtIndexPath:v5];
  }
}

@end