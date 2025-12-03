@interface SKDiskImageSizeLimits
+ (BOOL)isSupportedWholeDisk:(id)disk;
- (unint64_t)physicalStoreMinimumSizeFromStore:(id)store;
@end

@implementation SKDiskImageSizeLimits

+ (BOOL)isSupportedWholeDisk:(id)disk
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[0] = kSKDiskTypeGPTWholeDisk[0];
  v8[1] = kSKDiskTypeMBRWholeDisk[0];
  v8[2] = kSKDiskTypeAPMWholeDisk[0];
  v8[3] = kSKDiskTypeUninitalized[0];
  v3 = MEMORY[0x277CBEA60];
  diskCopy = disk;
  v5 = [v3 arrayWithObjects:v8 count:4];
  LOBYTE(v3) = [v5 containsObject:diskCopy];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (unint64_t)physicalStoreMinimumSizeFromStore:(id)store
{
  v18 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  container = [storeCopy container];
  v5 = container;
  if (container)
  {
    diskIdentifier = [container diskIdentifier];
    [diskIdentifier UTF8String];
    MinimalSize = APFSContainerGetMinimalSize();

    if (!MinimalSize)
    {
      totalSpace = 0;
      goto LABEL_8;
    }

    v8 = SKGetOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "[SKDiskImageSizeLimits physicalStoreMinimumSizeFromStore:]";
      v14 = 2112;
      v15 = storeCopy;
      v16 = 1024;
      v17 = MinimalSize;
      _os_log_impl(&dword_26BBB8000, v8, OS_LOG_TYPE_ERROR, "%s: Failed to get size from %@, %d", buf, 0x1Cu);
    }
  }

  totalSpace = [storeCopy totalSpace];
LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
  return totalSpace;
}

@end