@interface UIButton(SBUISystemApertureStyling)
- (void)sbui_updateConfiguration;
@end

@implementation UIButton(SBUISystemApertureStyling)

- (void)sbui_updateConfiguration
{
  v2 = [a1 configuration];
  v7 = [v2 copy];

  v3 = MEMORY[0x1E69DB878];
  v4 = [a1 traitCollection];
  v5 = [v3 sbui_systemAperturePreferredTextButtonFontCompatibleWithTraitCollection:v4];

  v6 = [MEMORY[0x1E69DC740] _sbui_titleTextAttributesTransformerForTitleFont:v5];
  [v7 setTitleTextAttributesTransformer:v6];
  [a1 setConfiguration:v7];
}

@end