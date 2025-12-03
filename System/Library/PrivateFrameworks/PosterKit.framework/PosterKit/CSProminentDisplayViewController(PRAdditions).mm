@interface CSProminentDisplayViewController(PRAdditions)
- (double)_screenViewSize;
- (uint64_t)_fakedOrientationForScreenState;
- (uint64_t)pr_setAlternateDateEnabled:()PRAdditions;
- (uint64_t)pr_updateAdaptiveTimeForMaxY:()PRAdditions;
- (void)_pr_updateAlternateCalendarIdentifier;
- (void)pr_setStylingFromTitleStyleConfiguration:()PRAdditions salientContentRectangle:withExtensionBundleURL:forRole:;
- (void)pr_setTitleColor:()PRAdditions timeFont:timeNumberingSystem:alternateDateEnabled:groupName:extensionBundleURL:;
- (void)pr_updateSalientContentRectangle:()PRAdditions titleStyleConfiguration:;
@end

@implementation CSProminentDisplayViewController(PRAdditions)

- (uint64_t)pr_setAlternateDateEnabled:()PRAdditions
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = defaultCenter;
  if (a3)
  {
    [defaultCenter addObserver:self selector:sel__pr_updateAlternateCalendarIdentifier name:*MEMORY[0x1E6993340] object:0];

    return [self _pr_updateAlternateCalendarIdentifier];
  }

  else
  {
    [defaultCenter removeObserver:self name:*MEMORY[0x1E6993340] object:0];

    return [self setAlternateCalendarIdentifier:0 locale:0];
  }
}

- (void)_pr_updateAlternateCalendarIdentifier
{
  mEMORY[0x1E6993468] = [MEMORY[0x1E6993468] sharedPreferences];
  overlayCalendarID = [mEMORY[0x1E6993468] overlayCalendarID];

  if ([overlayCalendarID length])
  {
    v3 = [MEMORY[0x1E69AAE08] localeForCalendarID:overlayCalendarID];
    [self setAlternateCalendarIdentifier:overlayCalendarID locale:v3];
  }

  else
  {
    [self setAlternateCalendarIdentifier:0 locale:0];
  }
}

- (void)pr_setStylingFromTitleStyleConfiguration:()PRAdditions salientContentRectangle:withExtensionBundleURL:forRole:
{
  v33 = a7;
  v16 = a8;
  v17 = a9;
  titleContentStyle = [v33 titleContentStyle];
  [self setTitleContentStyle:titleContentStyle];

  effectiveTitleColor = [v33 effectiveTitleColor];
  v20 = [v33 vibrancyConfigurationWithExtensionBundleURL:v16 forRole:v17];
  if (v20)
  {
    v21 = [PRPosterColor alloc];
    color = [v20 color];
    v23 = [(PRPosterColor *)v21 initWithColor:color preferredStyle:0];

    effectiveTitleColor = v23;
  }

  v32 = v17;
  v24 = [v33 effectiveTimeFontWithExtensionBundleURL:v16 forRole:v17];
  timeNumberingSystem = [v33 timeNumberingSystem];
  groupName = [v20 groupName];
  v31 = v24;
  [self pr_setTitleColor:effectiveTitleColor timeFont:v24 timeNumberingSystem:timeNumberingSystem alternateDateEnabled:objc_msgSend(v33 groupName:"isAlternateDateEnabled") extensionBundleURL:{groupName, v16}];
  [self setEffectType:{objc_msgSend(v20, "effectType")}];
  [self setBackgroundType:{objc_msgSend(v20, "backgroundType")}];
  alternativeVibrancyEffectLUT = [v20 alternativeVibrancyEffectLUT];
  v28 = objc_opt_respondsToSelector();
  lutIdentifier = [alternativeVibrancyEffectLUT lutIdentifier];
  bundleURL = [alternativeVibrancyEffectLUT bundleURL];
  if (v28)
  {
    [self setAlternativeVibrancyEffectLUTIdentifier:lutIdentifier alternativeVibrancyEffectLUTBundleURL:bundleURL luminanceReduced:0];
  }

  else
  {
    [self setAlternativeVibrancyEffectLUTIdentifier:lutIdentifier alternativeVibrancyEffectLUTBundleURL:bundleURL];
  }

  [self pr_updateSalientContentRectangle:v33 titleStyleConfiguration:{a2, a3, a4, a5}];
}

