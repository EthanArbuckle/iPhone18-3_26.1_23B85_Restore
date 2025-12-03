@interface PXPhotosKeyAssetSectionHeaderLayoutProvider
- (PXPhotosKeyAssetSectionHeaderLayoutProvider)init;
- (PXPhotosKeyAssetSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider bannerProvider:(id)bannerProvider;
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (id)createSectionHeaderLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outAlignment:(unint64_t *)alignment;
- (void)sectionedLayout:(id)layout headerLayout:(id)headerLayout didChangeDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path hasSectionChanges:(BOOL)changes;
@end

@implementation PXPhotosKeyAssetSectionHeaderLayoutProvider

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
  v13 = [PXPhotosKeyAssetSectionHeaderLayout alloc];
  viewModel = [(PXPhotosKeyAssetSectionHeaderLayoutProvider *)self viewModel];
  v15 = [(PXPhotosKeyAssetSectionHeaderLayout *)v13 initWithViewModel:viewModel];

  [(PXPhotosKeyAssetSectionHeaderLayout *)v15 setDataSource:sourceCopy];
  v16 = *&path->item;
  v19[0] = *&path->dataSourceIdentifier;
  v19[1] = v16;
  [(PXPhotosKeyAssetSectionHeaderLayout *)v15 setSectionIndexPath:v19];
  bannerProvider = [(PXPhotosKeyAssetSectionHeaderLayoutProvider *)self bannerProvider];
  [(PXPhotosKeyAssetSectionHeaderLayout *)v15 setBannerProvider:bannerProvider];

  [(PXPhotosKeyAssetSectionHeaderLayout *)v15 setSpec:specCopy];
  *alignment = 2;

  return v15;
}

- (PXPhotosKeyAssetSectionHeaderLayoutProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosKeyAssetSectionHeaderLayoutProvider.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXPhotosKeyAssetSectionHeaderLayoutProvider init]"}];

  abort();
}

- (PXPhotosKeyAssetSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider bannerProvider:(id)bannerProvider
{
  modelCopy = model;
  providerCopy = provider;
  bannerProviderCopy = bannerProvider;
  v15.receiver = self;
  v15.super_class = PXPhotosKeyAssetSectionHeaderLayoutProvider;
  v12 = [(PXPhotosKeyAssetSectionHeaderLayoutProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_viewModel, model);
    objc_storeWeak(&v13->_viewProvider, providerCopy);
    objc_storeStrong(&v13->_bannerProvider, bannerProvider);
  }

  return v13;
}

@end