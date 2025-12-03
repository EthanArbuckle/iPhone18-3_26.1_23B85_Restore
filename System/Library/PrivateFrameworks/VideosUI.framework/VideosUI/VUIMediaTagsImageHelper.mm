@interface VUIMediaTagsImageHelper
+ (id)imageWithName:(id)name flatten:(BOOL)flatten accessibilityDescription:(id)description;
+ (void)initialize;
@end

@implementation VUIMediaTagsImageHelper

+ (void)initialize
{
  if (initialize_onceToken_4 != -1)
  {
    +[VUIMediaTagsImageHelper initialize];
  }
}

uint64_t __37__VUIMediaTagsImageHelper_initialize__block_invoke()
{
  v0 = objc_opt_new();
  v1 = imageCache;
  imageCache = v0;

  [imageCache setCountLimit:20];
  v2 = imageCache;

  return [v2 setName:@"MediaTagsImageHelperCache"];
}

+ (id)imageWithName:(id)name flatten:(BOOL)flatten accessibilityDescription:(id)description
{
  flattenCopy = flatten;
  nameCopy = name;
  descriptionCopy = description;
  v9 = [imageCache objectForKey:nameCopy];
  if (!v9)
  {
    v10 = [MEMORY[0x1E69DF6D0] imageForResource:nameCopy accessibilityDescription:descriptionCopy];
    v9 = v10;
    if (v10)
    {
      if (flattenCopy)
      {
        vuiTemplateImage = [v10 vuiTemplateImage];

        v9 = vuiTemplateImage;
      }

      [imageCache setObject:v9 forKey:nameCopy];
    }
  }

  return v9;
}

@end