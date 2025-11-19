@interface UAFAssetSetMetadata
+ (BOOL)isValid:(id)a3 error:(id *)a4;
+ (id)OSThirdPartyCompatibilityVersion:(id)a3;
+ (id)OSVersion;
+ (id)fromAssetDir:(id)a3 error:(id *)a4;
+ (id)fromContentsOfURL:(id)a3 error:(id *)a4;
+ (id)supportedFileVersions;
- (BOOL)OSSupported:(id)a3;
- (UAFAssetSetMetadata)initWithDictionary:(id)a3;
@end

@implementation UAFAssetSetMetadata

+ (id)supportedFileVersions
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"1.0.0";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)OSVersion
{
  if (qword_1ED7D1080 != -1)
  {
    dispatch_once(&qword_1ED7D1080, &__block_literal_global_2);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

void __32__UAFAssetSetMetadata_OSVersion__block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E208];
  v1 = _CFCopySystemVersionDictionaryValue();
  v2 = _MergedGlobals_1;
  _MergedGlobals_1 = v1;

  if (!_MergedGlobals_1)
  {
    v3 = MGCopyAnswer();
    v4 = _MergedGlobals_1;
    _MergedGlobals_1 = v3;
  }

  v5 = UAFGetLogCategory(&UAFLogContextConfiguration);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[UAFAssetSetMetadata OSVersion]_block_invoke";
    v9 = 2114;
    v10 = _MergedGlobals_1;
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s OS version for the metadata asset: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isValid:(id)a3 error:(id *)a4
{
  v56[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[UAFAssetSetMetadata supportedFileVersions];
  v7 = [UAFConfiguration isValid:v5 fileType:@"AssetSetMetadata" fileVersions:v6 error:a4];

  if (!v7 || ![UAFConfiguration isValidValue:v5 key:@"MinOSVersion" kind:objc_opt_class() required:0 error:a4])
  {
    goto LABEL_25;
  }

  v8 = [v5 objectForKeyedSubscript:@"MinOSVersion"];
  if (v8)
  {
    v9 = v8;
    v10 = [v5 objectForKeyedSubscript:@"MinOSVersion"];
    v11 = [UAFPlatform versionComponentsFromString:v10];

    if (!v11)
    {
      if (a4)
      {
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A578];
        if (*a4)
        {
          v55[0] = *MEMORY[0x1E696A578];
          v19 = MEMORY[0x1E696AEC0];
          v20 = [v5 objectForKeyedSubscript:@"MinOSVersion"];
          v21 = [v19 stringWithFormat:@"MinOSVersion %@ is not a valid version", v20];
          v55[1] = *MEMORY[0x1E696AA08];
          v22 = *a4;
          v56[0] = v21;
          v56[1] = v22;
          v23 = MEMORY[0x1E695DF20];
          v24 = v56;
          v25 = v55;
          v26 = 2;
        }

        else
        {
          v53 = *MEMORY[0x1E696A578];
          v36 = MEMORY[0x1E696AEC0];
          v20 = [v5 objectForKeyedSubscript:@"MinOSVersion"];
          v21 = [v36 stringWithFormat:@"MinOSVersion %@ is not a valid version", v20];
          v54 = v21;
          v23 = MEMORY[0x1E695DF20];
          v24 = &v54;
          v25 = &v53;
          v26 = 1;
        }

        v37 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
        *a4 = [v17 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v37];
      }

      v38 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v39 = [v5 objectForKeyedSubscript:@"MinOSVersion"];
      *buf = 136315394;
      v50 = "+[UAFAssetSetMetadata isValid:error:]";
      v51 = 2112;
      v52 = v39;
      v40 = "%s MinOSVersion %@ is not a valid version";
      goto LABEL_23;
    }
  }

  if (![UAFConfiguration isValidValue:v5 key:@"MaxOSVersion" kind:objc_opt_class() required:0 error:a4])
  {
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v12 = [v5 objectForKeyedSubscript:@"MaxOSVersion"];
  if (v12)
  {
    v13 = v12;
    v14 = [v5 objectForKeyedSubscript:@"MaxOSVersion"];
    v15 = [UAFPlatform versionComponentsFromString:v14];

    if (!v15)
    {
      if (a4)
      {
        v27 = MEMORY[0x1E696ABC0];
        v28 = *MEMORY[0x1E696A578];
        if (*a4)
        {
          v47[0] = *MEMORY[0x1E696A578];
          v29 = MEMORY[0x1E696AEC0];
          v30 = [v5 objectForKeyedSubscript:@"MaxOSVersion"];
          v31 = [v29 stringWithFormat:@"MaxOSVersion %@ is not a valid version", v30];
          v47[1] = *MEMORY[0x1E696AA08];
          v48[0] = v31;
          v48[1] = *a4;
          v32 = MEMORY[0x1E695DF20];
          v33 = v48;
          v34 = v47;
          v35 = 2;
        }

        else
        {
          v45 = *MEMORY[0x1E696A578];
          v41 = MEMORY[0x1E696AEC0];
          v30 = [v5 objectForKeyedSubscript:@"MaxOSVersion"];
          v31 = [v41 stringWithFormat:@"MaxOSVersion %@ is not a valid version", v30];
          v46 = v31;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v46;
          v34 = &v45;
          v35 = 1;
        }

        v42 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:v35];
        *a4 = [v27 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v42];
      }

      v38 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v39 = [v5 objectForKeyedSubscript:@"MaxOSVersion"];
      *buf = 136315394;
      v50 = "+[UAFAssetSetMetadata isValid:error:]";
      v51 = 2112;
      v52 = v39;
      v40 = "%s MaxOSVersion %@ is not a valid version";
LABEL_23:
      _os_log_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_DEFAULT, v40, buf, 0x16u);

LABEL_24:
      goto LABEL_25;
    }
  }

  v16 = [UAFConfiguration isValidValue:v5 key:@"ThirdPartyCompatibilityVersion" kind:objc_opt_class() required:0 error:a4];
LABEL_26:

  v43 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (id)fromContentsOfURL:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v18 = 0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v5 error:&v18];
  v7 = v18;
  v8 = v7;
  if (a4)
  {
    v9 = v7;
    *a4 = v8;
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
    if ([UAFAssetSetMetadata isValid:v6 error:a4])
    {
      v15 = [[UAFAssetSetMetadata alloc] initWithDictionary:v6];
      goto LABEL_15;
    }

    v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[UAFAssetSetMetadata fromContentsOfURL:error:]";
      v21 = 2112;
      v22 = v5;
      v12 = "%s Failed to validate UAFAssetSetMetadata dictionary from %@";
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
      v20 = "+[UAFAssetSetMetadata fromContentsOfURL:error:]";
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v8;
      v12 = "%s Failed to load UAFAssetSetMetadata dictionary from %@: %@";
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

+ (id)fromAssetDir:(id)a3 error:(id *)a4
{
  v5 = [a3 URLByAppendingPathComponent:@"metadata.plist"];
  v6 = [UAFAssetSetMetadata fromContentsOfURL:v5 error:a4];

  return v6;
}

+ (id)OSThirdPartyCompatibilityVersion:(id)a3
{
  v3 = a3;
  v4 = [v3 autoAssetType];

  if (v4)
  {
    v5 = MEMORY[0x1E69B1960];
    v6 = [v3 autoAssetType];
    v4 = [v5 compatibilityVersionStringForAssetType:v6];
  }

  return v4;
}

- (UAFAssetSetMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UAFAssetSetMetadata;
  v5 = [(UAFAssetSetMetadata *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"MinOSVersion"];
    minOSVersion = v5->_minOSVersion;
    v5->_minOSVersion = v6;

    v8 = [v4 objectForKeyedSubscript:@"MaxOSVersion"];
    maxOSVersion = v5->_maxOSVersion;
    v5->_maxOSVersion = v8;

    v10 = [v4 objectForKeyedSubscript:@"ThirdPartyCompatibilityVersion"];
    thirdPartyCompatibilityVersion = v5->_thirdPartyCompatibilityVersion;
    v5->_thirdPartyCompatibilityVersion = v10;

    v12 = v5;
  }

  return v5;
}

- (BOOL)OSSupported:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_minOSVersion == 0 && !self->_thirdPartyCompatibilityVersion)
  {
    goto LABEL_15;
  }

  v5 = +[UAFAssetSetMetadata OSVersion];
  v6 = [UAFPlatform versionComponentsFromString:v5];

  if (!v6)
  {
    v12 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = +[UAFAssetSetMetadata OSVersion];
      v19 = 136315394;
      v20 = "[UAFAssetSetMetadata OSSupported:]";
      v21 = 2112;
      v22 = v18;
      _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s Current OS Version %@ is not a valid version", &v19, 0x16u);
    }

    goto LABEL_15;
  }

  if (!self->_minOSVersion || (+[UAFAssetSetMetadata OSVersion], v7 = objc_claimAutoreleasedReturnValue(), v8 = [UAFPlatform compareVersion:v7 with:self->_minOSVersion], v7, v8 != -1))
  {
    if (!self->_maxOSVersion || (+[UAFAssetSetMetadata OSVersion], v9 = objc_claimAutoreleasedReturnValue(), v10 = [UAFPlatform compareVersion:v9 with:self->_maxOSVersion], v9, v10 != 1))
    {
      if (self->_thirdPartyCompatibilityVersion)
      {
        v13 = [UAFAssetSetMetadata OSThirdPartyCompatibilityVersion:v4];
        if (v13)
        {
          v14 = v13;
          v15 = [UAFAssetSetMetadata OSThirdPartyCompatibilityVersion:v4];
          v11 = [v15 isEqualToString:self->_thirdPartyCompatibilityVersion];

          goto LABEL_16;
        }
      }

LABEL_15:
      v11 = 1;
      goto LABEL_16;
    }
  }

  v11 = 0;
LABEL_16:

  v16 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

@end