@interface SKDisk
- (BOOL)canBoot;
- (BOOL)canResize;
- (BOOL)cleanupWithError:(id *)a3;
- (BOOL)ejectWithCompletionBlock:(id)a3;
- (BOOL)ejectWithError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExternal;
- (BOOL)isIOMediaDisk;
- (BOOL)isLiveFSAPFSDisk;
- (BOOL)isTrusted;
- (BOOL)matchesDictionary:(id)a3;
- (BOOL)mountWithOptions:(id)a3 withCompletionBlock:(id)a4;
- (BOOL)mountWithOptionsDictionary:(id)a3 error:(id *)a4;
- (BOOL)mountWithOptionsDictionary:(id)a3 withCompletionBlock:(id)a4;
- (BOOL)mountWithParams:(id)a3 error:(id *)a4;
- (BOOL)rename:(id)a3 withCompletionBlock:(id)a4;
- (BOOL)unmountWithCompletionBlock:(id)a3;
- (BOOL)unmountWithOptions:(id)a3 completionBlock:(id)a4;
- (BOOL)unmountWithOptions:(id)a3 error:(id *)a4;
- (BOOL)wipeDiskWithError:(id *)a3;
- (SKDisk)initWithDictionary:(id)a3;
- (id)cachedWholeDiskByIdentifier;
- (id)children;
- (id)description;
- (id)dictionaryRepresentation;
- (id)diskAndDescendants;
- (id)formattableFilesystemWithFilesystem:(id)a3;
- (id)formattableFilesystems;
- (id)innerDescriptionWithPrivateData:(BOOL)a3;
- (id)minimalDictionaryRepresentation;
- (id)redactedDescription;
- (id)resizeToSize:(unint64_t)a3 completionBlock:(id)a4;
- (id)supportedFilesystems;
- (id)wholeDiskIdentifier;
- (unint64_t)hash;
- (unsigned)getSectorSize;
- (void)expireCache;
- (void)expireCacheWithCompletionBlock:(id)a3;
- (void)expireCacheWithOptions:(unint64_t)a3 completionBlock:(id)a4;
- (void)recacheWithOptions:(unint64_t)a3;
- (void)resize:(unint64_t)a3 completion:(id)a4;
- (void)updateWithDictionary:(id)a3;
@end

@implementation SKDisk

