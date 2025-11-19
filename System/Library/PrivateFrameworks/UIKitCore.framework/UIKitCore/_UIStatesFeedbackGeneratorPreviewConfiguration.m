@interface _UIStatesFeedbackGeneratorPreviewConfiguration
+ (id)defaultConfiguration;
@end

@implementation _UIStatesFeedbackGeneratorPreviewConfiguration

+ (id)defaultConfiguration
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70___UIStatesFeedbackGeneratorPreviewConfiguration_defaultConfiguration__block_invoke;
  v4[3] = &__block_descriptor_40_e43_v16__0___UIFeedbackGeneratorConfiguration_8l;
  v4[4] = a1;
  v2 = [a1 _configurationWithKey:@"preview" preparationBlock:v4];
  [v2 setInitialState:@"reveal"];
  [v2 setActivationStyle:1];

  return v2;
}

@end