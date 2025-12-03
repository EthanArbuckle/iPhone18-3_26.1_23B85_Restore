@interface SVXBundleUtils
+ (id)sharedInstance;
- (SVXBundleUtils)init;
- (SVXBundleUtils)initWithLocalization:(id)localization;
- (id)_getSystemFrameworkWithName:(id)name;
- (id)getLocalizedStringWithBundle:(id)bundle table:(id)table key:(id)key languageCode:(id)code gender:(int64_t)gender;
- (id)getSiriVOXFramework;
@end

@implementation SVXBundleUtils

- (id)_getSystemFrameworkWithName:(id)name
{
  nameCopy = name;
  v4 = MEMORY[0x277CCA8D8];
  nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.%@", nameCopy];
  v6 = [v4 bundleWithIdentifier:nameCopy];

  if (!v6)
  {
    v7 = MEMORY[0x277CCA8D8];
    nameCopy2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/System/Library/PrivateFrameworks/%@.framework", nameCopy];
    v6 = [v7 bundleWithPath:nameCopy2];

    if (!v6)
    {
      v9 = MEMORY[0x277CCA8D8];
      nameCopy3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/System/Library/Frameworks/%@.framework", nameCopy];
      v6 = [v9 bundleWithPath:nameCopy3];
    }
  }

  return v6;
}

- (id)getLocalizedStringWithBundle:(id)bundle table:(id)table key:(id)key languageCode:(id)code gender:(int64_t)gender
{
  v62 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  tableCopy = table;
  keyCopy = key;
  codeCopy = code;
  v14 = MEMORY[0x277CEF098];
  v15 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    bundleIdentifier = [bundleCopy bundleIdentifier];
    if (gender > 3)
    {
      v18 = @"(unknown)";
    }

    else
    {
      v18 = off_279C66CC8[gender];
    }

    v19 = v18;
    *buf = 136316418;
    v51 = "[SVXBundleUtils getLocalizedStringWithBundle:table:key:languageCode:gender:]";
    v52 = 2112;
    v53 = bundleIdentifier;
    v54 = 2112;
    v55 = tableCopy;
    v56 = 2112;
    v57 = keyCopy;
    v58 = 2112;
    v59 = codeCopy;
    v60 = 2112;
    v61 = v19;
    _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s Getting localized string with bundleIdentifier: %@, table: %@, key: %@, languageCode: %@, gender: %@", buf, 0x3Eu);
  }

  v20 = tableCopy;
  if (v20)
  {
    afLocalization = self->_afLocalization;
    if (bundleCopy)
    {
      v22 = [(AFLocalization *)self->_afLocalization localizedStringForKey:keyCopy gender:gender table:v20 bundle:bundleCopy languageCode:codeCopy];
    }

    else
    {
      getSiriVOXFramework = [(SVXBundleUtils *)self getSiriVOXFramework];
      v22 = [(AFLocalization *)afLocalization localizedStringForKey:keyCopy gender:gender table:v20 bundle:getSiriVOXFramework languageCode:codeCopy];
    }

    v36 = v20;
  }

  else
  {
    if (!bundleCopy)
    {
      goto LABEL_11;
    }

    bundleIdentifier2 = [bundleCopy bundleIdentifier];
    getSiriVOXFramework2 = [(SVXBundleUtils *)self getSiriVOXFramework];
    bundleIdentifier3 = [getSiriVOXFramework2 bundleIdentifier];
    v26 = [bundleIdentifier2 isEqualToString:bundleIdentifier3];

    if (!v26)
    {
      v22 = [(AFLocalization *)self->_afLocalization localizedStringForKey:keyCopy gender:gender table:0 bundle:bundleCopy languageCode:codeCopy];
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
            if (bundleCopy)
            {
              v22 = [(AFLocalization *)self->_afLocalization localizedStringForKey:keyCopy gender:gender table:*(*(&v45 + 1) + 8 * i) bundle:bundleCopy languageCode:codeCopy];
              if (v22)
              {
                goto LABEL_27;
              }
            }

            else
            {
              getSiriVOXFramework3 = [(SVXBundleUtils *)self getSiriVOXFramework];
              v22 = [(AFLocalization *)v34 localizedStringForKey:keyCopy gender:gender table:v33 bundle:getSiriVOXFramework3 languageCode:codeCopy];

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
    v57 = keyCopy;
    v58 = 2112;
    v59 = codeCopy;
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

- (SVXBundleUtils)initWithLocalization:(id)localization
{
  localizationCopy = localization;
  v9.receiver = self;
  v9.super_class = SVXBundleUtils;
  v6 = [(SVXBundleUtils *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_afLocalization, localization);
  }

  return v7;
}

- (SVXBundleUtils)init
{
  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  v4 = [(SVXBundleUtils *)self initWithLocalization:mEMORY[0x277CEF2D8]];

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