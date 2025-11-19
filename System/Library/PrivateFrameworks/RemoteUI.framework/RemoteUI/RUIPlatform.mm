@interface RUIPlatform
+ (BOOL)isAppleTV;
+ (void)assertWebkitAllowed;
@end

@implementation RUIPlatform

+ (BOOL)isAppleTV
{
  if (isAppleTV_onceToken != -1)
  {
    +[RUIPlatform isAppleTV];
  }

  return isAppleTV_isAppleTV;
}

uint64_t __24__RUIPlatform_isAppleTV__block_invoke()
{
  result = MGGetSInt32Answer();
  isAppleTV_isAppleTV = result == 4;
  return result;
}

+ (void)assertWebkitAllowed
{
  if (MGGetBoolAnswer())
  {
    v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Webkit is not allowed in diagnostics mode" userInfo:0];
    objc_exception_throw(v2);
  }
}

@end