@interface UAFPlatform
+ (id)configurationManagers:(id)managers;
+ (id)platformAssetVersion:(id)version;
+ (id)versionComponentFromString:(id)string;
+ (id)versionComponentsFromString:(id)string;
+ (int64_t)compareVersion:(id)version with:(id)with;
@end

@implementation UAFPlatform

+ (id)versionComponentFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    invertedSet = [decimalDigitCharacterSet invertedSet];

    if ([stringCopy rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(stringCopy, "integerValue")}];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)versionComponentsFromString:(id)string
{
  v22 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = [stringCopy componentsSeparatedByString:@"."];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [UAFPlatform versionComponentFromString:*(*(&v17 + 1) + 8 * i), v17];
          if (!v12)
          {

            v14 = 0;
            goto LABEL_18;
          }

          v13 = v12;
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          [v9 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

    v9 = v9;
    v14 = v9;
LABEL_18:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (int64_t)compareVersion:(id)version with:(id)with
{
  withCopy = with;
  v6 = [UAFPlatform versionComponentsFromString:version];
  v7 = [UAFPlatform versionComponentsFromString:withCopy];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_12;
  }

  if ([v6 count])
  {
    v10 = 0;
    v11 = 1;
    while (v10 < [v8 count])
    {
      v12 = [v6 objectAtIndexedSubscript:v10];
      integerValue = [v12 integerValue];
      v14 = [v8 objectAtIndexedSubscript:v10];
      integerValue2 = [v14 integerValue];

      if (integerValue < integerValue2)
      {
        v11 = -1;
        goto LABEL_23;
      }

      v16 = [v6 objectAtIndexedSubscript:v10];
      integerValue3 = [v16 integerValue];
      v18 = [v8 objectAtIndexedSubscript:v10];
      integerValue4 = [v18 integerValue];

      if (integerValue3 > integerValue4)
      {
        goto LABEL_23;
      }

      if (++v10 >= [v6 count])
      {
        break;
      }
    }
  }

  v20 = [v6 count];
  if (v20 == [v8 count])
  {
LABEL_12:
    v11 = 0;
  }

  else
  {
    v21 = v6;
    v22 = v8;
    v23 = [v21 count];
    if (v23 <= [v22 count])
    {
      v11 = -1;
    }

    else
    {

      v24 = v21;
      v21 = v22;
      v11 = 1;
      v22 = v24;
    }

    for (i = [v21 count]; i < objc_msgSend(v22, "count"); ++i)
    {
      v26 = [v22 objectAtIndexedSubscript:i];
      integerValue5 = [v26 integerValue];

      if (integerValue5)
      {
        goto LABEL_21;
      }
    }

    v11 = 0;
LABEL_21:
  }

LABEL_23:

  return v11;
}

+ (id)configurationManagers:(id)managers
{
  v53[1] = *MEMORY[0x1E69E9840];
  managersCopy = managers;
  v4 = [managersCopy assetNamed:@"com.apple.siri.uaf.osupdates"];
  v5 = v4;
  if (v4)
  {
    location = [v4 location];

    if (location)
    {
      v34 = managersCopy;
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v33 = v5;
      location2 = [v5 location];
      v9 = *MEMORY[0x1E695DB78];
      v53[0] = *MEMORY[0x1E695DB78];
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
      v11 = [defaultManager enumeratorAtURL:location2 includingPropertiesForKeys:v10 options:1 errorHandler:0];

      v37 = [UAFCommonUtilities mobileGestaltQuery:@"ProductVersion"];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v41 objects:v52 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v35 = 0;
        v16 = *v42;
        v38 = v9;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            v18 = v15;
            if (*v42 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v19 = *(*(&v41 + 1) + 8 * i);
            v39 = 0;
            v40 = 0;
            v20 = [v19 getResourceValue:&v40 forKey:v9 error:&v39];
            v21 = v40;
            v15 = v39;

            if (v20)
            {
              v22 = v15 == 0;
            }

            else
            {
              v22 = 0;
            }

            if (v22 && [v21 BOOLValue])
            {
              v23 = v12;
              lastPathComponent = [v19 lastPathComponent];
              lastPathComponent2 = [v19 lastPathComponent];
              v26 = [UAFPlatform versionComponentsFromString:lastPathComponent2];

              if (v26)
              {
                if ([self compareVersion:lastPathComponent with:v37] == -1)
                {
                  v29 = UAFGetLogCategory(&UAFLogContextClient);
                  v12 = v23;
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315650;
                    v47 = "+[UAFPlatform configurationManagers:]";
                    v48 = 2114;
                    v49 = lastPathComponent;
                    v50 = 2114;
                    v51 = v37;
                    _os_log_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_INFO, "%s Skipping platform directory: %{public}@ < %{public}@", buf, 0x20u);
                  }
                }

                else
                {
                  v27 = [UAFConfigurationManager alloc];
                  v45 = v19;
                  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
                  v29 = [(UAFConfigurationManager *)v27 initWithURLs:v28];

                  v12 = v23;
                  if (v29)
                  {
                    v30 = v35;
                    if (!v35)
                    {
                      v30 = objc_opt_new();
                    }

                    v35 = v30;
                    [v30 setObject:v29 forKeyedSubscript:lastPathComponent];
                  }
                }

                v9 = v38;
              }

              else
              {
                v12 = v23;
                v9 = v38;
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v41 objects:v52 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
        v35 = 0;
      }

      location = v35;
      v5 = v33;
      managersCopy = v34;
    }
  }

  else
  {
    location = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return location;
}

+ (id)platformAssetVersion:(id)version
{
  v18 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v4 = [versionCopy assetNamed:@"com.apple.siri.uaf.osupdates"];
  v5 = v4;
  if (v4)
  {
    metadata = [v4 metadata];
    metadata2 = [v5 metadata];

    if (metadata2)
    {
      v8 = [metadata objectForKeyedSubscript:@"AssetVersion"];
      if ([v8 length])
      {
        v8 = v8;
        v9 = v8;
LABEL_14:

        goto LABEL_15;
      }

      v10 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315138;
        v15 = "+[UAFPlatform platformAssetVersion:]";
        _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Platform asset version missing from platform's asset metadata", &v14, 0xCu);
      }
    }

    else
    {
      v8 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315138;
        v15 = "+[UAFPlatform platformAssetVersion:]";
        _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Platform asset's metadata missing", &v14, 0xCu);
      }
    }

    v9 = 0;
    goto LABEL_14;
  }

  metadata = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(metadata, OS_LOG_TYPE_ERROR))
  {
    assetSetId = [versionCopy assetSetId];
    v14 = 136315394;
    v15 = "+[UAFPlatform platformAssetVersion:]";
    v16 = 2112;
    v17 = assetSetId;
    _os_log_error_impl(&dword_1BCF2C000, metadata, OS_LOG_TYPE_ERROR, "%s Platform asset missing from asset set id %@", &v14, 0x16u);
  }

  v9 = 0;
LABEL_15:

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

@end