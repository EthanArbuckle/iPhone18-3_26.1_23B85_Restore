@interface FBSMutableSceneSettings(PREditingScene)
- (double)pr_leadingTopButtonFrame;
- (double)pr_trailingTopButtonFrame;
- (uint64_t)pr_areComplicationsDisallowed;
- (uint64_t)pr_areControlsHidden;
- (uint64_t)pr_editingAcceptButtonType;
- (uint64_t)pr_editingContext;
- (uint64_t)pr_editingVariant;
- (uint64_t)pr_focusedComplicationElement;
- (uint64_t)pr_focusedQuickActionElementPosition;
- (uint64_t)pr_usesEditingLayout;
- (void)pr_overrideDate;
- (void)pr_setComplicationsDisallowed:()PREditingScene;
- (void)pr_setControlsHidden:()PREditingScene;
- (void)pr_setEditingAcceptButtonType:()PREditingScene;
- (void)pr_setEditingContext:()PREditingScene;
- (void)pr_setEditingModalVariant:()PREditingScene;
- (void)pr_setEditingVariant:()PREditingScene;
- (void)pr_setFocusedComplicationElement:()PREditingScene;
- (void)pr_setFocusedQuickActionElementPosition:()PREditingScene;
- (void)pr_setInjectedEditingSettings:()PREditingScene;
- (void)pr_setLeadingTopButtonFrame:()PREditingScene;
- (void)pr_setOverrideDate:()PREditingScene;
- (void)pr_setTitleString:()PREditingScene;
- (void)pr_setTrailingTopButtonFrame:()PREditingScene;
- (void)pr_setUserInterfaceStyleLuminanceThreshold:()PREditingScene;
- (void)pr_setUsesEditingLayout:()PREditingScene;
- (void)pr_titleString;
@end

@implementation FBSMutableSceneSettings(PREditingScene)

- (uint64_t)pr_editingAcceptButtonType
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20770];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (uint64_t)pr_editingVariant
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20764];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (uint64_t)pr_editingContext
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20765];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (double)pr_leadingTopButtonFrame
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20766];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 CGRectValue];
  v8 = v7;

  return v8;
}

- (double)pr_trailingTopButtonFrame
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20767];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 CGRectValue];
  v8 = v7;

  return v8;
}

- (uint64_t)pr_usesEditingLayout
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20769];

  return v2;
}

- (uint64_t)pr_focusedComplicationElement
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20772];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (uint64_t)pr_areControlsHidden
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20768];

  return v2;
}

- (uint64_t)pr_areComplicationsDisallowed
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20771];

  return v2;
}

- (void)pr_titleString
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20773];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)pr_overrideDate
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20774];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (uint64_t)pr_focusedQuickActionElementPosition
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20776];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)pr_setEditingModalVariant:()PREditingScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:20778];
}

- (void)pr_setEditingVariant:()PREditingScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v4 forSetting:20764];
}

- (void)pr_setEditingAcceptButtonType:()PREditingScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v4 forSetting:20770];
}

- (void)pr_setEditingContext:()PREditingScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v4 forSetting:20765];
}

- (void)pr_setLeadingTopButtonFrame:()PREditingScene
{
  otherSettings = [self otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [otherSettings setObject:v10 forSetting:20766];
}

- (void)pr_setTrailingTopButtonFrame:()PREditingScene
{
  otherSettings = [self otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [otherSettings setObject:v10 forSetting:20767];
}

- (void)pr_setUsesEditingLayout:()PREditingScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20769];
}

- (void)pr_setFocusedComplicationElement:()PREditingScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v4 forSetting:20772];
}

- (void)pr_setControlsHidden:()PREditingScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20768];
}

- (void)pr_setComplicationsDisallowed:()PREditingScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20771];
}

- (void)pr_setTitleString:()PREditingScene
{
  v4 = a3;
  otherSettings = [self otherSettings];
  v5 = [v4 copy];

  [otherSettings setObject:v5 forSetting:20773];
}

- (void)pr_setOverrideDate:()PREditingScene
{
  v4 = a3;
  otherSettings = [self otherSettings];
  [otherSettings setObject:v4 forSetting:20774];
}

- (void)pr_setFocusedQuickActionElementPosition:()PREditingScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v4 forSetting:20776];
}

- (void)pr_setInjectedEditingSettings:()PREditingScene
{
  v4 = a3;
  otherSettings = [self otherSettings];
  v5 = [v4 copy];

  [otherSettings setObject:v5 forSetting:20777];
}

- (void)pr_setUserInterfaceStyleLuminanceThreshold:()PREditingScene
{
  v4 = a3;
  otherSettings = [self otherSettings];
  [otherSettings setObject:v4 forSetting:20779];
}

@end