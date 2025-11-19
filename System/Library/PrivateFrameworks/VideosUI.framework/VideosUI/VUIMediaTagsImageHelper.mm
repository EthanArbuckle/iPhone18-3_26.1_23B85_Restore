@interface VUIMediaTagsImageHelper
+ (id)imageWithName:(id)a3 flatten:(BOOL)a4 accessibilityDescription:(id)a5;
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

+ (id)imageWithName:(id)a3 flatten:(BOOL)a4 accessibilityDescription:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [imageCache objectForKey:v7];
  if (!v9)
  {
    v10 = [MEMORY[0x1E69DF6D0] imageForResource:v7 accessibilityDescription:v8];
    v9 = v10;
    if (v10)
    {
      if (v6)
      {
        v11 = [v10 vuiTemplateImage];

        v9 = v11;
      }

      [imageCache setObject:v9 forKey:v7];
    }
  }

  return v9;
}

@end