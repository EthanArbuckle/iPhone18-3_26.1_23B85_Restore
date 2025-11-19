@interface PNStoryPersonalTraitsGraphEntityNames
+ (id)_loadPersonalTraitEntityConfiguration;
- (PNStoryPersonalTraitsGraphEntityNames)init;
- (id)dominantRequiredSceneNames;
- (id)sceneNames;
- (int64_t)configurationVersion;
@end

@implementation PNStoryPersonalTraitsGraphEntityNames

- (PNStoryPersonalTraitsGraphEntityNames)init
{
  v6.receiver = self;
  v6.super_class = PNStoryPersonalTraitsGraphEntityNames;
  v2 = [(PNStoryPersonalTraitsGraphEntityNames *)&v6 init];
  if (v2)
  {
    v3 = [objc_opt_class() _loadPersonalTraitEntityConfiguration];
    personalTraitEntityConfiguration = v2->_personalTraitEntityConfiguration;
    v2->_personalTraitEntityConfiguration = v3;
  }

  return v2;
}

+ (id)_loadPersonalTraitEntityConfiguration
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PNStoryRemoteConfiguration);
  v3 = +[PNStoryRemoteConfiguration personalTraitsEntityConfiguration];
  v10 = 0;
  v4 = [(PNStoryRemoteConfiguration *)v2 fileURLForFactorKey:v3 error:&v10];
  v5 = v10;

  if (v4)
  {
    v9 = v5;
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v4 error:&v9];
    v7 = v9;

    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = v7;
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNStoryPersonalTraitsGraphEntityNames] Couldn't load file (%@) from disk. error: %@", buf, 0x16u);
      }

      v6 = 0;
    }

    v5 = v7;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNStoryPersonalTraitsGraphEntityNames] Couldn't load file from remote configuration. error: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)dominantRequiredSceneNames
{
  v2 = [(NSDictionary *)self->_personalTraitEntityConfiguration objectForKeyedSubscript:@"scenes"];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PNStoryPersonalTraitsGraphEntityNames_dominantRequiredSceneNames__block_invoke;
  v6[3] = &unk_1E82A2840;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void __67__PNStoryPersonalTraitsGraphEntityNames_dominantRequiredSceneNames__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 objectForKeyedSubscript:@"isDominantRequired"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (id)sceneNames
{
  v2 = [(NSDictionary *)self->_personalTraitEntityConfiguration objectForKeyedSubscript:@"scenes"];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [v2 allKeys];
  v5 = [v3 setWithArray:v4];

  return v5;
}

- (int64_t)configurationVersion
{
  v2 = [(NSDictionary *)self->_personalTraitEntityConfiguration objectForKeyedSubscript:@"version"];
  v3 = [v2 integerValue];

  return v3;
}

@end