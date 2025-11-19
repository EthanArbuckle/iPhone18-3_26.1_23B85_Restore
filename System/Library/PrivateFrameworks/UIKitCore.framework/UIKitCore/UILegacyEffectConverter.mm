@interface UILegacyEffectConverter
@end

@implementation UILegacyEffectConverter

void __43___UILegacyEffectConverter_sharedConverter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_999;
  _MergedGlobals_999 = v0;
}

void __67___UILegacyEffectConverter_applyVibrancyConfig_toEffectDescriptor___block_invoke_3(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___UILegacyEffectConverter_applyVibrancyConfig_toEffectDescriptor___block_invoke_4;
  v6[3] = &unk_1E70F6D98;
  v3 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v6[5] = v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67___UILegacyEffectConverter_applyVibrancyConfig_toEffectDescriptor___block_invoke_5;
  v4[3] = &unk_1E70F6D70;
  v5 = *(a1 + 40);
  _UILegacyEffectConvertLayerConfig(a2, v6, v4);
}

void __67___UILegacyEffectConverter_applyVibrancyConfig_toEffectDescriptor___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UILegacyEffectSupport.m" lineNumber:165 description:@"Filter effects are not supported on underlay layer configs"];
}

@end