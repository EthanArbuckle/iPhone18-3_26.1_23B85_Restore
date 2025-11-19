@interface MADAnalyticsCacheDeleteResults
+ (id)copyWith:(id)a3;
- (MADAnalyticsCacheDeleteResults)init;
- (MADAnalyticsCacheDeleteResults)initWithReclaimV2AssetSpace:(int64_t)a3 reclaimV2AssetCount:(int64_t)a4 reclaimUnlockedUnreferencedAutoAssetSpace:(int64_t)a5 reclaimUnlockedUnreferencedAutoAssetCount:(int64_t)a6 reclaimUnlockedReferencedAutoAssetSpace:(int64_t)a7 reclaimUnlockedReferencedAutoAssetCount:(int64_t)a8 reclaimLockedOverridableAutoAssetSpace:(int64_t)a9 reclaimLockedOverridableAutoAssetCount:(int64_t)a10 reclaimLockedNeverRemoveAutoAssetSpace:(int64_t)a11 reclaimLockedNeverRemoveAutoAssetCount:(int64_t)a12 reclaimStagedAutoAssetSpace:(int64_t)a13 reclaimStagedAutoAssetCount:(int64_t)a14 reclaimMetadataBlockedSpace:(int64_t)a15 reclaimMetadataBlockedCount:(int64_t)a16;
@end

@implementation MADAnalyticsCacheDeleteResults

- (MADAnalyticsCacheDeleteResults)init
{
  v3.receiver = self;
  v3.super_class = MADAnalyticsCacheDeleteResults;
  result = [(MADAnalyticsCacheDeleteResults *)&v3 init];
  if (result)
  {
    *&result->_reclaimMetadataBlockedSpace = 0u;
    *&result->_reclaimStagedAutoAssetSpace = 0u;
    *&result->_reclaimLockedNeverRemoveAutoAssetSpace = 0u;
    *&result->_reclaimLockedOverridableAutoAssetSpace = 0u;
    *&result->_reclaimUnlockedReferencedAutoAssetSpace = 0u;
    *&result->_reclaimUnlockedUnreferencedAutoAssetSpace = 0u;
    *&result->_reclaimV2AssetSpace = 0u;
  }

  return result;
}

- (MADAnalyticsCacheDeleteResults)initWithReclaimV2AssetSpace:(int64_t)a3 reclaimV2AssetCount:(int64_t)a4 reclaimUnlockedUnreferencedAutoAssetSpace:(int64_t)a5 reclaimUnlockedUnreferencedAutoAssetCount:(int64_t)a6 reclaimUnlockedReferencedAutoAssetSpace:(int64_t)a7 reclaimUnlockedReferencedAutoAssetCount:(int64_t)a8 reclaimLockedOverridableAutoAssetSpace:(int64_t)a9 reclaimLockedOverridableAutoAssetCount:(int64_t)a10 reclaimLockedNeverRemoveAutoAssetSpace:(int64_t)a11 reclaimLockedNeverRemoveAutoAssetCount:(int64_t)a12 reclaimStagedAutoAssetSpace:(int64_t)a13 reclaimStagedAutoAssetCount:(int64_t)a14 reclaimMetadataBlockedSpace:(int64_t)a15 reclaimMetadataBlockedCount:(int64_t)a16
{
  v25.receiver = self;
  v25.super_class = MADAnalyticsCacheDeleteResults;
  v22 = [(MADAnalyticsCacheDeleteResults *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(MADAnalyticsCacheDeleteResults *)v22 setReclaimV2AssetSpace:a3];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimV2AssetCount:a4];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimUnlockedUnreferencedAutoAssetSpace:a5];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimUnlockedUnreferencedAutoAssetCount:a6];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimUnlockedReferencedAutoAssetSpace:a7];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimUnlockedReferencedAutoAssetCount:a8];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimLockedOverridableAutoAssetSpace:a9];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimLockedOverridableAutoAssetCount:a10];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimLockedNeverRemoveAutoAssetSpace:a11];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimLockedNeverRemoveAutoAssetCount:a12];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimStagedAutoAssetSpace:a13];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimStagedAutoAssetCount:a14];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimMetadataBlockedSpace:a15];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimMetadataBlockedCount:a16];
  }

  return v23;
}

+ (id)copyWith:(id)a3
{
  v3 = a3;
  v19 = [MADAnalyticsCacheDeleteResults alloc];
  v18 = [v3 reclaimV2AssetSpace];
  v17 = [v3 reclaimV2AssetCount];
  v16 = [v3 reclaimUnlockedUnreferencedAutoAssetSpace];
  v15 = [v3 reclaimUnlockedUnreferencedAutoAssetCount];
  v14 = [v3 reclaimUnlockedReferencedAutoAssetSpace];
  v4 = [v3 reclaimUnlockedReferencedAutoAssetCount];
  v5 = [v3 reclaimLockedOverridableAutoAssetSpace];
  v6 = [v3 reclaimLockedOverridableAutoAssetCount];
  v7 = [v3 reclaimLockedNeverRemoveAutoAssetSpace];
  v8 = [v3 reclaimLockedNeverRemoveAutoAssetCount];
  v9 = [v3 reclaimStagedAutoAssetSpace];
  v10 = [v3 reclaimStagedAutoAssetCount];
  v11 = [v3 reclaimMetadataBlockedSpace];
  v12 = [v3 reclaimMetadataBlockedCount];

  return [(MADAnalyticsCacheDeleteResults *)v19 initWithReclaimV2AssetSpace:v18 reclaimV2AssetCount:v17 reclaimUnlockedUnreferencedAutoAssetSpace:v16 reclaimUnlockedUnreferencedAutoAssetCount:v15 reclaimUnlockedReferencedAutoAssetSpace:v14 reclaimUnlockedReferencedAutoAssetCount:v4 reclaimLockedOverridableAutoAssetSpace:v5 reclaimLockedOverridableAutoAssetCount:v6 reclaimLockedNeverRemoveAutoAssetSpace:v7 reclaimLockedNeverRemoveAutoAssetCount:v8 reclaimStagedAutoAssetSpace:v9 reclaimStagedAutoAssetCount:v10 reclaimMetadataBlockedSpace:v11 reclaimMetadataBlockedCount:v12];
}

@end