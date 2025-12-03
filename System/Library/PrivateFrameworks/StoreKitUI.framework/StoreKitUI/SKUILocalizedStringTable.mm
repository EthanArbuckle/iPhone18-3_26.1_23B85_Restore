@interface SKUILocalizedStringTable
- (SKUILocalizedStringTable)initWithBundle:(id)bundle localeName:(id)name tableName:(id)tableName;
- (id)_legacyLanguageNameForLanguageCode:(id)code;
@end

@implementation SKUILocalizedStringTable

- (SKUILocalizedStringTable)initWithBundle:(id)bundle localeName:(id)name tableName:(id)tableName
{
  v41 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  nameCopy = name;
  tableNameCopy = tableName;
  v39.receiver = self;
  v39.super_class = SKUILocalizedStringTable;
  v12 = [(SKUILocalizedStringTable *)&v39 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundle, bundle);
    v14 = [tableNameCopy copy];
    tableName = v13->_tableName;
    v13->_tableName = v14;

    v16 = [nameCopy stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    if ([v16 isEqualToString:@"zh_Hans"])
    {
      v17 = @"zh_CN";
    }

    else
    {
      if (![v16 isEqualToString:@"zh_Hant"])
      {
LABEL_7:
        v18 = [bundleCopy pathForResource:tableNameCopy ofType:@"strings" inDirectory:0 forLocalization:v16];
        v19 = v18;
        if (!v16 || v18)
        {
          nameCopy = v16;
          if (!v18)
          {
LABEL_33:

            goto LABEL_34;
          }
        }

        else
        {
          v20 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v16];
          nameCopy = [v20 objectForKey:*MEMORY[0x277CBE6C8]];

          v21 = [bundleCopy pathForResource:tableNameCopy ofType:@"strings" inDirectory:0 forLocalization:nameCopy];
          if (v21)
          {
            v19 = v21;
          }

          else
          {
            v22 = [(SKUILocalizedStringTable *)v13 _legacyLanguageNameForLanguageCode:nameCopy];
            if (!v22 || (v23 = v22, [bundleCopy pathForResource:tableNameCopy ofType:@"strings" inDirectory:0 forLocalization:v22], v19 = objc_claimAutoreleasedReturnValue(), v23, !v19))
            {
              [bundleCopy preferredLocalizations];
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v24 = v38 = 0u;
              v25 = [v24 countByEnumeratingWithState:&v35 objects:v40 count:16];
              if (v25)
              {
                v26 = v25;
                v34 = v20;
                v27 = *v36;
                while (2)
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v36 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = *(*(&v35 + 1) + 8 * i);
                    if ([v29 hasPrefix:nameCopy])
                    {
                      v30 = [bundleCopy pathForResource:tableNameCopy ofType:@"strings" inDirectory:0 forLocalization:v29];
                      if (v30)
                      {
                        v19 = v30;
                        goto LABEL_26;
                      }
                    }
                  }

                  v26 = [v24 countByEnumeratingWithState:&v35 objects:v40 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }

                v19 = 0;
LABEL_26:
                v20 = v34;
              }

              else
              {
                v19 = 0;
              }
            }
          }

          if (!v19)
          {
            goto LABEL_33;
          }
        }

        v31 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v19];
        v32 = [MEMORY[0x277CCAC58] propertyListWithData:v31 options:0 format:0 error:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v13->_strings, v32);
        }

        goto LABEL_33;
      }

      v17 = @"zh_TW";
    }

    v16 = v17;
    goto LABEL_7;
  }

LABEL_34:

  return v13;
}

- (id)_legacyLanguageNameForLanguageCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"de"])
  {
    v4 = @"German";
  }

  else if ([codeCopy isEqualToString:@"en"])
  {
    v4 = @"English";
  }

  else if ([codeCopy isEqualToString:@"es"])
  {
    v4 = @"Spanish";
  }

  else if ([codeCopy isEqualToString:@"fr"])
  {
    v4 = @"French";
  }

  else if ([codeCopy isEqualToString:@"it"])
  {
    v4 = @"Italian";
  }

  else if ([codeCopy isEqualToString:@"jp"])
  {
    v4 = @"Japanese";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end