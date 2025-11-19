@interface UIWindowTopSafeAreaInsetRequiresPocket
@end

@implementation UIWindowTopSafeAreaInsetRequiresPocket

uint64_t ___UIWindowTopSafeAreaInsetRequiresPocket_block_invoke()
{
  result = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_ForceTopSafeAreaInsetRequiresPocket, @"ForceTopSafeAreaInsetRequiresPocket", _UIInternalPreferenceUpdateBool);
  byte_1EA968DCC = (byte_1ED48B4C4 != 0) & ~result;
  return result;
}

@end