- (id)minimalDictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setObject:v5 forKey:@"**ClassName**"];

  v6 = [(SKDisk *)v2 diskObjectID];
  [v3 setObject:v6 forKey:@"diskObjectID"];

  v7 = [(SKDisk *)v2 role];
  [v3 setObject:v7 forKey:@"role"];

  v8 = [(SKDisk *)v2 type];
  [v3 setObject:v8 forKey:@"type"];

  v9 = [(SKDisk *)v2 filesystemType];

  if (v9)
  {
    v10 = [(SKDisk *)v2 filesystemType];
    [v3 setObject:v10 forKey:@"filesystemType"];
  }

  else
  {
    [v3 setObject:kSKDiskFileSystemUndefined[0] forKey:@"filesystemType"];
  }

  v11 = [(SKDisk *)v2 diskIdentifier];

  if (v11)
  {
    v12 = [(SKDisk *)v2 diskIdentifier];
    [v3 setObject:v12 forKey:@"diskIdentifier"];
  }

  v13 = [(SKDisk *)v2 mediaUUID];

  if (v13)
  {
    v14 = [(SKDisk *)v2 mediaUUID];
    [v3 setObject:v14 forKey:@"mediaUUID"];
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)dictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SKDisk *)v2 minimalDictionaryRepresentation];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isValid](v2, "isValid")}];
  [v3 setObject:v4 forKey:@"isValid"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isDiskImage](v2, "isDiskImage")}];
  [v3 setObject:v5 forKey:@"isDiskImage"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isInternal](v2, "isInternal")}];
  [v3 setObject:v6 forKey:@"isInternal"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isWholeDisk](v2, "isWholeDisk")}];
  [v3 setObject:v7 forKey:@"isWholeDisk"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isPhysicalDisk](v2, "isPhysicalDisk")}];
  [v3 setObject:v8 forKey:@"isPhysicalDisk"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk canPartitionDisk](v2, "canPartitionDisk")}];
  [v3 setObject:v9 forKey:@"canPartitionDisk"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isCaseSensitive](v2, "isCaseSensitive")}];
  [v3 setObject:v10 forKey:@"isCaseSensitive"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isLocked](v2, "isLocked")}];
  [v3 setObject:v11 forKey:@"isLocked"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isOSInternal](v2, "isOSInternal")}];
  [v3 setObject:v12 forKey:@"isOSInternal"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isPartitionDisk](v2, "isPartitionDisk")}];
  [v3 setObject:v13 forKey:@"isPartitionDisk"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk freeSpace](v2, "freeSpace")}];
  [v3 setObject:v14 forKey:@"freeSpace"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk purgeableSpace](v2, "purgeableSpace")}];
  [v3 setObject:v15 forKey:@"purgeableSpace"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk availableSpace](v2, "availableSpace")}];
  [v3 setObject:v16 forKey:@"availableSpace"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk totalSpace](v2, "totalSpace")}];
  [v3 setObject:v17 forKey:@"totalSpace"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk startLocation](v2, "startLocation")}];
  [v3 setObject:v18 forKey:@"startLocation"];

  v19 = [(SKDisk *)v2 mountPoint];
  if (v19)
  {
    [(SKDisk *)v2 mountPoint];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v20 = ;
  [v3 setObject:v20 forKey:@"mountPoint"];

  v21 = [(SKDisk *)v2 volumeName];
  if (v21)
  {
    [(SKDisk *)v2 volumeName];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v22 = ;
  [v3 setObject:v22 forKey:@"volumeName"];

  v23 = [(SKDisk *)v2 volumeUUID];
  if (v23)
  {
    [(SKDisk *)v2 volumeUUID];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v24 = ;
  [v3 setObject:v24 forKey:@"volumeUUID"];

  v25 = [(SKDisk *)v2 ioContent];
  if (v25)
  {
    [(SKDisk *)v2 ioContent];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v26 = ;
  [v3 setObject:v26 forKey:@"ioContent"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk unformattedSize](v2, "unformattedSize")}];
  [v3 setObject:v27 forKey:@"unformattedSize"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk supportsRepair](v2, "supportsRepair")}];
  [v3 setObject:v28 forKey:@"supportsRepair"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk supportsVerify](v2, "supportsVerify")}];
  [v3 setObject:v29 forKey:@"supportsVerify"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk childCount](v2, "childCount")}];
  [v3 setObject:v30 forKey:@"childCount"];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk supportsJournaling](v2, "supportsJournaling")}];
  [v3 setObject:v31 forKey:@"supportsJournaling"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isJournaled](v2, "isJournaled")}];
  [v3 setObject:v32 forKey:@"isJournaled"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isWritable](v2, "isWritable")}];
  [v3 setObject:v33 forKey:@"isWritable"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isMediaWritable](v2, "isMediaWritable")}];
  [v3 setObject:v34 forKey:@"isMediaWritable"];

  v35 = [(SKDisk *)v2 filesystem];

  if (v35)
  {
    v36 = [(SKDisk *)v2 filesystem];
    v37 = [v36 dictionaryRepresentation];
    [v3 setObject:v37 forKey:@"filesystem"];
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)matchesDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 objectForKey:@"**ClassName**"];
  if ([v6 isEqualToString:v7])
  {
    v8 = [(SKDisk *)self diskIdentifier];
    v9 = [v4 objectForKey:@"diskIdentifier"];
    v10 = [v8 isEqualToString:v9];

    if (!v10)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v11 = [(SKDisk *)self mediaUUID];

    if (!v11)
    {
      v12 = 1;
      goto LABEL_9;
    }

    v6 = [(SKDisk *)self mediaUUID];
    v7 = [v4 objectForKeyedSubscript:@"mediaUUID"];
    v12 = [v6 isEqual:v7];
  }

  else
  {
    v12 = 0;
  }

LABEL_9:
  return v12;
}

- (SKDisk)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(SKDisk *)self init];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_sync_enter(v7);
    [(SKDisk *)v7 updateWithDictionary:v4];
    objc_sync_exit(v7);
  }

  return v6;
}

