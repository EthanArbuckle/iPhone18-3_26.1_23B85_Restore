@interface UIKBUndoStyling
- (UIFont)undoInteractiveControlLabelFont;
- (UIFont)undoStateControlLabelFont;
- (UIFont)undoStateControlUnavailableLabelFont;
- (UIKBUndoStyling)initWithKeyboardAppearance:(int64_t)appearance isRTL:(BOOL)l;
- (void)createDynamicColors;
@end

@implementation UIKBUndoStyling

- (UIKBUndoStyling)initWithKeyboardAppearance:(int64_t)appearance isRTL:(BOOL)l
{
  v13.receiver = self;
  v13.super_class = UIKBUndoStyling;
  v6 = [(UIKBUndoStyling *)&v13 init];
  if (v6)
  {
    v7 = [UIBlurEffect effectWithStyle:1200];
    backgroundBlurEffect = v6->_backgroundBlurEffect;
    v6->_backgroundBlurEffect = v7;

    v9 = [(UIKBUndoStyling *)v6 vibrancyEffectForBlur:v6->_backgroundBlurEffect];
    backgroundVibrancyEffect = v6->_backgroundVibrancyEffect;
    v6->_backgroundVibrancyEffect = v9;

    v6->_isRTL = l;
    v6->_appearance = appearance;
    [(UIKBUndoStyling *)v6 createDynamicColors];
    v11 = v6;
  }

  return v6;
}

- (void)createDynamicColors
{
  v3 = [UIColor colorWithDynamicProvider:&__block_literal_global_428];
  HUDbackgroundColor = self->_HUDbackgroundColor;
  self->_HUDbackgroundColor = v3;

  v5 = [UIColor colorWithDynamicProvider:&__block_literal_global_53_1];
  HUDShadowColor = self->_HUDShadowColor;
  self->_HUDShadowColor = v5;

  v7 = [UIColor colorWithDynamicProvider:&__block_literal_global_55_4];
  elementBackgroundColor = self->_elementBackgroundColor;
  self->_elementBackgroundColor = v7;

  v9 = [UIColor colorWithDynamicProvider:&__block_literal_global_57];
  elementCoverColor = self->_elementCoverColor;
  self->_elementCoverColor = v9;

  v11 = [UIColor colorWithDynamicProvider:&__block_literal_global_59_0];
  buttonGlyphColorEnabled = self->_buttonGlyphColorEnabled;
  self->_buttonGlyphColorEnabled = v11;

  objc_storeStrong(&self->_buttonGlyphColorPressed, self->_buttonGlyphColorEnabled);
  v13 = [UIColor colorWithDynamicProvider:&__block_literal_global_61_2];
  buttonGlyphColorDisabled = self->_buttonGlyphColorDisabled;
  self->_buttonGlyphColorDisabled = v13;
}

id __38__UIKBUndoStyling_createDynamicColors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 valueForNSIntegerTrait:v3];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__UIKBUndoStyling_createDynamicColors__block_invoke_2;
  v9[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
  v9[4] = v4;
  v5 = [v2 traitCollectionByModifyingTraits:v9];

  v6 = +[UIColor systemBackgroundColor];
  v7 = [v6 resolvedColorWithTraitCollection:v5];

  return v7;
}

void __38__UIKBUndoStyling_createDynamicColors__block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = a2;
  [v3 setUserInterfaceStyle:v2];
  [v3 setUserInterfaceLevel:1];
}

id __38__UIKBUndoStyling_createDynamicColors__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 valueForNSIntegerTrait:v3];

  if (v4 == 1)
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v5 = ;

  return v5;
}

id __38__UIKBUndoStyling_createDynamicColors__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 valueForNSIntegerTrait:v3];

  if (v4 == 1)
  {
    [UIColor colorWithWhite:1.0 alpha:0.4];
  }

  else
  {
    [UIColor colorWithRed:0.937254902 green:0.937254902 blue:0.937254902 alpha:1.0];
  }
  v5 = ;

  return v5;
}

id __38__UIKBUndoStyling_createDynamicColors__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 valueForNSIntegerTrait:v3];

  if (v4 == 1)
  {
    [UIColor colorWithWhite:1.0 alpha:0.95];
  }

  else
  {
    +[UIColor systemYellowColor];
  }
  v5 = ;

  return v5;
}

id __38__UIKBUndoStyling_createDynamicColors__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 valueForNSIntegerTrait:v3];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__UIKBUndoStyling_createDynamicColors__block_invoke_7;
  v10[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
  v10[4] = v4;
  v5 = [v2 traitCollectionByModifyingTraits:v10];

  v6 = +[UIColor labelColor];
  v7 = [v6 colorWithAlphaComponent:0.8];
  v8 = [v7 resolvedColorWithTraitCollection:v5];

  return v8;
}

uint64_t __38__UIKBUndoStyling_createDynamicColors__block_invoke_7(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setUserInterfaceStyle:v2];
}

id __38__UIKBUndoStyling_createDynamicColors__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 valueForNSIntegerTrait:v3];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__UIKBUndoStyling_createDynamicColors__block_invoke_9;
  v9[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
  v9[4] = v4;
  v5 = [v2 traitCollectionByModifyingTraits:v9];

  v6 = +[UIColor quaternaryLabelColor];
  v7 = [v6 resolvedColorWithTraitCollection:v5];

  return v7;
}

uint64_t __38__UIKBUndoStyling_createDynamicColors__block_invoke_9(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setUserInterfaceStyle:v2];
}

- (UIFont)undoInteractiveControlLabelFont
{
  v2 = *MEMORY[0x1E69DED48];
  v3 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DED40]];
  v4 = [off_1E70ECC18 _preferredFontForTextStyle:v2 maximumPointSize:v3 compatibleWithTraitCollection:18.0];

  return v4;
}

- (UIFont)undoStateControlLabelFont
{
  v2 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:@"UICTContentSizeCategoryL"];
  v3 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedFootnote" maximumPointSize:v2 compatibleWithTraitCollection:20.0];

  return v3;
}

- (UIFont)undoStateControlUnavailableLabelFont
{
  v2 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:@"UICTContentSizeCategoryL"];
  v3 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedCaption2" maximumPointSize:v2 compatibleWithTraitCollection:20.0];

  return v3;
}

@end