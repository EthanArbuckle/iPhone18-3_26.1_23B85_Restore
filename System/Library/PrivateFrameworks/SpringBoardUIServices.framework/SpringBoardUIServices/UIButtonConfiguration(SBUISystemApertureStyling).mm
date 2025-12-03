@interface UIButtonConfiguration(SBUISystemApertureStyling)
+ (id)_sbui_titleTextAttributesTransformerForTitleFont:()SBUISystemApertureStyling;
+ (id)sbui_systemApertureSymbolButtonConfiguration;
+ (id)sbui_systemApertureTextButtonConfiguration;
+ (id)sbui_systemApertureTextButtonConfigurationCompatibleWithTraitCollection:()SBUISystemApertureStyling;
@end

@implementation UIButtonConfiguration(SBUISystemApertureStyling)

+ (id)sbui_systemApertureTextButtonConfiguration
{
  sbui_bestTraitCollection = [MEMORY[0x1E69DD1B8] sbui_bestTraitCollection];
  v3 = [self sbui_systemApertureTextButtonConfigurationCompatibleWithTraitCollection:sbui_bestTraitCollection];

  return v3;
}

+ (id)sbui_systemApertureTextButtonConfigurationCompatibleWithTraitCollection:()SBUISystemApertureStyling
{
  v4 = a3;
  tintedButtonConfiguration = [self tintedButtonConfiguration];
  [tintedButtonConfiguration setCornerStyle:4];
  systemExtraLightGrayColor = [MEMORY[0x1E69DC888] systemExtraLightGrayColor];
  [tintedButtonConfiguration setBaseBackgroundColor:systemExtraLightGrayColor];

  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  [tintedButtonConfiguration setBaseForegroundColor:systemWhiteColor];

  v8 = [MEMORY[0x1E69DB878] sbui_systemAperturePreferredTextButtonFontCompatibleWithTraitCollection:v4];

  v9 = [self _sbui_titleTextAttributesTransformerForTitleFont:v8];
  [tintedButtonConfiguration setTitleTextAttributesTransformer:v9];
  v10 = [MEMORY[0x1E69DCAD8] configurationWithFont:v8 scale:2];
  [tintedButtonConfiguration setPreferredSymbolConfigurationForImage:v10];

  [tintedButtonConfiguration setButtonSize:3];
  [tintedButtonConfiguration contentInsets];
  [tintedButtonConfiguration setContentInsets:v11 + -5.0];
  [tintedButtonConfiguration setImagePadding:7.0];
  background = [tintedButtonConfiguration background];
  [background setBackgroundColorTransformer:&__block_literal_global_5];

  return tintedButtonConfiguration;
}

+ (id)sbui_systemApertureSymbolButtonConfiguration
{
  tintedButtonConfiguration = [self tintedButtonConfiguration];
  [tintedButtonConfiguration setCornerStyle:4];
  systemExtraLightGrayColor = [MEMORY[0x1E69DC888] systemExtraLightGrayColor];
  [tintedButtonConfiguration setBaseBackgroundColor:systemExtraLightGrayColor];

  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  [tintedButtonConfiguration setBaseForegroundColor:systemWhiteColor];

  sbui_systemApertureControlConfiguration = [MEMORY[0x1E69DCAD8] sbui_systemApertureControlConfiguration];
  [tintedButtonConfiguration setPreferredSymbolConfigurationForImage:sbui_systemApertureControlConfiguration];

  [tintedButtonConfiguration setButtonSize:3];
  background = [tintedButtonConfiguration background];
  [background setBackgroundColorTransformer:&__block_literal_global_16];

  return tintedButtonConfiguration;
}

+ (id)_sbui_titleTextAttributesTransformerForTitleFont:()SBUISystemApertureStyling
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__UIButtonConfiguration_SBUISystemApertureStyling___sbui_titleTextAttributesTransformerForTitleFont___block_invoke;
  v7[3] = &unk_1E789E3A8;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x1AC58E960](v7);

  return v5;
}

@end