- (void)updateWithDictionary:(id)a3
{
  v98 = *MEMORY[0x277D85DE8];
  v96 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v96 objectForKey:@"**ClassName**"];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v96 objectForKey:@"**ClassName**"];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v92 = SKGetOSLog();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v93 = objc_opt_class();
        v94 = NSStringFromClass(v93);
        v95 = [v96 objectForKey:@"**ClassName**"];
        [(SKDisk *)v94 updateWithDictionary:v95, buf, v92];
      }

      __assert_rtn("[SKDisk updateWithDictionary:]", "SKDisk.m", 211, "NO");
    }
  }

  v10 = [v96 objectForKeyedSubscript:@"diskObjectID"];
  [(SKDisk *)v4 setDiskObjectID:v10];

  v11 = [v96 objectForKey:@"role"];

  if (v11)
  {
    v12 = [v96 objectForKey:@"role"];
    [(SKDisk *)v4 setRole:v12];
  }

  v13 = [v96 objectForKey:@"filesystemType"];

  if (v13)
  {
    v14 = [v96 objectForKey:@"filesystemType"];
    [(SKDisk *)v4 setFilesystemType:v14];
  }

  v15 = [v96 objectForKey:@"type"];

  if (v15)
  {
    v16 = [v96 objectForKey:@"type"];
    [(SKDisk *)v4 setType:v16];
  }

  v17 = [v96 objectForKey:@"isValid"];

  if (v17)
  {
    v18 = [v96 objectForKey:@"isValid"];
    -[SKDisk setIsValid:](v4, "setIsValid:", [v18 BOOLValue]);
  }

  v19 = [v96 objectForKey:@"isDiskImage"];

  if (v19)
  {
    v20 = [v96 objectForKey:@"isDiskImage"];
    -[SKDisk setIsDiskImage:](v4, "setIsDiskImage:", [v20 BOOLValue]);
  }

  v21 = [v96 objectForKey:@"isInternal"];

  if (v21)
  {
    v22 = [v96 objectForKey:@"isInternal"];
    -[SKDisk setIsInternal:](v4, "setIsInternal:", [v22 BOOLValue]);
  }

  v23 = [v96 objectForKey:@"isWholeDisk"];

  if (v23)
  {
    v24 = [v96 objectForKey:@"isWholeDisk"];
    -[SKDisk setIsWholeDisk:](v4, "setIsWholeDisk:", [v24 BOOLValue]);
  }

  v25 = [v96 objectForKey:@"isPhysicalDisk"];

  if (v25)
  {
    v26 = [v96 objectForKey:@"isPhysicalDisk"];
    -[SKDisk setIsPhysicalDisk:](v4, "setIsPhysicalDisk:", [v26 BOOLValue]);
  }

  v27 = [v96 objectForKey:@"canPartitionDisk"];

  if (v27)
  {
    v28 = [v96 objectForKey:@"canPartitionDisk"];
    -[SKDisk setCanPartitionDisk:](v4, "setCanPartitionDisk:", [v28 BOOLValue]);
  }

  v29 = [v96 objectForKey:@"isPartitionDisk"];

  if (v29)
  {
    v30 = [v96 objectForKey:@"isPartitionDisk"];
    -[SKDisk setIsPartitionDisk:](v4, "setIsPartitionDisk:", [v30 BOOLValue]);
  }

  v31 = [v96 objectForKey:@"supportsJournaling"];

  if (v31)
  {
    v32 = [v96 objectForKey:@"supportsJournaling"];
    -[SKDisk setSupportsJournaling:](v4, "setSupportsJournaling:", [v32 BOOLValue]);
  }

  v33 = [v96 objectForKey:@"isJournaled"];

  if (v33)
  {
    v34 = [v96 objectForKey:@"isJournaled"];
    -[SKDisk setIsJournaled:](v4, "setIsJournaled:", [v34 BOOLValue]);
  }

  v35 = [v96 objectForKey:@"isCaseSensitive"];

  if (v35)
  {
    v36 = [v96 objectForKey:@"isCaseSensitive"];
    -[SKDisk setIsCaseSensitive:](v4, "setIsCaseSensitive:", [v36 BOOLValue]);
  }

  v37 = [v96 objectForKey:@"mediaUUID"];

  if (v37)
  {
    v38 = [v96 objectForKey:@"mediaUUID"];
    v39 = [MEMORY[0x277CBEB68] null];
    if (v38 == v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = [v96 objectForKey:@"mediaUUID"];
    }

    [(SKDisk *)v4 setMediaUUID:v40];
    if (v38 != v39)
    {
    }
  }

  v41 = [v96 objectForKey:@"isOSInternal"];

  if (v41)
  {
    v42 = [v96 objectForKey:@"isOSInternal"];
    -[SKDisk setIsOSInternal:](v4, "setIsOSInternal:", [v42 BOOLValue]);
  }

  v43 = [v96 objectForKey:@"childCount"];

  if (v43)
  {
    v44 = [v96 objectForKey:@"childCount"];
    -[SKDisk setChildCount:](v4, "setChildCount:", [v44 unsignedLongLongValue]);
  }

  v45 = [v96 objectForKey:@"startLocation"];

  if (v45)
  {
    v46 = [v96 objectForKey:@"startLocation"];
    -[SKDisk setStartLocation:](v4, "setStartLocation:", [v46 unsignedLongLongValue]);
  }

  v47 = [v96 objectForKey:@"isLocked"];

  if (v47)
  {
    v48 = [v96 objectForKey:@"isLocked"];
    -[SKDisk setIsLocked:](v4, "setIsLocked:", [v48 BOOLValue]);
  }

  v49 = [v96 objectForKey:@"diskIdentifier"];

  if (v49)
  {
    v50 = [v96 objectForKey:@"diskIdentifier"];
    v51 = [MEMORY[0x277CBEB68] null];
    if (v50 == v51)
    {
      v52 = 0;
    }

    else
    {
      v52 = [v96 objectForKey:@"diskIdentifier"];
    }

    [(SKDisk *)v4 setDiskIdentifier:v52];
    if (v50 != v51)
    {
    }
  }

  v53 = [v96 objectForKey:@"volumeName"];

  if (v53)
  {
    v54 = [v96 objectForKey:@"volumeName"];
    v55 = [MEMORY[0x277CBEB68] null];
    if (v54 == v55)
    {
      v56 = 0;
    }

    else
    {
      v56 = [v96 objectForKey:@"volumeName"];
    }

    [(SKDisk *)v4 setVolumeName:v56];
    if (v54 != v55)
    {
    }
  }

  v57 = [v96 objectForKey:@"volumeUUID"];

  if (v57)
  {
    v58 = [v96 objectForKey:@"volumeUUID"];
    v59 = [MEMORY[0x277CBEB68] null];
    if (v58 == v59)
    {
      v60 = 0;
    }

    else
    {
      v60 = [v96 objectForKey:@"volumeUUID"];
    }

    [(SKDisk *)v4 setVolumeUUID:v60];
    if (v58 != v59)
    {
    }
  }

  v61 = [v96 objectForKey:@"supportsRepair"];

  if (v61)
  {
    v62 = [v96 objectForKey:@"supportsRepair"];
    -[SKDisk setSupportsRepair:](v4, "setSupportsRepair:", [v62 BOOLValue]);
  }

  v63 = [v96 objectForKey:@"supportsVerify"];

  if (v63)
  {
    v64 = [v96 objectForKey:@"supportsVerify"];
    -[SKDisk setSupportsVerify:](v4, "setSupportsVerify:", [v64 BOOLValue]);
  }

  v65 = [v96 objectForKey:@"unformattedSize"];

  if (v65)
  {
    v66 = [v96 objectForKey:@"unformattedSize"];
    -[SKDisk setUnformattedSize:](v4, "setUnformattedSize:", [v66 unsignedLongLongValue]);
  }

  v67 = [v96 objectForKey:@"filesystem"];

  if (v67)
  {
    v68 = [SKFilesystem alloc];
    v69 = [v96 objectForKey:@"filesystem"];
    v70 = [(SKFilesystem *)v68 initWithDictionaryRepresentation:v69];
    [(SKDisk *)v4 setFilesystem:v70];
  }

  v71 = [v96 objectForKey:@"freeSpace"];

  if (v71)
  {
    v72 = [v96 objectForKey:@"freeSpace"];
    -[SKDisk setFreeSpace:](v4, "setFreeSpace:", [v72 unsignedLongLongValue]);
  }

  v73 = [v96 objectForKey:@"purgeableSpace"];

  if (v73)
  {
    v74 = [v96 objectForKey:@"purgeableSpace"];
    -[SKDisk setPurgeableSpace:](v4, "setPurgeableSpace:", [v74 unsignedLongLongValue]);
  }

  v75 = [v96 objectForKey:@"availableSpace"];

  if (v75)
  {
    v76 = [v96 objectForKey:@"availableSpace"];
    -[SKDisk setAvailableSpace:](v4, "setAvailableSpace:", [v76 unsignedLongLongValue]);
  }

  v77 = [v96 objectForKey:@"totalSpace"];

  if (v77)
  {
    v78 = [v96 objectForKey:@"totalSpace"];
    -[SKDisk setTotalSpace:](v4, "setTotalSpace:", [v78 unsignedLongLongValue]);
  }

  v79 = [v96 objectForKey:@"ioContent"];

  if (v79)
  {
    v80 = [v96 objectForKey:@"ioContent"];
    v81 = [MEMORY[0x277CBEB68] null];
    if (v80 == v81)
    {
      v82 = 0;
    }

    else
    {
      v82 = [v96 objectForKey:@"ioContent"];
    }

    [(SKDisk *)v4 setIoContent:v82];
    if (v80 != v81)
    {
    }
  }

  v83 = [v96 objectForKey:@"isWritable"];

  if (v83)
  {
    v84 = [v96 objectForKey:@"isWritable"];
    -[SKDisk setIsWritable:](v4, "setIsWritable:", [v84 BOOLValue]);
  }

  v85 = [v96 objectForKey:@"isMediaWritable"];

  if (v85)
  {
    v86 = [v96 objectForKey:@"isMediaWritable"];
    -[SKDisk setIsMediaWritable:](v4, "setIsMediaWritable:", [v86 BOOLValue]);
  }

  v87 = [v96 objectForKey:@"mountPoint"];

  if (v87)
  {
    v88 = [v96 objectForKey:@"mountPoint"];
    v89 = [MEMORY[0x277CBEB68] null];
    if (v88 == v89)
    {
      v90 = 0;
    }

    else
    {
      v90 = [v96 objectForKey:@"mountPoint"];
    }

    [(SKDisk *)v4 setMountPoint:v90];
    if (v88 != v89)
    {
    }
  }

  objc_sync_exit(v4);

  v91 = *MEMORY[0x277D85DE8];
}

