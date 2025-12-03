@interface SearchUIBackgroundColorUtilities
+ (BOOL)backgroundColorPrefersWhiteForegroundText:(id)text;
+ (BOOL)isDefaultUIColorInUIColors:(id)colors;
+ (double)tintedRGBValueForValue:(double)value isLight:(BOOL)light colorTintStyle:(int)style;
+ (id)averageColorOfUIColors:(id)colors;
+ (id)colorWithHexString:(id)string;
+ (id)disambiguationInnerPlatterColor;
+ (id)hexStringFromColor:(id)color;
+ (id)randomColor;
+ (id)tintedUIColorsFromUIColors:(id)colors withColorRequest:(id)request tintStyle:(int)style;
+ (void)computeResolvedColoringForColorRequest:(id)request completionHandler:(id)handler;
+ (void)overrideAppearance:(id)appearance onView:(id)view;
+ (void)resolvedColoringForColorRequest:(id)request completionHandler:(id)handler;
@end

@implementation SearchUIBackgroundColorUtilities

+ (void)resolvedColoringForColorRequest:(id)request completionHandler:(id)handler
{
  v5 = resolvedColoringForColorRequest_completionHandler__onceToken;
  handlerCopy = handler;
  requestCopy = request;
  v9 = requestCopy;
  if (v5 == -1)
  {
    v8 = requestCopy;
  }

  else
  {
    +[SearchUIBackgroundColorUtilities resolvedColoringForColorRequest:completionHandler:];
    v8 = v9;
  }

  [resolvedColoringForColorRequest_completionHandler__colorCache getObjectForKey:v8 completionHandler:handlerCopy];
}

uint64_t __86__SearchUIBackgroundColorUtilities_resolvedColoringForColorRequest_completionHandler___block_invoke()
{
  resolvedColoringForColorRequest_completionHandler__colorCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)computeResolvedColoringForColorRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  appearance = [requestCopy appearance];
  isDark = [appearance isDark];

  if (isDark)
  {
    sfColor = [requestCopy sfColor];
    darkModeColor = [sfColor darkModeColor];
    if (darkModeColor)
    {
      v12 = darkModeColor;
      sfColor2 = [requestCopy sfColor];
      darkModeColor2 = [sfColor2 darkModeColor];

LABEL_5:
      goto LABEL_6;
    }
  }

  darkModeColor2 = [requestCopy sfColor];
  if (isDark)
  {
    goto LABEL_5;
  }

LABEL_6:
  v15 = [objc_alloc(objc_msgSend(darkModeColor2 "searchUI_colorGeneratorClass"))];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __93__SearchUIBackgroundColorUtilities_computeResolvedColoringForColorRequest_completionHandler___block_invoke;
  v20[3] = &unk_1E85B43D8;
  v24 = handlerCopy;
  selfCopy = self;
  v21 = requestCopy;
  v22 = v15;
  v26 = isDark;
  v23 = darkModeColor2;
  v16 = handlerCopy;
  v17 = darkModeColor2;
  v18 = v15;
  v19 = requestCopy;
  [v18 generateUIColorsIsDark:isDark completionHandler:v20];
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

+ (void)overrideAppearance:(id)appearance onView:(id)view
{
  appearanceCopy = appearance;
  viewCopy = view;
  v7 = [MEMORY[0x1E69D9108] bestAppearanceForView:viewCopy];
  backgroundColor = [viewCopy backgroundColor];
  defaultBackgroundColor = [self defaultBackgroundColor];
  v10 = [backgroundColor isEqual:defaultBackgroundColor];

  bestAppearanceForSystem = [MEMORY[0x1E69D9108] bestAppearanceForSystem];
  v12 = [v7 isEqual:bestAppearanceForSystem];

  if (![v7 isEqual:appearanceCopy] || ((v10 ^ 1 | v12) & 1) == 0)
  {
    [MEMORY[0x1E69D9108] disableAppearanceOverrideForView:viewCopy];
    [appearanceCopy overrideAppearanceForView:viewCopy];
  }
}

+ (BOOL)backgroundColorPrefersWhiteForegroundText:(id)text
{
  v3 = MEMORY[0x1E69DC888];
  textCopy = text;
  whiteColor = [v3 whiteColor];
  [textCopy _colorDifferenceFromColor:whiteColor];
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

  darkModeColor = [v2 darkModeColor];
  [darkModeColor setColorTintStyle:1];

  darkModeColor2 = [v2 darkModeColor];
  [darkModeColor2 setRedComponent:0.99];

  darkModeColor3 = [v2 darkModeColor];
  [darkModeColor3 setGreenComponent:0.98];

  darkModeColor4 = [v2 darkModeColor];
  [darkModeColor4 setBlueComponent:1.0];

  darkModeColor5 = [v2 darkModeColor];
  [darkModeColor5 setAlphaComponent:0.12];

  return v2;
}

