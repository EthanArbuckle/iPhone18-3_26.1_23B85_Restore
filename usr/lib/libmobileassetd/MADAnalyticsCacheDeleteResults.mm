@interface MADAnalyticsCacheDeleteResults
+ (id)copyWith:(id)with;
- (MADAnalyticsCacheDeleteResults)init;
- (MADAnalyticsCacheDeleteResults)initWithReclaimV2AssetSpace:(int64_t)space reclaimV2AssetCount:(int64_t)count reclaimUnlockedUnreferencedAutoAssetSpace:(int64_t)assetSpace reclaimUnlockedUnreferencedAutoAssetCount:(int64_t)assetCount reclaimUnlockedReferencedAutoAssetSpace:(int64_t)autoAssetSpace reclaimUnlockedReferencedAutoAssetCount:(int64_t)autoAssetCount reclaimLockedOverridableAutoAssetSpace:(int64_t)overridableAutoAssetSpace reclaimLockedOverridableAutoAssetCount:(int64_t)self0 reclaimLockedNeverRemoveAutoAssetSpace:(int64_t)self1 reclaimLockedNeverRemoveAutoAssetCount:(int64_t)self2 reclaimStagedAutoAssetSpace:(int64_t)self3 reclaimStagedAutoAssetCount:(int64_t)self4 reclaimMetadataBlockedSpace:(int64_t)self5 reclaimMetadataBlockedCount:(int64_t)self6;
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

- (MADAnalyticsCacheDeleteResults)initWithReclaimV2AssetSpace:(int64_t)space reclaimV2AssetCount:(int64_t)count reclaimUnlockedUnreferencedAutoAssetSpace:(int64_t)assetSpace reclaimUnlockedUnreferencedAutoAssetCount:(int64_t)assetCount reclaimUnlockedReferencedAutoAssetSpace:(int64_t)autoAssetSpace reclaimUnlockedReferencedAutoAssetCount:(int64_t)autoAssetCount reclaimLockedOverridableAutoAssetSpace:(int64_t)overridableAutoAssetSpace reclaimLockedOverridableAutoAssetCount:(int64_t)self0 reclaimLockedNeverRemoveAutoAssetSpace:(int64_t)self1 reclaimLockedNeverRemoveAutoAssetCount:(int64_t)self2 reclaimStagedAutoAssetSpace:(int64_t)self3 reclaimStagedAutoAssetCount:(int64_t)self4 reclaimMetadataBlockedSpace:(int64_t)self5 reclaimMetadataBlockedCount:(int64_t)self6
{
  v25.receiver = self;
  v25.super_class = MADAnalyticsCacheDeleteResults;
  v22 = [(MADAnalyticsCacheDeleteResults *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(MADAnalyticsCacheDeleteResults *)v22 setReclaimV2AssetSpace:space];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimV2AssetCount:count];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimUnlockedUnreferencedAutoAssetSpace:assetSpace];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimUnlockedUnreferencedAutoAssetCount:assetCount];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimUnlockedReferencedAutoAssetSpace:autoAssetSpace];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimUnlockedReferencedAutoAssetCount:autoAssetCount];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimLockedOverridableAutoAssetSpace:overridableAutoAssetSpace];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimLockedOverridableAutoAssetCount:overridableAutoAssetCount];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimLockedNeverRemoveAutoAssetSpace:removeAutoAssetSpace];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimLockedNeverRemoveAutoAssetCount:removeAutoAssetCount];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimStagedAutoAssetSpace:stagedAutoAssetSpace];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimStagedAutoAssetCount:stagedAutoAssetCount];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimMetadataBlockedSpace:blockedSpace];
    [(MADAnalyticsCacheDeleteResults *)v23 setReclaimMetadataBlockedCount:blockedCount];
  }

  return v23;
}

+ (id)copyWith:(id)with
{
  withCopy = with;
  v19 = [MADAnalyticsCacheDeleteResults alloc];
  reclaimV2AssetSpace = [withCopy reclaimV2AssetSpace];
  reclaimV2AssetCount = [withCopy reclaimV2AssetCount];
  reclaimUnlockedUnreferencedAutoAssetSpace = [withCopy reclaimUnlockedUnreferencedAutoAssetSpace];
  reclaimUnlockedUnreferencedAutoAssetCount = [withCopy reclaimUnlockedUnreferencedAutoAssetCount];
  reclaimUnlockedReferencedAutoAssetSpace = [withCopy reclaimUnlockedReferencedAutoAssetSpace];
  reclaimUnlockedReferencedAutoAssetCount = [withCopy reclaimUnlockedReferencedAutoAssetCount];
  reclaimLockedOverridableAutoAssetSpace = [withCopy reclaimLockedOverridableAutoAssetSpace];
  reclaimLockedOverridableAutoAssetCount = [withCopy reclaimLockedOverridableAutoAssetCount];
  reclaimLockedNeverRemoveAutoAssetSpace = [withCopy reclaimLockedNeverRemoveAutoAssetSpace];
  reclaimLockedNeverRemoveAutoAssetCount = [withCopy reclaimLockedNeverRemoveAutoAssetCount];
  reclaimStagedAutoAssetSpace = [withCopy reclaimStagedAutoAssetSpace];
  reclaimStagedAutoAssetCount = [withCopy reclaimStagedAutoAssetCount];
  reclaimMetadataBlockedSpace = [withCopy reclaimMetadataBlockedSpace];
  reclaimMetadataBlockedCount = [withCopy reclaimMetadataBlockedCount];

  return [(MADAnalyticsCacheDeleteResults *)v19 initWithReclaimV2AssetSpace:reclaimV2AssetSpace reclaimV2AssetCount:reclaimV2AssetCount reclaimUnlockedUnreferencedAutoAssetSpace:reclaimUnlockedUnreferencedAutoAssetSpace reclaimUnlockedUnreferencedAutoAssetCount:reclaimUnlockedUnreferencedAutoAssetCount reclaimUnlockedReferencedAutoAssetSpace:reclaimUnlockedReferencedAutoAssetSpace reclaimUnlockedReferencedAutoAssetCount:reclaimUnlockedReferencedAutoAssetCount reclaimLockedOverridableAutoAssetSpace:reclaimLockedOverridableAutoAssetSpace reclaimLockedOverridableAutoAssetCount:reclaimLockedOverridableAutoAssetCount reclaimLockedNeverRemoveAutoAssetSpace:reclaimLockedNeverRemoveAutoAssetSpace reclaimLockedNeverRemoveAutoAssetCount:reclaimLockedNeverRemoveAutoAssetCount reclaimStagedAutoAssetSpace:reclaimStagedAutoAssetSpace reclaimStagedAutoAssetCount:reclaimStagedAutoAssetCount reclaimMetadataBlockedSpace:reclaimMetadataBlockedSpace reclaimMetadataBlockedCount:reclaimMetadataBlockedCount];
}

@end