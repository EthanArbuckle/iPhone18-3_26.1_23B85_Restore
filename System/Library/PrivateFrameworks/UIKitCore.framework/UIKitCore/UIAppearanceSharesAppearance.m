@interface UIAppearanceSharesAppearance
@end

@implementation UIAppearanceSharesAppearance

uint64_t ___UIAppearanceSharesAppearance_block_invoke()
{
  result = [_UIMainBundleIdentifier() isEqualToString:@"com.apple.gamecenter"];
  byte_1ED49E5DB = result ^ 1;
  return result;
}

@end