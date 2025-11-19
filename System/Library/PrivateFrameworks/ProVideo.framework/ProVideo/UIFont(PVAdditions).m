@interface UIFont(PVAdditions)
+ (id)pv_fontWithName:()PVAdditions size:transform:;
@end

@implementation UIFont(PVAdditions)

+ (id)pv_fontWithName:()PVAdditions size:transform:
{
  v7 = 0;
  OZXCreateFontWithName(a3, a5, a4, &v7);
  v5 = v7;

  return v5;
}

@end