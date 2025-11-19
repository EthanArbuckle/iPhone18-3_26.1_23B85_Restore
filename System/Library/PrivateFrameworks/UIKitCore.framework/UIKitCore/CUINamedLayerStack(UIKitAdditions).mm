@interface CUINamedLayerStack(UIKitAdditions)
- (id)configuration;
- (id)flattenedUIImageWithAsset:()UIKitAdditions configuration:;
@end

@implementation CUINamedLayerStack(UIKitAdditions)

- (id)flattenedUIImageWithAsset:()UIKitAdditions configuration:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 layers];
  v9 = [v8 firstObject];

  v10 = [v9 UIImageWithAsset:v7 configuration:v6 flippedHorizontally:0 optionalVectorImage:0];

  if (v10)
  {
    v11 = [_UIImageCGImageContent alloc];
    v12 = [a1 flattenedImage];
    [v10[2] scale];
    v13 = [(_UIImageCGImageContent *)v11 initWithCGImage:v12 scale:?];
    [v10 _swizzleContent:v13];

    v14 = [v10 imageAsset];
    [v14 _setLayerStack:a1];
  }

  return v10;
}

- (id)configuration
{
  v1 = [a1 layers];
  v2 = [v1 firstObject];

  v3 = [v2 configuration];

  return v3;
}

@end