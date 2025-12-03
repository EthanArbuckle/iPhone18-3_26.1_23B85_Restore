@interface PXStoryThumbnailImageGenerator
+ (id)generateImageWithStoryConfiguration:(id)configuration size:(CGSize)size displayScale:(double)scale convertToYUV:(BOOL)v storyLoadTimeOut:(double)out nonDegradedTimeout:(double)timeout;
- (PXStoryThumbnailImageGenerator)init;
@end

@implementation PXStoryThumbnailImageGenerator

+ (id)generateImageWithStoryConfiguration:(id)configuration size:(CGSize)size displayScale:(double)scale convertToYUV:(BOOL)v storyLoadTimeOut:(double)out nonDegradedTimeout:(double)timeout
{
  vCopy = v;
  height = size.height;
  width = size.width;
  configurationCopy = configuration;
  v15 = sub_1A44AB934(configurationCopy, vCopy, width, height, scale, out, timeout);

  return v15;
}

- (PXStoryThumbnailImageGenerator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StoryThumbnailImageGenerator();
  return [(PXStoryThumbnailImageGenerator *)&v3 init];
}

@end