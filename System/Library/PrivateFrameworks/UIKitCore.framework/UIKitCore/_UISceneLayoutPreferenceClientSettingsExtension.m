@interface _UISceneLayoutPreferenceClientSettingsExtension
+ (void)configureSetting:(id)a3;
@end

@implementation _UISceneLayoutPreferenceClientSettingsExtension

+ (void)configureSetting:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v5 = a3;
  v4 = [v3 numberWithDouble:-1.0];
  [v5 setDefaultValue:v4];

  [v5 setNullPreserving:1];
  [v5 setDescriptionProvider:&__block_literal_global_368];
}

@end