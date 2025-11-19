@interface PXPhotosKeyAssetSectionHeaderLayoutProvider
- (PXPhotosKeyAssetSectionHeaderLayoutProvider)init;
- (PXPhotosKeyAssetSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4 bannerProvider:(id)a5;
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (id)createSectionHeaderLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outAlignment:(unint64_t *)a7;
- (void)sectionedLayout:(id)a3 headerLayout:(id)a4 didChangeDataSource:(id)a5 sectionIndexPath:(PXSimpleIndexPath *)a6 hasSectionChanges:(BOOL)a7;
@end

@implementation PXPhotosKeyAssetSectionHeaderLayoutProvider

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
  v13 = [PXPhotosKeyAssetSectionHeaderLayout alloc];
  v14 = [(PXPhotosKeyAssetSectionHeaderLayoutProvider *)self viewModel];
  v15 = [(PXPhotosKeyAssetSectionHeaderLayout *)v13 initWithViewModel:v14];

  [(PXPhotosKeyAssetSectionHeaderLayout *)v15 setDataSource:v12];
  v16 = *&a5->item;
  v19[0] = *&a5->dataSourceIdentifier;
  v19[1] = v16;
  [(PXPhotosKeyAssetSectionHeaderLayout *)v15 setSectionIndexPath:v19];
  v17 = [(PXPhotosKeyAssetSectionHeaderLayoutProvider *)self bannerProvider];
  [(PXPhotosKeyAssetSectionHeaderLayout *)v15 setBannerProvider:v17];

  [(PXPhotosKeyAssetSectionHeaderLayout *)v15 setSpec:v11];
  *a7 = 2;

  return v15;
}

- (PXPhotosKeyAssetSectionHeaderLayoutProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosKeyAssetSectionHeaderLayoutProvider.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXPhotosKeyAssetSectionHeaderLayoutProvider init]"}];

  abort();
}

- (PXPhotosKeyAssetSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4 bannerProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PXPhotosKeyAssetSectionHeaderLayoutProvider;
  v12 = [(PXPhotosKeyAssetSectionHeaderLayoutProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_viewModel, a3);
    objc_storeWeak(&v13->_viewProvider, v10);
    objc_storeStrong(&v13->_bannerProvider, a5);
  }

  return v13;
}

@end