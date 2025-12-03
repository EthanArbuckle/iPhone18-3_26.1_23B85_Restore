@interface PLCloudStorageInfo
+ (id)storageInfoWithTotal:(int64_t)total available:(int64_t)available used:(int64_t)used cameraRollBackupBytes:(int64_t)bytes iCloudPhotosSize:(int64_t)size hasMaxQuotaTier:(BOOL)tier;
- (PLCloudStorageInfo)initWithTotalQuotaBytes:(int64_t)bytes totalAvailableBytes:(int64_t)availableBytes totalUsedBytes:(int64_t)usedBytes cameraRollBackupBytes:(int64_t)backupBytes iCloudPhotosSize:(int64_t)size hasMaxQuotaTier:(BOOL)tier;
@end

@implementation PLCloudStorageInfo

- (PLCloudStorageInfo)initWithTotalQuotaBytes:(int64_t)bytes totalAvailableBytes:(int64_t)availableBytes totalUsedBytes:(int64_t)usedBytes cameraRollBackupBytes:(int64_t)backupBytes iCloudPhotosSize:(int64_t)size hasMaxQuotaTier:(BOOL)tier
{
  v15.receiver = self;
  v15.super_class = PLCloudStorageInfo;
  result = [(PLCloudStorageInfo *)&v15 init];
  if (result)
  {
    result->_totalBytes = bytes;
    result->_availableBytes = availableBytes;
    result->_usedBytes = usedBytes;
    result->_cameraRollBackupBytes = backupBytes;
    result->_iCloudPhotosBytes = size;
    result->_hasMaxQuotaTier = tier;
  }

  return result;
}

+ (id)storageInfoWithTotal:(int64_t)total available:(int64_t)available used:(int64_t)used cameraRollBackupBytes:(int64_t)bytes iCloudPhotosSize:(int64_t)size hasMaxQuotaTier:(BOOL)tier
{
  v8 = [[PLCloudStorageInfo alloc] initWithTotalQuotaBytes:total totalAvailableBytes:available totalUsedBytes:used cameraRollBackupBytes:bytes iCloudPhotosSize:size hasMaxQuotaTier:tier];

  return v8;
}

@end