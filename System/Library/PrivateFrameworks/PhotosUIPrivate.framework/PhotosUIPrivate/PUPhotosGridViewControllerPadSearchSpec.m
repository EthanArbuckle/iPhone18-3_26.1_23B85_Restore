@interface PUPhotosGridViewControllerPadSearchSpec
- (void)configureCollectionViewGridLayout:(id)a3 forWidth:(double)a4 safeAreaInsets:(UIEdgeInsets)a5;
@end

@implementation PUPhotosGridViewControllerPadSearchSpec

- (void)configureCollectionViewGridLayout:(id)a3 forWidth:(double)a4 safeAreaInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v11.receiver = self;
  v11.super_class = PUPhotosGridViewControllerPadSearchSpec;
  v10 = a3;
  [(PUPhotosGridViewControllerPadSpec *)&v11 configureCollectionViewGridLayout:v10 forWidth:a4 safeAreaInsets:top, left, bottom, right];
  [v10 setSectionTopPadding:{0.0, v11.receiver, v11.super_class}];
  [v10 setGlobalTopPadding:0.0];
}

@end