+ (id)tintedUIColorsFromUIColors:(id)colors withColorRequest:(id)request tintStyle:(int)style
{
  colorsCopy = colors;
  appearance = [request appearance];
  isDark = [appearance isDark];

  if (style == 2)
  {
    isPhone = [MEMORY[0x1E69D9240] isPhone];
    v17 = 0.85;
    v18 = 0.7;
    if (isPhone)
    {
      v17 = 0.7;
    }

    else
    {
      v18 = 0.5;
    }

    if (isDark)
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
    if (style == 3)
    {
      if (isDark)
      {
        v11 = 0.8;
      }

      else
      {
        v11 = 0.92;
      }

      if (isDark)
      {
        v12 = 0.32;
      }

      else
      {
        v12 = 0.35;
      }

      if ([colorsCopy count] == 1)
      {
        firstObject = [colorsCopy firstObject];
        v14 = [firstObject copy];
        v15 = [colorsCopy arrayByAddingObject:v14];

        colorsCopy = v15;
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
  styleCopy = style;
  v32 = isDark ^ 1;
  selfCopy = self;
  v26 = colorsCopy;
  v29 = v11;
  v30 = v12;
  v20 = v19;
  v27 = v20;
  v21 = colorsCopy;
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

+ (BOOL)isDefaultUIColorInUIColors:(id)colors
{
  colorsCopy = colors;
  if ([colorsCopy count] == 1)
  {
    firstObject = [colorsCopy firstObject];
    defaultBackgroundColor = [self defaultBackgroundColor];
    v7 = firstObject == defaultBackgroundColor;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)hexStringFromColor:(id)color
{
  colorCopy = color;
  if (color)
  {
    Components = CGColorGetComponents([color CGColor]);
    v6 = *Components * 255.0;
    v7 = llroundf(v6);
    v8 = Components[1] * 255.0;
    v9 = llroundf(v8);
    v10 = Components[2] * 255.0;
    v12 = llroundf(v10);
    colorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02lX%02lX%02lX%02lX", v7, v9, v12, v12];
    v3 = vars8;
  }

  return colorCopy;
}

+ (id)colorWithHexString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasPrefix:@"#"])
  {
    v4 = [stringCopy substringFromIndex:1];

    stringCopy = v4;
  }

  v8 = 0;
  v5 = [MEMORY[0x1E696AE88] scannerWithString:stringCopy];
  [v5 setScanLocation:0];
  [v5 scanHexInt:&v8];
  v6 = [MEMORY[0x1E69DC888] colorWithRed:BYTE2(v8) / 255.0 green:BYTE1(v8) / 255.0 blue:v8 / 255.0 alpha:1.0];

  return v6;
}

+ (double)tintedRGBValueForValue:(double)value isLight:(BOOL)light colorTintStyle:(int)style
{
  lightCopy = light;
  if (style == 3)
  {
    v7 = 0.6;
    if (light)
    {
      v7 = 0.67;
    }

    v8 = 0.33;
    if (!light)
    {
      v8 = 0.0;
    }

    return v8 + v7 * value;
  }

  else
  {
    isPhone = [MEMORY[0x1E69D9240] isPhone];
    v11 = 0.85;
    if (isPhone)
    {
      v11 = 0.4;
    }

    v12 = 0.6;
    if (!isPhone)
    {
      v12 = 0.25;
    }

    if (!lightCopy)
    {
      v11 = v12;
    }

    return (1.0 - v11) * value + v11 * lightCopy;
  }
}

+ (id)averageColorOfUIColors:(id)colors
{
  v26 = *MEMORY[0x1E69E9840];
  colorsCopy = colors;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [colorsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(colorsCopy);
        }

        v13 = [self rgbCompatibleColorForColor:*(*(&v21 + 1) + 8 * i)];
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

      v6 = [colorsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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

  v14 = [colorsCopy count];
  v15 = [MEMORY[0x1E69DC888] colorWithRed:v11 / v14 green:v10 / v14 blue:v9 / v14 alpha:v8 / v14];

  return v15;
}

@end