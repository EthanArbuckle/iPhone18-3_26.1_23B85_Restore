@interface SearchUIBackgroundColorUtilities
+ (BOOL)backgroundColorPrefersWhiteForegroundText:(id)a3;
+ (BOOL)isDefaultUIColorInUIColors:(id)a3;
+ (double)tintedRGBValueForValue:(double)a3 isLight:(BOOL)a4 colorTintStyle:(int)a5;
+ (id)averageColorOfUIColors:(id)a3;
+ (id)colorWithHexString:(id)a3;
+ (id)disambiguationInnerPlatterColor;
+ (id)hexStringFromColor:(id)a3;
+ (id)randomColor;
+ (id)tintedUIColorsFromUIColors:(id)a3 withColorRequest:(id)a4 tintStyle:(int)a5;
+ (void)computeResolvedColoringForColorRequest:(id)a3 completionHandler:(id)a4;
+ (void)overrideAppearance:(id)a3 onView:(id)a4;
+ (void)resolvedColoringForColorRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation SearchUIBackgroundColorUtilities

+ (void)resolvedColoringForColorRequest:(id)a3 completionHandler:(id)a4
{
  v5 = resolvedColoringForColorRequest_completionHandler__onceToken;
  v6 = a4;
  v7 = a3;
  v9 = v7;
  if (v5 == -1)
  {
    v8 = v7;
  }

  else
  {
    +[SearchUIBackgroundColorUtilities resolvedColoringForColorRequest:completionHandler:];
    v8 = v9;
  }

  [resolvedColoringForColorRequest_completionHandler__colorCache getObjectForKey:v8 completionHandler:v6];
}

uint64_t __86__SearchUIBackgroundColorUtilities_resolvedColoringForColorRequest_completionHandler___block_invoke()
{
  resolvedColoringForColorRequest_completionHandler__colorCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)computeResolvedColoringForColorRequest:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 appearance];
  v10 = [v9 isDark];

  if (v10)
  {
    v4 = [v7 sfColor];
    v11 = [v4 darkModeColor];
    if (v11)
    {
      v12 = v11;
      v13 = [v7 sfColor];
      v14 = [v13 darkModeColor];

LABEL_5:
      goto LABEL_6;
    }
  }

  v14 = [v7 sfColor];
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  v15 = [objc_alloc(objc_msgSend(v14 "searchUI_colorGeneratorClass"))];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __93__SearchUIBackgroundColorUtilities_computeResolvedColoringForColorRequest_completionHandler___block_invoke;
  v20[3] = &unk_1E85B43D8;
  v24 = v8;
  v25 = a1;
  v21 = v7;
  v22 = v15;
  v26 = v10;
  v23 = v14;
  v16 = v8;
  v17 = v14;
  v18 = v15;
  v19 = v7;
  [v18 generateUIColorsIsDark:v10 completionHandler:v20];
}

void __93__SearchUIBackgroundColorUtilities_computeResolvedColoringForColorRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 64) isDefaultUIColorInUIColors:v3];
  v5 = [*(a1 + 32) sfColor];
  v6 = [v5 colorTintStyle];

  if (!v6)
  {
    v6 = [*(a1 + 40) defaultTintStyle];
  }

  v7 = [*(a1 + 64) tintedUIColorsFromUIColors:v3 withColorRequest:*(a1 + 32) tintStyle:v6];
  if (v6 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if ([*(a1 + 64) backgroundColorPrefersWhiteForegroundText:*(*(&v25 + 1) + 8 * i)])
            {
              v8 = 1;
              goto LABEL_17;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v8 = 0;
LABEL_17:
    }
  }

  else
  {
    v8 = *(a1 + 72);
  }

  v14 = [*(a1 + 64) averageColorOfUIColors:v7];
  v15 = v14;
  if (v8)
  {
    v24 = 0.0;
    [v14 getHue:0 saturation:0 brightness:&v24 alpha:0];
    v16 = v24 < 0.02;
  }

  else
  {
    v16 = 0;
  }

  v23 = 0.0;
  v24 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  [v15 getRed:&v24 green:&v23 blue:&v22 alpha:&v21];
  if (v21 == 1.0)
  {
    if (v24 == 0.0 && v23 == 0.0 && v22 == 0.0)
    {
      v17 = 0;
    }

    else
    {
      v18 = v24 != 1.0;
      if (v23 != 1.0)
      {
        v18 = 1;
      }

      v17 = v22 != 1.0 || v18;
    }
  }

  else
  {
    v17 = 1;
  }

  v19 = objc_opt_new();
  [v19 setTintedUIColors:v7];
  [v19 setOriginalUIColors:v3];
  if (v4)
  {
    [MEMORY[0x1E69D9108] bestAppearanceForSystem];
  }

  else
  {
    [MEMORY[0x1E69D9108] appearanceWithVibrancyEnabled:v17 isDark:v8 & 1];
  }
  v20 = ;
  [v19 setBestForegroundAppearanceForBackgroundColors:v20];

  [v19 setColorRequest:*(a1 + 32)];
  [v19 setPreferKeylineForShadowBasedViews:v16];
  [v19 setTintStyle:v6];
  (*(*(a1 + 56) + 16))();
}

