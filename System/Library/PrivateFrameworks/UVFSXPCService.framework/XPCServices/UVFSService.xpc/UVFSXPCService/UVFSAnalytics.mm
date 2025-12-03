@interface UVFSAnalytics
+ (unsigned)getPartitionsParent:(unsigned int)parent;
- (UVFSAnalytics)init;
- (void)discoverDiskProperties:(unsigned int)properties;
- (void)discoverTopology:(id)topology;
- (void)logTopology;
- (void)sendEvent;
@end

@implementation UVFSAnalytics

- (UVFSAnalytics)init
{
  v7.receiver = self;
  v7.super_class = UVFSAnalytics;
  v2 = [(UVFSAnalytics *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(UVFSDiskAnalytics);
    [(UVFSAnalytics *)v2 setDisk:v3];

    v4 = objc_alloc_init(UVFSVolumeAnalytics);
    [(UVFSAnalytics *)v2 setVolume:v4];

    v5 = +[NSMutableArray array];
    [(UVFSAnalytics *)v2 setPartitions:v5];
  }

  return v2;
}

- (void)logTopology
{
  volume = [(UVFSAnalytics *)self volume];
  volumeLoadStatus = [volume volumeLoadStatus];
  if (volumeLoadStatus > 3)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1000386B0[volumeLoadStatus];
  }

  v34 = v5;

  volume2 = [(UVFSAnalytics *)self volume];
  fsTypeName = [volume2 fsTypeName];
  volume3 = [(UVFSAnalytics *)self volume];
  volumeCount = [volume3 volumeCount];
  volume4 = [(UVFSAnalytics *)self volume];
  volumeLoadErrorReason = [volume4 volumeLoadErrorReason];
  disk = [(UVFSAnalytics *)self disk];
  diskType = [disk diskType];
  disk2 = [(UVFSAnalytics *)self disk];
  diskSize = [disk2 diskSize];
  disk3 = [(UVFSAnalytics *)self disk];
  diskBlockSize = [disk3 diskBlockSize];
  disk4 = [(UVFSAnalytics *)self disk];
  partitionTableType = [disk4 partitionTableType];
  partitions = [(UVFSAnalytics *)self partitions];
  v35 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Volume analytics of %@:\n  Count: %d\n  LoadStatus: %@\n  LoadErrorReason: %@\n  Disk analytics:\n    Type: %@\n    Size: %lu\n    BlockSize: %lu\n    Partition Table Type: %@\n    Partitions (%lu):\n", fsTypeName, volumeCount, v34, volumeLoadErrorReason, diskType, diskSize, diskBlockSize, partitionTableType, [partitions count]);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  partitions2 = [(UVFSAnalytics *)self partitions];
  v16 = [partitions2 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    v19 = &stru_100038E98;
    do
    {
      v20 = 0;
      v21 = v19;
      do
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(partitions2);
        }

        v22 = *(*(&v36 + 1) + 8 * v20);
        v23 = [(__CFString *)v21 length];
        getLogPartition = [v22 getLogPartition];
        v25 = getLogPartition;
        if (v23)
        {
          [NSString stringWithFormat:@"%@\n%@", v21, getLogPartition];
        }

        else
        {
          [NSString stringWithFormat:@"%@", getLogPartition, v27];
        }
        v19 = ;

        v20 = v20 + 1;
        v21 = v19;
      }

      while (v17 != v20);
      v17 = [partitions2 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v17);
  }

  else
  {
    v19 = &stru_100038E98;
  }

  v26 = [NSString stringWithFormat:@"%@%@", v35, v19];

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E740();
  }
}

