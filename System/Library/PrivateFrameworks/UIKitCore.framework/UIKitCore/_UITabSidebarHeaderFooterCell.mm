@interface _UITabSidebarHeaderFooterCell
- (void)setContentConfiguration:(id)configuration;
@end

@implementation _UITabSidebarHeaderFooterCell

- (void)setContentConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = _UITabSidebarHeaderFooterCell;
  [(UICollectionViewCell *)&v4 setContentConfiguration:configuration];
  [(UICollectionReusableView *)self invalidateIntrinsicContentSize];
}

@end