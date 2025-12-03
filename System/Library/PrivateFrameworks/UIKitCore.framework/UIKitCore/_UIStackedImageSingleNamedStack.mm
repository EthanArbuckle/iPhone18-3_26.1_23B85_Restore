@interface _UIStackedImageSingleNamedStack
- (CGImage)flattenedImage;
- (CGSize)size;
- (NSArray)layers;
@end

@implementation _UIStackedImageSingleNamedStack

- (NSArray)layers
{
  v5[1] = *MEMORY[0x1E69E9840];
  layerImage = [(_UIStackedImageSingleNamedStack *)self layerImage];
  v5[0] = layerImage;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (CGSize)size
{
  layerImage = [(_UIStackedImageSingleNamedStack *)self layerImage];
  imageObj = [layerImage imageObj];
  [imageObj size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGImage)flattenedImage
{
  layerImage = [(_UIStackedImageSingleNamedStack *)self layerImage];
  imageObj = [layerImage imageObj];
  cGImage = [imageObj CGImage];

  return cGImage;
}

@end