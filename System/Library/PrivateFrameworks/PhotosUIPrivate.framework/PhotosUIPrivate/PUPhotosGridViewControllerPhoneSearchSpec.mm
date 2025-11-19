@interface PUPhotosGridViewControllerPhoneSearchSpec
- (void)configureCollectionViewGridLayout:(id)a3 forWidth:(double)a4 safeAreaInsets:(UIEdgeInsets)a5;
@end

@implementation PUPhotosGridViewControllerPhoneSearchSpec

- (void)configureCollectionViewGridLayout:(id)a3 forWidth:(double)a4 safeAreaInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v28.receiver = self;
  v28.super_class = PUPhotosGridViewControllerPhoneSearchSpec;
  v11 = a3;
  [(PUPhotosGridViewControllerPhoneSpec *)&v28 configureCollectionViewGridLayout:v11 forWidth:a4 safeAreaInsets:top, left, bottom, right];
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
  [v11 setSectionTopPadding:0.0];
  [v11 setGlobalTopPadding:0.0];
  [v11 setGlobalBottomPadding:4.0];
  [v11 setCropType:0];
  [v11 setCropAmount:0.0];
}

@end