@interface NSString(ICQUI)
- (uint64_t)icqui_isCFUSkipPath;
- (uint64_t)icqui_isCurrentDeviceBackupPath;
- (uint64_t)icqui_isLocalDeviceBackupPath;
- (uint64_t)icqui_isPhotosPath;
- (uint64_t)icqui_isReviewLargeFilesPath;
@end

@implementation NSString(ICQUI)

- (uint64_t)icqui_isPhotosPath
{
  v1 = [a1 lastPathComponent];
  v2 = [v1 isEqualToString:@"PHOTOS"];

  return v2;
}

- (uint64_t)icqui_isCurrentDeviceBackupPath
{
  v1 = [a1 lastPathComponent];
  v2 = [v1 isEqualToString:@"CURRENT_DEVICE_BACKUP"];

  return v2;
}

- (uint64_t)icqui_isLocalDeviceBackupPath
{
  v1 = [a1 lastPathComponent];
  v2 = [v1 isEqualToString:@"LOCAL_BACKUP"];

  return v2;
}

- (uint64_t)icqui_isReviewLargeFilesPath
{
  v1 = [a1 lastPathComponent];
  v2 = [v1 isEqualToString:@"REVIEW_LARGE_FILES"];

  return v2;
}

- (uint64_t)icqui_isCFUSkipPath
{
  v1 = [a1 lastPathComponent];
  v2 = [v1 isEqualToString:*MEMORY[0x277D7F278]];

  return v2;
}

@end