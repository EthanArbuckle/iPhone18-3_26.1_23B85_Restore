@interface TLKAppearance
+ (BOOL)viewHasOverriddenAppearance:(id)a3;
+ (TLKAppearance)appearanceWithStyle:(unint64_t)a3;
+ (TLKAppearance)appearanceWithVibrancyEnabled:(BOOL)a3 isDark:(BOOL)a4;
+ (id)allAppearances;
+ (id)bestAppearanceForSystem;
+ (id)bestAppearanceForTraitCollection:(id)a3;
+ (id)bestAppearanceForView:(id)a3;
+ (void)disableAppearanceOverrideForView:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UIColor)backgroundColor;
- (UIColor)groupedBackgroundColor;
- (UIColor)quinaryColor;
- (UIColor)secondaryButtonColor;
- (id)buttonColorForProminence:(unint64_t)a3;
- (id)colorForProminence:(unint64_t)a3;
- (id)primaryColorWithDefaultAlpha:(double)a3;
- (id)textColorForColor:(int64_t)a3;
- (void)disableAppearanceForView:(id)a3;
- (void)enableAppearanceForContainer:(id)a3;
- (void)enableAppearanceForView:(id)a3;
- (void)overrideAppearanceForView:(id)a3;
@end

@implementation TLKAppearance

- (UIColor)backgroundColor
{
  if ([(TLKAppearance *)self isVibrant])
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  return v2;
}

+ (id)bestAppearanceForSystem
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  v4 = [v3 traitCollection];
  v5 = [a1 bestAppearanceForTraitCollection:v4];

  return v5;
}

+ (id)allAppearances
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [TLKAppearance appearanceWithStyle:0];
  v8[0] = v2;
  v3 = [TLKAppearance appearanceWithStyle:1];
  v8[1] = v3;
  v4 = [TLKAppearance appearanceWithStyle:2];
  v8[2] = v4;
  v5 = [TLKAppearance appearanceWithStyle:3];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

+ (TLKAppearance)appearanceWithStyle:(unint64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = &appearanceWithStyle__cachedVibrantLightAppearance;
      v4 = appearanceWithStyle__cachedVibrantLightAppearance;
      if (!appearanceWithStyle__cachedVibrantLightAppearance)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_15;
      }

      v3 = &appearanceWithStyle__cachedVibrantDarkAppearance;
      v4 = appearanceWithStyle__cachedVibrantDarkAppearance;
      if (!appearanceWithStyle__cachedVibrantDarkAppearance)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_15;
      }

      v3 = &appearanceWithStyle__cachedDarkAppearance;
      v4 = appearanceWithStyle__cachedDarkAppearance;
      if (appearanceWithStyle__cachedDarkAppearance)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v3 = &appearanceWithStyle__cachedLightAppearance;
    v4 = appearanceWithStyle__cachedLightAppearance;
    if (!appearanceWithStyle__cachedLightAppearance)
    {
LABEL_13:
      v5 = objc_opt_new();
      v6 = *v3;
      *v3 = v5;

      v4 = *v3;
    }
  }

LABEL_14:
  a1 = v4;
LABEL_15:

  return a1;
}

+ (id)bestAppearanceForView:(id)a3
{
  v4 = [a3 traitCollection];
  v5 = [a1 bestAppearanceForTraitCollection:v4];

  return v5;
}

+ (id)bestAppearanceForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 _vibrancy] == 1;
  v6 = [v4 userInterfaceStyle];

  return [a1 appearanceWithVibrancyEnabled:v5 isDark:v6 == 2];
}

+ (TLKAppearance)appearanceWithVibrancyEnabled:(BOOL)a3 isDark:(BOOL)a4
{
  v4 = 3;
  if (!a3 || !a4)
  {
    v4 = 0;
  }

  v5 = 2;
  if (a4 || !a3)
  {
    v5 = v4;
  }

  if (!a4 || a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  return [TLKAppearance appearanceWithStyle:v6];
}

- (UIColor)quinaryColor
{
  v7 = 0.0;
  v3 = [(TLKAppearance *)self quaternaryColor];
  [v3 getHue:0 saturation:0 brightness:0 alpha:&v7];

  v7 = v7 * 0.6;
  v4 = [(TLKAppearance *)self quaternaryColor];
  v5 = [v4 colorWithAlphaComponent:v7];

  return v5;
}

- (id)colorForProminence:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_13;
      }

      v3 = [(TLKAppearance *)self secondaryColor];
    }

    else
    {
      v3 = [(TLKAppearance *)self primaryColor];
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        v3 = [(TLKAppearance *)self tertiaryColor];
        break;
      case 3uLL:
        v3 = [(TLKAppearance *)self quaternaryColor];
        break;
      case 4uLL:
        v3 = [(TLKAppearance *)self quinaryColor];
        break;
      default:
        goto LABEL_13;
    }
  }

  a2 = v3;