+ (void)overrideAppearance:(id)a3 onView:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69D9108] bestAppearanceForView:v6];
  v8 = [v6 backgroundColor];
  v9 = [a1 defaultBackgroundColor];
  v10 = [v8 isEqual:v9];

  v11 = [MEMORY[0x1E69D9108] bestAppearanceForSystem];
  v12 = [v7 isEqual:v11];

  if (![v7 isEqual:v13] || ((v10 ^ 1 | v12) & 1) == 0)
  {
    [MEMORY[0x1E69D9108] disableAppearanceOverrideForView:v6];
    [v13 overrideAppearanceForView:v6];
  }
}

+ (BOOL)backgroundColorPrefersWhiteForegroundText:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 whiteColor];
  [v4 _colorDifferenceFromColor:v5];
  v7 = v6;

  return v7 > 1.15;
}

+ (id)randomColor
{
  v2 = objc_opt_new();
  [v2 setRedComponent:(arc4random() % 0xFF) / 255.0];
  [v2 setGreenComponent:(arc4random() % 0xFF) / 255.0];
  [v2 setBlueComponent:(arc4random() % 0xFF) / 255.0];

  return v2;
}

+ (id)disambiguationInnerPlatterColor
{
  v2 = objc_opt_new();
  [v2 setColorTintStyle:1];
  [v2 setRedComponent:1.0];
  [v2 setGreenComponent:1.0];
  [v2 setBlueComponent:1.0];
  [v2 setAlphaComponent:1.0];
  v3 = objc_opt_new();
  [v2 setDarkModeColor:v3];

  v4 = [v2 darkModeColor];
  [v4 setColorTintStyle:1];

  v5 = [v2 darkModeColor];
  [v5 setRedComponent:0.99];

  v6 = [v2 darkModeColor];
  [v6 setGreenComponent:0.98];

  v7 = [v2 darkModeColor];
  [v7 setBlueComponent:1.0];

  v8 = [v2 darkModeColor];
  [v8 setAlphaComponent:0.12];

  return v2;
}

+ (id)tintedUIColorsFromUIColors:(id)a3 withColorRequest:(id)a4 tintStyle:(int)a5
{
  v8 = a3;
  v9 = [a4 appearance];
  v10 = [v9 isDark];

  if (a5 == 2)
  {
    v16 = [MEMORY[0x1E69D9240] isPhone];
    v17 = 0.85;
    v18 = 0.7;
    if (v16)
    {
      v17 = 0.7;
    }

    else
    {
      v18 = 0.5;
    }

    if (v10)
    {
      v11 = v18;
    }

    else
    {
      v11 = v17;
    }

    v12 = v11;
  }

  else
  {
    v11 = 0.0;
    if (a5 == 3)
    {
      if (v10)
      {
        v11 = 0.8;
      }

      else
      {
        v11 = 0.92;
      }

      if (v10)
      {
        v12 = 0.32;
      }

      else
      {
        v12 = 0.35;
      }

      if ([v8 count] == 1)
      {
        v13 = [v8 firstObject];
        v14 = [v13 copy];
        v15 = [v8 arrayByAddingObject:v14];

        v8 = v15;
      }
    }

    else
    {
      v12 = 0.0;
    }
  }

  v19 = objc_opt_new();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __90__SearchUIBackgroundColorUtilities_tintedUIColorsFromUIColors_withColorRequest_tintStyle___block_invoke;
  v25[3] = &unk_1E85B4400;
  v31 = a5;
  v32 = v10 ^ 1;
  v28 = a1;
  v26 = v8;
  v29 = v11;
  v30 = v12;
  v20 = v19;
  v27 = v20;
  v21 = v8;
  [v21 enumerateObjectsUsingBlock:v25];
  v22 = v27;
  v23 = v20;

  return v20;
}

