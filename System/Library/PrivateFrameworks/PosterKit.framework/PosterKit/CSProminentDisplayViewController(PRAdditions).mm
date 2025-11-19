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
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = v5;
  if (a3)
  {
    [v5 addObserver:a1 selector:sel__pr_updateAlternateCalendarIdentifier name:*MEMORY[0x1E6993340] object:0];

    return [a1 _pr_updateAlternateCalendarIdentifier];
  }

  else
  {
    [v5 removeObserver:a1 name:*MEMORY[0x1E6993340] object:0];

    return [a1 setAlternateCalendarIdentifier:0 locale:0];
  }
}

- (void)_pr_updateAlternateCalendarIdentifier
{
  v2 = [MEMORY[0x1E6993468] sharedPreferences];
  v4 = [v2 overlayCalendarID];

  if ([v4 length])
  {
    v3 = [MEMORY[0x1E69AAE08] localeForCalendarID:v4];
    [a1 setAlternateCalendarIdentifier:v4 locale:v3];
  }

  else
  {
    [a1 setAlternateCalendarIdentifier:0 locale:0];
  }
}

- (void)pr_setStylingFromTitleStyleConfiguration:()PRAdditions salientContentRectangle:withExtensionBundleURL:forRole:
{
  v33 = a7;
  v16 = a8;
  v17 = a9;
  v18 = [v33 titleContentStyle];
  [a1 setTitleContentStyle:v18];

  v19 = [v33 effectiveTitleColor];
  v20 = [v33 vibrancyConfigurationWithExtensionBundleURL:v16 forRole:v17];
  if (v20)
  {
    v21 = [PRPosterColor alloc];
    v22 = [v20 color];
    v23 = [(PRPosterColor *)v21 initWithColor:v22 preferredStyle:0];

    v19 = v23;
  }

  v32 = v17;
  v24 = [v33 effectiveTimeFontWithExtensionBundleURL:v16 forRole:v17];
  v25 = [v33 timeNumberingSystem];
  v26 = [v20 groupName];
  v31 = v24;
  [a1 pr_setTitleColor:v19 timeFont:v24 timeNumberingSystem:v25 alternateDateEnabled:objc_msgSend(v33 groupName:"isAlternateDateEnabled") extensionBundleURL:{v26, v16}];
  [a1 setEffectType:{objc_msgSend(v20, "effectType")}];
  [a1 setBackgroundType:{objc_msgSend(v20, "backgroundType")}];
  v27 = [v20 alternativeVibrancyEffectLUT];
  v28 = objc_opt_respondsToSelector();
  v29 = [v27 lutIdentifier];
  v30 = [v27 bundleURL];
  if (v28)
  {
    [a1 setAlternativeVibrancyEffectLUTIdentifier:v29 alternativeVibrancyEffectLUTBundleURL:v30 luminanceReduced:0];
  }

  else
  {
    [a1 setAlternativeVibrancyEffectLUTIdentifier:v29 alternativeVibrancyEffectLUTBundleURL:v30];
  }

  [a1 pr_updateSalientContentRectangle:v33 titleStyleConfiguration:{a2, a3, a4, a5}];
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
    v18 = [v25 color];
    [a1 setTextColor:v18];

    v19 = [MEMORY[0x1E698E810] vibrancyEffectTypeFromColor:v25];
    v20 = [MEMORY[0x1E698E810] vibrancyLUTFromColor:v25 extensionBundleURL:v17 luminanceReduced:0];
    v21 = objc_opt_respondsToSelector();
    v22 = [v20 lutIdentifier];
    v23 = [v20 bundleURL];
    if (v21)
    {
      [a1 setAlternativeVibrancyEffectLUTIdentifier:v22 alternativeVibrancyEffectLUTBundleURL:v23 luminanceReduced:0];
    }

    else
    {
      [a1 setAlternativeVibrancyEffectLUTIdentifier:v22 alternativeVibrancyEffectLUTBundleURL:v23];
    }

    a6 = v24;
    if (v19 != [a1 effectType])
    {
      [a1 setEffectType:v19];
    }
  }

  if (v14)
  {
    [a1 setBaseFont:v14];
  }

  if (v15)
  {
    [a1 setNumberingSystem:v15];
  }

  [a1 pr_setAlternateDateEnabled:a6];
  [a1 setGroupName:v16];
}

- (void)pr_updateSalientContentRectangle:()PRAdditions titleStyleConfiguration:
{
  v21 = a7;
  if (PUIFeatureEnabled())
  {
    v12 = [a1 interfaceOrientation];
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    if (CGRectIsNull(v23))
    {
      [v21 preferredTimeMaxYForOrientation:v12];
      v14 = v13;
      [a1 _screenViewSize];
      if (v15 >= v16 || (v12 - 3) >= 2)
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

      if ((v12 - 1) > 1)
      {
        v15 = v18;
      }

      v19 = v14 * v15;
LABEL_14:
      [a1 pr_updateAdaptiveTimeForMaxY:v19];
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
        if (!v12)
        {
          v12 = [a1 _fakedOrientationForScreenState];
        }

        [MEMORY[0x1E6999638] frameForElements:1 variant:0 interfaceOrientation:v12];
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

  [a1 setAdaptsTimeTextHeight:0];
LABEL_18:
}

- (uint64_t)pr_updateAdaptiveTimeForMaxY:()PRAdditions
{
  if (PUIFeatureEnabled())
  {
    v25 = a2;
    v4 = [a1 interfaceOrientation];
    if (!v4)
    {
      v4 = [a1 _fakedOrientationForScreenState];
    }

    [MEMORY[0x1E6999638] frameForElements:1 variant:0 interfaceOrientation:v4];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [MEMORY[0x1E6999638] frameForElements:1 variant:1 interfaceOrientation:v4];
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

    [a1 setAdaptsTimeTextHeight:1];

    return [a1 setAdaptiveTimeTextHeight:v23];
  }

  else
  {

    return [a1 setAdaptsTimeTextHeight:0];
  }
}

- (double)_screenViewSize
{
  v1 = [a1 view];
  v2 = [v1 window];

  if (v2)
  {
    [v2 bounds];
    v4 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 bounds];
    v4 = v6;
  }

  return v4;
}

- (uint64_t)_fakedOrientationForScreenState
{
  [a1 _screenViewSize];
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