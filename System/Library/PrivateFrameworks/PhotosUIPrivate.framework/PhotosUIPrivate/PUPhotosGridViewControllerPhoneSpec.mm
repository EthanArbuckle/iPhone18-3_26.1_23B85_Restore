@interface PUPhotosGridViewControllerPhoneSpec
- (CGSize)baseInterItemSpacing;
- (UIEdgeInsets)gridContentInsets;
- (int64_t)forceLoadInitialSectionCount;
- (unsigned)thumbnailImageFormat;
- (void)configureCollectionViewGridLayout:(id)layout forWidth:(double)width safeAreaInsets:(UIEdgeInsets)insets;
@end

@implementation PUPhotosGridViewControllerPhoneSpec

- (UIEdgeInsets)gridContentInsets
{
  [(PUPhotosGridViewControllerSpec *)self safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  if (v6 > 0.0 && v3 > 0.0)
  {
    [(PUPhotosGridViewControllerSpec *)self layoutMargins];
    UIEdgeInsetsAdd();
    v5 = v11;
    v7 = v12;
    v9 = v13;
    v10 = v14;
  }

  v15 = v5;
  v16 = v7;
  v17 = v9;
  v18 = v10;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (int64_t)forceLoadInitialSectionCount
{
  px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [px_mainScreen bounds];
  v4 = v3;
  v6 = v5;

  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v8 = [MEMORY[0x1E69C4548] photosGridLayoutColumnsForWidth:v7];
  v9 = MEMORY[0x1E69C4548];
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v12 = 0;
  v13 = 0;
  if (v6 >= v4)
  {
    v4 = v6;
  }

  [v9 bestItemSizeForAvailableWidth:v8 screenScale:&v13 columns:&v12 bestSpacing:v7 bestInset:*&PUMainScreenScale_screenScale];
  return vcvtpd_s64_f64(v4 / v10);
}

- (void)configureCollectionViewGridLayout:(id)layout forWidth:(double)width safeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v28.receiver = self;
  v28.super_class = PUPhotosGridViewControllerPhoneSpec;
  layoutCopy = layout;
  [(PUPhotosGridViewControllerSpec *)&v28 configureCollectionViewGridLayout:layoutCopy forWidth:width safeAreaInsets:top, left, bottom, right];
  [(PUPhotosGridViewControllerPhoneSpec *)self gridContentInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = width - v14 - v18;
  v21 = [MEMORY[0x1E69C4548] photosGridLayoutColumnsForWidth:v20];
  v26 = 0.0;
  v27 = 0.0;
  v22 = MEMORY[0x1E69C4548];
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  [v22 bestItemSizeForAvailableWidth:v21 screenScale:&v27 columns:&v26 bestSpacing:v20 bestInset:*&PUMainScreenScale_screenScale];
  v23 = v27;
  v24 = v15 + v26;
  v25 = v19 + v26;
  [layoutCopy setItemSize:?];
  [layoutCopy setInterItemSpacing:{v23, v23}];
  [layoutCopy setSectionContentInset:{v13, v24, v17, v25}];
  [layoutCopy setSectionTopPadding:9.5];
  [layoutCopy setGlobalTopPadding:0.0];
  [layoutCopy setGlobalBottomPadding:4.0];
  [layoutCopy setCropType:0];
  [layoutCopy setCropAmount:0.0];
}

- (unsigned)thumbnailImageFormat
{
  sizeSubclass = [(PUPhotosGridViewControllerSpec *)self sizeSubclass];
  if ((sizeSubclass - 2) < 2)
  {
    defaultFormatChooser = [MEMORY[0x1E69BF248] defaultFormatChooser];
    masterThumbnailFormat = [defaultFormatChooser masterThumbnailFormat];
    formatID = [masterThumbnailFormat formatID];
  }

  else if (sizeSubclass == 1)
  {
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    if (*&PUMainScreenScale_screenScale <= 1.0)
    {
      formatID = 3311;
    }

    else
    {
      formatID = 3319;
    }
  }

  else
  {
    if (!sizeSubclass)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewControllerSpec.m" lineNumber:137 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    formatID = 0;
  }

  v8 = +[PUPhotosGridSettings sharedInstance];
  forceJPEGThumbnailsInDefaultGrid = [v8 forceJPEGThumbnailsInDefaultGrid];

  if (!forceJPEGThumbnailsInDefaultGrid)
  {
    return formatID;
  }

  defaultFormatChooser2 = [MEMORY[0x1E69BF248] defaultFormatChooser];
  masterThumbnailFormat2 = [defaultFormatChooser2 masterThumbnailFormat];
  formatID2 = [masterThumbnailFormat2 formatID];

  return formatID2;
}

- (CGSize)baseInterItemSpacing
{
  v2 = 2.0;
  v3 = 2.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end