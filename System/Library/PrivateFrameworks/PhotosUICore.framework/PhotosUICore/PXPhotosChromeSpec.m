@interface PXPhotosChromeSpec
+ (CGSize)secondaryToolbarSize;
+ (UIEdgeInsets)secondaryToolbarPaddingForSizeClass:(int64_t)a3 safeAreaInsets:(UIEdgeInsets)a4;
- (PXPhotosChromeSpec)init;
@end

@implementation PXPhotosChromeSpec

+ (CGSize)secondaryToolbarSize
{
  v2 = 216.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (UIEdgeInsets)secondaryToolbarPaddingForSizeClass:(int64_t)a3 safeAreaInsets:(UIEdgeInsets)a4
{
  sub_1A3C7E7F0(a3, a4.bottom);
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (PXPhotosChromeSpec)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosChromeSpec();
  return [(PXPhotosChromeSpec *)&v3 init];
}

@end