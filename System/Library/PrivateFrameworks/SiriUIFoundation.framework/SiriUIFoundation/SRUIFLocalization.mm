@interface SRUIFLocalization
- (SRUIFLocalization)init;
- (SRUIFLocalization)initWithBundle:(id)bundle tableName:(id)name;
- (id)localizedStringForLanguageCode:(id)code key:(id)key;
- (id)localizedStringWithSiriLanguageForKey:(id)key;
@end

@implementation SRUIFLocalization

- (SRUIFLocalization)initWithBundle:(id)bundle tableName:(id)name
{
  bundleCopy = bundle;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = SRUIFLocalization;
  v8 = [(SRUIFLocalization *)&v16 init];
  if (v8)
  {
    if (bundleCopy)
    {
      v9 = bundleCopy;
    }

    else
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    }

    bundle = v8->_bundle;
    v8->_bundle = v9;

    if (nameCopy)
    {
      v11 = nameCopy;
    }

    else
    {
      v11 = @"Localizable";
    }

    tableName = v8->_tableName;
    v8->_tableName = &v11->isa;

    mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
    localization = v8->_localization;
    v8->_localization = mEMORY[0x277CEF2D8];
  }

  return v8;
}

- (SRUIFLocalization)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(SRUIFLocalization *)self initWithBundle:v3 tableName:@"Localizable"];

  return v4;
}

- (id)localizedStringWithSiriLanguageForKey:(id)key
{
  v4 = MEMORY[0x277CEF368];
  keyCopy = key;
  sharedPreferences = [v4 sharedPreferences];
  languageCode = [sharedPreferences languageCode];

  v8 = [(SRUIFLocalization *)self localizedStringForLanguageCode:languageCode key:keyCopy];

  return v8;
}

- (id)localizedStringForLanguageCode:(id)code key:(id)key
{
  codeCopy = code;
  keyCopy = key;
  if (codeCopy)
  {
    v8 = [(AFLocalization *)self->_localization localizedStringForKey:keyCopy table:self->_tableName bundle:self->_bundle languageCode:codeCopy];
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SRUIFLocalization localizedStringForLanguageCode:v9 key:?];
    }
  }

  v8 = keyCopy;
LABEL_7:

  return v8;
}

- (void)localizedStringForLanguageCode:(os_log_t)log key:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SRUIFLocalization localizedStringForLanguageCode:key:]";
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s Language code not provided", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end