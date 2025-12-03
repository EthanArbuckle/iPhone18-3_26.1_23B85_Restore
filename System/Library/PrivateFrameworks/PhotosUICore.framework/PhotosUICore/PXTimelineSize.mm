@interface PXTimelineSize
+ (CGSize)widgetSizeForSizeClass:(unint64_t)class;
+ (id)allSupportedSizes;
+ (id)sizeDescriptionForSizeClass:(unint64_t)class;
@end

@implementation PXTimelineSize

+ (id)allSupportedSizes
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:&unk_1F1909DF0];
  [v2 addObject:&unk_1F1909E08];
  [v2 addObject:&unk_1F1909E20];
  [v2 addObject:&unk_1F1909E38];

  return v2;
}

+ (CGSize)widgetSizeForSizeClass:(unint64_t)class
{
  if (class > 3)
  {
    v4 = 367.0;
    v3 = 382.0;
  }

  else
  {
    v3 = dbl_1A5381678[class];
    v4 = dbl_1A5381698[class];
  }

  px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [px_mainScreen scale];
  v7 = v6;

  v8 = v4 * v7;
  v9 = v3 * v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (id)sizeDescriptionForSizeClass:(unint64_t)class
{
  if (class - 1 > 2)
  {
    return @"Small";
  }

  else
  {
    return off_1E772F890[class - 1];
  }
}

@end