- (void)pr_setTitleColor:()PRAdditions timeFont:timeNumberingSystem:alternateDateEnabled:groupName:extensionBundleURL:
{
  v25 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  if (v25)
  {
    v24 = a6;
    color = [v25 color];
    [self setTextColor:color];

    v19 = [MEMORY[0x1E698E810] vibrancyEffectTypeFromColor:v25];
    v20 = [MEMORY[0x1E698E810] vibrancyLUTFromColor:v25 extensionBundleURL:v17 luminanceReduced:0];
    v21 = objc_opt_respondsToSelector();
    lutIdentifier = [v20 lutIdentifier];
    bundleURL = [v20 bundleURL];
    if (v21)
    {
      [self setAlternativeVibrancyEffectLUTIdentifier:lutIdentifier alternativeVibrancyEffectLUTBundleURL:bundleURL luminanceReduced:0];
    }

    else
    {
      [self setAlternativeVibrancyEffectLUTIdentifier:lutIdentifier alternativeVibrancyEffectLUTBundleURL:bundleURL];
    }

    a6 = v24;
    if (v19 != [self effectType])
    {
      [self setEffectType:v19];
    }
  }

  if (v14)
  {
    [self setBaseFont:v14];
  }

  if (v15)
  {
    [self setNumberingSystem:v15];
  }

  [self pr_setAlternateDateEnabled:a6];
  [self setGroupName:v16];
}

- (void)pr_updateSalientContentRectangle:()PRAdditions titleStyleConfiguration:
{
  v21 = a7;
  if (PUIFeatureEnabled())
  {
    interfaceOrientation = [self interfaceOrientation];
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    if (CGRectIsNull(v23))
    {
      [v21 preferredTimeMaxYForOrientation:interfaceOrientation];
      v14 = v13;
      [self _screenViewSize];
      if (v15 >= v16 || (interfaceOrientation - 3) >= 2)
      {
        v18 = v16;
      }

      else
      {
        v18 = v15;
      }

      if (v15 <= v16)
      {
        v15 = v16;
      }

      if ((interfaceOrientation - 1) > 1)
      {
        v15 = v18;
      }

      v19 = v14 * v15;
LABEL_14:
      [self pr_updateAdaptiveTimeForMaxY:v19];
      goto LABEL_18;
    }

    v24.origin.x = a2;
    v24.origin.y = a3;
    v24.size.width = a4;
    v24.size.height = a5;
    if (!CGRectIsInfinite(v24))
    {
      v25.origin.x = a2;
      v25.origin.y = a3;
      v25.size.width = a4;
      v25.size.height = a5;
      if (!CGRectIsEmpty(v25))
      {
        if (!interfaceOrientation)
        {
          interfaceOrientation = [self _fakedOrientationForScreenState];
        }

        [MEMORY[0x1E6999638] frameForElements:1 variant:0 interfaceOrientation:interfaceOrientation];
        MinY = CGRectGetMinY(v26);
        v27.origin.x = a2;
        v27.origin.y = a3;
        v27.size.width = a4;
        v27.size.height = a5;
        v19 = CGRectGetMinY(v27) - MinY;
        goto LABEL_14;
      }
    }
  }

  [self setAdaptsTimeTextHeight:0];
LABEL_18:
}

- (uint64_t)pr_updateAdaptiveTimeForMaxY:()PRAdditions
{
  if (PUIFeatureEnabled())
  {
    v25 = a2;
    interfaceOrientation = [self interfaceOrientation];
    if (!interfaceOrientation)
    {
      interfaceOrientation = [self _fakedOrientationForScreenState];
    }

    [MEMORY[0x1E6999638] frameForElements:1 variant:0 interfaceOrientation:interfaceOrientation];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [MEMORY[0x1E6999638] frameForElements:1 variant:1 interfaceOrientation:interfaceOrientation];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v27.origin.x = v6;
    v27.origin.y = v8;
    v27.size.width = v10;
    v27.size.height = v12;
    MinY = CGRectGetMinY(v27);
    v28.origin.x = v14;
    v28.origin.y = v16;
    v28.size.width = v18;
    v28.size.height = v20;
    v22 = vabdd_f64(CGRectGetMaxY(v28), MinY);
    if (v22 >= v25 - MinY)
    {
      v23 = v22;
    }

    else
    {
      v23 = v25 - MinY;
    }

    [self setAdaptsTimeTextHeight:1];

    return [self setAdaptiveTimeTextHeight:v23];
  }

  else
  {

    return [self setAdaptsTimeTextHeight:0];
  }
}

- (double)_screenViewSize
{
  view = [self view];
  window = [view window];

  if (window)
  {
    [window bounds];
    v4 = v3;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v4 = v6;
  }

  return v4;
}

- (uint64_t)_fakedOrientationForScreenState
{
  [self _screenViewSize];
  if (v1 <= v2)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

@end