void __90__SearchUIBackgroundColorUtilities_tintedUIColorsFromUIColors_withColorRequest_tintStyle___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v22 = 0.0;
  v23 = 0.0;
  v21 = 0.0;
  if ((*(a1 + 72) & 0xFFFFFFFE) == 2)
  {
    v6 = [*(a1 + 48) rgbCompatibleColorForColor:v5];
    v19 = 0.0;
    v20 = 0.0;
    v18 = 0.0;
    [v6 getRed:&v20 green:&v19 blue:&v18 alpha:0];
    [*(a1 + 48) tintedRGBValueForValue:*(a1 + 76) isLight:*(a1 + 72) colorTintStyle:v20];
    v20 = v7;
    [*(a1 + 48) tintedRGBValueForValue:*(a1 + 76) isLight:*(a1 + 72) colorTintStyle:v19];
    v19 = v8;
    [*(a1 + 48) tintedRGBValueForValue:*(a1 + 76) isLight:*(a1 + 72) colorTintStyle:v18];
    v10 = [MEMORY[0x1E69DC888] colorWithRed:v20 green:v19 blue:v9 alpha:{1.0, *&v9}];

    [v10 getHue:&v23 saturation:&v22 brightness:&v21 alpha:0];
    v11 = 0.45;
    if (*(a1 + 76))
    {
      v11 = 0.15;
    }

    v12 = 0.0;
    if (*(a1 + 76))
    {
      v12 = 0.5;
    }

    if (*(a1 + 72) == 3)
    {
      v11 = v12;
    }

    v22 = v22 / (1.0 - (v11 - v22 * v11));

    v5 = v10;
  }

  v13 = [*(a1 + 32) count];
  v14 = *(a1 + 56);
  if (v13 != 1)
  {
    if (v14 == 0.0 && *(a1 + 64) == 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v15 = [*(a1 + 32) count];
      v14 = *(a1 + 64) * (a3 / (v15 - 1)) + *(a1 + 56) * (1.0 - a3 / (v15 - 1));
    }
  }

  if (*(a1 + 72) == 1)
  {
    v16 = v5;
  }

  else
  {
    v16 = [MEMORY[0x1E69DC888] colorWithHue:v23 saturation:v22 brightness:v21 alpha:v14];
  }

  v17 = v16;
  [*(a1 + 40) addObject:v16];
}

+ (BOOL)isDefaultUIColorInUIColors:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [a1 defaultBackgroundColor];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)hexStringFromColor:(id)a3
{
  v4 = a3;
  if (a3)
  {
    Components = CGColorGetComponents([a3 CGColor]);
    v6 = *Components * 255.0;
    v7 = llroundf(v6);
    v8 = Components[1] * 255.0;
    v9 = llroundf(v8);
    v10 = Components[2] * 255.0;
    v12 = llroundf(v10);
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02lX%02lX%02lX%02lX", v7, v9, v12, v12];
    v3 = vars8;
  }

  return v4;
}

+ (id)colorWithHexString:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"#"])
  {
    v4 = [v3 substringFromIndex:1];

    v3 = v4;
  }

  v8 = 0;
  v5 = [MEMORY[0x1E696AE88] scannerWithString:v3];
  [v5 setScanLocation:0];
  [v5 scanHexInt:&v8];
  v6 = [MEMORY[0x1E69DC888] colorWithRed:BYTE2(v8) / 255.0 green:BYTE1(v8) / 255.0 blue:v8 / 255.0 alpha:1.0];

  return v6;
}

+ (double)tintedRGBValueForValue:(double)a3 isLight:(BOOL)a4 colorTintStyle:(int)a5
{
  v5 = a4;
  if (a5 == 3)
  {
    v7 = 0.6;
    if (a4)
    {
      v7 = 0.67;
    }

    v8 = 0.33;
    if (!a4)
    {
      v8 = 0.0;
    }

    return v8 + v7 * a3;
  }

  else
  {
    v10 = [MEMORY[0x1E69D9240] isPhone];
    v11 = 0.85;
    if (v10)
    {
      v11 = 0.4;
    }

    v12 = 0.6;
    if (!v10)
    {
      v12 = 0.25;
    }

    if (!v5)
    {
      v11 = v12;
    }

    return (1.0 - v11) * a3 + v11 * v5;
  }
}

+ (id)averageColorOfUIColors:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v13 = [a1 rgbCompatibleColorForColor:*(*(&v21 + 1) + 8 * i)];
        v19 = 0.0;
        v20 = 0.0;
        v17 = 0.0;
        v18 = 0.0;
        [v13 getRed:&v20 green:&v19 blue:&v18 alpha:&v17];
        v11 = v11 + v20;
        v10 = v10 + v19;
        v9 = v9 + v18;
        v8 = v8 + v17;
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
  }

  v14 = [v4 count];
  v15 = [MEMORY[0x1E69DC888] colorWithRed:v11 / v14 green:v10 / v14 blue:v9 / v14 alpha:v8 / v14];

  return v15;
}

@end