uint64_t __24__SKDisk_sortWithDisks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 startLocation];
  if (v8 >= [v7 startLocation])
  {
    v10 = [v6 startLocation];
    if (v10 <= [v7 startLocation])
    {
      v11 = [v6 diskIdentifier];
      if ([v11 length] < 5)
      {
        v9 = 0;
      }

      else
      {
        v12 = [v7 diskIdentifier];
        v13 = [v12 length];

        if (v13 < 5)
        {
          v9 = 0;
          goto LABEL_29;
        }

        v14 = [v6 diskIdentifier];
        v15 = [v14 substringFromIndex:4];
        v11 = [v15 componentsSeparatedByString:@"s"];

        v16 = [v11 count];
        v17 = [v7 diskIdentifier];
        v18 = [v17 substringFromIndex:4];
        v19 = [v18 componentsSeparatedByString:@"s"];

        v20 = [v19 count];
        v9 = 0;
        if (v16 && v20)
        {
          v21 = 0;
          v29 = v20;
          v30 = v16;
          if (v16 >= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v16;
          }

          if (v22 <= 1)
          {
            v23 = 1;
          }

          else
          {
            v23 = v22;
          }

          v9 = 1;
          do
          {
            v24 = [v11 objectAtIndexedSubscript:{v21, v29, v30}];
            v25 = [v24 intValue];

            v26 = [v19 objectAtIndexedSubscript:v21];
            v27 = [v26 intValue];

            if (v25 < v27)
            {
              v9 = -1;
              goto LABEL_27;
            }

            if (v25 > v27)
            {
              goto LABEL_27;
            }

            ++v21;
          }

          while (v23 != v21);
          if (v30 == v29)
          {
            v9 = 0;
          }

          else if (v30 < v29)
          {
            v9 = -1;
          }

          else
          {
            v9 = 1;
          }
        }

LABEL_27:
      }

      goto LABEL_29;
    }

    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

LABEL_29:

  return v9;
}

