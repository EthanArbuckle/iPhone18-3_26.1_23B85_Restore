@interface PXSidebarDataContext
+ (id)standardContextWithLibraryFilterState:(id)state enablementProvider:(id)provider assetsFilterPredicate:(id)predicate collectionsTabBadgeModel:(id)model sharedActivityTabBadgeModel:(id)badgeModel;
- (PXSidebarDataContext)init;
- (PXSidebarDataContext)initWithLibraryFilterState:(id)state workQueue:(id)queue enablementProvider:(id)provider assetsFilterPredicate:(id)predicate collectionsTabBadgeModel:(id)model sharedActivityTabBadgeModel:(id)badgeModel;
- (id)tabBadgeModelForCollection:(id)collection;
@end

@implementation PXSidebarDataContext

- (PXSidebarDataContext)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSidebarDataContext.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXSidebarDataContext init]"}];

  abort();
}

- (id)tabBadgeModelForCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy px_isCollectionsVirtualCollection])
  {
    collectionsTabBadgeModel = [(PXSidebarDataContext *)self collectionsTabBadgeModel];
LABEL_5:
    v6 = collectionsTabBadgeModel;
    goto LABEL_7;
  }

  if ([collectionCopy px_isSharedActivityVirtualCollection])
  {
    collectionsTabBadgeModel = [(PXSidebarDataContext *)self sharedActivityTabBadgeModel];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (PXSidebarDataContext)initWithLibraryFilterState:(id)state workQueue:(id)queue enablementProvider:(id)provider assetsFilterPredicate:(id)predicate collectionsTabBadgeModel:(id)model sharedActivityTabBadgeModel:(id)badgeModel
{
  stateCopy = state;
  queueCopy = queue;
  providerCopy = provider;
  predicateCopy = predicate;
  modelCopy = model;
  badgeModelCopy = badgeModel;
  v24.receiver = self;
  v24.super_class = PXSidebarDataContext;
  v18 = [(PXSidebarDataContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_workQueue, queue);
    objc_storeStrong(&v19->_libraryFilterState, state);
    objc_storeStrong(&v19->_enablementProvider, provider);
    objc_storeStrong(&v19->_assetsFilterPredicate, predicate);
    objc_storeStrong(&v19->_collectionsTabBadgeModel, model);
    objc_storeStrong(&v19->_sharedActivityTabBadgeModel, badgeModel);
  }

  return v19;
}

+ (id)standardContextWithLibraryFilterState:(id)state enablementProvider:(id)provider assetsFilterPredicate:(id)predicate collectionsTabBadgeModel:(id)model sharedActivityTabBadgeModel:(id)badgeModel
{
  v12 = MEMORY[0x1E696ADC8];
  badgeModelCopy = badgeModel;
  modelCopy = model;
  predicateCopy = predicate;
  providerCopy = provider;
  stateCopy = state;
  v18 = objc_alloc_init(v12);
  [v18 setMaxConcurrentOperationCount:1];
  [v18 setQualityOfService:25];
  [v18 setName:@"PXSidebarDataContext.workQueue"];
  v19 = [[self alloc] initWithLibraryFilterState:stateCopy workQueue:v18 enablementProvider:providerCopy assetsFilterPredicate:predicateCopy collectionsTabBadgeModel:modelCopy sharedActivityTabBadgeModel:badgeModelCopy];

  return v19;
}

@end