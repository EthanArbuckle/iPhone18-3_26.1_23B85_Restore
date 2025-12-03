@interface PXStoryCropUtilities
+ (CGRect)suggestedCropWithAspectRatio:(double)ratio forAssetWithSize:(CGSize)size faceCount:(int64_t)count faceRects:(const CGRect *)rects featuredFaceCount:(int64_t)faceCount;
@end

@implementation PXStoryCropUtilities

+ (CGRect)suggestedCropWithAspectRatio:(double)ratio forAssetWithSize:(CGSize)size faceCount:(int64_t)count faceRects:(const CGRect *)rects featuredFaceCount:(int64_t)faceCount
{
  if (count <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryCropUtilities.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"faceCount > 0"}];
  }

  PXRectWithOriginAndSize();
}

@end