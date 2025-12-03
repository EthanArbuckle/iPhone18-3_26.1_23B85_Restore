@interface PUPhotosGridViewControllerPadSpec
- (CGSize)baseInterItemSpacing;
- (unsigned)thumbnailImageFormat;
- (void)configureCollectionViewGridLayout:(id)layout forWidth:(double)width safeAreaInsets:(UIEdgeInsets)insets;
@end

@implementation PUPhotosGridViewControllerPadSpec

- (void)configureCollectionViewGridLayout:(id)layout forWidth:(double)width safeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v31.receiver = self;
  v31.super_class = PUPhotosGridViewControllerPadSpec;
  layoutCopy = layout;
  [(PUPhotosGridViewControllerSpec *)&v31 configureCollectionViewGridLayout:layoutCopy forWidth:width safeAreaInsets:top, left, bottom, right];
  [(PUPhotosGridViewControllerSpec *)self layoutMargins:v31.receiver];
  [(PUPhotosGridViewControllerSpec *)self safeAreaInsets];
  UIEdgeInsetsAdd();
  PXEdgeInsetsForEdges();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [px_mainScreen bounds];
  v22 = v21;

  v23 = PLIsPadMini();
  v24 = 5;
  v25 = 7;
  if (v22 >= width)
  {
    v25 = 5;
  }

  v26 = 17.0;
  if (v22 < width)
  {
    v26 = 10.0;
  }

  if (!v23)
  {
    v24 = v25;
  }

  v27 = width - (v15 + v19);
  v28 = (v24 - 1);
  v29 = floor((v27 - v28 * v26) / v24);
  v30 = floor((v27 - v29 * v24) / v28);
  [layoutCopy setItemSize:{v29, v29}];
  [layoutCopy setInterItemSpacing:{v30, v30}];
  [layoutCopy setSectionContentInset:{v13, v15, v17, v19}];
  [layoutCopy setSectionTopPadding:9.5];
  [layoutCopy setGlobalTopPadding:9.0];
  [layoutCopy setGlobalBottomPadding:12.0];
  [layoutCopy setCropType:0];
  [layoutCopy setCropAmount:0.0];
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