LABEL_13:

  return a2;
}

- (UIColor)secondaryButtonColor
{
  if ([(TLKAppearance *)self isVibrant])
  {
    [(TLKAppearance *)self primaryButtonColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v3 = ;

  return v3;
}

- (id)buttonColorForProminence:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      v3 = [(TLKAppearance *)self secondaryButtonColor];
    }

    else
    {
      v3 = [(TLKAppearance *)self primaryButtonColor];
    }

    goto LABEL_11;
  }

  if (a3 == 2)
  {
    v3 = [(TLKAppearance *)self tertiaryButtonColor];
    goto LABEL_11;
  }

  if (a3 == 3 || a3 == 4)
  {
    v3 = [(TLKAppearance *)self quaternaryButtonColor];
LABEL_11:
    a2 = v3;
  }

LABEL_12:

  return a2;
}

- (UIColor)groupedBackgroundColor
{
  if ([(TLKAppearance *)self isVibrant])
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  return v2;
}

- (void)enableAppearanceForView:(id)a3
{
  v4 = a3;
  v5 = [(TLKAppearance *)self compositingFilter];
  v6 = [v4 layer];
  [v6 setCompositingFilter:v5];

  v7 = [v4 superview];

  [(TLKAppearance *)self enableAppearanceForContainer:v7];
}

- (void)enableAppearanceForContainer:(id)a3
{
  v13 = a3;
  v4 = [(TLKAppearance *)self compositingFilter];

  v5 = v13;
  if (v4)
  {
    v6 = v13;
    v7 = [v6 layer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      do
      {
        v9 = [v6 superview];

        v10 = [v9 layer];
        objc_opt_class();
        v11 = objc_opt_isKindOfClass();

        v6 = v9;
      }

      while ((v11 & 1) != 0);
    }

    else
    {
      v9 = v6;
    }

    v12 = [v9 layer];
    [v12 setAllowsGroupBlending:0];

    v5 = v13;
  }
}

- (void)disableAppearanceForView:(id)a3
{
  v3 = [a3 layer];
  [v3 setCompositingFilter:0];
}

+ (BOOL)viewHasOverriddenAppearance:(id)a3
{
  v3 = a3;
  if ([v3 overrideUserInterfaceStyle])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 _overrideVibrancyTrait] != -1;
  }

  return v4;
}

- (void)overrideAppearanceForView:(id)a3
{
  v5 = a3;
  if ([(TLKAppearance *)self isDark])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v5 setOverrideUserInterfaceStyle:v4];
  [v5 _setOverrideVibrancyTrait:{-[TLKAppearance isVibrant](self, "isVibrant")}];
}

+ (void)disableAppearanceOverrideForView:(id)a3
{
  v3 = a3;
  [v3 setOverrideUserInterfaceStyle:0];
  [v3 _setOverrideVibrancyTrait:-1];
}

- (id)textColorForColor:(int64_t)a3
{
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v3 = [MEMORY[0x1E69DC888] systemRedColor];
        goto LABEL_20;
      }

      if (a3 == 2)
      {
        v3 = [MEMORY[0x1E69DC888] systemOrangeColor];
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (a3 == 3)
    {
      [MEMORY[0x1E69DC888] systemYellowColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGreenColor];
    }

    v3 = LABEL_9:;
    goto LABEL_20;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemPurpleColor];
    }

    goto LABEL_9;
  }

  if (a3 == 7)
  {
    v3 = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_20;
  }

  if (a3 == 8)
  {
    v3 = [MEMORY[0x1E69DC888] linkColor];
    goto LABEL_20;
  }

LABEL_19:
  v3 = [(TLKAppearance *)self primaryColor];
LABEL_20:

  return v3;
}

- (id)primaryColorWithDefaultAlpha:(double)a3
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    a3 = a3 + 0.2;
  }

  v5 = [(TLKAppearance *)self primaryColor];
  v6 = [v5 colorWithAlphaComponent:a3];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(TLKAppearance *)self style];
    v7 = v6 == [(TLKAppearance *)v5 style];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end