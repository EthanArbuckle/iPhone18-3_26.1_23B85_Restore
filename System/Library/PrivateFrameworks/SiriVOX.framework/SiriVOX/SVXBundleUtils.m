@interface SVXBundleUtils
+ (id)sharedInstance;
- (SVXBundleUtils)init;
- (SVXBundleUtils)initWithLocalization:(id)a3;
- (id)_getSystemFrameworkWithName:(id)a3;
- (id)getLocalizedStringWithBundle:(id)a3 table:(id)a4 key:(id)a5 languageCode:(id)a6 gender:(int64_t)a7;
- (id)getSiriVOXFramework;
@end

@implementation SVXBundleUtils

- (id)_getSystemFrameworkWithName:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CCA8D8];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.%@", v3];
  v6 = [v4 bundleWithIdentifier:v5];

  if (!v6)
  {
    v7 = MEMORY[0x277CCA8D8];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/System/Library/PrivateFrameworks/%@.framework", v3];
    v6 = [v7 bundleWithPath:v8];

    if (!v6)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/System/Library/Frameworks/%@.framework", v3];
      v6 = [v9 bundleWithPath:v10];
    }
  }

  return v6;
}

- (id)getLocalizedStringWithBundle:(id)a3 table:(id)a4 key:(id)a5 languageCode:(id)a6 gender:(int64_t)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v44 = a5;
  v43 = a6;
  v14 = MEMORY[0x277CEF098];
  v15 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [v12 bundleIdentifier];
    if (a7 > 3)
    {
      v18 = @"(unknown)";
    }

    else
    {
      v18 = off_279C66CC8[a7];
    }

    v19 = v18;
    *buf = 136316418;
    v51 = "[SVXBundleUtils getLocalizedStringWithBundle:table:key:languageCode:gender:]";
    v52 = 2112;
    v53 = v17;
    v54 = 2112;
    v55 = v13;
    v56 = 2112;
    v57 = v44;
    v58 = 2112;
    v59 = v43;
    v60 = 2112;
    v61 = v19;
    _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s Getting localized string with bundleIdentifier: %@, table: %@, key: %@, languageCode: %@, gender: %@", buf, 0x3Eu);
  }

  v20 = v13;
  if (v20)
  {
    afLocalization = self->_afLocalization;
    if (v12)
    {
      v22 = [(AFLocalization *)self->_afLocalization localizedStringForKey:v44 gender:a7 table:v20 bundle:v12 languageCode:v43];
    }

    else
    {
      v37 = [(SVXBundleUtils *)self getSiriVOXFramework];
      v22 = [(AFLocalization *)afLocalization localizedStringForKey:v44 gender:a7 table:v20 bundle:v37 languageCode:v43];
    }

    v36 = v20;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    v23 = [v12 bundleIdentifier];
    v24 = [(SVXBundleUtils *)self getSiriVOXFramework];
    v25 = [v24 bundleIdentifier];
    v26 = [v23 isEqualToString:v25];

    if (!v26)
    {
      v22 = [(AFLocalization *)self->_afLocalization localizedStringForKey:v44 gender:a7 table:0 bundle:v12 languageCode:v43];
      v36 = 0;
    }

    else
    {
LABEL_11:
      v27 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v51 = "[SVXBundleUtils getLocalizedStringWithBundle:table:key:languageCode:gender:]";
        _os_log_impl(&dword_2695B9000, v27, OS_LOG_TYPE_INFO, "%s No table provided. Checking standard localization tables for result.", buf, 0xCu);
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v28 = SVXLocalizationGetAllTables();
      v29 = [v28 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v46;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v46 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v45 + 1) + 8 * i);
            v34 = self->_afLocalization;
            if (v12)
            {
              v22 = [(AFLocalization *)self->_afLocalization localizedStringForKey:v44 gender:a7 table:*(*(&v45 + 1) + 8 * i) bundle:v12 languageCode:v43];
              if (v22)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v35 = [(SVXBundleUtils *)self getSiriVOXFramework];
              v22 = [(AFLocalization *)v34 localizedStringForKey:v44 gender:a7 table:v33 bundle:v35 languageCode:v43];

              if (v22)
              {
LABEL_27:
                v36 = v33;
                goto LABEL_28;
              }
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

        v36 = 0;
        v22 = 0;
LABEL_28:
        v14 = MEMORY[0x277CEF098];
      }

      else
      {
        v36 = 0;
        v22 = 0;
      }

      v20 = 0;
    }
  }

  v38 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
  {
    v39 = @"true";
    *buf = 136316162;
    v51 = "[SVXBundleUtils getLocalizedStringWithBundle:table:key:languageCode:gender:]";
    v52 = 2112;
    if (!v22)
    {
      v39 = @"false";
    }

    v53 = v39;
    v54 = 2112;
    v55 = v36;
    v56 = 2112;
    v57 = v44;
    v58 = 2112;
    v59 = v43;
    _os_log_impl(&dword_2695B9000, v38, OS_LOG_TYPE_INFO, "%s Localized string found (%@) for table %@, key %@, and languageCode %@", buf, 0x34u);
  }

  v40 = [v22 stringByReplacingOccurrencesOfString:@"\\ESC" withString:@"\x1B"];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)getSiriVOXFramework
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SVXBundleUtils_getSiriVOXFramework__block_invoke;
  block[3] = &unk_279C68FC0;
  block[4] = self;
  if (getSiriVOXFramework_onceToken != -1)
  {
    dispatch_once(&getSiriVOXFramework_onceToken, block);
  }

  return getSiriVOXFramework_bundle;
}

uint64_t __37__SVXBundleUtils_getSiriVOXFramework__block_invoke(uint64_t a1)
{
  getSiriVOXFramework_bundle = [*(a1 + 32) _getSystemFrameworkWithName:@"SiriVOX"];

  return MEMORY[0x2821F96F8]();
}

- (SVXBundleUtils)initWithLocalization:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXBundleUtils;
  v6 = [(SVXBundleUtils *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_afLocalization, a3);
  }

  return v7;
}

- (SVXBundleUtils)init
{
  v3 = [MEMORY[0x277CEF2D8] sharedInstance];
  v4 = [(SVXBundleUtils *)self initWithLocalization:v3];

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_9531);
  }

  v3 = sharedInstance_singleton;

  return v3;
}

uint64_t __32__SVXBundleUtils_sharedInstance__block_invoke()
{
  sharedInstance_singleton = objc_alloc_init(SVXBundleUtils);

  return MEMORY[0x2821F96F8]();
}

@end