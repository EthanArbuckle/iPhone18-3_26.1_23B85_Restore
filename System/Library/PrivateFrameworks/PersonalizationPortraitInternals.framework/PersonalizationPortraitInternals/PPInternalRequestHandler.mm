@interface PPInternalRequestHandler
- (void)assetDefaultBundleOverridePathForAssetIdentifier:(id)identifier completion:(id)completion;
- (void)assetMetadataRefreshIntervalSecondsWithCompletion:(id)completion;
- (void)assetVersionsWithCompletion:(id)completion;
- (void)clearAssetMetadataRefreshIntervalSecondsWithCompletion:(id)completion;
- (void)setAssetDefaultBundleOverridePath:(id)path assetIdentifier:(id)identifier completion:(id)completion;
- (void)setAssetMetadataRefreshIntervalSeconds:(double)seconds completion:(id)completion;
- (void)sysdiagnoseInformationWithCompletion:(id)completion;
- (void)trialOverridePath:(id)path namespaceName:(id)name factorName:(id)factorName completion:(id)completion;
@end

@implementation PPInternalRequestHandler

- (void)sysdiagnoseInformationWithCompletion:(id)completion
{
  v36[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = 0x277CBE000uLL;
  v5 = objc_opt_new();
  v6 = +[PPSQLDatabase nonMigratingToolsInstance];
  v7 = v6;
  if (v6)
  {
    stats = [v6 stats];
    v28 = 0;
    v9 = [v7 checkWithError:&v28];
    v10 = v28;
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v10];
      [v5 setObject:v11 forKeyedSubscript:@"dbCheck-error"];
    }

    v12 = +[PPConfiguration sharedInstance];
    portraitVariantName = [v12 portraitVariantName];

    v35[0] = @"stats";
    v35[1] = @"check";
    v36[0] = stats;
    v36[1] = v9;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v5 setObject:v14 forKeyedSubscript:@"database"];

    v33 = @"variantName";
    v34 = portraitVariantName;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v5 setObject:v15 forKeyedSubscript:@"configuration"];

    v4 = 0x277CBE000;
  }

  else
  {
    v31[0] = @"stats";
    null = [MEMORY[0x277CBEB68] null];
    v31[1] = @"check";
    v32[0] = null;
    null2 = [MEMORY[0x277CBEB68] null];
    v32[1] = null2;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [v5 setObject:v18 forKeyedSubscript:@"database"];

    v29 = @"variantName";
    stats = [MEMORY[0x277CBEB68] null];
    v30 = stats;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v5 setObject:v10 forKeyedSubscript:@"configuration"];
  }

  v19 = *(v4 + 2872);
  v20 = objc_opt_new();
  [v5 setObject:v20 forKeyedSubscript:@"assets"];

  v21 = [v5 objectForKeyedSubscript:@"assets"];
  [v21 setObject:&unk_284785FA0 forKeyedSubscript:@"common"];

  v22 = [v5 objectForKeyedSubscript:@"assets"];
  [v22 setObject:&unk_284785FC8 forKeyedSubscript:@"non-watch"];

  v27 = 0;
  v23 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:3 error:&v27];
  v24 = v27;
  if (v23)
  {
    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v23 encoding:4];
    completionCopy[2](completionCopy, v25, v24);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v24);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)trialOverridePath:(id)path namespaceName:(id)name factorName:(id)factorName completion:(id)completion
{
  pathCopy = path;
  nameCopy = name;
  factorNameCopy = factorName;
  completionCopy = completion;
  v12 = +[PPTrialWrapper sharedInstance];
  v13 = v12;
  if (pathCopy)
  {
    [v12 overrideFilepathForFileFactor:factorNameCopy namespaceName:nameCopy path:pathCopy];
  }

  else
  {
    [v12 clearOverrideFilepathForFileFactor:factorNameCopy namespaceName:nameCopy];
  }

  v14 = +[PPSettings sharedInstance];
  [v14 setTrialPathOverrideForNamespaceName:nameCopy factorName:factorNameCopy path:pathCopy];

  v15 = +[PPTrialWrapper sharedInstance];
  [v15 callRegisteredUpdateHandlersForNamespaceName:nameCopy];

  completionCopy[2](completionCopy, 1, 0);
}

- (void)assetVersionsWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, &unk_284785F78, 0);
  }
}

- (void)assetDefaultBundleOverridePathForAssetIdentifier:(id)identifier completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_151_19555;
  }

  identifierCopy = identifier;
  v8 = _Block_copy(completionCopy);
  v6 = +[PPSettings sharedInstance];
  v7 = [v6 assetDefaultBundleOverridePathForAssetIdentifier:identifierCopy];

  v8[2](v8, v7, 0);
}

- (void)setAssetDefaultBundleOverridePath:(id)path assetIdentifier:(id)identifier completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_148;
  }

  v6 = _Block_copy(completionCopy);
  v6[2](v6, 0);
}

- (void)assetMetadataRefreshIntervalSecondsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[PPSettings sharedInstance];
  [v5 assetMetadataRefreshIntervalSeconds];
  (*(completion + 2))(completionCopy, 1, 0);
}

- (void)clearAssetMetadataRefreshIntervalSecondsWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = +[PPSettings sharedInstance];
  [v3 clearAssetMetadataRefreshIntervalSeconds];

  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v4 = completionCopy;
  }
}

- (void)setAssetMetadataRefreshIntervalSeconds:(double)seconds completion:(id)completion
{
  completionCopy = completion;
  v5 = +[PPSettings sharedInstance];
  [v5 setAssetMetadataRefreshIntervalSeconds:seconds];

  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v6 = completionCopy;
  }
}

@end