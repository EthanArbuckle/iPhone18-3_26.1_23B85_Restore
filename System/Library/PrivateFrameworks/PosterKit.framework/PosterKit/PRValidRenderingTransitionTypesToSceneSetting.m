@interface PRValidRenderingTransitionTypesToSceneSetting
@end

@implementation PRValidRenderingTransitionTypesToSceneSetting

void ____PRValidRenderingTransitionTypesToSceneSetting_block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"PRRenderingTransitionTypeMockKeyboardPresentation";
  v3[0] = &unk_1F1C6BAA0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = __PRValidRenderingTransitionTypesToSceneSetting_validTransitionTypesToSceneSetting;
  __PRValidRenderingTransitionTypesToSceneSetting_validTransitionTypesToSceneSetting = v0;
}

@end