@interface PPInternalRequestHandler
- (void)assetDefaultBundleOverridePathForAssetIdentifier:(id)a3 completion:(id)a4;
- (void)assetMetadataRefreshIntervalSecondsWithCompletion:(id)a3;
- (void)assetVersionsWithCompletion:(id)a3;
- (void)clearAssetMetadataRefreshIntervalSecondsWithCompletion:(id)a3;
- (void)setAssetDefaultBundleOverridePath:(id)a3 assetIdentifier:(id)a4 completion:(id)a5;
- (void)setAssetMetadataRefreshIntervalSeconds:(double)a3 completion:(id)a4;
- (void)sysdiagnoseInformationWithCompletion:(id)a3;
- (void)trialOverridePath:(id)a3 namespaceName:(id)a4 factorName:(id)a5 completion:(id)a6;
@end

@implementation PPInternalRequestHandler

- (void)sysdiagnoseInformationWithCompletion:(id)a3
{
  v36[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = 0x277CBE000uLL;
  v5 = objc_opt_new();
  v6 = +[PPSQLDatabase nonMigratingToolsInstance];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 stats];
    v28 = 0;
    v9 = [v7 checkWithError:&v28];
    v10 = v28;
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v10];
      [v5 setObject:v11 forKeyedSubscript:@"dbCheck-error"];
    }

    v12 = +[PPConfiguration sharedInstance];
    v13 = [v12 portraitVariantName];

    v35[0] = @"stats";
    v35[1] = @"check";
    v36[0] = v8;
    v36[1] = v9;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v5 setObject:v14 forKeyedSubscript:@"database"];

    v33 = @"variantName";
    v34 = v13;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v5 setObject:v15 forKeyedSubscript:@"configuration"];

    v4 = 0x277CBE000;
  }

  else
  {
    v31[0] = @"stats";
    v16 = [MEMORY[0x277CBEB68] null];
    v31[1] = @"check";
    v32[0] = v16;
    v17 = [MEMORY[0x277CBEB68] null];
    v32[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [v5 setObject:v18 forKeyedSubscript:@"database"];

    v29 = @"variantName";
    v8 = [MEMORY[0x277CBEB68] null];
    v30 = v8;
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
    v3[2](v3, v25, v24);
  }

  else
  {
    v3[2](v3, 0, v24);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)trialOverridePath:(id)a3 namespaceName:(id)a4 factorName:(id)a5 completion:(id)a6
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[PPTrialWrapper sharedInstance];
  v13 = v12;
  if (v16)
  {
    [v12 overrideFilepathForFileFactor:v10 namespaceName:v9 path:v16];
  }

  else
  {
    [v12 clearOverrideFilepathForFileFactor:v10 namespaceName:v9];
  }

  v14 = +[PPSettings sharedInstance];
  [v14 setTrialPathOverrideForNamespaceName:v9 factorName:v10 path:v16];

  v15 = +[PPTrialWrapper sharedInstance];
  [v15 callRegisteredUpdateHandlersForNamespaceName:v9];

  v11[2](v11, 1, 0);
}

- (void)assetVersionsWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, &unk_284785F78, 0);
  }
}

- (void)assetDefaultBundleOverridePathForAssetIdentifier:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = &__block_literal_global_151_19555;
  }

  v5 = a3;
  v8 = _Block_copy(v4);
  v6 = +[PPSettings sharedInstance];
  v7 = [v6 assetDefaultBundleOverridePathForAssetIdentifier:v5];

  v8[2](v8, v7, 0);
}

- (void)setAssetDefaultBundleOverridePath:(id)a3 assetIdentifier:(id)a4 completion:(id)a5
{
  if (a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = &__block_literal_global_148;
  }

  v6 = _Block_copy(v5);
  v6[2](v6, 0);
}

- (void)assetMetadataRefreshIntervalSecondsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[PPSettings sharedInstance];
  [v5 assetMetadataRefreshIntervalSeconds];
  (*(a3 + 2))(v4, 1, 0);
}

- (void)clearAssetMetadataRefreshIntervalSecondsWithCompletion:(id)a3
{
  v5 = a3;
  v3 = +[PPSettings sharedInstance];
  [v3 clearAssetMetadataRefreshIntervalSeconds];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
  }
}

- (void)setAssetMetadataRefreshIntervalSeconds:(double)a3 completion:(id)a4
{
  v7 = a4;
  v5 = +[PPSettings sharedInstance];
  [v5 setAssetMetadataRefreshIntervalSeconds:a3];

  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
    v6 = v7;
  }
}

@end