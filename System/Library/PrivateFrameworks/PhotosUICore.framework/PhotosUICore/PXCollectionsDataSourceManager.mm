@interface PXCollectionsDataSourceManager
- (void)registerChangeObserver:(id)observer context:(void *)context;
- (void)unregisterChangeObserver:(id)observer context:(void *)context;
@end

@implementation PXCollectionsDataSourceManager

- (void)unregisterChangeObserver:(id)observer context:(void *)context
{
  v4.receiver = self;
  v4.super_class = PXCollectionsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 unregisterChangeObserver:observer context:context];
}

- (void)registerChangeObserver:(id)observer context:(void *)context
{
  v4.receiver = self;
  v4.super_class = PXCollectionsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 registerChangeObserver:observer context:context];
}

@end