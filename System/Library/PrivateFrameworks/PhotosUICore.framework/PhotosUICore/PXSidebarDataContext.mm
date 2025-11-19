@interface PXSidebarDataContext
+ (id)standardContextWithLibraryFilterState:(id)a3 enablementProvider:(id)a4 assetsFilterPredicate:(id)a5 collectionsTabBadgeModel:(id)a6 sharedActivityTabBadgeModel:(id)a7;
- (PXSidebarDataContext)init;
- (PXSidebarDataContext)initWithLibraryFilterState:(id)a3 workQueue:(id)a4 enablementProvider:(id)a5 assetsFilterPredicate:(id)a6 collectionsTabBadgeModel:(id)a7 sharedActivityTabBadgeModel:(id)a8;
- (id)tabBadgeModelForCollection:(id)a3;
@end

@implementation PXSidebarDataContext

- (PXSidebarDataContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSidebarDataContext.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXSidebarDataContext init]"}];

  abort();
}

- (id)tabBadgeModelForCollection:(id)a3
{
  v4 = a3;
  if ([v4 px_isCollectionsVirtualCollection])
  {
    v5 = [(PXSidebarDataContext *)self collectionsTabBadgeModel];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 px_isSharedActivityVirtualCollection])
  {
    v5 = [(PXSidebarDataContext *)self sharedActivityTabBadgeModel];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (PXSidebarDataContext)initWithLibraryFilterState:(id)a3 workQueue:(id)a4 enablementProvider:(id)a5 assetsFilterPredicate:(id)a6 collectionsTabBadgeModel:(id)a7 sharedActivityTabBadgeModel:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = PXSidebarDataContext;
  v18 = [(PXSidebarDataContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_workQueue, a4);
    objc_storeStrong(&v19->_libraryFilterState, a3);
    objc_storeStrong(&v19->_enablementProvider, a5);
    objc_storeStrong(&v19->_assetsFilterPredicate, a6);
    objc_storeStrong(&v19->_collectionsTabBadgeModel, a7);
    objc_storeStrong(&v19->_sharedActivityTabBadgeModel, a8);
  }

  return v19;
}

+ (id)standardContextWithLibraryFilterState:(id)a3 enablementProvider:(id)a4 assetsFilterPredicate:(id)a5 collectionsTabBadgeModel:(id)a6 sharedActivityTabBadgeModel:(id)a7
{
  v12 = MEMORY[0x1E696ADC8];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v12);
  [v18 setMaxConcurrentOperationCount:1];
  [v18 setQualityOfService:25];
  [v18 setName:@"PXSidebarDataContext.workQueue"];
  v19 = [[a1 alloc] initWithLibraryFilterState:v17 workQueue:v18 enablementProvider:v16 assetsFilterPredicate:v15 collectionsTabBadgeModel:v14 sharedActivityTabBadgeModel:v13];

  return v19;
}

@end