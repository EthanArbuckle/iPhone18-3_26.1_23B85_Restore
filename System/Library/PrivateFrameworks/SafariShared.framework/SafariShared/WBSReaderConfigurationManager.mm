@interface WBSReaderConfigurationManager
- (NSDictionary)configurationToSave;
- (NSDictionary)configurationToSendToWebPage;
- (WBSReaderConfigurationManager)initWithPersistedSettingsAsDictionaryRepresentation:(id)a3 fontManager:(id)a4 prefersLargerDefaultFontSize:(BOOL)a5;
- (id)fontForLanguageTag:(id)a3;
- (int64_t)_defaultTextZoomIndex;
- (int64_t)defaultThemeForAppearance:(int64_t)a3;
- (int64_t)effectiveTextZoomIndex;
- (int64_t)themeForAppearance:(int64_t)a3;
- (void)_migrateToVersion5IfNecessary;
- (void)makeTextBigger;
- (void)makeTextSmaller;
- (void)resetTextSize;
- (void)setFont:(id)a3 forLanguageTag:(id)a4;
- (void)setTheme:(int64_t)a3 forAppearance:(int64_t)a4;
@end

@implementation WBSReaderConfigurationManager

- (int64_t)_defaultTextZoomIndex
{
  if (self->_prefersLargerDefaultFontSize)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (void)_migrateToVersion5IfNecessary
{
  v17 = *MEMORY[0x1E69E9840];
  textZoomIndex = self->_textZoomIndex;
  if (textZoomIndex == [(WBSReaderConfigurationManager *)self _defaultTextZoomIndex])
  {
    self->_textZoomIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)self->_fontFamilyNameForLanguageTag copy];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_fontFamilyNameForLanguageTag objectForKeyedSubscript:v8];
        v10 = [WBSReaderLocalizedFonts defaultFontFamilyNameForLanguage:v8];
        if ([v9 isEqualToString:v10])
        {
        }

        else
        {
          v11 = [v9 isEqualToString:@"Georgia"];

          if ((v11 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        [(NSMutableDictionary *)self->_fontFamilyNameForLanguageTag removeObjectForKey:v8];
LABEL_12:
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if (!self->_theme)
  {
    self->_theme = -1;
  }

  if (self->_darkModeTheme == 2)
  {
    self->_darkModeTheme = -1;
  }
}

- (WBSReaderConfigurationManager)initWithPersistedSettingsAsDictionaryRepresentation:(id)a3 fontManager:(id)a4 prefersLargerDefaultFontSize:(BOOL)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v37 = a4;
  v42.receiver = self;
  v42.super_class = WBSReaderConfigurationManager;
  v9 = [(WBSReaderConfigurationManager *)&v42 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_36;
  }

  objc_storeStrong(&v9->_fontManager, a4);
  v10->_prefersLargerDefaultFontSize = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = MEMORY[0x1E695E0F8];
  }

  v11 = [v8 safari_dictionaryForKey:@"fontSizeIndexForSizeClass"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 safari_numberForKey:@"all"];
    v14 = v13;
    if (v13)
    {
      v10->_textZoomIndex = [v13 integerValue];

      goto LABEL_10;
    }
  }

  v15 = [v8 safari_numberForKey:@"fontSizeIndex"];
  v12 = v15;
  if (!v15)
  {
LABEL_11:
    v10->_textZoomIndex = [(WBSReaderConfigurationManager *)v10 _defaultTextZoomIndex];
    goto LABEL_12;
  }

  v10->_textZoomIndex = [v15 integerValue];
LABEL_10:

  if (v10->_textZoomIndex >= 0xCuLL)
  {
    goto LABEL_11;
  }

