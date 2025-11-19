@interface UIViewMaskingConfigurationSPIEnabled
@end

@implementation UIViewMaskingConfigurationSPIEnabled

uint64_t ___UIViewMaskingConfigurationSPIEnabled_block_invoke()
{
  result = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_ViewMaskingConfigurationSPIEnabled, @"ViewMaskingConfigurationSPIEnabled", _UIInternalPreferenceUpdateBool);
  byte_1EA9946D3 = (byte_1ED48B7EC != 0) & ~result;
  return result;
}

@end