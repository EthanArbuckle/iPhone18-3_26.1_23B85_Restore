@interface CUINamedLayerStack(UIKitAdditions)
- (id)configuration;
- (id)flattenedUIImageWithAsset:()UIKitAdditions configuration:;
@end

@implementation CUINamedLayerStack(UIKitAdditions)

- (id)flattenedUIImageWithAsset:()UIKitAdditions configuration:
{
  v6 = a4;
  v7 = a3;
  layers = [self layers];
  firstObject = [layers firstObject];

  v10 = [firstObject UIImageWithAsset:v7 configuration:v6 flippedHorizontally:0 optionalVectorImage:0];

  if (v10)
  {
    v11 = [_UIImageCGImageContent alloc];
    flattenedImage = [self flattenedImage];
    [v10[2] scale];
    v13 = [(_UIImageCGImageContent *)v11 initWithCGImage:flattenedImage scale:?];
    [v10 _swizzleContent:v13];

    imageAsset = [v10 imageAsset];
    [imageAsset _setLayerStack:self];
  }

  return v10;
}

- (id)configuration
{
  layers = [self layers];
  firstObject = [layers firstObject];

  configuration = [firstObject configuration];

  return configuration;
}

@end