LABEL_12:
  v16 = [v8 safari_dictionaryForKey:@"fontFamilyNameForLanguageTag"];
  v17 = v16;
  if (v16)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v19)
    {
      v20 = *v39;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v18 objectForKeyedSubscript:v22];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              continue;
            }
          }

          goto LABEL_24;
        }

        v19 = [v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v25 = [v18 mutableCopy];
  }

  else
  {
LABEL_24:
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  fontFamilyNameForLanguageTag = v10->_fontFamilyNameForLanguageTag;
  v10->_fontFamilyNameForLanguageTag = v25;

  v27 = [v8 safari_stringForKey:@"themeName"];
  v28 = v27;
  if (!v27 || (v29 = WBSThemeForNSString(v27), v29 == -1))
  {

    v10->_theme = -1;
  }

  else
  {
    v10->_theme = v29;
  }

  v30 = [v8 safari_stringForKey:@"darkModeThemeName"];
  v31 = v30;
  if (!v30 || (v32 = WBSThemeForNSString(v30), v32 == -1))
  {

    v10->_darkModeTheme = -1;
  }

  else
  {
    v10->_darkModeTheme = v32;
  }

  v33 = [v8 safari_numberForKey:@"version"];
  v34 = [v33 unsignedIntegerValue];

  if (v34 <= 4)
  {
    [(WBSReaderConfigurationManager *)v10 _migrateToVersion5IfNecessary];
  }

  v35 = v10;

LABEL_36:
  return v10;
}

- (NSDictionary)configurationToSave
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_textZoomIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v3 setObject:v4 forKeyedSubscript:@"fontSizeIndex"];
  }

  if ([(WBSReaderConfigurationManager *)self _defaultTextZoomIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WBSReaderConfigurationManager _defaultTextZoomIndex](self, "_defaultTextZoomIndex")}];
    [v3 setObject:v5 forKeyedSubscript:@"defaultFontSizeIndex"];
  }

  theme = self->_theme;
  v7 = @"White";
  if (theme > 1)
  {
    if (theme == 3)
    {
      v7 = @"Night";
    }

    if (theme == 2)
    {
      v8 = @"Gray";
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    if (theme == -1)
    {
      goto LABEL_16;
    }

    if (theme == 1)
    {
      v8 = @"Sepia";
    }

    else
    {
      v8 = @"White";
    }
  }

  [v3 setObject:v8 forKeyedSubscript:@"themeName"];
LABEL_16:
  darkModeTheme = self->_darkModeTheme;
  v10 = @"White";
  if (darkModeTheme > 1)
  {
    if (darkModeTheme == 3)
    {
      v10 = @"Night";
    }

    if (darkModeTheme == 2)
    {
      v11 = @"Gray";
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    if (darkModeTheme == -1)
    {
      goto LABEL_27;
    }

    if (darkModeTheme == 1)
    {
      v11 = @"Sepia";
    }

    else
    {
      v11 = @"White";
    }
  }

  [v3 setObject:v11 forKeyedSubscript:@"darkModeThemeName"];
LABEL_27:
  if ([(NSMutableDictionary *)self->_fontFamilyNameForLanguageTag count])
  {
    [v3 setObject:self->_fontFamilyNameForLanguageTag forKeyedSubscript:@"fontFamilyNameForLanguageTag"];
  }

  [v3 setObject:&unk_1F3A9AFA0 forKeyedSubscript:@"version"];

  return v3;
}

- (NSDictionary)configurationToSendToWebPage
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WBSReaderConfigurationManager effectiveTextZoomIndex](self, "effectiveTextZoomIndex")}];
  [v3 setObject:v4 forKeyedSubscript:@"fontSizeIndex"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WBSReaderConfigurationManager _defaultTextZoomIndex](self, "_defaultTextZoomIndex")}];
  [v3 setObject:v5 forKeyedSubscript:@"defaultFontSizeIndex"];

  v6 = 8;
  if (self->_darkModeEnabled)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  if (v7 == -1)
  {
    v7 = [(WBSReaderConfigurationManager *)self defaultThemeForAppearance:?];
  }

  if ((v7 - 1) > 2)
  {
    v8 = @"White";
  }

  else
  {
    v8 = off_1E7FC9BE0[v7 - 1];
  }

  [v3 setObject:v8 forKeyedSubscript:@"themeName"];
  v9 = +[WBSReaderFont systemSerifFont];
  fontFamilyNameForLanguageTag = self->_fontFamilyNameForLanguageTag;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__WBSReaderConfigurationManager_configurationToSendToWebPage__block_invoke;
  v17[3] = &unk_1E7FC9BC0;
  v11 = v9;
  v18 = v11;
  v12 = [(NSMutableDictionary *)fontFamilyNameForLanguageTag safari_mapAndFilterKeysAndObjectsUsingBlock:v17];
  [v3 setObject:v12 forKeyedSubscript:@"fontFamilyNameForLanguageTag"];
  v13 = +[WBSReaderLocalizedFonts defaultFontFamilyNameForLanguageMap];
  [v3 setObject:v13 forKeyedSubscript:@"defaultFontFamilyNameForLanguage"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_javaScriptEnabled];
  [v3 setObject:v14 forKeyedSubscript:@"javaScriptEnabled"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isOLEDDisplay];
  [v3 setObject:v15 forKeyedSubscript:@"isOLEDDisplay"];

  return v3;
}

