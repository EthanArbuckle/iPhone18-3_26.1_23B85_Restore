@interface WFIconViewImageGenerator
+ (id)loadIcon:(id)a3 size:(CGSize)a4 style:(int64_t)a5;
@end

@implementation WFIconViewImageGenerator

+ (id)loadIcon:(id)a3 size:(CGSize)a4 style:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = sub_1C83B93A8(v8, a5, width, height);

  return v9;
}

@end