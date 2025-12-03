@interface TRIMobileAssetUtil
+ (id)_getCurrentPallasAudienceForAssetType:(id)type;
+ (id)_getCurrentPallasURLForAssetType:(id)type;
+ (void)_setAllAssetsToAudience:(id)audience siriAudience:(id)siriAudience assetURL:(id)l siriAssetURL:(id)rL;
+ (void)_setPallasAudience:(id)audience forAssetType:(id)type;
+ (void)_setPallasURL:(id)l forAssetType:(id)type;
+ (void)configureMobileAssetForTrialEnvironment:(int64_t)environment;
@end

@implementation TRIMobileAssetUtil

+ (void)configureMobileAssetForTrialEnvironment:(int64_t)environment
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = +[TRISystemConfiguration sharedInstance];
  populationType = [v5 populationType];

  if (environment != 3)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://gdmf.apple.com/v2/assets"];
    v18 = v11;
    if (populationType != 5 && populationType != 4)
    {
      if (populationType != 3)
      {
LABEL_12:
        v13 = *MEMORY[0x277D85DE8];

        return;
      }

      if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0)
      {
        v16 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://gdmf-staging-int.apple.com/v2/assets"];
        [self _setAllAssetsToAudience:@"ce9c2203-903b-4fb3-9f03-040dc2202694" siriAudience:0 assetURL:v16 siriAssetURL:0];

        goto LABEL_12;
      }

      v8 = @"ce9c2203-903b-4fb3-9f03-040dc2202694";
      v10 = @"0206c249-b301-46e0-9d6a-23ce9c5d875d";
      selfCopy3 = self;
      v7 = 0;
      v12 = v18;
LABEL_11:
      [selfCopy3 _setAllAssetsToAudience:v8 siriAudience:v10 assetURL:v7 siriAssetURL:v12];
      goto LABEL_12;
    }

    selfCopy3 = self;
    v8 = 0;
    v10 = 0;
    v7 = v11;
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  if (populationType == 3)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://gdmf-staging-int.apple.com/v2/assets"];
    v8 = @"9e2ceb05-96a4-4218-a942-74cdd002ea13";
    selfCopy3 = self;
    v10 = 0;
    v18 = v7;
    goto LABEL_10;
  }

  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (populationType < 6 && ((0x37u >> populationType) & 1) != 0)
    {
      v17 = off_279DE5938[populationType];
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", populationType];
    }

    *buf = 138543362;
    v20 = v17;
    _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Tried to configure MA for UAT environment with unexpected population: %{public}@", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)_setAllAssetsToAudience:(id)audience siriAudience:(id)siriAudience assetURL:(id)l siriAssetURL:(id)rL
{
  audienceCopy = audience;
  siriAudienceCopy = siriAudience;
  lCopy = l;
  rLCopy = rL;
  if (!rLCopy)
  {
    rLCopy = lCopy;
  }

  if (siriAudienceCopy)
  {
    [self _setPallasURL:rLCopy forAssetType:@"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech"];
    selfCopy2 = self;
    v14 = siriAudienceCopy;
  }

  else
  {
    [self _setPallasURL:lCopy forAssetType:@"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech"];
    selfCopy2 = self;
    v14 = audienceCopy;
  }

  [selfCopy2 _setPallasAudience:v14 forAssetType:@"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech"];
}

+ (id)_getCurrentPallasAudienceForAssetType:(id)type
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF010];
  typeCopy = type;
  CFPreferencesSynchronize(@"com.apple.MobileAsset", @"root", v3);
  typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"MobileAssetAssetAudience", typeCopy];

  v6 = CFPreferencesCopyValue(typeCopy, @"com.apple.MobileAsset", @"root", v3);
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
        v13 = typeCopy;
        _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "invalid type for key: %@ | expecting string", buf, 0xCu);
      }

      CFRelease(v7);
      v7 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_getCurrentPallasURLForAssetType:(id)type
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF010];
  typeCopy = type;
  CFPreferencesSynchronize(@"com.apple.MobileAsset", @"root", v3);
  typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PallasUrlOverrideV2", typeCopy];

  v6 = CFPreferencesCopyValue(typeCopy, @"com.apple.MobileAsset", @"root", v3);
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
      v14 = typeCopy;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "invalid type for key: %@ | expecting string", buf, 0xCu);
    }

    CFRelease(v7);
  }

  v9 = 0;
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)_setPallasAudience:(id)audience forAssetType:(id)type
{
  v21 = *MEMORY[0x277D85DE8];
  audienceCopy = audience;
  typeCopy = type;
  v8 = [self _getCurrentPallasAudienceForAssetType:typeCopy];
  v9 = v8;
  v10 = (audienceCopy | v8) == 0;
  if (v8)
  {
    LODWORD(v8) = [v8 isEqual:audienceCopy];
  }

  v11 = v8 | v10;
  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = typeCopy;
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
      v16 = typeCopy;
      v17 = 2114;
      v18 = audienceCopy;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Setting audience setting for %{public}@ to %{public}@", &v15, 0x16u);
    }

    MEMORY[0x274393FA0](audienceCopy, @"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech");
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_setPallasURL:(id)l forAssetType:(id)type
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  typeCopy = type;
  v8 = [self _getCurrentPallasURLForAssetType:typeCopy];
  v9 = v8;
  v10 = (lCopy | v8) == 0;
  if (v8)
  {
    LODWORD(v8) = [v8 isEqual:lCopy];
  }

  v11 = v8 | v10;
  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = typeCopy;
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
      v16 = typeCopy;
      v17 = 2114;
      v18 = lCopy;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Setting PallasURL for %{public}@ to %{public}@", &v15, 0x16u);
    }

    MEMORY[0x274393FB0](lCopy, @"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech");
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end