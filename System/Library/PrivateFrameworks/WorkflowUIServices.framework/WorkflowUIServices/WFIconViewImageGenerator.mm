@interface WFIconViewImageGenerator
+ (id)loadIcon:(id)icon size:(CGSize)size style:(int64_t)style;
@end

@implementation WFIconViewImageGenerator

+ (id)loadIcon:(id)icon size:(CGSize)size style:(int64_t)style
{
  height = size.height;
  width = size.width;
  iconCopy = icon;
  v9 = sub_1C83B93A8(iconCopy, style, width, height);

  return v9;
}

@end