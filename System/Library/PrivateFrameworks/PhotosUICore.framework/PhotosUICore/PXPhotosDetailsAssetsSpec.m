@interface PXPhotosDetailsAssetsSpec
+ (BOOL)shouldUsePhoneLayoutWithTraitCollection:(id)a3;
- (CGSize)gridInterItemSpacing;
- (CGSize)gridItemSize;
- (PXPhotosDetailsAssetsSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 detailsOptions:(unint64_t)a5;
- (UIEdgeInsets)contentGuideInsets;
- (UIEdgeInsets)gridContentInsets;
- (void)_computeEditorialWithExtendedTraitCollection:(id)a3;
- (void)_computeGridWithExtendedTraitCollection:(id)a3;
- (void)_computeSpecWithExtendedTraitCollection:(id)a3;
@end

@implementation PXPhotosDetailsAssetsSpec

- (CGSize)gridItemSize
{
  width = self->_gridItemSize.width;
  height = self->_gridItemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)gridContentInsets
{
  top = self->_gridContentInsets.top;
  left = self->_gridContentInsets.left;
  bottom = self->_gridContentInsets.bottom;
  right = self->_gridContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)gridInterItemSpacing
{
  width = self->_gridInterItemSpacing.width;
  height = self->_gridInterItemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentGuideInsets
{
  top = self->_contentGuideInsets.top;
  left = self->_contentGuideInsets.left;
  bottom = self->_contentGuideInsets.bottom;
  right = self->_contentGuideInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_computeGridWithExtendedTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 traitCollection];
  [v4 layoutReferenceSize];
  v7 = v6;
  [(PXPhotosDetailsAssetsSpec *)self contentGuideInsets];
  v10 = v7 - (v8 + v9);
  v11 = [objc_opt_class() shouldUsePhoneLayoutWithTraitCollection:v5];
  v12 = [v5 userInterfaceIdiom];
  if (v12 == 2)
  {
    v22 = *MEMORY[0x1E69DDCE0];
    v21 = *(MEMORY[0x1E69DDCE0] + 8);
    v19 = *(MEMORY[0x1E69DDCE0] + 16);
    v18 = *(MEMORY[0x1E69DDCE0] + 24);
    v16 = (v10 - v21 - v18 + -200.0) / 5.0;
    v17 = 50.0;
    v20 = 1;
LABEL_5:
    v15 = v16;
    goto LABEL_6;
  }

  if (!v11)
  {
    if (([(PXPhotosDetailsAssetsSpec *)self shouldInsetAllPhotoDetailsContent]& 1) == 0)
    {
      [(PXPhotosDetailsAssetsSpec *)self _widgetSpec];
      [objc_claimAutoreleasedReturnValue() contentGuideInsets];
      sub_1A524D1D4();
    }

    v22 = *off_1E7721FA8;
    v21 = *(off_1E7721FA8 + 1);
    v19 = *(off_1E7721FA8 + 2);
    v18 = *(off_1E7721FA8 + 3);
    v23 = v10 - (v18 + v21);
    v24 = (v23 + 12.0) / 144.0;
    v25 = vcvtmd_s64_f64(v24);
    v26 = floor(v24);
    v16 = 132.0;
    v27 = (v25 - 1);
    v17 = (v23 - v26 * 132.0) / v27;
    v20 = 0;
    if (v17 > 20.0)
    {
      v16 = floor(v23 + v27 * -20.0) / v26;
      v17 = (v23 + -v26 * v16) / v27;
    }

    goto LABEL_5;
  }

  v13 = [off_1E7721798 photosGridLayoutColumnsForWidth:v10];
  [v4 displayScale];
  v28 = 0.0;
  v29 = 0.0;
  [off_1E7721798 bestItemSizeForAvailableWidth:v13 screenScale:&v29 columns:&v28 bestSpacing:v10 bestInset:v14];
  v18 = v28;
  v17 = v29;
  v19 = 0.0;
  v20 = 1;
  v21 = v28;
  v22 = 0.0;
LABEL_6:
  self->_gridInterItemSpacing.width = v17;
  self->_gridInterItemSpacing.height = v17;
  self->_gridContentInsets.top = v22;
  self->_gridContentInsets.left = v21;
  self->_gridContentInsets.bottom = v19;
  self->_gridContentInsets.right = v18;
  self->_gridItemSize.width = v15;
  self->_gridItemSize.height = v16;
  self->_gridContentMode = v20;
  self->_enableBadges = v12 != 2;
}

- (void)_computeEditorialWithExtendedTraitCollection:(id)a3
{
  v9 = a3;
  if ([v9 userInterfaceIdiom] == 1 && objc_msgSend(v9, "layoutOrientation") == 1)
  {
    p_editorialNumberOfColumns = &self->_editorialNumberOfColumns;
LABEL_6:
    *p_editorialNumberOfColumns = 3;
    v5 = 2.0;
    goto LABEL_9;
  }

  if ([v9 userInterfaceIdiom] == 2)
  {
    p_editorialNumberOfColumns = &self->_editorialNumberOfColumns;
    if ([v9 layoutSizeClass] == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    p_editorialNumberOfColumns = &self->_editorialNumberOfColumns;
  }

  *p_editorialNumberOfColumns = 5;
  v5 = 3.0;
LABEL_9:
  self->_editorialInterTileSpacing = v5;
  if ([v9 userInterfaceIdiom] == 3)
  {
    self->_editorialInterTileSpacing = 50.0;
  }

  v6 = +[PXPhotosDetailsSettings sharedInstance];
  v7 = [v6 editorialLayoutEdit];

  if (v7)
  {
    v8 = +[PXPhotosDetailsSettings sharedInstance];
    *p_editorialNumberOfColumns = [v8 editorialLayoutColumns];
  }
}

- (void)_computeSpecWithExtendedTraitCollection:(id)a3
{
  v4 = a3;
  [(PXPhotosDetailsAssetsSpec *)self _computeEditorialWithExtendedTraitCollection:v4];
  [(PXPhotosDetailsAssetsSpec *)self _computeGridWithExtendedTraitCollection:v4];
}

- (PXPhotosDetailsAssetsSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 detailsOptions:(unint64_t)a5
{
  v8 = a3;
  v20.receiver = self;
  v20.super_class = PXPhotosDetailsAssetsSpec;
  v9 = [(PXPhotosDetailsAssetsSpec *)&v20 initWithExtendedTraitCollection:v8 options:a4];
  v10 = v9;
  if (v9)
  {
    v9->_detailsOptions = a5;
    v11 = [[PXWidgetSpec alloc] initWithExtendedTraitCollection:v8 detailsOptions:a5];
    widgetSpec = v10->__widgetSpec;
    v10->__widgetSpec = v11;

    [(PXWidgetSpec *)v10->__widgetSpec contentGuideInsets];
    v10->_contentGuideInsets.top = v13;
    v10->_contentGuideInsets.left = v14;
    v10->_contentGuideInsets.bottom = v15;
    v10->_contentGuideInsets.right = v16;
    if (([(PXPhotosDetailsAssetsSpec *)v10 shouldInsetAllPhotoDetailsContent]& 1) == 0)
    {
      v10->_contentGuideInsets.right = 0.0;
      v10->_contentGuideInsets.left = 0.0;
    }

    v10->_shouldShowTitle = (a5 & 8) == 0;
    v10->_defaultCornerRadius = 0.0;
    v17 = +[PXCuratedLibrarySettings sharedInstance];
    [v17 interitemSpacingForDays];
    v10->_exploreInteritemSpacing = v18;

    if ([v8 userInterfaceIdiom] == 5)
    {
      v10->_defaultCornerRadius = 2.0;
      v10->_shouldShowTitle = 0;
      v10->_exploreInteritemSpacing = 2.0;
    }

    [(PXPhotosDetailsAssetsSpec *)v10 _computeSpecWithExtendedTraitCollection:v8];
  }

  return v10;
}

+ (BOOL)shouldUsePhoneLayoutWithTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 horizontalSizeClass] == 1 || objc_msgSend(v3, "verticalSizeClass") == 1;

  return v4;
}

@end