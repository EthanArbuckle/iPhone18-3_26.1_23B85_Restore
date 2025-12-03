@interface TLKAppearance
+ (BOOL)viewHasOverriddenAppearance:(id)appearance;
+ (TLKAppearance)appearanceWithStyle:(unint64_t)style;
+ (TLKAppearance)appearanceWithVibrancyEnabled:(BOOL)enabled isDark:(BOOL)dark;
+ (id)allAppearances;
+ (id)bestAppearanceForSystem;
+ (id)bestAppearanceForTraitCollection:(id)collection;
+ (id)bestAppearanceForView:(id)view;
+ (void)disableAppearanceOverrideForView:(id)view;
- (BOOL)isEqual:(id)equal;
- (UIColor)backgroundColor;
- (UIColor)groupedBackgroundColor;
- (UIColor)quinaryColor;
- (UIColor)secondaryButtonColor;
- (id)buttonColorForProminence:(unint64_t)prominence;
- (id)colorForProminence:(unint64_t)prominence;
- (id)primaryColorWithDefaultAlpha:(double)alpha;
- (id)textColorForColor:(int64_t)color;
- (void)disableAppearanceForView:(id)view;
- (void)enableAppearanceForContainer:(id)container;
- (void)enableAppearanceForView:(id)view;
- (void)overrideAppearanceForView:(id)view;
@end

@implementation TLKAppearance

- (UIColor)backgroundColor
{
  if ([(TLKAppearance *)self isVibrant])
  {
    systemBackgroundColor = 0;
  }

  else
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  return systemBackgroundColor;
}

+ (id)bestAppearanceForSystem
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v5 = [self bestAppearanceForTraitCollection:traitCollection];

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

