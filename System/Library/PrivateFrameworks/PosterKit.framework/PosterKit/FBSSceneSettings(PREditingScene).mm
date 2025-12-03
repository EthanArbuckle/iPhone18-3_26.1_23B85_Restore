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
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20778];
  integerValue = [v2 integerValue];

  return integerValue;
}

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

- (void)pr_injectedEditingSettings
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20777];
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
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20779];
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