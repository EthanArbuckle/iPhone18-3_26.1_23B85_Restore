@interface MAPreferencesCopyValue
@end

@implementation MAPreferencesCopyValue

uint64_t ___MAPreferencesCopyValue_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = CFPreferencesCopyAppValue(*(a1 + 32), @"com.apple.MobileAsset");

  return _objc_release_x1();
}

uint64_t ___MAPreferencesCopyValue_block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = CFPreferencesCopyValue(*(a1 + 32), @"com.apple.MobileAsset", @"mobile", kCFPreferencesAnyHost);

  return _objc_release_x1();
}

@end