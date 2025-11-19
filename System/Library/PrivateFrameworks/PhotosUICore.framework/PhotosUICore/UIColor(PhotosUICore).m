@interface UIColor(PhotosUICore)
+ (id)px_colorNamed:()PhotosUICore;
+ (id)px_dynamicHighlightColor;
@end

@implementation UIColor(PhotosUICore)

+ (id)px_colorNamed:()PhotosUICore
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 px_bundle];
  v7 = [a1 px_colorNamed:v5 inBundle:v6];

  return v7;
}

+ (id)px_dynamicHighlightColor
{
  if (px_dynamicHighlightColor_onceToken != -1)
  {
    dispatch_once(&px_dynamicHighlightColor_onceToken, &__block_literal_global_3_94890);
  }

  v1 = px_dynamicHighlightColor_color;

  return v1;
}

@end