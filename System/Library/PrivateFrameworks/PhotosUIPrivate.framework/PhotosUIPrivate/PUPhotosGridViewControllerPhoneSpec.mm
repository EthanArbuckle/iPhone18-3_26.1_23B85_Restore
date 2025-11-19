@interface PUPhotosGridViewControllerPhoneSpec
- (CGSize)baseInterItemSpacing;
- (UIEdgeInsets)gridContentInsets;
- (int64_t)forceLoadInitialSectionCount;
- (unsigned)thumbnailImageFormat;
- (void)configureCollectionViewGridLayout:(id)a3 forWidth:(double)a4 safeAreaInsets:(UIEdgeInsets)a5;
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
  v2 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v2 bounds];
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

- (void)configureCollectionViewGridLayout:(id)a3 forWidth:(double)a4 safeAreaInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v28.receiver = self;
  v28.super_class = PUPhotosGridViewControllerPhoneSpec;
  v11 = a3;
  [(PUPhotosGridViewControllerSpec *)&v28 configureCollectionViewGridLayout:v11 forWidth:a4 safeAreaInsets:top, left, bottom, right];
  [(PUPhotosGridViewControllerPhoneSpec *)self gridContentInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a4 - v14 - v18;
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
  [v11 setItemSize:?];
  [v11 setInterItemSpacing:{v23, v23}];
  [v11 setSectionContentInset:{v13, v24, v17, v25}];
  [v11 setSectionTopPadding:9.5];
  [v11 setGlobalTopPadding:0.0];
  [v11 setGlobalBottomPadding:4.0];
  [v11 setCropType:0];
  [v11 setCropAmount:0.0];
}

- (unsigned)thumbnailImageFormat
{
  v4 = [(PUPhotosGridViewControllerSpec *)self sizeSubclass];
  if ((v4 - 2) < 2)
  {
    v6 = [MEMORY[0x1E69BF248] defaultFormatChooser];
    v7 = [v6 masterThumbnailFormat];
    v5 = [v7 formatID];
  }

  else if (v4 == 1)
  {
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    if (*&PUMainScreenScale_screenScale <= 1.0)
    {
      v5 = 3311;
    }

    else
    {
      v5 = 3319;
    }
  }

  else
  {
    if (!v4)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewControllerSpec.m" lineNumber:137 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v5 = 0;
  }

  v8 = +[PUPhotosGridSettings sharedInstance];
  v9 = [v8 forceJPEGThumbnailsInDefaultGrid];

  if (!v9)
  {
    return v5;
  }

  v10 = [MEMORY[0x1E69BF248] defaultFormatChooser];
  v11 = [v10 masterThumbnailFormat];
  v12 = [v11 formatID];

  return v12;
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