@interface VSUtilities
+ (BOOL)isH12Platform;
+ (BOOL)isHomePod;
@end

@implementation VSUtilities

+ (BOOL)isH12Platform
{
  if (isH12Platform_onceToken != -1)
  {
    dispatch_once(&isH12Platform_onceToken, &__block_literal_global_6);
  }

  return isH12Platform_isH12Platform;
}

void __28__VSUtilities_isH12Platform__block_invoke()
{
  v0 = MGGetStringAnswer();
  isH12Platform_isH12Platform = [v0 isEqualToString:@"t8030"];
}

+ (BOOL)isHomePod
{
  if (isHomePod_onceToken != -1)
  {
    dispatch_once(&isHomePod_onceToken, &__block_literal_global_500);
  }

  return isHomePod___isHomePod;
}

uint64_t __24__VSUtilities_isHomePod__block_invoke()
{
  result = MGGetSInt32Answer();
  isHomePod___isHomePod = result == 7;
  return result;
}

@end