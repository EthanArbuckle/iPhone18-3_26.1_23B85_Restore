@interface UITraitCollection(SpringBoardHome)
+ (id)sbh_highestLevelTraitCollectionForView:()SpringBoardHome;
+ (id)sbh_highestLevelTraitCollectionForViewController:()SpringBoardHome;
+ (id)sbh_iconImageAppearanceFromTraitCollection:()SpringBoardHome;
+ (id)sbh_iconImageAppearanceFromTraitCollection:()SpringBoardHome iconImageStyleConfiguration:;
+ (id)sbh_iconImageAppearanceFromTraitCollection:()SpringBoardHome overrideIconImageAppearance:;
+ (id)sbh_iconImageAppearanceFromTraitCollection:()SpringBoardHome overrideIconImageAppearance:overrideIconImageStyleConfiguration:;
+ (id)sbh_iconImageStyleConfigurationFromTraitCollection:()SpringBoardHome;
+ (id)sbh_iconImageStyleConfigurationFromTraitCollection:()SpringBoardHome overrideIconImageAppearance:overrideIconImageStyleConfiguration:;
+ (id)sbh_traitCollectionWithHomeScreenStyleConfiguration:()SpringBoardHome;
+ (id)sbh_traitCollectionWithHomeScreenStyleConfiguration:()SpringBoardHome userInterfaceStyle:;
+ (id)sbh_traitCollectionWithIconEffect:()SpringBoardHome;
+ (id)sbh_traitCollectionWithIconImageAppearance:()SpringBoardHome;
+ (id)sbh_traitCollectionWithIconImageStyleConfiguration:()SpringBoardHome;
+ (id)sbh_traitCollectionWithIconImageStyleConfiguration:()SpringBoardHome userInterfaceStyle:;
+ (uint64_t)sbh_dockGlassUserInterfaceStyleFromTraitCollection:()SpringBoardHome;
+ (uint64_t)sbh_iconGlassUserInterfaceStyleFromTraitCollection:()SpringBoardHome;
+ (uint64_t)sbh_iconUserInterfaceStyleFromTraitCollection:()SpringBoardHome;
+ (void)sbh_updateMutableTrait:()SpringBoardHome withIconImageStyleConfiguration:userInterfaceStyle:;
+ (void)sbh_updateMutableTraits:()SpringBoardHome withIconImageAppearance:;
- (BOOL)sbh_automaticallyChangesWithUserInterfaceStyle;
- (id)sbh_homeScreenIconStyleConfigurationInferringIfNecessary:()SpringBoardHome;
- (id)sbh_iconImageAppearanceInferringIfNecessary:()SpringBoardHome;
- (id)sbh_iconImageAppearanceWithHomeScreenStyleConfiguration:()SpringBoardHome;
- (id)sbh_iconImageStyleConfigurationInferringIfNecessary:()SpringBoardHome;
- (id)sbh_iconTintColorInferringIfNecessary:()SpringBoardHome;
- (id)sbh_traitCollectionWithIconImageAppearance:()SpringBoardHome;
- (id)sbh_traitCollectionWithIconImageStyleConfiguration:()SpringBoardHome;
- (id)sbh_traitCollectionWithIconImageStyleConfiguration:()SpringBoardHome userInterfaceStyle:;
- (void)sbh_homeScreenStyleConfiguration;
- (void)sbh_iconEffect;
@end

@implementation UITraitCollection(SpringBoardHome)

- (void)sbh_homeScreenStyleConfiguration
{
  v2 = objc_opt_self();
  v3 = [self objectForTrait:v2];

  getPUIStylePickerHomeScreenConfigurationClass();
  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)sbh_iconEffect
{
  v2 = objc_opt_self();
  v3 = [self objectForTrait:v2];

  if (objc_opt_respondsToSelector())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)sbh_iconTintColorInferringIfNecessary:()SpringBoardHome
{
  v5 = objc_opt_self();
  v6 = [self objectForTrait:v5];

  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = v6;
    if (!a3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }
  }

  v10 = objc_opt_self();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v12 = v6;
    if (SBHIconImageAppearanceTypeHasTintColor([v12 appearanceType]))
    {
      v13 = v12;
LABEL_10:
      tintColor = [v13 tintColor];
LABEL_11:
      v17 = tintColor;
LABEL_16:

      v9 = v17;
      goto LABEL_17;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  v14 = objc_opt_self();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v13 = v6;
    goto LABEL_10;
  }

  getPUIStylePickerHomeScreenConfigurationClass();
  v18 = objc_opt_self();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v20 = v6;
    if ([v20 styleType] == 3)
    {
      tintColor = [v20 accentColor];
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = v9;

  return v9;
}

