@interface FBSSceneSettings(PREditingScene)
- (double)pr_leadingTopButtonFrame;
- (double)pr_trailingTopButtonFrame;
- (uint64_t)pr_areComplicationsDisallowed;
- (uint64_t)pr_areControlsHidden;
- (uint64_t)pr_editingAcceptButtonType;
- (uint64_t)pr_editingContext;
- (uint64_t)pr_editingModalVariant;
- (uint64_t)pr_editingVariant;
- (uint64_t)pr_focusedComplicationElement;
- (uint64_t)pr_focusedQuickActionElementPosition;
- (uint64_t)pr_usesEditingLayout;
- (void)pr_injectedEditingSettings;
- (void)pr_overrideDate;
- (void)pr_titleString;
- (void)pr_userInterfaceStyleLuminanceThreshold;
@end

@implementation FBSSceneSettings(PREditingScene)

- (uint64_t)pr_editingModalVariant
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20778];
  v3 = [v2 integerValue];

  return v3;
}

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

- (void)pr_injectedEditingSettings
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20777];
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

- (void)pr_userInterfaceStyleLuminanceThreshold
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20779];
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

@end