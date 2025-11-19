@interface SRUIFLocalization
- (SRUIFLocalization)init;
- (SRUIFLocalization)initWithBundle:(id)a3 tableName:(id)a4;
- (id)localizedStringForLanguageCode:(id)a3 key:(id)a4;
- (id)localizedStringWithSiriLanguageForKey:(id)a3;
@end

@implementation SRUIFLocalization

- (SRUIFLocalization)initWithBundle:(id)a3 tableName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SRUIFLocalization;
  v8 = [(SRUIFLocalization *)&v16 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    }

    bundle = v8->_bundle;
    v8->_bundle = v9;

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = @"Localizable";
    }

    tableName = v8->_tableName;
    v8->_tableName = &v11->isa;

    v13 = [MEMORY[0x277CEF2D8] sharedInstance];
    localization = v8->_localization;
    v8->_localization = v13;
  }

  return v8;
}

- (SRUIFLocalization)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(SRUIFLocalization *)self initWithBundle:v3 tableName:@"Localizable"];

  return v4;
}

- (id)localizedStringWithSiriLanguageForKey:(id)a3
{
  v4 = MEMORY[0x277CEF368];
  v5 = a3;
  v6 = [v4 sharedPreferences];
  v7 = [v6 languageCode];

  v8 = [(SRUIFLocalization *)self localizedStringForLanguageCode:v7 key:v5];

  return v8;
}

- (id)localizedStringForLanguageCode:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(AFLocalization *)self->_localization localizedStringForKey:v7 table:self->_tableName bundle:self->_bundle languageCode:v6];
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

  v8 = v7;
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