- (void)sendEvent
{
  v3 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v58 = "[UVFSAnalytics sendEvent]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:start", buf, 0xCu);
  }

  v4 = [[NSMutableDictionary alloc] initWithCapacity:10];
  volume = [(UVFSAnalytics *)self volume];
  fsTypeName = [volume fsTypeName];
  [v4 setValue:fsTypeName forKey:@"FSTypeName"];

  volume2 = [(UVFSAnalytics *)self volume];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [volume2 volumeCount]);
  [v4 setValue:v8 forKey:@"VolumeCount"];

  volume3 = [(UVFSAnalytics *)self volume];
  volumeLoadStatus = [volume3 volumeLoadStatus];
  if (volumeLoadStatus > 3)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1000386B0[volumeLoadStatus];
  }

  [v4 setValue:v11 forKey:@"LoadStatus"];
  volume4 = [(UVFSAnalytics *)self volume];
  volumeLoadErrorReason = [volume4 volumeLoadErrorReason];
  [v4 setValue:volumeLoadErrorReason forKey:@"LoadErrorReason"];

  disk = [(UVFSAnalytics *)self disk];
  diskType = [disk diskType];
  [v4 setValue:diskType forKey:@"DiskType"];

  disk2 = [(UVFSAnalytics *)self disk];
  partitionTableType = [disk2 partitionTableType];
  [v4 setValue:partitionTableType forKey:@"PartitionTableType"];

  disk3 = [(UVFSAnalytics *)self disk];
  diskSize = [disk3 diskSize];

  if (diskSize)
  {
    disk4 = [(UVFSAnalytics *)self disk];
    v21 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [disk4 diskSize]);
    [v4 setValue:v21 forKey:@"DiskSize"];
  }

  disk5 = [(UVFSAnalytics *)self disk];
  diskBlockSize = [disk5 diskBlockSize];

  if (diskBlockSize)
  {
    disk6 = [(UVFSAnalytics *)self disk];
    v25 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [disk6 diskBlockSize]);
    [v4 setValue:v25 forKey:@"BlockSize"];
  }

  v50 = v4;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [(UVFSAnalytics *)self partitions];
  v26 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = &stru_100038E98;
    v29 = *v53;
    v30 = &stru_100038E98;
    do
    {
      v31 = 0;
      v32 = v28;
      v33 = v30;
      do
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v52 + 1) + 8 * v31);
        v35 = [(__CFString *)v33 length];
        partitionType = [v34 partitionType];
        v37 = partitionType;
        if (v35)
        {
          [NSString stringWithFormat:@"%@, %@", v33, partitionType];
        }

        else
        {
          [NSString stringWithFormat:@"%@", partitionType, v49];
        }
        v30 = ;

        v38 = [(__CFString *)v32 length];
        partitionSize = [v34 partitionSize];
        if (v38)
        {
          v49 = partitionSize;
          [NSString stringWithFormat:@"%@, %lu", v32];
        }

        else
        {
          [NSString stringWithFormat:@"%lu", partitionSize];
        }
        v28 = ;

        v31 = v31 + 1;
        v32 = v28;
        v33 = v30;
      }

      while (v27 != v31);
      v27 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v27);
  }

  else
  {
    v28 = &stru_100038E98;
    v30 = &stru_100038E98;
  }

  if ([(__CFString *)v30 length])
  {
    [v50 setValue:v30 forKey:@"Partitions"];
  }

  if ([(__CFString *)v28 length])
  {
    [v50 setValue:v28 forKey:@"PartitionSizes"];
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E7B4();
  }

  v40 = v50;
  AnalyticsSendEventLazy();
  v41 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E828(v41, v42, v43, v44, v45, v46, v47, v48);
  }
}

