@interface SKLastPartitions
+ (unint64_t)hfsMinimalSizeForDisk:(id)disk currentSize:(unint64_t *)size;
+ (unint64_t)secondaryPartitionTableSizeWithDiskType:(id)type;
- (SKLastPartitions)initWithDisk:(id)disk;
@end

@implementation SKLastPartitions

- (SKLastPartitions)initWithDisk:(id)disk
{
  diskCopy = disk;
  v26.receiver = self;
  v26.super_class = SKLastPartitions;
  v5 = [(SKLastPartitions *)&v26 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  children = [diskCopy children];
  v7 = children;
  if (children && [children count])
  {
    lastObject = [v7 lastObject];
    objc_storeStrong(&v5->_resizablePart, lastObject);
    if ([v7 count] >= 2)
    {
      ioContent = [lastObject ioContent];
      v10 = [ioContent isEqualToString:@"Apple_APFS_Recovery"];

      if (v10)
      {
        v11 = lastObject;
        recoveryPart = v5->_recoveryPart;
        v5->_recoveryPart = v11;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_19;
        }

        container = [lastObject container];
        recoveryPart = container;
        if (container)
        {
          volumes = [(SKDisk *)container volumes];
          if ([volumes count] == 1)
          {
            v21 = [volumes objectAtIndexedSubscript:0];
            getAPFSVolumeRole = [v21 getAPFSVolumeRole];
            v23 = [getAPFSVolumeRole isEqualToString:SKAPFSVolumeRoleRecovery];

            if (v23)
            {
              objc_storeStrong(&v5->_recoveryPart, lastObject);
            }
          }
        }
      }

LABEL_19:
      if (v5->_recoveryPart)
      {
        v24 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 2}];
        resizablePart = v5->_resizablePart;
        v5->_resizablePart = v24;
      }
    }
  }

  else
  {
    v13 = diskCopy;
    lastObject = v5->_resizablePart;
    v5->_resizablePart = v13;
  }

  startLocation = [(SKDisk *)v5->_resizablePart startLocation];
  v15 = objc_opt_class();
  type = [diskCopy type];
  v5->_nonResizableSize = [v15 secondaryPartitionTableSizeWithDiskType:type] + startLocation;

  v17 = v5->_recoveryPart;
  if (v17)
  {
    v5->_nonResizableSize += [(SKDisk *)v17 unformattedSize];
  }

LABEL_11:
  return v5;
}

+ (unint64_t)secondaryPartitionTableSizeWithDiskType:(id)type
{
  if ([type isEqualToString:kSKDiskTypeGPTWholeDisk[0]])
  {
    return 20480;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)hfsMinimalSizeForDisk:(id)disk currentSize:(unint64_t *)size
{
  v28 = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  type = [diskCopy type];
  v7 = [type isEqualToString:kSKDiskTypeHFS[0]];

  if (v7)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0;
    v8 = [SKPartitionTable createMediaRefWithDisk:diskCopy error:&v19];
    v9 = v19;
    if (v8)
    {
      v10 = MKHFSGetResizeLimits();
      CFRelease(v8);
      if (!v10)
      {
        getSectorSize = [diskCopy getSectorSize];
        if (size)
        {
          *size = v20 * getSectorSize;
        }

        totalSpace = v21 * getSectorSize;
        goto LABEL_14;
      }

      v11 = SKGetOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v23 = "+[SKLastPartitions hfsMinimalSizeForDisk:currentSize:]";
        v24 = 2112;
        v25 = diskCopy;
        v26 = 1024;
        LODWORD(v27) = v10;
        v12 = "%s: Failed to get size from %@, %d";
        v13 = v11;
        v14 = 28;
LABEL_9:
        _os_log_impl(&dword_26BBB8000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      }
    }

    else
    {
      v11 = SKGetOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v23 = "+[SKLastPartitions hfsMinimalSizeForDisk:currentSize:]";
        v24 = 2112;
        v25 = diskCopy;
        v26 = 2112;
        v27 = v9;
        v12 = "%s: Failed to read media from %@, %@";
        v13 = v11;
        v14 = 32;
        goto LABEL_9;
      }
    }

    totalSpace = [diskCopy totalSpace];
LABEL_14:

    goto LABEL_15;
  }

  totalSpace = [diskCopy totalSpace];
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return totalSpace;
}

@end