@interface PXContentSyndicationSectionHeaderLayoutProvider
- (PXContentSyndicationSectionHeaderLayoutProvider)init;
- (PXContentSyndicationSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider;
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (id)createSectionHeaderLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outAlignment:(unint64_t *)alignment;
- (void)sectionedLayout:(id)layout headerLayout:(id)headerLayout didChangeDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path hasSectionChanges:(BOOL)changes;
@end

@implementation PXContentSyndicationSectionHeaderLayoutProvider

- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);

  return WeakRetained;
}

- (void)sectionedLayout:(id)layout headerLayout:(id)headerLayout didChangeDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path hasSectionChanges:(BOOL)changes
{
  headerLayoutCopy = headerLayout;
  [headerLayoutCopy setDataSource:source];
  v10 = *&path->item;
  v11[0] = *&path->dataSourceIdentifier;
  v11[1] = v10;
  [headerLayoutCopy setSectionIndexPath:v11];
}

- (id)createSectionHeaderLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outAlignment:(unint64_t *)alignment
{
  specCopy = spec;
  sourceCopy = source;
  v13 = +[PXContentSyndicationConfigurationProvider deprecated_sharedInstance];
  syndicationItemsDataSourceManager = [v13 syndicationItemsDataSourceManager];

  socialLayerHighlightProvider = [syndicationItemsDataSourceManager socialLayerHighlightProvider];
  v16 = [[_PXContentSyndicationSectionHeaderLayout alloc] initWithSpec:specCopy socialLayerHighlightProvider:socialLayerHighlightProvider];

  viewModel = [(PXContentSyndicationSectionHeaderLayoutProvider *)self viewModel];
  assetCollectionActionManager = [viewModel assetCollectionActionManager];
  [(_PXContentSyndicationSectionHeaderLayout *)v16 setAssetCollectionManager:assetCollectionActionManager];

  [(_PXContentSyndicationSectionHeaderLayout *)v16 setDataSource:sourceCopy];
  v19 = *&path->item;
  v22[0] = *&path->dataSourceIdentifier;
  v22[1] = v19;
  [(_PXContentSyndicationSectionHeaderLayout *)v16 setSectionIndexPath:v22];
  [(PXGSingleViewLayout *)v16 setStyle:0];
  LODWORD(v20) = -1080452710;
  [(PXGSingleViewLayout *)v16 setZPosition:v20];
  *alignment = 1;

  return v16;
}

- (PXContentSyndicationSectionHeaderLayoutProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationSectionHeaderLayoutProvider.m" lineNumber:64 description:{@"%s is not available as initializer", "-[PXContentSyndicationSectionHeaderLayoutProvider init]"}];

  abort();
}

- (PXContentSyndicationSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider
{
  modelCopy = model;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = PXContentSyndicationSectionHeaderLayoutProvider;
  v9 = [(PXContentSyndicationSectionHeaderLayoutProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, model);
    objc_storeWeak(&v10->_viewProvider, providerCopy);
  }

  return v10;
}

@end