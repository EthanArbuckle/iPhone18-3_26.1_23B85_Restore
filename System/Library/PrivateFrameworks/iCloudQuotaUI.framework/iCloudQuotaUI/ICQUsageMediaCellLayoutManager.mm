@interface ICQUsageMediaCellLayoutManager
- (id)defaultImageViewForCell:(id)cell;
@end

@implementation ICQUsageMediaCellLayoutManager

- (id)defaultImageViewForCell:(id)cell
{
  v3 = objc_alloc_init(ICQUsageMediaImageView);

  return v3;
}

@end