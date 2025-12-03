@interface SSVPlaybackLeaseItem
- (id)assetForFlavor:(id)flavor;
@end

@implementation SSVPlaybackLeaseItem

- (id)assetForFlavor:(id)flavor
{
  v5.receiver = self;
  v5.super_class = SSVPlaybackLeaseItem;
  v3 = [(SSVPlaybackItem *)&v5 assetForFlavor:flavor];

  return v3;
}

@end