+ (unsigned)getPartitionsParent:(unsigned int)parent
{
  v4 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E8A0(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  parent = 0;
  v12 = 0;
  if (!IORegistryEntryGetParentEntry(parent, "IOService", &parent))
  {
    do
    {
      theDict = 0;
      ParentEntry = IORegistryEntryCreateCFProperties(parent, &theDict, 0, 0);
      Value = CFDictionaryGetValue(theDict, @"Content Mask");
      v12 = Value != 0;
      if (!Value)
      {
        parentCopy = parent;
        ParentEntry = IORegistryEntryGetParentEntry(parent, "IOService", &parent);
        if (parentCopy)
        {
          IOObjectRelease(parentCopy);
        }
      }

      CFRelease(theDict);
      if (ParentEntry)
      {
        v16 = 0;
      }

      else
      {
        v16 = Value == 0;
      }
    }

    while (v16);
  }

  v17 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E918(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  if (v12)
  {
    return parent;
  }

  else
  {
    return 0;
  }
}

- (void)discoverTopology:(id)topology
{
  topologyCopy = topology;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E990();
  }

  existing = 0;
  v5 = IOBSDNameMatching(kIOMainPortDefault, 0, [topologyCopy UTF8String]);
  if (IOServiceGetMatchingServices(kIOMainPortDefault, v5, &existing))
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001EA04();
    }
  }

  else if (existing)
  {
    v6 = IOIteratorNext(existing);
    if (v6)
    {
      v7 = v6;
      [(UVFSAnalytics *)self discoverPartitions:v6];
      [(UVFSAnalytics *)self discoverDiskProperties:v7];
      IOObjectRelease(v7);
    }

    else if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001EA78();
    }

    IOObjectRelease(existing);
  }

  else if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001EAEC();
  }

  v8 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EB60(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

- (void)discoverDiskProperties:(unsigned int)properties
{
  v5 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EEFC(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  parent = 0;
  if (IORegistryEntryGetParentEntry(properties, "IOService", &parent))
  {
    v13 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001EF74(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    v21 = IORegistryEntrySearchCFProperty(parent, "IOService", @"Size", kCFAllocatorDefault, 3u);
    if (v21)
    {
      v22 = v21;
      v83 = 0;
      CFNumberGetValue(v21, kCFNumberLongLongType, &v83);
      disk = [(UVFSAnalytics *)self disk];
      [disk setDiskSize:v83];

      CFRelease(v22);
    }

    else
    {
      v24 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001EFEC(v24, v25, v26, v27, v28, v29, v30, v31);
      }
    }

    v32 = IORegistryEntrySearchCFProperty(parent, "IOService", @"Preferred Block Size", kCFAllocatorDefault, 3u);
    if (v32)
    {
      v33 = v32;
      v83 = 0;
      CFNumberGetValue(v32, kCFNumberLongLongType, &v83);
      disk2 = [(UVFSAnalytics *)self disk];
      [disk2 setDiskBlockSize:v83];

      CFRelease(v33);
    }

    else
    {
      v35 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001F064(v35, v36, v37, v38, v39, v40, v41, v42);
      }
    }

    v43 = IORegistryEntrySearchCFProperty(parent, "IOService", @"Protocol Characteristics", kCFAllocatorDefault, 3u);
    if (v43)
    {
      v44 = v43;
      Value = CFDictionaryGetValue(v43, @"Physical Interconnect");
      if (Value)
      {
        v46 = Value;
        disk3 = [(UVFSAnalytics *)self disk];
        [disk3 setDiskType:v46];
      }

      else
      {
        v56 = userfs_log_default;
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10001F0DC(v56, v57, v58, v59, v60, v61, v62, v63);
        }
      }

      CFRelease(v44);
    }

    else
    {
      v48 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001F154(v48, v49, v50, v51, v52, v53, v54, v55);
      }
    }

    v64 = IORegistryEntrySearchCFProperty(parent, "IOService", @"Content Mask", kCFAllocatorDefault, 3u);
    if (v64)
    {
      v65 = v64;
      disk4 = [(UVFSAnalytics *)self disk];
      [disk4 setPartitionTableType:v65];

      CFRelease(v65);
    }

    else
    {
      v67 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001F1CC(v67, v68, v69, v70, v71, v72, v73, v74);
      }
    }

    if (parent)
    {
      IOObjectRelease(parent);
    }
  }

  v75 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F244(v75, v76, v77, v78, v79, v80, v81, v82);
  }
}

@end