+ (TLKAppearance)appearanceWithStyle:(unint64_t)style
{
  if (style > 1)
  {
    if (style == 2)
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
      if (style != 3)
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
    if (style)
    {
      if (style != 1)
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
  self = v4;
LABEL_15:

  return self;
}

+ (id)bestAppearanceForView:(id)view
{
  traitCollection = [view traitCollection];
  v5 = [self bestAppearanceForTraitCollection:traitCollection];

  return v5;
}

+ (id)bestAppearanceForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [collectionCopy _vibrancy] == 1;
  userInterfaceStyle = [collectionCopy userInterfaceStyle];

  return [self appearanceWithVibrancyEnabled:v5 isDark:userInterfaceStyle == 2];
}

+ (TLKAppearance)appearanceWithVibrancyEnabled:(BOOL)enabled isDark:(BOOL)dark
{
  v4 = 3;
  if (!enabled || !dark)
  {
    v4 = 0;
  }

  v5 = 2;
  if (dark || !enabled)
  {
    v5 = v4;
  }

  if (!dark || enabled)
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
  quaternaryColor = [(TLKAppearance *)self quaternaryColor];
  [quaternaryColor getHue:0 saturation:0 brightness:0 alpha:&v7];

  v7 = v7 * 0.6;
  quaternaryColor2 = [(TLKAppearance *)self quaternaryColor];
  v5 = [quaternaryColor2 colorWithAlphaComponent:v7];

  return v5;
}

- (id)colorForProminence:(unint64_t)prominence
{
  if (prominence <= 1)
  {
    if (prominence)
    {
      if (prominence != 1)
      {
        goto LABEL_13;
      }

      secondaryColor = [(TLKAppearance *)self secondaryColor];
    }

    else
    {
      secondaryColor = [(TLKAppearance *)self primaryColor];
    }
  }

  else
  {
    switch(prominence)
    {
      case 2uLL:
        secondaryColor = [(TLKAppearance *)self tertiaryColor];
        break;
      case 3uLL:
        secondaryColor = [(TLKAppearance *)self quaternaryColor];
        break;
      case 4uLL:
        secondaryColor = [(TLKAppearance *)self quinaryColor];
        break;
      default:
        goto LABEL_13;
    }
  }

  a2 = secondaryColor;
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

- (id)buttonColorForProminence:(unint64_t)prominence
{
  if (prominence <= 1)
  {
    if (prominence)
    {
      if (prominence != 1)
      {
        goto LABEL_12;
      }

      secondaryButtonColor = [(TLKAppearance *)self secondaryButtonColor];
    }

    else
    {
      secondaryButtonColor = [(TLKAppearance *)self primaryButtonColor];
    }

    goto LABEL_11;
  }

  if (prominence == 2)
  {
    secondaryButtonColor = [(TLKAppearance *)self tertiaryButtonColor];
    goto LABEL_11;
  }

  if (prominence == 3 || prominence == 4)
  {
    secondaryButtonColor = [(TLKAppearance *)self quaternaryButtonColor];
LABEL_11:
    a2 = secondaryButtonColor;
  }

LABEL_12:

  return a2;
}

- (UIColor)groupedBackgroundColor
{
  if ([(TLKAppearance *)self isVibrant])
  {
    systemGroupedBackgroundColor = 0;
  }

  else
  {
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  return systemGroupedBackgroundColor;
}

- (void)enableAppearanceForView:(id)view
{
  viewCopy = view;
  compositingFilter = [(TLKAppearance *)self compositingFilter];
  layer = [viewCopy layer];
  [layer setCompositingFilter:compositingFilter];

  superview = [viewCopy superview];

  [(TLKAppearance *)self enableAppearanceForContainer:superview];
}

- (void)enableAppearanceForContainer:(id)container
{
  containerCopy = container;
  compositingFilter = [(TLKAppearance *)self compositingFilter];

  v5 = containerCopy;
  if (compositingFilter)
  {
    v6 = containerCopy;
    layer = [v6 layer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      do
      {
        superview = [v6 superview];

        layer2 = [superview layer];
        objc_opt_class();
        v11 = objc_opt_isKindOfClass();

        v6 = superview;
      }

      while ((v11 & 1) != 0);
    }

    else
    {
      superview = v6;
    }

    layer3 = [superview layer];
    [layer3 setAllowsGroupBlending:0];

    v5 = containerCopy;
  }
}

- (void)disableAppearanceForView:(id)view
{
  layer = [view layer];
  [layer setCompositingFilter:0];
}

+ (BOOL)viewHasOverriddenAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if ([appearanceCopy overrideUserInterfaceStyle])
  {
    v4 = 1;
  }

  else
  {
    v4 = [appearanceCopy _overrideVibrancyTrait] != -1;
  }

  return v4;
}

- (void)overrideAppearanceForView:(id)view
{
  viewCopy = view;
  if ([(TLKAppearance *)self isDark])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [viewCopy setOverrideUserInterfaceStyle:v4];
  [viewCopy _setOverrideVibrancyTrait:{-[TLKAppearance isVibrant](self, "isVibrant")}];
}

+ (void)disableAppearanceOverrideForView:(id)view
{
  viewCopy = view;
  [viewCopy setOverrideUserInterfaceStyle:0];
  [viewCopy _setOverrideVibrancyTrait:-1];
}

- (id)textColorForColor:(int64_t)color
{
  if (color <= 4)
  {
    if (color <= 2)
    {
      if (color == 1)
      {
        systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
        goto LABEL_20;
      }

      if (color == 2)
      {
        systemRedColor = [MEMORY[0x1E69DC888] systemOrangeColor];
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (color == 3)
    {
      [MEMORY[0x1E69DC888] systemYellowColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGreenColor];
    }

    systemRedColor = LABEL_9:;
    goto LABEL_20;
  }

  if (color <= 6)
  {
    if (color == 5)
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemPurpleColor];
    }

    goto LABEL_9;
  }

  if (color == 7)
  {
    systemRedColor = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_20;
  }

  if (color == 8)
  {
    systemRedColor = [MEMORY[0x1E69DC888] linkColor];
    goto LABEL_20;
  }

LABEL_19:
  systemRedColor = [(TLKAppearance *)self primaryColor];
LABEL_20:

  return systemRedColor;
}

- (id)primaryColorWithDefaultAlpha:(double)alpha
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    alpha = alpha + 0.2;
  }

  primaryColor = [(TLKAppearance *)self primaryColor];
  v6 = [primaryColor colorWithAlphaComponent:alpha];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    style = [(TLKAppearance *)self style];
    v7 = style == [(TLKAppearance *)v5 style];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end