- (id)diskAndDescendants
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithObject:self];
  v4 = [(SKDisk *)self diskIdentifier];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SKDisk *)self container];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 diskAndDescendants];
        [v3 addObjectsFromArray:v7];
      }
    }

    else
    {
      if (![(SKDisk *)self isWholeDisk])
      {
        goto LABEL_14;
      }

      v6 = [(SKDisk *)self children];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = [*(*(&v15 + 1) + 8 * i) diskAndDescendants];
            [v3 addObjectsFromArray:v12];
          }

          v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }
    }
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)children
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(SKDisk *)self isWholeDisk])
  {
    v3 = [(SKDisk *)self diskIdentifier];

    if (v3)
    {
      v4 = +[SKBaseManager sharedManager];
      v5 = [v4 allDisks];

      v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
      v6 = [(SKDisk *)self isLiveFSAPFSDisk];
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      v8 = [(SKDisk *)self diskIdentifier];
      v9 = v8;
      if (v6)
      {
        v10 = @"%@/";
      }

      else
      {
        v10 = @"%@s";
      }

      v11 = [v7 initWithFormat:v10, v8];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v5;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            v18 = [v17 diskIdentifier];
            v19 = [v18 hasPrefix:v11];

            if (v19)
            {
              [v3 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);
      }

      [SKDisk sortWithDisks:v3];
    }
  }

  else
  {
    v3 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SKDisk *)self mediaUUID];
    v7 = [v5 mediaUUID];
    v8 = isEqualOrBothNil(v6, v7);

    if (v8)
    {
      v9 = [(SKDisk *)self diskIdentifier];
      v10 = [v5 diskIdentifier];
      v11 = isEqualOrBothNil(v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(SKDisk *)self mediaUUID];

  v4 = [(SKDisk *)self diskIdentifier];
  v5 = [v4 hash];
  if (v3)
  {
    v6 = [(SKDisk *)self mediaUUID];
    v5 ^= [v6 hash];
  }

  return v5;
}

- (id)supportedFilesystems
{
  v2 = +[SKManager sharedManager];
  v3 = [v2 formatableFileSystems];

  return v3;
}

