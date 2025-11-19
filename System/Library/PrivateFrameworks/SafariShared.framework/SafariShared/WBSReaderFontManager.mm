@interface WBSReaderFontManager
- (NSArray)fonts;
- (WBSReaderFontManager)init;
- (id)defaultFontForLanguageTag:(id)a3;
- (id)fontWithFontFamilyName:(id)a3;
- (void)_fontDownloadDidFinish:(id)a3;
- (void)updateLanguageTag:(id)a3;
@end

@implementation WBSReaderFontManager

- (WBSReaderFontManager)init
{
  v9.receiver = self;
  v9.super_class = WBSReaderFontManager;
  v2 = [(WBSReaderFontManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    languageTag = v2->_languageTag;
    v2->_languageTag = &stru_1F3A5E418;

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = +[WBSReaderFontDownloadManager sharedManager];
    [v5 addObserver:v3 selector:sel__fontDownloadDidFinish_ name:@"WBSReaderFontDownloadDidFinishNotification" object:v6];

    v7 = v3;
  }

  return v3;
}

- (NSArray)fonts
{
  validatedFonts = self->_validatedFonts;
  if (validatedFonts)
  {
    v3 = validatedFonts;
  }

  else
  {
    v5 = [WBSReaderLocalizedFonts fontsForLanguage:self->_languageTag];
    v6 = [v5 safari_filterObjectsUsingBlock:&__block_literal_global_93];
    v7 = self->_validatedFonts;
    self->_validatedFonts = v6;

    v3 = self->_validatedFonts;
  }

  return v3;
}

- (id)defaultFontForLanguageTag:(id)a3
{
  v4 = [WBSReaderLocalizedFonts defaultFontFamilyNameForLanguage:a3];
  v5 = [(WBSReaderFontManager *)self fontWithFontFamilyName:v4];

  return v5;
}

- (id)fontWithFontFamilyName:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(WBSReaderFontManager *)self fonts];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 familyName];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updateLanguageTag:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_languageTag isEqualToString:?])
  {
    objc_storeStrong(&self->_languageTag, a3);
    validatedFonts = self->_validatedFonts;
    self->_validatedFonts = 0;
  }
}

- (void)_fontDownloadDidFinish:(id)a3
{
  validatedFonts = self->_validatedFonts;
  self->_validatedFonts = 0;
}

@end