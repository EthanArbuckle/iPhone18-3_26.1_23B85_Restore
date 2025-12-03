@interface PXBoopableItemsProvider
- (PXBoopableItemsProvider)init;
- (void)setAssets:(id)assets;
@end

@implementation PXBoopableItemsProvider

- (void)setAssets:(id)assets
{
  v4 = [assets copy];
  [(PXBoopableItemsProvider_Swift *)self->_boopableItemsProvider setAssets:v4];
}

- (PXBoopableItemsProvider)init
{
  v6.receiver = self;
  v6.super_class = PXBoopableItemsProvider;
  v2 = [(PXBoopableItemsProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXBoopableItemsProvider_Swift);
    boopableItemsProvider = v2->_boopableItemsProvider;
    v2->_boopableItemsProvider = v3;
  }

  return v2;
}

@end