- (BOOL)canResize
{
  v3 = [(SKDisk *)self filesystemType];
  if ([v3 isEqualToString:kSKDiskFileSystemHFS[0]])
  {
    v4 = [(SKDisk *)self filesystem];
    v5 = [v4 isJournaled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isExternal
{
  if ([(SKDisk *)self isInternal])
  {
    return 0;
  }

  else
  {
    return ![(SKDisk *)self isDiskImage];
  }
}

- (BOOL)isTrusted
{
  v3 = [(SKDisk *)self isInternal];
  if (v3)
  {
    LOBYTE(v3) = ![(SKDisk *)self isRemovable];
  }

  return v3;
}

- (void)expireCacheWithOptions:(unint64_t)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = +[SKHelperClient sharedClient];
  [v7 recacheDisk:self options:a3 callbackBlock:v6];
}

- (void)expireCacheWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[SKHelperClient sharedClient];
  [v5 recacheDisk:self options:0 callbackBlock:v4];
}

- (void)expireCache
{
  v3 = +[SKHelperClient sharedClient];
  [v3 recacheDisk:self options:0 callbackBlock:0];
}

- (void)recacheWithOptions:(unint64_t)a3
{
  v5 = +[SKHelperClient sharedClient];
  [v5 recacheDisk:self options:a3 blocking:1 callbackBlock:0];
}

- (BOOL)canBoot
{
  v2 = [(SKDisk *)self role];
  if ([v2 isEqualToString:kSKDiskRoleMacSystem[0]] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", kSKDiskRoleLegacyMacSystem[0]))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:kSKDiskRoleWindowsSystem[0]];
  }

  return v3;
}

- (id)innerDescriptionWithPrivateData:(BOOL)a3
{
  if (self->_isValid)
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  mediaUUID = @"None";
  volumeUUID = self->_volumeUUID;
  if (!volumeUUID)
  {
    volumeUUID = @"None";
  }

  if (self->_mediaUUID)
  {
    mediaUUID = self->_mediaUUID;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"Role: %@, Type: %@, Valid: %@, Volume UUID: %@, Media UUID: %@", self->_role, self->_type, v3, volumeUUID, mediaUUID];
}

- (id)redactedDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  diskObjectID = v2->_diskObjectID;
  diskIdentifier = v2->_diskIdentifier;
  mountPoint = v2->_mountPoint;
  v9 = [(SKDisk *)v2 innerDescriptionWithPrivateData:0];
  v10 = v9;
  v11 = @"None";
  if (diskIdentifier)
  {
    v11 = diskIdentifier;
  }

  v12 = @"Yes";
  if (!mountPoint)
  {
    v12 = @"No";
  }

  v13 = [v3 stringWithFormat:@"<%@: [%@] { BSD Name: %@, Mounted: %@, %@ }>", v5, diskObjectID, v11, v12, v9];

  objc_sync_exit(v2);

  return v13;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  diskObjectID = v2->_diskObjectID;
  volumeName = v2->_volumeName;
  diskIdentifier = v2->_diskIdentifier;
  mountPoint = v2->_mountPoint;
  v10 = [(SKDisk *)v2 innerDescriptionWithPrivateData:1];
  v11 = v10;
  v12 = @"Not Mounted";
  if (mountPoint)
  {
    v12 = mountPoint;
  }

  v13 = @"None";
  if (diskIdentifier)
  {
    v13 = diskIdentifier;
  }

  v14 = &stru_287C8F598;
  if (volumeName)
  {
    v14 = volumeName;
  }

  v15 = [v3 stringWithFormat:@"<%@: [%@] { Volume Name: %@, BSD Name: %@, Mount point: %@, %@ }>", v5, diskObjectID, v14, v13, v12, v10];

  objc_sync_exit(v2);

  return v15;
}

- (id)wholeDiskIdentifier
{
  v3 = [(SKDisk *)self contentDiskIdentifier];
  v4 = [v3 substringFromIndex:4];

  v5 = [v4 componentsSeparatedByString:@"s"];
  if ([v5 count] >= 2)
  {
    v7 = [(SKDisk *)self contentDiskIdentifier];
    v8 = [v7 substringToIndex:4];
    v9 = [v5 objectAtIndexedSubscript:0];
    v6 = [v8 stringByAppendingString:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cachedWholeDiskByIdentifier
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(SKDisk *)self wholeDiskIdentifier];
  if (v2)
  {
    v3 = +[SKBaseManager sharedManager];
    v4 = [v3 allDisks];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 diskIdentifier];
          v11 = [v10 isEqualToString:v2];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isIOMediaDisk
{
  if ([(SKDisk *)self isLiveFSAPFSDisk])
  {
    return 0;
  }

  else
  {
    return ![(SKDisk *)self isIOSRootSnapshot];
  }
}

- (BOOL)isLiveFSAPFSDisk
{
  v2 = [(SKDisk *)self diskIdentifier];
  v3 = [v2 hasPrefix:@"apfs://disk"];

  return v3;
}

- (BOOL)rename:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SKHelperClient sharedClient];
  [v8 renameDisk:self to:v7 withCompletionBlock:v6];

  return 1;
}

