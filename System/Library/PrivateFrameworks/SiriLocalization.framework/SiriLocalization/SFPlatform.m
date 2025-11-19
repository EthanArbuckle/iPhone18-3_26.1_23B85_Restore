@interface SFPlatform
+ (BOOL)isHorseman;
@end

@implementation SFPlatform

+ (BOOL)isHorseman
{
  if (isHorseman_onceToken != -1)
  {
    dispatch_once(&isHorseman_onceToken, &__block_literal_global_42);
  }

  return isHorseman_isHorseman;
}

uint64_t __32__SFPlatform_Device__isHorseman__block_invoke()
{
  result = MGGetBoolAnswer();
  isHorseman_isHorseman = result;
  return result;
}

@end