- (id)sbh_iconImageAppearanceInferringIfNecessary:()SpringBoardHome
{
  v5 = objc_opt_self();
  v6 = [self objectForTrait:v5];

  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = v6;
  }

  else if (a3)
  {
    v10 = [self sbh_iconImageStyleConfigurationInferringIfNecessary:1];
    if (v10)
    {
      [v10 iconImageAppearanceWithUserInterfaceStyle:{objc_msgSend(self, "userInterfaceStyle")}];
    }

    else
    {
      +[SBHIconImageAppearance lightAppearance];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)sbh_iconImageStyleConfigurationInferringIfNecessary:()SpringBoardHome
{
  v5 = objc_opt_self();
  v6 = [self objectForTrait:v5];

  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    sbh_iconImageStyleConfiguration = v6;
  }

  else if (a3)
  {
    v10 = [self sbh_iconImageAppearanceInferringIfNecessary:0];
    if (v10)
    {
      sbh_iconImageStyleConfiguration = [SBHIconImageStyleConfiguration styleConfigurationWithIconImageAppearance:v10];
    }

    else
    {
      sbh_homeScreenStyleConfiguration = [self sbh_homeScreenStyleConfiguration];
      if (sbh_homeScreenStyleConfiguration)
      {
        sbh_iconImageStyleConfiguration = [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:sbh_homeScreenStyleConfiguration];
      }

      else
      {
        v12 = [self sbh_homeScreenIconStyleConfigurationInferringIfNecessary:0];
        v13 = v12;
        if (v12)
        {
          sbh_iconImageStyleConfiguration = [v12 sbh_iconImageStyleConfiguration];
        }

        else
        {
          userInterfaceStyle = [self userInterfaceStyle];
          v15 = [self sbh_iconTintColorInferringIfNecessary:0];
          if (v15)
          {
            v16 = [[SBHIconImageStyleConfiguration alloc] initWithConfigurationType:2 variant:userInterfaceStyle == 2 tintColor:v15];
          }

          else
          {
            if (userInterfaceStyle == 2)
            {
              +[SBHIconImageStyleConfiguration colorDarkStyleConfiguration];
            }

            else
            {
              +[SBHIconImageStyleConfiguration colorLightStyleConfiguration];
            }
            v16 = ;
          }

          sbh_iconImageStyleConfiguration = v16;
        }
      }
    }
  }

  else
  {
    sbh_iconImageStyleConfiguration = 0;
  }

  return sbh_iconImageStyleConfiguration;
}

- (id)sbh_homeScreenIconStyleConfigurationInferringIfNecessary:()SpringBoardHome
{
  v5 = objc_opt_self();
  v6 = [self objectForTrait:v5];

  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = v6;
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [self objectForTrait:v10];

    v12 = objc_opt_self();
    LOBYTE(v10) = objc_opt_isKindOfClass();

    if ((v10 & 1) == 0)
    {
      if (a3)
      {
        v15 = [self sbh_iconImageStyleConfigurationInferringIfNecessary:1];
        v16 = v15;
        if (v15)
        {
          [v15 homeScreenIconStyleConfiguration];
        }

        else
        {
          [MEMORY[0x1E69D4228] defaultStyleConfiguration];
        }
        v13 = ;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_6;
    }

    v9 = v11;
  }

  v11 = v9;
  v13 = v9;
LABEL_6:

  return v13;
}

+ (id)sbh_iconImageAppearanceFromTraitCollection:()SpringBoardHome iconImageStyleConfiguration:
{
  v5 = a4;
  if (a3)
  {
    userInterfaceStyle = [a3 userInterfaceStyle];
  }

  else
  {
    userInterfaceStyle = 1;
  }

  v7 = [v5 iconImageAppearanceWithUserInterfaceStyle:userInterfaceStyle];

  return v7;
}

+ (id)sbh_iconImageAppearanceFromTraitCollection:()SpringBoardHome
{
  if (a3)
  {
    [a3 sbh_iconImageAppearance];
  }

  else
  {
    +[SBHIconImageAppearance defaultAppearance];
  }
  v3 = ;

  return v3;
}

