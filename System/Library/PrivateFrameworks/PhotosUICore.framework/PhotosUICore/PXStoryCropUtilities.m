@interface PXStoryCropUtilities
+ (CGRect)suggestedCropWithAspectRatio:(double)a3 forAssetWithSize:(CGSize)a4 faceCount:(int64_t)a5 faceRects:(const CGRect *)a6 featuredFaceCount:(int64_t)a7;
@end

@implementation PXStoryCropUtilities

+ (CGRect)suggestedCropWithAspectRatio:(double)a3 forAssetWithSize:(CGSize)a4 faceCount:(int64_t)a5 faceRects:(const CGRect *)a6 featuredFaceCount:(int64_t)a7
{
  if (a5 <= 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXStoryCropUtilities.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"faceCount > 0"}];
  }

  PXRectWithOriginAndSize();
}

@end