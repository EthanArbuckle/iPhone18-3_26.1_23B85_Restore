@interface PLCloudStorageInfo
+ (id)storageInfoWithTotal:(int64_t)a3 available:(int64_t)a4 used:(int64_t)a5 cameraRollBackupBytes:(int64_t)a6 iCloudPhotosSize:(int64_t)a7 hasMaxQuotaTier:(BOOL)a8;
- (PLCloudStorageInfo)initWithTotalQuotaBytes:(int64_t)a3 totalAvailableBytes:(int64_t)a4 totalUsedBytes:(int64_t)a5 cameraRollBackupBytes:(int64_t)a6 iCloudPhotosSize:(int64_t)a7 hasMaxQuotaTier:(BOOL)a8;
@end

@implementation PLCloudStorageInfo

- (PLCloudStorageInfo)initWithTotalQuotaBytes:(int64_t)a3 totalAvailableBytes:(int64_t)a4 totalUsedBytes:(int64_t)a5 cameraRollBackupBytes:(int64_t)a6 iCloudPhotosSize:(int64_t)a7 hasMaxQuotaTier:(BOOL)a8
{
  v15.receiver = self;
  v15.super_class = PLCloudStorageInfo;
  result = [(PLCloudStorageInfo *)&v15 init];
  if (result)
  {
    result->_totalBytes = a3;
    result->_availableBytes = a4;
    result->_usedBytes = a5;
    result->_cameraRollBackupBytes = a6;
    result->_iCloudPhotosBytes = a7;
    result->_hasMaxQuotaTier = a8;
  }

  return result;
}

+ (id)storageInfoWithTotal:(int64_t)a3 available:(int64_t)a4 used:(int64_t)a5 cameraRollBackupBytes:(int64_t)a6 iCloudPhotosSize:(int64_t)a7 hasMaxQuotaTier:(BOOL)a8
{
  v8 = [[PLCloudStorageInfo alloc] initWithTotalQuotaBytes:a3 totalAvailableBytes:a4 totalUsedBytes:a5 cameraRollBackupBytes:a6 iCloudPhotosSize:a7 hasMaxQuotaTier:a8];

  return v8;
}

@end