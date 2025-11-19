@interface PXContentSyndicationSectionHeaderLayoutProvider
- (PXContentSyndicationSectionHeaderLayoutProvider)init;
- (PXContentSyndicationSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4;
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (id)createSectionHeaderLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outAlignment:(unint64_t *)a7;
- (void)sectionedLayout:(id)a3 headerLayout:(id)a4 didChangeDataSource:(id)a5 sectionIndexPath:(PXSimpleIndexPath *)a6 hasSectionChanges:(BOOL)a7;
@end

@implementation PXContentSyndicationSectionHeaderLayoutProvider

- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);

  return WeakRetained;
}

- (void)sectionedLayout:(id)a3 headerLayout:(id)a4 didChangeDataSource:(id)a5 sectionIndexPath:(PXSimpleIndexPath *)a6 hasSectionChanges:(BOOL)a7
{
  v9 = a4;
  [v9 setDataSource:a5];
  v10 = *&a6->item;
  v11[0] = *&a6->dataSourceIdentifier;
  v11[1] = v10;
  [v9 setSectionIndexPath:v11];
}

- (id)createSectionHeaderLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outAlignment:(unint64_t *)a7
{
  v11 = a6;
  v12 = a4;
  v13 = +[PXContentSyndicationConfigurationProvider deprecated_sharedInstance];
  v14 = [v13 syndicationItemsDataSourceManager];

  v15 = [v14 socialLayerHighlightProvider];
  v16 = [[_PXContentSyndicationSectionHeaderLayout alloc] initWithSpec:v11 socialLayerHighlightProvider:v15];

  v17 = [(PXContentSyndicationSectionHeaderLayoutProvider *)self viewModel];
  v18 = [v17 assetCollectionActionManager];
  [(_PXContentSyndicationSectionHeaderLayout *)v16 setAssetCollectionManager:v18];

  [(_PXContentSyndicationSectionHeaderLayout *)v16 setDataSource:v12];
  v19 = *&a5->item;
  v22[0] = *&a5->dataSourceIdentifier;
  v22[1] = v19;
  [(_PXContentSyndicationSectionHeaderLayout *)v16 setSectionIndexPath:v22];
  [(PXGSingleViewLayout *)v16 setStyle:0];
  LODWORD(v20) = -1080452710;
  [(PXGSingleViewLayout *)v16 setZPosition:v20];
  *a7 = 1;

  return v16;
}

- (PXContentSyndicationSectionHeaderLayoutProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationSectionHeaderLayoutProvider.m" lineNumber:64 description:{@"%s is not available as initializer", "-[PXContentSyndicationSectionHeaderLayoutProvider init]"}];

  abort();
}

- (PXContentSyndicationSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXContentSyndicationSectionHeaderLayoutProvider;
  v9 = [(PXContentSyndicationSectionHeaderLayoutProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, a3);
    objc_storeWeak(&v10->_viewProvider, v8);
  }

  return v10;
}

@end