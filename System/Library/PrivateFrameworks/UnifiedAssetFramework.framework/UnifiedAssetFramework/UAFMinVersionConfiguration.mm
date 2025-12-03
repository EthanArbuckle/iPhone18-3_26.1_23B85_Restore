@interface UAFMinVersionConfiguration
+ (BOOL)isValid:(id)valid error:(id *)error;
+ (id)fromContentsOfURL:(id)l error:(id *)error;
+ (id)supportedFileVersions;
- (UAFMinVersionConfiguration)initWithDictionary:(id)dictionary;
@end

@implementation UAFMinVersionConfiguration

+ (id)supportedFileVersions
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"1.0.0";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (BOOL)isValid:(id)valid error:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v6 = +[UAFMinVersionConfiguration supportedFileVersions];
  v7 = [UAFConfiguration isValid:validCopy fileType:@"MinVersion" fileVersions:v6 error:error];

  if (v7 && [UAFConfiguration isValidValue:validCopy key:@"AssetSetName" kind:objc_opt_class() required:1 error:error]&& [UAFConfiguration isValidValue:validCopy key:@"Assets" kind:objc_opt_class() required:0 error:error])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [validCopy objectForKeyedSubscript:@"Assets"];
    v8 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v43;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v42 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v18 = MEMORY[0x1E696ABC0];
              v19 = *MEMORY[0x1E696A578];
              if (*error)
              {
                v56[0] = *MEMORY[0x1E696A578];
                v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset is not expected kind %@", objc_opt_class()];
                v56[1] = *MEMORY[0x1E696AA08];
                v57[0] = v20;
                v57[1] = *error;
                v21 = MEMORY[0x1E695DF20];
                v22 = v57;
                v23 = v56;
                v24 = 2;
              }

              else
              {
                v54 = *MEMORY[0x1E696A578];
                v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset is not expected kind %@", objc_opt_class()];
                v55 = v20;
                v21 = MEMORY[0x1E695DF20];
                v22 = &v55;
                v23 = &v54;
                v24 = 1;
              }

              v34 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:v24];
              *error = [v18 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v34];
            }

            v35 = UAFGetLogCategory(&UAFLogContextConfiguration);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = objc_opt_class();
              *buf = 136315394;
              v51 = "+[UAFMinVersionConfiguration isValid:error:]";
              v52 = 2112;
              v53 = v36;
              v37 = v36;
              v38 = "%s Asset is not expected kind %@";
              goto LABEL_33;
            }

LABEL_34:

LABEL_35:
            v15 = 0;
            goto LABEL_36;
          }

          if (![UAFConfiguration isValidValue:v12 key:@"AssetName" kind:objc_opt_class() required:1 error:error]|| ![UAFConfiguration isValidValue:v12 key:@"MinVersion" kind:objc_opt_class() required:1 error:error])
          {
            goto LABEL_35;
          }

          v13 = [v12 objectForKeyedSubscript:@"MinVersion"];
          v14 = [UAFPlatform versionComponentsFromString:v13];

          if (!v14)
          {
            if (error)
            {
              v25 = MEMORY[0x1E696ABC0];
              v26 = *MEMORY[0x1E696A578];
              if (*error)
              {
                v48[0] = *MEMORY[0x1E696A578];
                v27 = MEMORY[0x1E696AEC0];
                v28 = [v12 objectForKeyedSubscript:@"MinVersion"];
                v29 = [v27 stringWithFormat:@"MinVersion %@ is not a valid version", v28];
                v48[1] = *MEMORY[0x1E696AA08];
                v49[0] = v29;
                v49[1] = *error;
                v30 = MEMORY[0x1E695DF20];
                v31 = v49;
                v32 = v48;
                v33 = 2;
              }

              else
              {
                v46 = *MEMORY[0x1E696A578];
                v39 = MEMORY[0x1E696AEC0];
                v28 = [v12 objectForKeyedSubscript:@"MinVersion"];
                v29 = [v39 stringWithFormat:@"MinVersion %@ is not a valid version", v28];
                v47 = v29;
                v30 = MEMORY[0x1E695DF20];
                v31 = &v47;
                v32 = &v46;
                v33 = 1;
              }

              v40 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
              *error = [v25 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v40];
            }

            v35 = UAFGetLogCategory(&UAFLogContextConfiguration);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [v12 objectForKeyedSubscript:@"MinVersion"];
              *buf = 136315394;
              v51 = "+[UAFMinVersionConfiguration isValid:error:]";
              v52 = 2112;
              v53 = v37;
              v38 = "%s MinVersion %@ is not a valid version";
LABEL_33:
              _os_log_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_DEFAULT, v38, buf, 0x16u);
            }

            goto LABEL_34;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
        v15 = 1;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 1;
    }

LABEL_36:
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)fromContentsOfURL:(id)l error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (error)
  {
    *error = 0;
  }

  v18 = 0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v18];
  v7 = v18;
  v8 = v7;
  if (error)
  {
    v9 = v7;
    *error = v8;
  }

  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if ([UAFMinVersionConfiguration isValid:v6 error:error])
    {
      v15 = [[UAFMinVersionConfiguration alloc] initWithDictionary:v6];
      goto LABEL_15;
    }

    v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[UAFMinVersionConfiguration fromContentsOfURL:error:]";
      v21 = 2112;
      v22 = lCopy;
      v12 = "%s Failed to validate UAFMinVersionConfiguration dictionary from %@";
      v13 = v11;
      v14 = 22;
      goto LABEL_19;
    }
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "+[UAFMinVersionConfiguration fromContentsOfURL:error:]";
      v21 = 2112;
      v22 = lCopy;
      v23 = 2112;
      v24 = v8;
      v12 = "%s Failed to load UAFMinVersionConfiguration dictionary from %@: %@";
      v13 = v11;
      v14 = 32;
LABEL_19:
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }
  }

  v15 = 0;
LABEL_15:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (UAFMinVersionConfiguration)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = UAFMinVersionConfiguration;
  v5 = [(UAFMinVersionConfiguration *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"AssetSetName"];
    assetSetName = v5->_assetSetName;
    v5->_assetSetName = v6;

    v8 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = dictionaryCopy;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"Assets"];
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"MinVersion"];
          v16 = [v14 objectForKeyedSubscript:@"AssetName"];
          [(NSDictionary *)v8 setObject:v15 forKeyedSubscript:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v11);
    }

    minVersions = v5->_minVersions;
    v5->_minVersions = v8;

    v18 = v5;
    dictionaryCopy = v21;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end