- (BOOL)unmountWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[SKHelperClient sharedClient];
  [v5 unmountDisk:self withCompletionBlock:v4];

  return 1;
}

- (BOOL)unmountWithOptions:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SKHelperClient sharedClient];
  [v8 unmountDisk:self options:v7 withCompletionBlock:v6];

  return 1;
}

- (BOOL)unmountWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(SKSyncCommand);
  v8 = +[SKHelperClient sharedClient];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __35__SKDisk_unmountWithOptions_error___block_invoke;
  v11[3] = &unk_279D1F948;
  v12 = v7;
  v9 = v7;
  [v8 unmountDisk:self options:v6 blocking:1 withCompletionBlock:v11];

  LOBYTE(a4) = [(SKSyncCommand *)v9 returnWithError:a4];
  return a4;
}

- (BOOL)mountWithOptions:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v9 = v8;
  if (v6)
  {
    [v8 setObject:v6 forKey:@"kSKDiskMountOptionToolOptions"];
  }

  v10 = [(SKDisk *)self mountWithOptionsDictionary:v9 withCompletionBlock:v7];

  return v10;
}

- (BOOL)mountWithOptionsDictionary:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SKHelperClient sharedClient];
  [v8 mountDisk:self options:v7 completionBlock:v6];

  return 1;
}

- (BOOL)mountWithOptionsDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ((isValidNSDictionary(v6) & 1) == 0)
    {
      v16 = [SKError failWithPOSIXCode:22 debugDescription:@"Options must be a dictionary" error:a4];
      goto LABEL_12;
    }

    v8 = [v7 mutableCopy];
    v9 = [v7 objectForKeyedSubscript:@"kSKDiskMountOptionMountPoint"];
    v10 = v9;
    if (v9)
    {
      if (!isValidNSString(v9))
      {
        v16 = [SKError failWithPOSIXCode:22 debugDescription:@"Mount point must be a string (a path error:not a URL)", a4];
        goto LABEL_10;
      }

      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
      v12 = [v11 absoluteURL];
      v13 = [v12 path];

      if (!v13)
      {
        v16 = [SKError failWithPOSIXCode:22 debugDescription:@"Invalid mount point error:cannot be converted to absolute path", a4];

        goto LABEL_10;
      }

      [v8 setObject:v13 forKeyedSubscript:@"kSKDiskMountOptionMountPoint"];
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = objc_alloc_init(SKSyncCommand);
  v15 = +[SKHelperClient sharedClient];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__SKDisk_mountWithOptionsDictionary_error___block_invoke;
  v18[3] = &unk_279D1F948;
  v19 = v14;
  v10 = v14;
  [v15 mountDisk:self options:v8 blocking:1 completionBlock:v18];

  v16 = [(SKSyncCommand *)v10 returnWithError:a4];
LABEL_10:

LABEL_12:
  return v16;
}

- (BOOL)mountWithParams:(id)a3 error:(id *)a4
{
  v6 = [a3 dictionaryRepresentation];
  LOBYTE(a4) = [(SKDisk *)self mountWithOptionsDictionary:v6 error:a4];

  return a4;
}

- (BOOL)ejectWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[SKHelperClient sharedClient];
  [v5 ejectDisk:self withCompletionBlock:v4];

  return 1;
}

- (BOOL)ejectWithError:(id *)a3
{
  v5 = objc_alloc_init(SKSyncCommand);
  v6 = +[SKHelperClient sharedClient];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __25__SKDisk_ejectWithError___block_invoke;
  v9[3] = &unk_279D1F948;
  v10 = v5;
  v7 = v5;
  [v6 ejectDisk:self blocking:1 withCompletionBlock:v9];

  LOBYTE(a3) = [(SKSyncCommand *)v7 returnWithError:a3];
  return a3;
}

- (id)resizeToSize:(unint64_t)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [SKProgress progressWithTotalUnitCount:100];
  v8 = +[SKHelperClient sharedClient];
  v9 = [v8 resize:self toSize:a3 completionBlock:v6];

  [v7 chainChildProgress:v9 withPendingUnitCount:100];

  return v7;
}

- (void)resize:(unint64_t)a3 completion:(id)a4
{
  v8 = a4;
  v6 = +[SKHelperClient sharedClient];
  v7 = [v6 resize:self toSize:a3 completionBlock:v8];
}

