@interface TRIUserCovariates
- (TRIUserCovariates)initWithContext:(id)a3;
- (id)_applicationRecordForBundleId:(id)a3;
- (id)tri_hasApplicationWithBundleId:(id)a3;
- (id)tri_majorVersionForBundleId:(id)a3;
- (id)tri_minorVersionForBundleId:(id)a3;
- (id)tri_patchVersionForBundleId:(id)a3;
- (id)tri_shortVersionStringForBundleId:(id)a3;
- (id)tri_versionForBundleId:(id)a3;
- (id)tri_versionForBundleId:(id)a3 compareToString:(id)a4;
- (id)tri_versionStringForBundleId:(id)a3;
@end

@implementation TRIUserCovariates

- (TRIUserCovariates)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIUserCovariates;
  v6 = [(TRIUserCovariates *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (id)_applicationRecordForBundleId:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v9];
  v5 = v9;
  if (!v4)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2114;
      v13 = v5;
      _os_log_debug_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEBUG, "application not found for bundle id {public}%@ -- %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)tri_hasApplicationWithBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CCABB0];
  v7 = [(TRIUserCovariates *)self _applicationRecordForBundleId:v4];
  v8 = [v6 numberWithInt:v7 != 0];

  objc_autoreleasePoolPop(v5);

  return v8;
}

- (id)tri_shortVersionStringForBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(TRIUserCovariates *)self _applicationRecordForBundleId:v4];
  v7 = [v6 shortVersionString];
  v8 = v7;
  v9 = &stru_287FA0430;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)tri_versionStringForBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(TRIUserCovariates *)self _applicationRecordForBundleId:v4];
  v7 = [v6 exactBundleVersion];
  v8 = v7;
  v9 = &stru_287FA0430;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)tri_versionForBundleId:(id)a3
{
  v3 = [(TRIUserCovariates *)self tri_shortVersionStringForBundleId:a3];
  v4 = [MEMORY[0x277D73800] parseVersionFromString:v3 withPrefix:0];

  return v4;
}

- (id)tri_majorVersionForBundleId:(id)a3
{
  v3 = [(TRIUserCovariates *)self tri_versionForBundleId:a3];
  v4 = [v3 majorVersion];

  return v4;
}

- (id)tri_minorVersionForBundleId:(id)a3
{
  v3 = [(TRIUserCovariates *)self tri_versionForBundleId:a3];
  v4 = [v3 minorVersion];

  return v4;
}

- (id)tri_patchVersionForBundleId:(id)a3
{
  v3 = [(TRIUserCovariates *)self tri_versionForBundleId:a3];
  v4 = [v3 patchVersion];

  return v4;
}

- (id)tri_versionForBundleId:(id)a3 compareToString:(id)a4
{
  v6 = a4;
  v7 = [(TRIUserCovariates *)self tri_versionForBundleId:a3];
  v8 = [MEMORY[0x277D73800] parseVersionFromString:v6 withPrefix:0];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "compare:", v8)}];

  return v9;
}

@end