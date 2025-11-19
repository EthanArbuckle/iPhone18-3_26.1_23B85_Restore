@interface PXImportConcurrentActionManager
@end

@implementation PXImportConcurrentActionManager

void __50___PXImportConcurrentActionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_PXImportConcurrentActionManager);
  v1 = sharedInstance_sharedInstance_26747;
  sharedInstance_sharedInstance_26747 = v0;
}

@end