- (id)formattableFilesystems
{
  if ([(SKDisk *)self isMediaWritable])
  {
    v3 = +[SKBaseManager sharedManager];
    v4 = [v3 formatableFileSystems];

    if ([(SKDisk *)self isExternal])
    {
      v5 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_6];
      v6 = [v4 filteredArrayUsingPredicate:v5];
    }

    else
    {
      v5 = +[SKFilesystem allFilesystems];
      v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_17];
      v8 = [v4 filteredArrayUsingPredicate:v7];

      v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_19_0];
      v10 = [v5 filteredArrayUsingPredicate:v9];

      v11 = [v8 arrayByAddingObjectsFromArray:v10];
      v6 = [v11 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_22];
    }
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

uint64_t __39__SKDisk_Erase__formattableFilesystems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 majorType];
  if ([v3 isEqualToString:@"hfs"])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 majorType];
    v4 = [v5 isEqualToString:@"apfs"] ^ 1;
  }

  return v4;
}

uint64_t __39__SKDisk_Erase__formattableFilesystems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 majorType];
  if ([v3 isEqualToString:@"apfs"])
  {
    v4 = [v2 isExtension] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __39__SKDisk_Erase__formattableFilesystems__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sortPriority];
  if (v6 >= [v5 sortPriority])
  {
    v8 = [v4 sortPriority];
    v7 = v8 > [v5 sortPriority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)formattableFilesystemWithFilesystem:(id)a3
{
  v4 = a3;
  v5 = [(SKDisk *)self formattableFilesystems];
  if (([v5 containsObject:v4] & 1) == 0)
  {
    v6 = MEMORY[0x277CCAC30];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__SKDisk_Erase__formattableFilesystemWithFilesystem___block_invoke;
    v11[3] = &unk_279D1F9E8;
    v12 = v4;
    v7 = v4;
    v8 = [v6 predicateWithBlock:v11];
    v9 = [v5 filteredArrayUsingPredicate:v8];

    if ([v9 count])
    {
      v4 = [v9 firstObject];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)cleanupWithError:(id *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SKDisk *)self children];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v12 + 1) + 8 * i) cleanupWithError:a3])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unsigned)getSectorSize
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 512;
  v3 = [(SKDisk *)self diskIdentifier];

  if (!v3)
  {
    v11 = SKGetOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SKDisk(Erase) getSectorSize]";
      v20 = 2112;
      v21 = self;
      v12 = "%s: Disk %@, does not have a BSD name";
      v13 = v11;
      v14 = 22;
LABEL_12:
      _os_log_impl(&dword_26BBB8000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }

LABEL_13:

    result = 512;
    goto LABEL_14;
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [(SKDisk *)self diskIdentifier];
  v6 = [v4 stringWithFormat:@"/dev/r%@", v5];
  v7 = open([v6 fileSystemRepresentation], 0);

  if (v7 < 0)
  {
    v11 = SKGetOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      *buf = 136315650;
      v19 = "[SKDisk(Erase) getSectorSize]";
      v20 = 2112;
      v21 = self;
      v22 = 1024;
      v23 = v15;
      v12 = "%s: Failed to get block size of %@, open err %d";
      v13 = v11;
      v14 = 28;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (ioctl(v7, 0x40046418uLL, &v17))
  {
    v8 = SKGetOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 136315650;
      v19 = "[SKDisk(Erase) getSectorSize]";
      v20 = 2112;
      v21 = self;
      v22 = 1024;
      v23 = v9;
      _os_log_impl(&dword_26BBB8000, v8, OS_LOG_TYPE_ERROR, "%s: Failed to get block size of %@, ioctl err %d", buf, 0x1Cu);
    }
  }

  close(v7);
  result = v17;
LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)wipeDiskWithError:(id *)a3
{
  v5 = [(SKDisk *)self diskIdentifier];

  if (!v5)
  {
    v13 = @"Disk does not have a BSD name";
    v14 = 22;
LABEL_7:

    return [SKError failWithPOSIXCode:v14 debugDescription:v13 error:a3];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [(SKDisk *)self diskIdentifier];
  v8 = [v6 stringWithFormat:@"/dev/r%@", v7];
  v9 = open([v8 fileSystemRepresentation], 2);

  if (v9 < 0)
  {
    v14 = *__error();
    v13 = @"Failed to open disk";
    goto LABEL_7;
  }

  [(SKDisk *)self getSectorSize];
  v10 = wipefs_alloc();
  if (v10)
  {
    v11 = v10;
    close(v9);
    v12 = @"wipefs_alloc failed";
  }

  else
  {
    v11 = wipefs_wipe();
    wipefs_free();
    close(v9);
    if (!v11)
    {
      return 1;
    }

    v12 = @"wipefs_wipe failed";
  }

  return [SKError failWithPOSIXCode:v11 debugDescription:v12 error:a3];
}

- (void)updateWithDictionary:(uint8_t *)buf .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_impl(&dword_26BBB8000, log, OS_LOG_TYPE_ERROR, "Invalid Class Update: %{public}@ -> %{public}@", buf, 0x16u);
}

@end