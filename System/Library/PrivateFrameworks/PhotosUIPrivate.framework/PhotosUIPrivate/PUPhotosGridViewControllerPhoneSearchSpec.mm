@interface PUPhotosGridViewControllerPhoneSearchSpec
- (void)configureCollectionViewGridLayout:(id)layout forWidth:(double)width safeAreaInsets:(UIEdgeInsets)insets;
@end

@implementation PUPhotosGridViewControllerPhoneSearchSpec

- (void)configureCollectionViewGridLayout:(id)layout forWidth:(double)width safeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v28.receiver = self;
  v28.super_class = PUPhotosGridViewControllerPhoneSearchSpec;
  layoutCopy = layout;
  [(PUPhotosGridViewControllerPhoneSpec *)&v28 configureCollectionViewGridLayout:layoutCopy forWidth:width safeAreaInsets:top, left, bottom, right];
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
  [layoutCopy setSectionTopPadding:0.0];
  [layoutCopy setGlobalTopPadding:0.0];
  [layoutCopy setGlobalBottomPadding:4.0];
  [layoutCopy setCropType:0];
  [layoutCopy setCropAmount:0.0];
}

@end