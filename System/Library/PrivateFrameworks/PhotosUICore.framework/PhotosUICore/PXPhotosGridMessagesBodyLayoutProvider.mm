@interface PXPhotosGridMessagesBodyLayoutProvider
- (CGSize)itemsLayout:(id)layout marginForItem:(int64_t)item;
- (PXPhotosGridMessagesBodyLayoutProvider)initWithViewModel:(id)model;
- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate;
- (double)itemsLayout:(id)layout aspectRatioForItem:(int64_t)item;
- (id)createSectionBodyLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outWantsDecoration:(BOOL *)decoration;
- (int64_t)itemsLayout:(id)layout itemForObjectReference:(id)reference options:(unint64_t)options;
- (void)configureSectionBodyLayout:(id)layout inAssetSectionLayout:(id)sectionLayout forSectionedLayout:(id)sectionedLayout;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)sectionedLayout:(id)layout bodyLayout:(id)bodyLayout didChangeDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path hasSectionChanges:(BOOL)changes;
@end

@implementation PXPhotosGridMessagesBodyLayoutProvider

- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->invalidationDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (SpecManagerObservationContext_69095 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridMessagesBodyLayoutProvider.m" lineNumber:150 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v12 = observableCopy;
    invalidationDelegate = [(PXPhotosGridMessagesBodyLayoutProvider *)self invalidationDelegate];
    [invalidationDelegate photosSectionBodyLayoutInvalidateConfiguredLayouts:self];

    observableCopy = v12;
  }
}

- (int64_t)itemsLayout:(id)layout itemForObjectReference:(id)reference options:(unint64_t)options
{
  optionsCopy = options;
  layoutCopy = layout;
  referenceCopy = reference;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = referenceCopy;
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  if ((optionsCopy & 1) == 0)
  {
    goto LABEL_8;
  }

  dataSource = [layoutCopy dataSource];
  v12 = [dataSource objectReferenceNearestToObjectReference:v10 inSection:{objc_msgSend(layoutCopy, "section")}];

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
  dataSource2 = [layoutCopy dataSource];
  v15 = dataSource2;
  if (dataSource2)
  {
    [dataSource2 indexPathForAssetReference:v12];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (v17 != *off_1E7721F68 && v18 != 0x7FFFFFFFFFFFFFFFLL && *(&v18 + 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(&v17 + 1) == [layoutCopy section])
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

- (CGSize)itemsLayout:(id)layout marginForItem:(int64_t)item
{
  layoutCopy = layout;
  v6 = [layoutCopy assetForItemIndex:item];
  [v6 aspectRatio];
  v8 = v7;
  spec = [layoutCopy spec];

  if (v8 > 1.01 || v8 < 0.99)
  {
    [spec itemInternalMargin];
  }

  else
  {
    [spec itemInternalSquareMargin];
  }

  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)itemsLayout:(id)layout aspectRatioForItem:(int64_t)item
{
  v4 = [layout assetForItemIndex:item];
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

- (id)createSectionBodyLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outWantsDecoration:(BOOL *)decoration
{
  sourceCopy = source;
  v11 = objc_alloc_init(PXPhotosGridMessagesBodyLayout);
  -[PXGItemsLayout setNumberOfItems:](v11, "setNumberOfItems:", [sourceCopy numberOfItemsInSection:path->section]);
  [(PXPhotosGridMessagesBodyLayout *)v11 setDataSource:sourceCopy section:path->section];

  [(PXGItemsLayout *)v11 setDelegate:self];
  *decoration = 0;
  assetDecorationSource = [(PXPhotosGridMessagesBodyLayout *)v11 assetDecorationSource];
  tapbackStatusManager = [(PXPhotosGridMessagesBodyLayoutProvider *)self tapbackStatusManager];
  [assetDecorationSource setTapbackStatusManager:tapbackStatusManager];

  assetImportStatusManager = [(PXPhotosGridMessagesBodyLayoutProvider *)self assetImportStatusManager];
  [assetDecorationSource setAssetImportStatusManager:assetImportStatusManager];

  [assetDecorationSource setInterItemSpacingThresholdForExteriorFocusRingSelection:0];
  v15 = [(PXGDecoratingLayout *)[_PXMessagesGridDecoratingLayout alloc] initWithDecoratedLayout:v11];
  [(PXGDecoratingLayout *)v15 setActiveDecorations:&unk_1F1910450];
  [(PXGDecoratingLayout *)v15 setDecorationSource:assetDecorationSource];
  [(PXGDecoratingLayout *)v15 setContentSource:v11];

  return v15;
}

- (void)configureSectionBodyLayout:(id)layout inAssetSectionLayout:(id)sectionLayout forSectionedLayout:(id)sectionedLayout
{
  sectionLayoutCopy = sectionLayout;
  decoratedLayout = [layout decoratedLayout];
  selectionSnapshot = [sectionLayoutCopy selectionSnapshot];
  assetDecorationSource = [decoratedLayout assetDecorationSource];
  [assetDecorationSource setSelectionSnapshot:selectionSnapshot];

  isSelecting = [sectionLayoutCopy isSelecting];
  assetDecorationSource2 = [decoratedLayout assetDecorationSource];
  [assetDecorationSource2 setIsInSelectMode:isSelecting];

  tapbackStatusManager = [sectionLayoutCopy tapbackStatusManager];

  assetDecorationSource3 = [decoratedLayout assetDecorationSource];
  [assetDecorationSource3 setTapbackStatusManager:tapbackStatusManager];

  specManager = [(PXPhotosGridMessagesBodyLayoutProvider *)self specManager];
  spec = [specManager spec];
  [decoratedLayout setSpec:spec];
}

- (void)sectionedLayout:(id)layout bodyLayout:(id)bodyLayout didChangeDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path hasSectionChanges:(BOOL)changes
{
  sourceCopy = source;
  decoratedLayout = [bodyLayout decoratedLayout];
  [decoratedLayout setDataSource:sourceCopy section:path->section];
}

- (PXPhotosGridMessagesBodyLayoutProvider)initWithViewModel:(id)model
{
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = PXPhotosGridMessagesBodyLayoutProvider;
  v5 = [(PXPhotosGridMessagesBodyLayoutProvider *)&v17 init];
  if (v5)
  {
    v6 = [PXPhotosGridMessagesLayoutSpecManager alloc];
    specManager = [modelCopy specManager];
    extendedTraitCollection = [specManager extendedTraitCollection];
    v9 = [(PXFeatureSpecManager *)v6 initWithExtendedTraitCollection:extendedTraitCollection];

    specManager = v5->_specManager;
    v5->_specManager = v9;
    v11 = v9;

    [(PXPhotosGridMessagesLayoutSpecManager *)v5->_specManager registerChangeObserver:v5 context:SpecManagerObservationContext_69095];
    tapbackStatusManager = [modelCopy tapbackStatusManager];
    tapbackStatusManager = v5->_tapbackStatusManager;
    v5->_tapbackStatusManager = tapbackStatusManager;

    assetImportStatusManager = [modelCopy assetImportStatusManager];
    assetImportStatusManager = v5->_assetImportStatusManager;
    v5->_assetImportStatusManager = assetImportStatusManager;
  }

  return v5;
}

@end