+ (id)sbh_iconImageAppearanceFromTraitCollection:()SpringBoardHome overrideIconImageAppearance:
{
  v5 = a4;
  sbh_iconImageAppearance = v5;
  if (!v5)
  {
    sbh_iconImageAppearance = [a3 sbh_iconImageAppearance];
    if (!sbh_iconImageAppearance)
    {
      sbh_iconImageAppearance = +[SBHIconImageAppearance defaultAppearance];
    }
  }

  return sbh_iconImageAppearance;
}

+ (id)sbh_iconImageAppearanceFromTraitCollection:()SpringBoardHome overrideIconImageAppearance:overrideIconImageStyleConfiguration:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  sbh_iconImageAppearance = v11;
  if (!v11)
  {
    sbh_iconImageAppearance = 0;
    if (v10)
    {
      sbh_iconImageAppearance = [self sbh_iconImageAppearanceFromTraitCollection:v8 iconImageStyleConfiguration:v10];
    }
  }

  if (!sbh_iconImageAppearance)
  {
    sbh_iconImageAppearance = [v8 sbh_iconImageAppearance];
    if (!sbh_iconImageAppearance)
    {
      sbh_iconImageAppearance = +[SBHIconImageAppearance defaultAppearance];
    }
  }

  return sbh_iconImageAppearance;
}

+ (id)sbh_iconImageStyleConfigurationFromTraitCollection:()SpringBoardHome
{
  if (a3)
  {
    [a3 sbh_iconImageStyleConfiguration];
  }

  else
  {
    +[SBHIconImageStyleConfiguration defaultStyleConfiguration];
  }
  v3 = ;

  return v3;
}

+ (id)sbh_iconImageStyleConfigurationFromTraitCollection:()SpringBoardHome overrideIconImageAppearance:overrideIconImageStyleConfiguration:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v11 = [SBHIconImageStyleConfiguration styleConfigurationWithIconImageAppearance:v8];
  }

  else if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v7 sbh_iconImageStyleConfigurationInferringIfNecessary:1];
  }

  v12 = v11;

  return v12;
}

+ (id)sbh_traitCollectionWithIconImageAppearance:()SpringBoardHome
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithIconImageAppearance___block_invoke;
  v8[3] = &unk_1E808B958;
  v9 = v4;
  selfCopy = self;
  v5 = v4;
  v6 = [self traitCollectionWithTraits:v8];

  return v6;
}

+ (void)sbh_updateMutableTraits:()SpringBoardHome withIconImageAppearance:
{
  v9 = a3;
  v6 = a4;
  v7 = objc_opt_self();
  [v9 setObject:v6 forTrait:v7];

  v8 = [self sbh_userInterfaceStyleForIconImageAppearance:v6];
  if (v8)
  {
    [v9 setUserInterfaceStyle:v8];
  }
}

- (id)sbh_traitCollectionWithIconImageAppearance:()SpringBoardHome
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithIconImageAppearance___block_invoke;
  v8[3] = &unk_1E808B980;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [self traitCollectionByModifyingTraits:v8];

  return v6;
}

+ (id)sbh_traitCollectionWithIconImageStyleConfiguration:()SpringBoardHome
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithIconImageStyleConfiguration___block_invoke;
  v8[3] = &unk_1E808B9A8;
  v9 = v4;
  v5 = v4;
  v6 = [self traitCollectionWithTraits:v8];

  return v6;
}

- (id)sbh_traitCollectionWithIconImageStyleConfiguration:()SpringBoardHome
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithIconImageStyleConfiguration___block_invoke;
  v8[3] = &unk_1E808B9A8;
  v9 = v4;
  v5 = v4;
  v6 = [self traitCollectionByModifyingTraits:v8];

  return v6;
}