id __61__WBSReaderConfigurationManager_configurationToSendToWebPage__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) familyName];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) familyNameForWebContent];

    v4 = v7;
  }

  return v4;
}

- (void)makeTextBigger
{
  if ([(WBSReaderConfigurationManager *)self canMakeTextBigger])
  {
    self->_textZoomIndex = [(WBSReaderConfigurationManager *)self effectiveTextZoomIndex]+ 1;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"WBSWebsiteZoomDidChangeNotification" object:0];
  }
}

- (void)makeTextSmaller
{
  if ([(WBSReaderConfigurationManager *)self canMakeTextSmaller])
  {
    self->_textZoomIndex = [(WBSReaderConfigurationManager *)self effectiveTextZoomIndex]- 1;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"WBSWebsiteZoomDidChangeNotification" object:0];
  }
}

- (void)resetTextSize
{
  self->_textZoomIndex = [(WBSReaderConfigurationManager *)self _defaultTextZoomIndex];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"WBSWebsiteZoomDidChangeNotification" object:0];
}

- (void)setFont:(id)a3 forLanguageTag:(id)a4
{
  v7 = a4;
  v6 = [a3 familyName];
  [(NSMutableDictionary *)self->_fontFamilyNameForLanguageTag setObject:v6 forKeyedSubscript:v7];
}

- (id)fontForLanguageTag:(id)a3
{
  v4 = a3;
  fontManager = self->_fontManager;
  v6 = [(NSMutableDictionary *)self->_fontFamilyNameForLanguageTag objectForKeyedSubscript:v4];
  v7 = [(WBSReaderFontManager *)fontManager fontWithFontFamilyName:v6];

  if (!v7 || ([v7 isInstalled] & 1) == 0)
  {
    v8 = [(WBSReaderFontManager *)self->_fontManager defaultFontForLanguageTag:v4];

    v7 = v8;
  }

  return v7;
}

- (void)setTheme:(int64_t)a3 forAppearance:(int64_t)a4
{
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    v4 = 16;
  }

  else
  {
    v4 = 8;
  }

  *(&self->super.isa + v4) = a3;
}

- (int64_t)themeForAppearance:(int64_t)a3
{
  if (a3 == 1)
  {
    darkModeTheme = self->_darkModeTheme;
  }

  else
  {
    if (a3)
    {
      return darkModeTheme;
    }

    darkModeTheme = self->_theme;
  }

  if (darkModeTheme != -1)
  {
    return darkModeTheme;
  }

  return [(WBSReaderConfigurationManager *)self defaultThemeForAppearance:?];
}

- (int64_t)defaultThemeForAppearance:(int64_t)a3
{
  if (a3 == 1)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)effectiveTextZoomIndex
{
  if (self->_textZoomIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return [(WBSReaderConfigurationManager *)self _defaultTextZoomIndex];
  }

  else
  {
    return self->_textZoomIndex;
  }
}

@end