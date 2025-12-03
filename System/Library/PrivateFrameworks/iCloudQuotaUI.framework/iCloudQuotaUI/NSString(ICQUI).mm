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
  lastPathComponent = [self lastPathComponent];
  v2 = [lastPathComponent isEqualToString:@"PHOTOS"];

  return v2;
}

- (uint64_t)icqui_isCurrentDeviceBackupPath
{
  lastPathComponent = [self lastPathComponent];
  v2 = [lastPathComponent isEqualToString:@"CURRENT_DEVICE_BACKUP"];

  return v2;
}

- (uint64_t)icqui_isLocalDeviceBackupPath
{
  lastPathComponent = [self lastPathComponent];
  v2 = [lastPathComponent isEqualToString:@"LOCAL_BACKUP"];

  return v2;
}

- (uint64_t)icqui_isReviewLargeFilesPath
{
  lastPathComponent = [self lastPathComponent];
  v2 = [lastPathComponent isEqualToString:@"REVIEW_LARGE_FILES"];

  return v2;
}

- (uint64_t)icqui_isCFUSkipPath
{
  lastPathComponent = [self lastPathComponent];
  v2 = [lastPathComponent isEqualToString:*MEMORY[0x277D7F278]];

  return v2;
}

@end