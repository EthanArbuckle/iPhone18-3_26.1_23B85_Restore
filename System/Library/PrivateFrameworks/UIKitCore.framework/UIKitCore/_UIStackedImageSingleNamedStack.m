@interface _UIStackedImageSingleNamedStack
- (CGImage)flattenedImage;
- (CGSize)size;
- (NSArray)layers;
@end

@implementation _UIStackedImageSingleNamedStack

- (NSArray)layers
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(_UIStackedImageSingleNamedStack *)self layerImage];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (CGSize)size
{
  v2 = [(_UIStackedImageSingleNamedStack *)self layerImage];
  v3 = [v2 imageObj];
  [v3 size];
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
  v2 = [(_UIStackedImageSingleNamedStack *)self layerImage];
  v3 = [v2 imageObj];
  v4 = [v3 CGImage];

  return v4;
}

@end