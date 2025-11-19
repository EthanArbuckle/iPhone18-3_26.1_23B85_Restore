@interface UISceneLayoutPreferenceClientSettingsExtension
@end

@implementation UISceneLayoutPreferenceClientSettingsExtension

__CFString *__68___UISceneLayoutPreferenceClientSettingsExtension_configureSetting___block_invoke(uint64_t a1, void *a2)
{
  [a2 bs_CGFloatValue];
  if (v2 <= 0.0)
  {
    v3 = @"<no preference>";
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.1f", *&v2];
  }

  return v3;
}

@end