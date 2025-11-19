@interface SVXLocalizationUtils
- (SVXLocalizationUtils)init;
- (SVXLocalizationUtils)initWithBundleUtils:(id)a3;
- (id)getLocalizedStringWithLanguageCode:(id)a3 gender:(int64_t)a4 key:(id)a5;
@end

@implementation SVXLocalizationUtils

- (id)getLocalizedStringWithLanguageCode:(id)a3 gender:(int64_t)a4 key:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    if (a4 > 3)
    {
      v12 = @"(unknown)";
    }

    else
    {
      v12 = off_279C66CC8[a4];
    }

    v13 = v12;
    v17 = 136315906;
    v18 = "[SVXLocalizationUtils getLocalizedStringWithLanguageCode:gender:key:]";
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s getLocalizedStringWith (languageCode: %@, gender: %@, key: %@)", &v17, 0x2Au);
  }

  v14 = [(SVXBundleUtilsProtocol *)self->_bundleUtils getLocalizedStringWithBundle:0 table:0 key:v9 languageCode:v8 gender:a4];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (SVXLocalizationUtils)initWithBundleUtils:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXLocalizationUtils;
  v6 = [(SVXLocalizationUtils *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleUtils, a3);
  }

  return v7;
}

- (SVXLocalizationUtils)init
{
  v3 = +[SVXBundleUtils sharedInstance];
  v4 = [(SVXLocalizationUtils *)self initWithBundleUtils:v3];

  return v4;
}

@end