+ (void)sbh_updateMutableTrait:()SpringBoardHome withIconImageStyleConfiguration:userInterfaceStyle:
{
  v10 = a3;
  v7 = a4;
  variant = [v7 variant];
  v9 = objc_opt_self();
  [v10 setObject:v7 forTrait:v9];

  if (variant <= 1)
  {
    if (variant)
    {
      if (variant != 1)
      {
        goto LABEL_9;
      }

      a5 = 2;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (variant != 2)
  {
    if (variant != 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    a5 = 1;
  }

LABEL_8:
  [v10 setUserInterfaceStyle:a5];
LABEL_9:
}

+ (id)sbh_traitCollectionWithIconImageStyleConfiguration:()SpringBoardHome userInterfaceStyle:
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __108__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithIconImageStyleConfiguration_userInterfaceStyle___block_invoke;
  v10[3] = &unk_1E808B9D0;
  v11 = v6;
  selfCopy = self;
  v13 = a4;
  v7 = v6;
  v8 = [self traitCollectionWithTraits:v10];

  return v8;
}

- (id)sbh_traitCollectionWithIconImageStyleConfiguration:()SpringBoardHome userInterfaceStyle:
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __108__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithIconImageStyleConfiguration_userInterfaceStyle___block_invoke;
  v10[3] = &unk_1E808B9F8;
  v10[4] = self;
  v11 = v6;
  v12 = a4;
  v7 = v6;
  v8 = [self traitCollectionByModifyingTraits:v10];

  return v8;
}

+ (id)sbh_traitCollectionWithHomeScreenStyleConfiguration:()SpringBoardHome
{
  v2 = [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:?];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithHomeScreenStyleConfiguration___block_invoke;
  v6[3] = &unk_1E808B9A8;
  v7 = v2;
  v3 = v2;
  v4 = [self traitCollectionWithTraits:v6];

  return v4;
}

+ (id)sbh_traitCollectionWithHomeScreenStyleConfiguration:()SpringBoardHome userInterfaceStyle:
{
  v6 = [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:?];
  v7 = [self sbh_traitCollectionWithIconImageStyleConfiguration:v6 userInterfaceStyle:a4];

  return v7;
}

- (id)sbh_iconImageAppearanceWithHomeScreenStyleConfiguration:()SpringBoardHome
{
  v2 = [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:?];
  v3 = [v2 iconImageAppearanceWithUserInterfaceStyle:{objc_msgSend(self, "userInterfaceStyle")}];

  return v3;
}

- (BOOL)sbh_automaticallyChangesWithUserInterfaceStyle
{
  sbh_iconImageStyleConfiguration = [self sbh_iconImageStyleConfiguration];
  v2 = sbh_iconImageStyleConfiguration;
  if (sbh_iconImageStyleConfiguration)
  {
    v3 = [sbh_iconImageStyleConfiguration variant] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (uint64_t)sbh_iconUserInterfaceStyleFromTraitCollection:()SpringBoardHome
{
  v2 = [self sbh_iconImageAppearanceFromTraitCollection:?];
  v3 = [self sbh_userInterfaceStyleForIconImageAppearance:v2];

  return v3;
}

+ (uint64_t)sbh_iconGlassUserInterfaceStyleFromTraitCollection:()SpringBoardHome
{
  v1 = [self sbh_iconImageStyleConfigurationFromTraitCollection:?];
  iconGlassUserInterfaceStyle = [v1 iconGlassUserInterfaceStyle];

  return iconGlassUserInterfaceStyle;
}

+ (uint64_t)sbh_dockGlassUserInterfaceStyleFromTraitCollection:()SpringBoardHome
{
  v1 = [self sbh_iconImageStyleConfigurationFromTraitCollection:?];
  dockGlassUserInterfaceStyle = [v1 dockGlassUserInterfaceStyle];

  return dockGlassUserInterfaceStyle;
}

+ (id)sbh_highestLevelTraitCollectionForView:()SpringBoardHome
{
  v3 = a3;
  window = [v3 window];
  windowScene = [window windowScene];
  traitCollection = [windowScene traitCollection];

  if (!traitCollection)
  {
    v7 = v3;
    superview = [v7 superview];

    if (superview)
    {
      do
      {
        superview2 = [v7 superview];

        v9Superview = [superview2 superview];

        v7 = superview2;
      }

      while (v9Superview);
    }

    else
    {
      superview2 = v7;
    }

    traitCollection = [superview2 traitCollection];
  }

  return traitCollection;
}

+ (id)sbh_highestLevelTraitCollectionForViewController:()SpringBoardHome
{
  v3 = a3;
  viewIfLoaded = [v3 viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  traitCollection = [windowScene traitCollection];

  if (!traitCollection)
  {
    v8 = v3;
    parentViewController = [v8 parentViewController];

    if (parentViewController)
    {
      do
      {
        parentViewController2 = [v8 parentViewController];

        v10ParentViewController = [parentViewController2 parentViewController];

        v8 = parentViewController2;
      }

      while (v10ParentViewController);
    }

    else
    {
      parentViewController2 = v8;
    }

    traitCollection = [parentViewController2 traitCollection];
  }

  return traitCollection;
}

+ (id)sbh_traitCollectionWithIconEffect:()SpringBoardHome
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithIconEffect___block_invoke;
  v8[3] = &unk_1E808B9A8;
  v9 = v4;
  v5 = v4;
  v6 = [self traitCollectionWithTraits:v8];

  return v6;
}

@end