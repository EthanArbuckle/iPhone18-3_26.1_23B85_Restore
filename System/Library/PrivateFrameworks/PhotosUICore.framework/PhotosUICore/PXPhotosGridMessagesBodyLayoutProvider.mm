@interface PXPhotosGridMessagesBodyLayoutProvider
- (CGSize)itemsLayout:(id)a3 marginForItem:(int64_t)a4;
- (PXPhotosGridMessagesBodyLayoutProvider)initWithViewModel:(id)a3;
- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate;
- (double)itemsLayout:(id)a3 aspectRatioForItem:(int64_t)a4;
- (id)createSectionBodyLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outWantsDecoration:(BOOL *)a7;
- (int64_t)itemsLayout:(id)a3 itemForObjectReference:(id)a4 options:(unint64_t)a5;
- (void)configureSectionBodyLayout:(id)a3 inAssetSectionLayout:(id)a4 forSectionedLayout:(id)a5;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)sectionedLayout:(id)a3 bodyLayout:(id)a4 didChangeDataSource:(id)a5 sectionIndexPath:(PXSimpleIndexPath *)a6 hasSectionChanges:(BOOL)a7;
@end

@implementation PXPhotosGridMessagesBodyLayoutProvider

- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->invalidationDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (SpecManagerObservationContext_69095 != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotosGridMessagesBodyLayoutProvider.m" lineNumber:150 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v12 = v9;
    v10 = [(PXPhotosGridMessagesBodyLayoutProvider *)self invalidationDelegate];
    [v10 photosSectionBodyLayoutInvalidateConfiguredLayouts:self];

    v9 = v12;
  }
}

- (int64_t)itemsLayout:(id)a3 itemForObjectReference:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = v8;
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = [v7 dataSource];
  v12 = [v11 objectReferenceNearestToObjectReference:v10 inSection:{objc_msgSend(v7, "section")}];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_8:
    v12 = v10;
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_6:
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_19;
  }

LABEL_9:
  v17 = 0u;
  v18 = 0u;
  v14 = [v7 dataSource];
  v15 = v14;
  if (v14)
  {
    [v14 indexPathForAssetReference:v12];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (v17 != *off_1E7721F68 && v18 != 0x7FFFFFFFFFFFFFFFLL && *(&v18 + 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(&v17 + 1) == [v7 section])
    {
      v13 = v18;
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_19:
  return v13;
}

- (CGSize)itemsLayout:(id)a3 marginForItem:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 assetForItemIndex:a4];
  [v6 aspectRatio];
  v8 = v7;
  v9 = [v5 spec];

  if (v8 > 1.01 || v8 < 0.99)
  {
    [v9 itemInternalMargin];
  }

  else
  {
    [v9 itemInternalSquareMargin];
  }

  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)itemsLayout:(id)a3 aspectRatioForItem:(int64_t)a4
{
  v4 = [a3 assetForItemIndex:a4];
  [v4 aspectRatio];
  v6 = 1.0;
  if (v5 < 0.99)
  {
    v6 = 0.75;
  }

  if (v5 <= 1.01)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.33333333;
  }

  return v7;
}

- (id)createSectionBodyLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outWantsDecoration:(BOOL *)a7
{
  v10 = a4;
  v11 = objc_alloc_init(PXPhotosGridMessagesBodyLayout);
  -[PXGItemsLayout setNumberOfItems:](v11, "setNumberOfItems:", [v10 numberOfItemsInSection:a5->section]);
  [(PXPhotosGridMessagesBodyLayout *)v11 setDataSource:v10 section:a5->section];

  [(PXGItemsLayout *)v11 setDelegate:self];
  *a7 = 0;
  v12 = [(PXPhotosGridMessagesBodyLayout *)v11 assetDecorationSource];
  v13 = [(PXPhotosGridMessagesBodyLayoutProvider *)self tapbackStatusManager];
  [v12 setTapbackStatusManager:v13];

  v14 = [(PXPhotosGridMessagesBodyLayoutProvider *)self assetImportStatusManager];
  [v12 setAssetImportStatusManager:v14];

  [v12 setInterItemSpacingThresholdForExteriorFocusRingSelection:0];
  v15 = [(PXGDecoratingLayout *)[_PXMessagesGridDecoratingLayout alloc] initWithDecoratedLayout:v11];
  [(PXGDecoratingLayout *)v15 setActiveDecorations:&unk_1F1910450];
  [(PXGDecoratingLayout *)v15 setDecorationSource:v12];
  [(PXGDecoratingLayout *)v15 setContentSource:v11];

  return v15;
}

- (void)configureSectionBodyLayout:(id)a3 inAssetSectionLayout:(id)a4 forSectionedLayout:(id)a5
{
  v7 = a4;
  v16 = [a3 decoratedLayout];
  v8 = [v7 selectionSnapshot];
  v9 = [v16 assetDecorationSource];
  [v9 setSelectionSnapshot:v8];

  v10 = [v7 isSelecting];
  v11 = [v16 assetDecorationSource];
  [v11 setIsInSelectMode:v10];

  v12 = [v7 tapbackStatusManager];

  v13 = [v16 assetDecorationSource];
  [v13 setTapbackStatusManager:v12];

  v14 = [(PXPhotosGridMessagesBodyLayoutProvider *)self specManager];
  v15 = [v14 spec];
  [v16 setSpec:v15];
}

- (void)sectionedLayout:(id)a3 bodyLayout:(id)a4 didChangeDataSource:(id)a5 sectionIndexPath:(PXSimpleIndexPath *)a6 hasSectionChanges:(BOOL)a7
{
  v9 = a5;
  v10 = [a4 decoratedLayout];
  [v10 setDataSource:v9 section:a6->section];
}

- (PXPhotosGridMessagesBodyLayoutProvider)initWithViewModel:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PXPhotosGridMessagesBodyLayoutProvider;
  v5 = [(PXPhotosGridMessagesBodyLayoutProvider *)&v17 init];
  if (v5)
  {
    v6 = [PXPhotosGridMessagesLayoutSpecManager alloc];
    v7 = [v4 specManager];
    v8 = [v7 extendedTraitCollection];
    v9 = [(PXFeatureSpecManager *)v6 initWithExtendedTraitCollection:v8];

    specManager = v5->_specManager;
    v5->_specManager = v9;
    v11 = v9;

    [(PXPhotosGridMessagesLayoutSpecManager *)v5->_specManager registerChangeObserver:v5 context:SpecManagerObservationContext_69095];
    v12 = [v4 tapbackStatusManager];
    tapbackStatusManager = v5->_tapbackStatusManager;
    v5->_tapbackStatusManager = v12;

    v14 = [v4 assetImportStatusManager];
    assetImportStatusManager = v5->_assetImportStatusManager;
    v5->_assetImportStatusManager = v14;
  }

  return v5;
}

@end