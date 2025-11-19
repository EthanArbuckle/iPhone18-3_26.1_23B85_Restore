@interface TRIMobileAssetUtil
+ (id)_getCurrentPallasAudienceForAssetType:(id)a3;
+ (id)_getCurrentPallasURLForAssetType:(id)a3;
+ (void)_setAllAssetsToAudience:(id)a3 siriAudience:(id)a4 assetURL:(id)a5 siriAssetURL:(id)a6;
+ (void)_setPallasAudience:(id)a3 forAssetType:(id)a4;
+ (void)_setPallasURL:(id)a3 forAssetType:(id)a4;
+ (void)configureMobileAssetForTrialEnvironment:(int64_t)a3;
@end

@implementation TRIMobileAssetUtil

+ (void)configureMobileAssetForTrialEnvironment:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = +[TRISystemConfiguration sharedInstance];
  v6 = [v5 populationType];

  if (a3 != 3)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://gdmf.apple.com/v2/assets"];
    v18 = v11;
    if (v6 != 5 && v6 != 4)
    {
      if (v6 != 3)
      {
LABEL_12:
        v13 = *MEMORY[0x277D85DE8];

        return;
      }

      if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0)
      {
        v16 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://gdmf-staging-int.apple.com/v2/assets"];
        [a1 _setAllAssetsToAudience:@"ce9c2203-903b-4fb3-9f03-040dc2202694" siriAudience:0 assetURL:v16 siriAssetURL:0];

        goto LABEL_12;
      }

      v8 = @"ce9c2203-903b-4fb3-9f03-040dc2202694";
      v10 = @"0206c249-b301-46e0-9d6a-23ce9c5d875d";
      v9 = a1;
      v7 = 0;
      v12 = v18;
LABEL_11:
      [v9 _setAllAssetsToAudience:v8 siriAudience:v10 assetURL:v7 siriAssetURL:v12];
      goto LABEL_12;
    }

    v9 = a1;
    v8 = 0;
    v10 = 0;
    v7 = v11;
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  if (v6 == 3)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://gdmf-staging-int.apple.com/v2/assets"];
    v8 = @"9e2ceb05-96a4-4218-a942-74cdd002ea13";
    v9 = a1;
    v10 = 0;
    v18 = v7;
    goto LABEL_10;
  }

  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (v6 < 6 && ((0x37u >> v6) & 1) != 0)
    {
      v17 = off_279DE5938[v6];
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v6];
    }

    *buf = 138543362;
    v20 = v17;
    _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Tried to configure MA for UAT environment with unexpected population: %{public}@", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)_setAllAssetsToAudience:(id)a3 siriAudience:(id)a4 assetURL:(id)a5 siriAssetURL:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v12)
  {
    v12 = v11;
  }

  if (v10)
  {
    [a1 _setPallasURL:v12 forAssetType:@"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech"];
    v13 = a1;
    v14 = v10;
  }

  else
  {
    [a1 _setPallasURL:v11 forAssetType:@"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech"];
    v13 = a1;
    v14 = v15;
  }

  [v13 _setPallasAudience:v14 forAssetType:@"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech"];
}

+ (id)_getCurrentPallasAudienceForAssetType:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF010];
  v4 = a3;
  CFPreferencesSynchronize(@"com.apple.MobileAsset", @"root", v3);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"MobileAssetAssetAudience", v4];

  v6 = CFPreferencesCopyValue(v5, @"com.apple.MobileAsset", @"root", v3);
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 != CFStringGetTypeID())
    {
      v9 = TRILogCategory_Server();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "invalid type for key: %@ | expecting string", buf, 0xCu);
      }

      CFRelease(v7);
      v7 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_getCurrentPallasURLForAssetType:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF010];
  v4 = a3;
  CFPreferencesSynchronize(@"com.apple.MobileAsset", @"root", v3);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PallasUrlOverrideV2", v4];

  v6 = CFPreferencesCopyValue(v5, @"com.apple.MobileAsset", @"root", v3);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFStringGetTypeID())
    {
      v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];

      goto LABEL_8;
    }

    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "invalid type for key: %@ | expecting string", buf, 0xCu);
    }

    CFRelease(v7);
  }

  v9 = 0;
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)_setPallasAudience:(id)a3 forAssetType:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _getCurrentPallasAudienceForAssetType:v7];
  v9 = v8;
  v10 = (v6 | v8) == 0;
  if (v8)
  {
    LODWORD(v8) = [v8 isEqual:v6];
  }

  v11 = v8 | v10;
  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    v19 = 1024;
    v20 = v11;
    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Found Pallas settings for %{public}@: Audience %{public}@, matches new setting: %d", &v15, 0x1Cu);
  }

  if (!v11)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Setting audience setting for %{public}@ to %{public}@", &v15, 0x16u);
    }

    MEMORY[0x274393FA0](v6, @"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech");
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_setPallasURL:(id)a3 forAssetType:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _getCurrentPallasURLForAssetType:v7];
  v9 = v8;
  v10 = (v6 | v8) == 0;
  if (v8)
  {
    LODWORD(v8) = [v8 isEqual:v6];
  }

  v11 = v8 | v10;
  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    v19 = 1024;
    v20 = v11;
    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Found Pallas settings for %{public}@: Pallas URL %{public}@, matches new setting: %d", &v15, 0x1Cu);
  }

  if (!v11)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Setting PallasURL for %{public}@ to %{public}@", &v15, 0x16u);
    }

    MEMORY[0x274393FB0](v6, @"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech");
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end