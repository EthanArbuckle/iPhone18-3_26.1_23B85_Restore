@interface PUPhotosGridViewControllerPadSearchSpec
- (void)configureCollectionViewGridLayout:(id)layout forWidth:(double)width safeAreaInsets:(UIEdgeInsets)insets;
@end

@implementation PUPhotosGridViewControllerPadSearchSpec

- (void)configureCollectionViewGridLayout:(id)layout forWidth:(double)width safeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v11.receiver = self;
  v11.super_class = PUPhotosGridViewControllerPadSearchSpec;
  layoutCopy = layout;
  [(PUPhotosGridViewControllerPadSpec *)&v11 configureCollectionViewGridLayout:layoutCopy forWidth:width safeAreaInsets:top, left, bottom, right];
  [layoutCopy setSectionTopPadding:{0.0, v11.receiver, v11.super_class}];
  [layoutCopy setGlobalTopPadding:0.0];
}

@end