@interface PXEditorialBodyLayoutProvider
- ($7A74DE1ADD4D9428579EDAA94466197A)bodyCornerRadius;
- (PXEditorialBodyLayoutProvider)init;
- (PXEditorialBodyLayoutProvider)initWithViewModel:(id)model;
- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate;
- (id)createSectionBodyLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outWantsDecoration:(BOOL *)decoration;
- (void)configureSectionBodyLayout:(id)layout inAssetSectionLayout:(id)sectionLayout forSectionedLayout:(id)sectionedLayout;
- (void)setAvoidsFullWidthHeroes:(BOOL)heroes;
- (void)setBodyCornerRadius:(id)radius;
@end

@implementation PXEditorialBodyLayoutProvider

- ($7A74DE1ADD4D9428579EDAA94466197A)bodyCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->invalidationDelegate);

  return WeakRetained;
}

- (id)createSectionBodyLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outWantsDecoration:(BOOL *)decoration
{
  *decoration = 1;
  sourceCopy = source;
  v10 = objc_alloc_init(PXEditorialSectionBodyLayout);
  v11 = [sourceCopy numberOfItemsInSection:path->section];

  [(PXGGeneratedLayout *)v10 setPadding:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
  if (v11 > [PXSmallCollectionLayoutGenerator maximumNumberOfItemsSupportedForStyle:0]|| [(PXPhotosViewModel *)self->_viewModel gridStyle]== 3)
  {
    if ([(PXEditorialBodyLayoutProvider *)self avoidsFullWidthHeroes])
    {
      v12 = 5;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    v12 = 6;
  }

  [(PXDayAssetsSectionBodyLayout *)v10 setStyle:v12];

  return v10;
}

- (void)configureSectionBodyLayout:(id)layout inAssetSectionLayout:(id)sectionLayout forSectionedLayout:(id)sectionedLayout
{
  layoutCopy = layout;
  sectionLayoutCopy = sectionLayout;
  sectionedLayoutCopy = sectionedLayout;
  v22 = layoutCopy;
  if (v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v19 = NSStringFromClass(v20);
    px_descriptionForAssertionMessage = [v22 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditorialBodyLayoutProvider.m" lineNumber:56 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"bodyLayout", v19, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditorialBodyLayoutProvider.m" lineNumber:56 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"bodyLayout", v19}];
  }

LABEL_3:
  [v22 setDelegate:sectionLayoutCopy];
  [v22 setMediaKind:2];
  [v22 setContentSource:sectionLayoutCopy];
  [v22 setKeyItemIndex:{objc_msgSend(sectionLayoutCopy, "keyItemIndex")}];
  numberOfAssets = [sectionLayoutCopy numberOfAssets];
  if ([v22 numberOfItems] != numberOfAssets)
  {
    [v22 setNumberOfItems:numberOfAssets];
  }

  specManager = [(PXPhotosViewModel *)self->_viewModel specManager];
  extendedTraitCollection = [specManager extendedTraitCollection];

  v15 = [PXAssetsSectionBodyLemonadeEditorialLayoutSpec alloc];
  [sectionedLayoutCopy preferredCornerRadius];
  v16 = [(PXAssetsSectionBodyLemonadeEditorialLayoutSpec *)v15 initWithExtendedTraitCollection:extendedTraitCollection bodyCornerRadius:?];
  [v22 setSpec:v16];

  [v22 setLazy:1];
}

- (void)setBodyCornerRadius:(id)radius
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(self->_bodyCornerRadius, v7))) & 1) == 0)
  {
    self->_bodyCornerRadius.var0.var0.topLeft = v3;
    self->_bodyCornerRadius.var0.var0.topRight = v4;
    self->_bodyCornerRadius.var0.var0.bottomLeft = v5;
    self->_bodyCornerRadius.var0.var0.bottomRight = v6;
    v9 = [(PXEditorialBodyLayoutProvider *)self invalidationDelegate:*&radius.var0.var0.var0];
    [v9 photosSectionBodyLayoutInvalidateConfiguredLayouts:self];
  }
}

- (void)setAvoidsFullWidthHeroes:(BOOL)heroes
{
  if (self->_avoidsFullWidthHeroes != heroes)
  {
    self->_avoidsFullWidthHeroes = heroes;
    invalidationDelegate = [(PXEditorialBodyLayoutProvider *)self invalidationDelegate];
    [invalidationDelegate photosSectionBodyLayoutInvalidateConfiguredLayouts:self];
  }
}

- (PXEditorialBodyLayoutProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditorialBodyLayoutProvider.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXEditorialBodyLayoutProvider init]"}];

  abort();
}

- (PXEditorialBodyLayoutProvider)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = PXEditorialBodyLayoutProvider;
  v6 = [(PXEditorialBodyLayoutProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
  }

  return v7;
}

@end