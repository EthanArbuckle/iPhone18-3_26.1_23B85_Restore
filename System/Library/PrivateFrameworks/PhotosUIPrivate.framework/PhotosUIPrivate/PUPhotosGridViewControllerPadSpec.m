@interface PUPhotosGridViewControllerPadSpec
- (CGSize)baseInterItemSpacing;
- (unsigned)thumbnailImageFormat;
- (void)configureCollectionViewGridLayout:(id)a3 forWidth:(double)a4 safeAreaInsets:(UIEdgeInsets)a5;
@end

@implementation PUPhotosGridViewControllerPadSpec

- (void)configureCollectionViewGridLayout:(id)a3 forWidth:(double)a4 safeAreaInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v31.receiver = self;
  v31.super_class = PUPhotosGridViewControllerPadSpec;
  v11 = a3;
  [(PUPhotosGridViewControllerSpec *)&v31 configureCollectionViewGridLayout:v11 forWidth:a4 safeAreaInsets:top, left, bottom, right];
  [(PUPhotosGridViewControllerSpec *)self layoutMargins:v31.receiver];
  [(PUPhotosGridViewControllerSpec *)self safeAreaInsets];
  UIEdgeInsetsAdd();
  PXEdgeInsetsForEdges();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v20 bounds];
  v22 = v21;

  v23 = PLIsPadMini();
  v24 = 5;
  v25 = 7;
  if (v22 >= a4)
  {
    v25 = 5;
  }

  v26 = 17.0;
  if (v22 < a4)
  {
    v26 = 10.0;
  }

  if (!v23)
  {
    v24 = v25;
  }

  v27 = a4 - (v15 + v19);
  v28 = (v24 - 1);
  v29 = floor((v27 - v28 * v26) / v24);
  v30 = floor((v27 - v29 * v24) / v28);
  [v11 setItemSize:{v29, v29}];
  [v11 setInterItemSpacing:{v30, v30}];
  [v11 setSectionContentInset:{v13, v15, v17, v19}];
  [v11 setSectionTopPadding:9.5];
  [v11 setGlobalTopPadding:9.0];
  [v11 setGlobalBottomPadding:12.0];
  [v11 setCropType:0];
  [v11 setCropAmount:0.0];
}

- (unsigned)thumbnailImageFormat
{
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  if (*&PUMainScreenScale_screenScale <= 1.0)
  {
    return 3501;
  }

  else
  {
    return 5003;
  }
}

- (CGSize)baseInterItemSpacing
{
  v2 = +[PUPhotosGridSettings sharedInstance];
  [v2 maximumSpacing];
  v4 = v3;
  [v2 maximumSpacing];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end