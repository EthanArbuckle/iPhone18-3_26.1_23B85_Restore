@interface SKUIScrollingTabBarContentCollectionView
- (void)_reuseCell:(id)cell;
- (void)layoutSubviews;
@end

@implementation SKUIScrollingTabBarContentCollectionView

- (void)layoutSubviews
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScrollingTabBarContentCollectionView layoutSubviews]";
}

- (void)_reuseCell:(id)cell
{
  cellCopy = cell;
  [cellCopy removeFromSuperview];
  delegate = [(SKUIScrollingTabBarContentCollectionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    indexPath = [cellCopy indexPath];
    [delegate collectionView:self didEndDisplayingCell:cellCopy forItemAtIndexPath:indexPath];
  }
}

@end