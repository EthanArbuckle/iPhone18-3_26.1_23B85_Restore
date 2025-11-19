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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20770];
  v3 = [v2 integerValue];

  return v3;
}

- (uint64_t)pr_editingVariant
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20764];
  v3 = [v2 integerValue];

  return v3;
}

- (uint64_t)pr_editingContext
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20765];
  v3 = [v2 integerValue];

  return v3;
}

- (double)pr_leadingTopButtonFrame
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20766];

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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20767];

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
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20769];

  return v2;
}

- (uint64_t)pr_focusedComplicationElement
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20772];
  v3 = [v2 integerValue];

  return v3;
}

- (uint64_t)pr_areControlsHidden
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20768];

  return v2;
}

- (uint64_t)pr_areComplicationsDisallowed
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20771];

  return v2;
}

- (void)pr_titleString
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20773];

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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20774];

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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20776];
  v3 = [v2 integerValue];

  return v3;
}

- (void)pr_setEditingModalVariant:()PREditingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:20778];
}

- (void)pr_setEditingVariant:()PREditingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:20764];
}

- (void)pr_setEditingAcceptButtonType:()PREditingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:20770];
}

- (void)pr_setEditingContext:()PREditingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:20765];
}

- (void)pr_setLeadingTopButtonFrame:()PREditingScene
{
  v9 = [a1 otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v9 setObject:v10 forSetting:20766];
}

- (void)pr_setTrailingTopButtonFrame:()PREditingScene
{
  v9 = [a1 otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v9 setObject:v10 forSetting:20767];
}

- (void)pr_setUsesEditingLayout:()PREditingScene
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20769];
}

- (void)pr_setFocusedComplicationElement:()PREditingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:20772];
}

- (void)pr_setControlsHidden:()PREditingScene
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20768];
}

- (void)pr_setComplicationsDisallowed:()PREditingScene
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20771];
}

- (void)pr_setTitleString:()PREditingScene
{
  v4 = a3;
  v6 = [a1 otherSettings];
  v5 = [v4 copy];

  [v6 setObject:v5 forSetting:20773];
}

- (void)pr_setOverrideDate:()PREditingScene
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:20774];
}

- (void)pr_setFocusedQuickActionElementPosition:()PREditingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:20776];
}

- (void)pr_setInjectedEditingSettings:()PREditingScene
{
  v4 = a3;
  v6 = [a1 otherSettings];
  v5 = [v4 copy];

  [v6 setObject:v5 forSetting:20777];
}

- (void)pr_setUserInterfaceStyleLuminanceThreshold:()PREditingScene
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:20779];
}

@end