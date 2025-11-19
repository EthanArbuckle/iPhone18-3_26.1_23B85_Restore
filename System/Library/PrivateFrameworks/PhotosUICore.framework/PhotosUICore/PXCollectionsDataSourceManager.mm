@interface PXCollectionsDataSourceManager
- (void)registerChangeObserver:(id)a3 context:(void *)a4;
- (void)unregisterChangeObserver:(id)a3 context:(void *)a4;
@end

@implementation PXCollectionsDataSourceManager

- (void)unregisterChangeObserver:(id)a3 context:(void *)a4
{
  v4.receiver = self;
  v4.super_class = PXCollectionsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 unregisterChangeObserver:a3 context:a4];
}

- (void)registerChangeObserver:(id)a3 context:(void *)a4
{
  v4.receiver = self;
  v4.super_class = PXCollectionsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 registerChangeObserver:a3 context:a4];
}

@end