@interface SSVPlaybackLeaseItem
- (id)assetForFlavor:(id)a3;
@end

@implementation SSVPlaybackLeaseItem

- (id)assetForFlavor:(id)a3
{
  v5.receiver = self;
  v5.super_class = SSVPlaybackLeaseItem;
  v3 = [(SSVPlaybackItem *)&v5 assetForFlavor:a3];

  return v3;
}

@end