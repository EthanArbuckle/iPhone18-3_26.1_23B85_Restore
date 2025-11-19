@interface PXPhotosDynamicHeaderLayoutUtilities
+ (double)headerMinimumHeightForReferenceSize:(CGSize)a3;
- (PXPhotosDynamicHeaderLayoutUtilities)init;
@end

@implementation PXPhotosDynamicHeaderLayoutUtilities

+ (double)headerMinimumHeightForReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  sub_1A43ACA40();
  PhotosDynamicHeaderSpec.headerHeight(for:)(width, height);
  return result;
}

- (PXPhotosDynamicHeaderLayoutUtilities)init
{
  v3.receiver = self;
  v3.super_class = PXPhotosDynamicHeaderLayoutUtilities;
  return [(PXPhotosDynamicHeaderLayoutUtilities *)&v3 init];
}

@end