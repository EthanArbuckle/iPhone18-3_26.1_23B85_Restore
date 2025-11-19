@interface UKChinaSKU
+ (BOOL)isChina;
@end

@implementation UKChinaSKU

+ (BOOL)isChina
{
  v2 = MGGetStringAnswer();
  v3 = [v2 caseInsensitiveCompare:@"CH"];
  v4 = MGGetBoolAnswer();
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end