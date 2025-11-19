@interface _UITabSidebarHeaderFooterCell
- (void)setContentConfiguration:(id)a3;
@end

@implementation _UITabSidebarHeaderFooterCell

- (void)setContentConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UITabSidebarHeaderFooterCell;
  [(UICollectionViewCell *)&v4 setContentConfiguration:a3];
  [(UICollectionReusableView *)self invalidateIntrinsicContentSize];
}

@end