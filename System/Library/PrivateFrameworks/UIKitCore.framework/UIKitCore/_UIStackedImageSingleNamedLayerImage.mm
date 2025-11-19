@interface _UIStackedImageSingleNamedLayerImage
- (CGRect)frame;
@end

@implementation _UIStackedImageSingleNamedLayerImage

- (CGRect)frame
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v4 = [(_UIStackedImageSingleNamedLayerImage *)self imageObj];
  [v4 size];
  v6 = v5;
  v8 = v7;

  v9 = v2;
  v10 = v3;
  v11 = v6;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

@end