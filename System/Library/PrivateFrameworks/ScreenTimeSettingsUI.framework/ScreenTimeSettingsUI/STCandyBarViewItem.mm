@interface STCandyBarViewItem
- (STCandyBarViewItem)init;
@end

@implementation STCandyBarViewItem

- (STCandyBarViewItem)init
{
  v6.receiver = self;
  v6.super_class = STCandyBarViewItem;
  v2 = [(STCandyBarViewItem *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sectionView = v2->_sectionView;
    v2->_sectionView = v3;

    [(UIImageView *)v2->_sectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v2;
}

@end