@interface UAFAssetSetExperimentConfiguration
+ (BOOL)isValid:(id)a3 error:(id *)a4;
+ (id)fromContentsOfURL:(id)a3 error:(id *)a4;
+ (id)supportedFileVersions;
- (UAFAssetSetExperimentConfiguration)initWithDictionary:(id)a3;
@end

@implementation UAFAssetSetExperimentConfiguration

+ (id)supportedFileVersions
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"1.0.0";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (BOOL)isValid:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[UAFAssetSetExperimentConfiguration supportedFileVersions];
  v7 = [UAFConfiguration isValid:v5 fileType:@"AssetSetExperiment" fileVersions:v6 error:a4];

  if (v7 && [UAFConfiguration isValidValue:v5 key:@"AutoAssetSpecifiers" kind:objc_opt_class() required:1 error:a4])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    v8 = [v5 objectForKeyedSubscript:@"AutoAssetSpecifiers"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__UAFAssetSetExperimentConfiguration_isValid_error___block_invoke;
    v11[3] = &unk_1E7FFDC68;
    v11[4] = &v12;
    [v8 enumerateKeysAndObjectsUsingBlock:v11];

    v9 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void __52__UAFAssetSetExperimentConfiguration_isValid_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
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
    if ([UAFAssetSetExperimentConfiguration isValid:v6 error:a4])
    {
      v15 = [[UAFAssetSetExperimentConfiguration alloc] initWithDictionary:v6];
      goto LABEL_15;
    }

    v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[UAFAssetSetExperimentConfiguration fromContentsOfURL:error:]";
      v21 = 2112;
      v22 = v5;
      v12 = "%s Failed to validate UAFAssetSetExperimentConfiguration dictionary from %@";
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
      v20 = "+[UAFAssetSetExperimentConfiguration fromContentsOfURL:error:]";
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v8;
      v12 = "%s Failed to load UAFAssetSetExperimentConfiguration dictionary from %@: %@";
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

- (UAFAssetSetExperimentConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = UAFAssetSetExperimentConfiguration;
  v5 = [(UAFAssetSetExperimentConfiguration *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [v4 objectForKeyedSubscript:@"AutoAssetSpecifiers"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__UAFAssetSetExperimentConfiguration_initWithDictionary___block_invoke;
    v13[3] = &unk_1E7FFDC90;
    v14 = v6;
    v8 = v6;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];

    v9 = [v8 copy];
    assetSpecifiers = v5->_assetSpecifiers;
    v5->_assetSpecifiers = v9;

    v11 = v5;
  }

  return v5;
}

void __57__UAFAssetSetExperimentConfiguration_initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(a1 + 32);
      v8 = v5;
      [v7 setObject:v8 forKey:v6];
    }
  }

  else
  {
    v6 = 0;
  }
}

@end