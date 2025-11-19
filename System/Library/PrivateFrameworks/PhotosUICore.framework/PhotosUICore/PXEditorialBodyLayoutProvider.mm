@interface PXEditorialBodyLayoutProvider
- ($7A74DE1ADD4D9428579EDAA94466197A)bodyCornerRadius;
- (PXEditorialBodyLayoutProvider)init;
- (PXEditorialBodyLayoutProvider)initWithViewModel:(id)a3;
- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate;
- (id)createSectionBodyLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outWantsDecoration:(BOOL *)a7;
- (void)configureSectionBodyLayout:(id)a3 inAssetSectionLayout:(id)a4 forSectionedLayout:(id)a5;
- (void)setAvoidsFullWidthHeroes:(BOOL)a3;
- (void)setBodyCornerRadius:(id)a3;
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

- (id)createSectionBodyLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outWantsDecoration:(BOOL *)a7
{
  *a7 = 1;
  v9 = a4;
  v10 = objc_alloc_init(PXEditorialSectionBodyLayout);
  v11 = [v9 numberOfItemsInSection:a5->section];

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

- (void)configureSectionBodyLayout:(id)a3 inAssetSectionLayout:(id)a4 forSectionedLayout:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22 = v9;
  if (v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v19 = NSStringFromClass(v20);
    v21 = [v22 px_descriptionForAssertionMessage];
    [v17 handleFailureInMethod:a2 object:self file:@"PXEditorialBodyLayoutProvider.m" lineNumber:56 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"bodyLayout", v19, v21}];
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v17 handleFailureInMethod:a2 object:self file:@"PXEditorialBodyLayoutProvider.m" lineNumber:56 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"bodyLayout", v19}];
  }

LABEL_3:
  [v22 setDelegate:v10];
  [v22 setMediaKind:2];
  [v22 setContentSource:v10];
  [v22 setKeyItemIndex:{objc_msgSend(v10, "keyItemIndex")}];
  v12 = [v10 numberOfAssets];
  if ([v22 numberOfItems] != v12)
  {
    [v22 setNumberOfItems:v12];
  }

  v13 = [(PXPhotosViewModel *)self->_viewModel specManager];
  v14 = [v13 extendedTraitCollection];

  v15 = [PXAssetsSectionBodyLemonadeEditorialLayoutSpec alloc];
  [v11 preferredCornerRadius];
  v16 = [(PXAssetsSectionBodyLemonadeEditorialLayoutSpec *)v15 initWithExtendedTraitCollection:v14 bodyCornerRadius:?];
  [v22 setSpec:v16];

  [v22 setLazy:1];
}

- (void)setBodyCornerRadius:(id)a3
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(self->_bodyCornerRadius, v7))) & 1) == 0)
  {
    self->_bodyCornerRadius.var0.var0.topLeft = v3;
    self->_bodyCornerRadius.var0.var0.topRight = v4;
    self->_bodyCornerRadius.var0.var0.bottomLeft = v5;
    self->_bodyCornerRadius.var0.var0.bottomRight = v6;
    v9 = [(PXEditorialBodyLayoutProvider *)self invalidationDelegate:*&a3.var0.var0.var0];
    [v9 photosSectionBodyLayoutInvalidateConfiguredLayouts:self];
  }
}

- (void)setAvoidsFullWidthHeroes:(BOOL)a3
{
  if (self->_avoidsFullWidthHeroes != a3)
  {
    self->_avoidsFullWidthHeroes = a3;
    v5 = [(PXEditorialBodyLayoutProvider *)self invalidationDelegate];
    [v5 photosSectionBodyLayoutInvalidateConfiguredLayouts:self];
  }
}

- (PXEditorialBodyLayoutProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXEditorialBodyLayoutProvider.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXEditorialBodyLayoutProvider init]"}];

  abort();
}

- (PXEditorialBodyLayoutProvider)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXEditorialBodyLayoutProvider;
  v6 = [(PXEditorialBodyLayoutProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
  }

  return v7;
}

@end