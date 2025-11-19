@interface PXStoryThumbnailImageGenerator
+ (id)generateImageWithStoryConfiguration:(id)a3 size:(CGSize)a4 displayScale:(double)a5 convertToYUV:(BOOL)a6 storyLoadTimeOut:(double)a7 nonDegradedTimeout:(double)a8;
- (PXStoryThumbnailImageGenerator)init;
@end

@implementation PXStoryThumbnailImageGenerator

+ (id)generateImageWithStoryConfiguration:(id)a3 size:(CGSize)a4 displayScale:(double)a5 convertToYUV:(BOOL)a6 storyLoadTimeOut:(double)a7 nonDegradedTimeout:(double)a8
{
  v10 = a6;
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = sub_1A44AB934(v14, v10, width, height, a5, a7, a8);

  return v15;
}

- (PXStoryThumbnailImageGenerator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StoryThumbnailImageGenerator();
  return [(PXStoryThumbnailImageGenerator *)&v3 init];
}

@end