@interface WBSReaderFontManager
- (NSArray)fonts;
- (WBSReaderFontManager)init;
- (id)defaultFontForLanguageTag:(id)tag;
- (id)fontWithFontFamilyName:(id)name;
- (void)_fontDownloadDidFinish:(id)finish;
- (void)updateLanguageTag:(id)tag;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = +[WBSReaderFontDownloadManager sharedManager];
    [defaultCenter addObserver:v3 selector:sel__fontDownloadDidFinish_ name:@"WBSReaderFontDownloadDidFinishNotification" object:v6];

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

- (id)defaultFontForLanguageTag:(id)tag
{
  v4 = [WBSReaderLocalizedFonts defaultFontFamilyNameForLanguage:tag];
  v5 = [(WBSReaderFontManager *)self fontWithFontFamilyName:v4];

  return v5;
}

- (id)fontWithFontFamilyName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  fonts = [(WBSReaderFontManager *)self fonts];
  v6 = [fonts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(fonts);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        familyName = [v9 familyName];
        v11 = [familyName isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [fonts countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)updateLanguageTag:(id)tag
{
  tagCopy = tag;
  if (![(NSString *)self->_languageTag isEqualToString:?])
  {
    objc_storeStrong(&self->_languageTag, tag);
    validatedFonts = self->_validatedFonts;
    self->_validatedFonts = 0;
  }
}

- (void)_fontDownloadDidFinish:(id)finish
{
  validatedFonts = self->_validatedFonts;
  self->_validatedFonts = 0;
}

@end