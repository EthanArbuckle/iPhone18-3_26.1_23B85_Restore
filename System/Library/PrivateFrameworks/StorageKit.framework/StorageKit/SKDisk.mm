@interface SKDisk
- (BOOL)canBoot;
- (BOOL)canResize;
- (BOOL)cleanupWithError:(id *)error;
- (BOOL)ejectWithCompletionBlock:(id)block;
- (BOOL)ejectWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExternal;
- (BOOL)isIOMediaDisk;
- (BOOL)isLiveFSAPFSDisk;
- (BOOL)isTrusted;
- (BOOL)matchesDictionary:(id)dictionary;
- (BOOL)mountWithOptions:(id)options withCompletionBlock:(id)block;
- (BOOL)mountWithOptionsDictionary:(id)dictionary error:(id *)error;
- (BOOL)mountWithOptionsDictionary:(id)dictionary withCompletionBlock:(id)block;
- (BOOL)mountWithParams:(id)params error:(id *)error;
- (BOOL)rename:(id)rename withCompletionBlock:(id)block;
- (BOOL)unmountWithCompletionBlock:(id)block;
- (BOOL)unmountWithOptions:(id)options completionBlock:(id)block;
- (BOOL)unmountWithOptions:(id)options error:(id *)error;
- (BOOL)wipeDiskWithError:(id *)error;
- (SKDisk)initWithDictionary:(id)dictionary;
- (id)cachedWholeDiskByIdentifier;
- (id)children;
- (id)description;
- (id)dictionaryRepresentation;
- (id)diskAndDescendants;
- (id)formattableFilesystemWithFilesystem:(id)filesystem;
- (id)formattableFilesystems;
- (id)innerDescriptionWithPrivateData:(BOOL)data;
- (id)minimalDictionaryRepresentation;
- (id)redactedDescription;
- (id)resizeToSize:(unint64_t)size completionBlock:(id)block;
- (id)supportedFilesystems;
- (id)wholeDiskIdentifier;
- (unint64_t)hash;
- (unsigned)getSectorSize;
- (void)expireCache;
- (void)expireCacheWithCompletionBlock:(id)block;
- (void)expireCacheWithOptions:(unint64_t)options completionBlock:(id)block;
- (void)recacheWithOptions:(unint64_t)options;
- (void)resize:(unint64_t)resize completion:(id)completion;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation SKDisk

- (id)minimalDictionaryRepresentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setObject:v5 forKey:@"**ClassName**"];

  diskObjectID = [(SKDisk *)selfCopy diskObjectID];
  [v3 setObject:diskObjectID forKey:@"diskObjectID"];

  role = [(SKDisk *)selfCopy role];
  [v3 setObject:role forKey:@"role"];

  type = [(SKDisk *)selfCopy type];
  [v3 setObject:type forKey:@"type"];

  filesystemType = [(SKDisk *)selfCopy filesystemType];

  if (filesystemType)
  {
    filesystemType2 = [(SKDisk *)selfCopy filesystemType];
    [v3 setObject:filesystemType2 forKey:@"filesystemType"];
  }

  else
  {
    [v3 setObject:kSKDiskFileSystemUndefined[0] forKey:@"filesystemType"];
  }

  diskIdentifier = [(SKDisk *)selfCopy diskIdentifier];

  if (diskIdentifier)
  {
    diskIdentifier2 = [(SKDisk *)selfCopy diskIdentifier];
    [v3 setObject:diskIdentifier2 forKey:@"diskIdentifier"];
  }

  mediaUUID = [(SKDisk *)selfCopy mediaUUID];

  if (mediaUUID)
  {
    mediaUUID2 = [(SKDisk *)selfCopy mediaUUID];
    [v3 setObject:mediaUUID2 forKey:@"mediaUUID"];
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  minimalDictionaryRepresentation = [(SKDisk *)selfCopy minimalDictionaryRepresentation];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isValid](selfCopy, "isValid")}];
  [minimalDictionaryRepresentation setObject:v4 forKey:@"isValid"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isDiskImage](selfCopy, "isDiskImage")}];
  [minimalDictionaryRepresentation setObject:v5 forKey:@"isDiskImage"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isInternal](selfCopy, "isInternal")}];
  [minimalDictionaryRepresentation setObject:v6 forKey:@"isInternal"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isWholeDisk](selfCopy, "isWholeDisk")}];
  [minimalDictionaryRepresentation setObject:v7 forKey:@"isWholeDisk"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isPhysicalDisk](selfCopy, "isPhysicalDisk")}];
  [minimalDictionaryRepresentation setObject:v8 forKey:@"isPhysicalDisk"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk canPartitionDisk](selfCopy, "canPartitionDisk")}];
  [minimalDictionaryRepresentation setObject:v9 forKey:@"canPartitionDisk"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isCaseSensitive](selfCopy, "isCaseSensitive")}];
  [minimalDictionaryRepresentation setObject:v10 forKey:@"isCaseSensitive"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isLocked](selfCopy, "isLocked")}];
  [minimalDictionaryRepresentation setObject:v11 forKey:@"isLocked"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isOSInternal](selfCopy, "isOSInternal")}];
  [minimalDictionaryRepresentation setObject:v12 forKey:@"isOSInternal"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isPartitionDisk](selfCopy, "isPartitionDisk")}];
  [minimalDictionaryRepresentation setObject:v13 forKey:@"isPartitionDisk"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk freeSpace](selfCopy, "freeSpace")}];
  [minimalDictionaryRepresentation setObject:v14 forKey:@"freeSpace"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk purgeableSpace](selfCopy, "purgeableSpace")}];
  [minimalDictionaryRepresentation setObject:v15 forKey:@"purgeableSpace"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk availableSpace](selfCopy, "availableSpace")}];
  [minimalDictionaryRepresentation setObject:v16 forKey:@"availableSpace"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk totalSpace](selfCopy, "totalSpace")}];
  [minimalDictionaryRepresentation setObject:v17 forKey:@"totalSpace"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk startLocation](selfCopy, "startLocation")}];
  [minimalDictionaryRepresentation setObject:v18 forKey:@"startLocation"];

  mountPoint = [(SKDisk *)selfCopy mountPoint];
  if (mountPoint)
  {
    [(SKDisk *)selfCopy mountPoint];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v20 = ;
  [minimalDictionaryRepresentation setObject:v20 forKey:@"mountPoint"];

  volumeName = [(SKDisk *)selfCopy volumeName];
  if (volumeName)
  {
    [(SKDisk *)selfCopy volumeName];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v22 = ;
  [minimalDictionaryRepresentation setObject:v22 forKey:@"volumeName"];

  volumeUUID = [(SKDisk *)selfCopy volumeUUID];
  if (volumeUUID)
  {
    [(SKDisk *)selfCopy volumeUUID];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v24 = ;
  [minimalDictionaryRepresentation setObject:v24 forKey:@"volumeUUID"];

  ioContent = [(SKDisk *)selfCopy ioContent];
  if (ioContent)
  {
    [(SKDisk *)selfCopy ioContent];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v26 = ;
  [minimalDictionaryRepresentation setObject:v26 forKey:@"ioContent"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk unformattedSize](selfCopy, "unformattedSize")}];
  [minimalDictionaryRepresentation setObject:v27 forKey:@"unformattedSize"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk supportsRepair](selfCopy, "supportsRepair")}];
  [minimalDictionaryRepresentation setObject:v28 forKey:@"supportsRepair"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk supportsVerify](selfCopy, "supportsVerify")}];
  [minimalDictionaryRepresentation setObject:v29 forKey:@"supportsVerify"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKDisk childCount](selfCopy, "childCount")}];
  [minimalDictionaryRepresentation setObject:v30 forKey:@"childCount"];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk supportsJournaling](selfCopy, "supportsJournaling")}];
  [minimalDictionaryRepresentation setObject:v31 forKey:@"supportsJournaling"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isJournaled](selfCopy, "isJournaled")}];
  [minimalDictionaryRepresentation setObject:v32 forKey:@"isJournaled"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isWritable](selfCopy, "isWritable")}];
  [minimalDictionaryRepresentation setObject:v33 forKey:@"isWritable"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKDisk isMediaWritable](selfCopy, "isMediaWritable")}];
  [minimalDictionaryRepresentation setObject:v34 forKey:@"isMediaWritable"];

  filesystem = [(SKDisk *)selfCopy filesystem];

  if (filesystem)
  {
    filesystem2 = [(SKDisk *)selfCopy filesystem];
    dictionaryRepresentation = [filesystem2 dictionaryRepresentation];
    [minimalDictionaryRepresentation setObject:dictionaryRepresentation forKey:@"filesystem"];
  }

  objc_sync_exit(selfCopy);

  return minimalDictionaryRepresentation;
}

- (BOOL)matchesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  mediaUUID2 = NSStringFromClass(v5);
  v7 = [dictionaryCopy objectForKey:@"**ClassName**"];
  if ([mediaUUID2 isEqualToString:v7])
  {
    diskIdentifier = [(SKDisk *)self diskIdentifier];
    v9 = [dictionaryCopy objectForKey:@"diskIdentifier"];
    v10 = [diskIdentifier isEqualToString:v9];

    if (!v10)
    {
      v12 = 0;
      goto LABEL_9;
    }

    mediaUUID = [(SKDisk *)self mediaUUID];

    if (!mediaUUID)
    {
      v12 = 1;
      goto LABEL_9;
    }

    mediaUUID2 = [(SKDisk *)self mediaUUID];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"mediaUUID"];
    v12 = [mediaUUID2 isEqual:v7];
  }

  else
  {
    v12 = 0;
  }

LABEL_9:
  return v12;
}

- (SKDisk)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(SKDisk *)self init];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_sync_enter(v7);
    [(SKDisk *)v7 updateWithDictionary:dictionaryCopy];
    objc_sync_exit(v7);
  }

  return v6;
}

- (void)updateWithDictionary:(id)dictionary
{
  v98 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [dictionaryCopy objectForKey:@"**ClassName**"];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [dictionaryCopy objectForKey:@"**ClassName**"];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v92 = SKGetOSLog();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v93 = objc_opt_class();
        v94 = NSStringFromClass(v93);
        v95 = [dictionaryCopy objectForKey:@"**ClassName**"];
        [(SKDisk *)v94 updateWithDictionary:v95, buf, v92];
      }

      __assert_rtn("[SKDisk updateWithDictionary:]", "SKDisk.m", 211, "NO");
    }
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"diskObjectID"];
  [(SKDisk *)selfCopy setDiskObjectID:v10];

  v11 = [dictionaryCopy objectForKey:@"role"];

  if (v11)
  {
    v12 = [dictionaryCopy objectForKey:@"role"];
    [(SKDisk *)selfCopy setRole:v12];
  }

  v13 = [dictionaryCopy objectForKey:@"filesystemType"];

  if (v13)
  {
    v14 = [dictionaryCopy objectForKey:@"filesystemType"];
    [(SKDisk *)selfCopy setFilesystemType:v14];
  }

  v15 = [dictionaryCopy objectForKey:@"type"];

  if (v15)
  {
    v16 = [dictionaryCopy objectForKey:@"type"];
    [(SKDisk *)selfCopy setType:v16];
  }

  v17 = [dictionaryCopy objectForKey:@"isValid"];

  if (v17)
  {
    v18 = [dictionaryCopy objectForKey:@"isValid"];
    -[SKDisk setIsValid:](selfCopy, "setIsValid:", [v18 BOOLValue]);
  }

  v19 = [dictionaryCopy objectForKey:@"isDiskImage"];

  if (v19)
  {
    v20 = [dictionaryCopy objectForKey:@"isDiskImage"];
    -[SKDisk setIsDiskImage:](selfCopy, "setIsDiskImage:", [v20 BOOLValue]);
  }

  v21 = [dictionaryCopy objectForKey:@"isInternal"];

  if (v21)
  {
    v22 = [dictionaryCopy objectForKey:@"isInternal"];
    -[SKDisk setIsInternal:](selfCopy, "setIsInternal:", [v22 BOOLValue]);
  }

  v23 = [dictionaryCopy objectForKey:@"isWholeDisk"];

  if (v23)
  {
    v24 = [dictionaryCopy objectForKey:@"isWholeDisk"];
    -[SKDisk setIsWholeDisk:](selfCopy, "setIsWholeDisk:", [v24 BOOLValue]);
  }

  v25 = [dictionaryCopy objectForKey:@"isPhysicalDisk"];

  if (v25)
  {
    v26 = [dictionaryCopy objectForKey:@"isPhysicalDisk"];
    -[SKDisk setIsPhysicalDisk:](selfCopy, "setIsPhysicalDisk:", [v26 BOOLValue]);
  }

  v27 = [dictionaryCopy objectForKey:@"canPartitionDisk"];

  if (v27)
  {
    v28 = [dictionaryCopy objectForKey:@"canPartitionDisk"];
    -[SKDisk setCanPartitionDisk:](selfCopy, "setCanPartitionDisk:", [v28 BOOLValue]);
  }

  v29 = [dictionaryCopy objectForKey:@"isPartitionDisk"];

  if (v29)
  {
    v30 = [dictionaryCopy objectForKey:@"isPartitionDisk"];
    -[SKDisk setIsPartitionDisk:](selfCopy, "setIsPartitionDisk:", [v30 BOOLValue]);
  }

  v31 = [dictionaryCopy objectForKey:@"supportsJournaling"];

  if (v31)
  {
    v32 = [dictionaryCopy objectForKey:@"supportsJournaling"];
    -[SKDisk setSupportsJournaling:](selfCopy, "setSupportsJournaling:", [v32 BOOLValue]);
  }

  v33 = [dictionaryCopy objectForKey:@"isJournaled"];

  if (v33)
  {
    v34 = [dictionaryCopy objectForKey:@"isJournaled"];
    -[SKDisk setIsJournaled:](selfCopy, "setIsJournaled:", [v34 BOOLValue]);
  }

  v35 = [dictionaryCopy objectForKey:@"isCaseSensitive"];

  if (v35)
  {
    v36 = [dictionaryCopy objectForKey:@"isCaseSensitive"];
    -[SKDisk setIsCaseSensitive:](selfCopy, "setIsCaseSensitive:", [v36 BOOLValue]);
  }

  v37 = [dictionaryCopy objectForKey:@"mediaUUID"];

  if (v37)
  {
    v38 = [dictionaryCopy objectForKey:@"mediaUUID"];
    null = [MEMORY[0x277CBEB68] null];
    if (v38 == null)
    {
      v40 = 0;
    }

    else
    {
      v40 = [dictionaryCopy objectForKey:@"mediaUUID"];
    }

    [(SKDisk *)selfCopy setMediaUUID:v40];
    if (v38 != null)
    {
    }
  }

  v41 = [dictionaryCopy objectForKey:@"isOSInternal"];

  if (v41)
  {
    v42 = [dictionaryCopy objectForKey:@"isOSInternal"];
    -[SKDisk setIsOSInternal:](selfCopy, "setIsOSInternal:", [v42 BOOLValue]);
  }

  v43 = [dictionaryCopy objectForKey:@"childCount"];

  if (v43)
  {
    v44 = [dictionaryCopy objectForKey:@"childCount"];
    -[SKDisk setChildCount:](selfCopy, "setChildCount:", [v44 unsignedLongLongValue]);
  }

  v45 = [dictionaryCopy objectForKey:@"startLocation"];

  if (v45)
  {
    v46 = [dictionaryCopy objectForKey:@"startLocation"];
    -[SKDisk setStartLocation:](selfCopy, "setStartLocation:", [v46 unsignedLongLongValue]);
  }

  v47 = [dictionaryCopy objectForKey:@"isLocked"];

  if (v47)
  {
    v48 = [dictionaryCopy objectForKey:@"isLocked"];
    -[SKDisk setIsLocked:](selfCopy, "setIsLocked:", [v48 BOOLValue]);
  }

  v49 = [dictionaryCopy objectForKey:@"diskIdentifier"];

  if (v49)
  {
    v50 = [dictionaryCopy objectForKey:@"diskIdentifier"];
    null2 = [MEMORY[0x277CBEB68] null];
    if (v50 == null2)
    {
      v52 = 0;
    }

    else
    {
      v52 = [dictionaryCopy objectForKey:@"diskIdentifier"];
    }

    [(SKDisk *)selfCopy setDiskIdentifier:v52];
    if (v50 != null2)
    {
    }
  }

  v53 = [dictionaryCopy objectForKey:@"volumeName"];

  if (v53)
  {
    v54 = [dictionaryCopy objectForKey:@"volumeName"];
    null3 = [MEMORY[0x277CBEB68] null];
    if (v54 == null3)
    {
      v56 = 0;
    }

    else
    {
      v56 = [dictionaryCopy objectForKey:@"volumeName"];
    }

    [(SKDisk *)selfCopy setVolumeName:v56];
    if (v54 != null3)
    {
    }
  }

  v57 = [dictionaryCopy objectForKey:@"volumeUUID"];

  if (v57)
  {
    v58 = [dictionaryCopy objectForKey:@"volumeUUID"];
    null4 = [MEMORY[0x277CBEB68] null];
    if (v58 == null4)
    {
      v60 = 0;
    }

    else
    {
      v60 = [dictionaryCopy objectForKey:@"volumeUUID"];
    }

    [(SKDisk *)selfCopy setVolumeUUID:v60];
    if (v58 != null4)
    {
    }
  }

  v61 = [dictionaryCopy objectForKey:@"supportsRepair"];

  if (v61)
  {
    v62 = [dictionaryCopy objectForKey:@"supportsRepair"];
    -[SKDisk setSupportsRepair:](selfCopy, "setSupportsRepair:", [v62 BOOLValue]);
  }

  v63 = [dictionaryCopy objectForKey:@"supportsVerify"];

  if (v63)
  {
    v64 = [dictionaryCopy objectForKey:@"supportsVerify"];
    -[SKDisk setSupportsVerify:](selfCopy, "setSupportsVerify:", [v64 BOOLValue]);
  }

  v65 = [dictionaryCopy objectForKey:@"unformattedSize"];

  if (v65)
  {
    v66 = [dictionaryCopy objectForKey:@"unformattedSize"];
    -[SKDisk setUnformattedSize:](selfCopy, "setUnformattedSize:", [v66 unsignedLongLongValue]);
  }

  v67 = [dictionaryCopy objectForKey:@"filesystem"];

  if (v67)
  {
    v68 = [SKFilesystem alloc];
    v69 = [dictionaryCopy objectForKey:@"filesystem"];
    v70 = [(SKFilesystem *)v68 initWithDictionaryRepresentation:v69];
    [(SKDisk *)selfCopy setFilesystem:v70];
  }

  v71 = [dictionaryCopy objectForKey:@"freeSpace"];

  if (v71)
  {
    v72 = [dictionaryCopy objectForKey:@"freeSpace"];
    -[SKDisk setFreeSpace:](selfCopy, "setFreeSpace:", [v72 unsignedLongLongValue]);
  }

  v73 = [dictionaryCopy objectForKey:@"purgeableSpace"];

  if (v73)
  {
    v74 = [dictionaryCopy objectForKey:@"purgeableSpace"];
    -[SKDisk setPurgeableSpace:](selfCopy, "setPurgeableSpace:", [v74 unsignedLongLongValue]);
  }

  v75 = [dictionaryCopy objectForKey:@"availableSpace"];

  if (v75)
  {
    v76 = [dictionaryCopy objectForKey:@"availableSpace"];
    -[SKDisk setAvailableSpace:](selfCopy, "setAvailableSpace:", [v76 unsignedLongLongValue]);
  }

  v77 = [dictionaryCopy objectForKey:@"totalSpace"];

  if (v77)
  {
    v78 = [dictionaryCopy objectForKey:@"totalSpace"];
    -[SKDisk setTotalSpace:](selfCopy, "setTotalSpace:", [v78 unsignedLongLongValue]);
  }

  v79 = [dictionaryCopy objectForKey:@"ioContent"];

  if (v79)
  {
    v80 = [dictionaryCopy objectForKey:@"ioContent"];
    null5 = [MEMORY[0x277CBEB68] null];
    if (v80 == null5)
    {
      v82 = 0;
    }

    else
    {
      v82 = [dictionaryCopy objectForKey:@"ioContent"];
    }

    [(SKDisk *)selfCopy setIoContent:v82];
    if (v80 != null5)
    {
    }
  }

  v83 = [dictionaryCopy objectForKey:@"isWritable"];

  if (v83)
  {
    v84 = [dictionaryCopy objectForKey:@"isWritable"];
    -[SKDisk setIsWritable:](selfCopy, "setIsWritable:", [v84 BOOLValue]);
  }

  v85 = [dictionaryCopy objectForKey:@"isMediaWritable"];

  if (v85)
  {
    v86 = [dictionaryCopy objectForKey:@"isMediaWritable"];
    -[SKDisk setIsMediaWritable:](selfCopy, "setIsMediaWritable:", [v86 BOOLValue]);
  }

  v87 = [dictionaryCopy objectForKey:@"mountPoint"];

  if (v87)
  {
    v88 = [dictionaryCopy objectForKey:@"mountPoint"];
    null6 = [MEMORY[0x277CBEB68] null];
    if (v88 == null6)
    {
      v90 = 0;
    }

    else
    {
      v90 = [dictionaryCopy objectForKey:@"mountPoint"];
    }

    [(SKDisk *)selfCopy setMountPoint:v90];
    if (v88 != null6)
    {
    }
  }

  objc_sync_exit(selfCopy);

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
  diskIdentifier = [(SKDisk *)self diskIdentifier];

  if (diskIdentifier)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      container = [(SKDisk *)self container];
      children = container;
      if (container)
      {
        diskAndDescendants = [container diskAndDescendants];
        [v3 addObjectsFromArray:diskAndDescendants];
      }
    }

    else
    {
      if (![(SKDisk *)self isWholeDisk])
      {
        goto LABEL_14;
      }

      children = [(SKDisk *)self children];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(children);
            }

            diskAndDescendants2 = [*(*(&v15 + 1) + 8 * i) diskAndDescendants];
            [v3 addObjectsFromArray:diskAndDescendants2];
          }

          v9 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    diskIdentifier = [(SKDisk *)self diskIdentifier];

    if (diskIdentifier)
    {
      v4 = +[SKBaseManager sharedManager];
      allDisks = [v4 allDisks];

      diskIdentifier = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
      isLiveFSAPFSDisk = [(SKDisk *)self isLiveFSAPFSDisk];
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      diskIdentifier2 = [(SKDisk *)self diskIdentifier];
      v9 = diskIdentifier2;
      if (isLiveFSAPFSDisk)
      {
        v10 = @"%@/";
      }

      else
      {
        v10 = @"%@s";
      }

      v11 = [v7 initWithFormat:v10, diskIdentifier2];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = allDisks;
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
            diskIdentifier3 = [v17 diskIdentifier];
            v19 = [diskIdentifier3 hasPrefix:v11];

            if (v19)
            {
              [diskIdentifier addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);
      }

      [SKDisk sortWithDisks:diskIdentifier];
    }
  }

  else
  {
    diskIdentifier = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return diskIdentifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    mediaUUID = [(SKDisk *)self mediaUUID];
    mediaUUID2 = [v5 mediaUUID];
    v8 = isEqualOrBothNil(mediaUUID, mediaUUID2);

    if (v8)
    {
      diskIdentifier = [(SKDisk *)self diskIdentifier];
      diskIdentifier2 = [v5 diskIdentifier];
      v11 = isEqualOrBothNil(diskIdentifier, diskIdentifier2);
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
  mediaUUID = [(SKDisk *)self mediaUUID];

  diskIdentifier = [(SKDisk *)self diskIdentifier];
  v5 = [diskIdentifier hash];
  if (mediaUUID)
  {
    mediaUUID2 = [(SKDisk *)self mediaUUID];
    v5 ^= [mediaUUID2 hash];
  }

  return v5;
}

- (id)supportedFilesystems
{
  v2 = +[SKManager sharedManager];
  formatableFileSystems = [v2 formatableFileSystems];

  return formatableFileSystems;
}

- (BOOL)canResize
{
  filesystemType = [(SKDisk *)self filesystemType];
  if ([filesystemType isEqualToString:kSKDiskFileSystemHFS[0]])
  {
    filesystem = [(SKDisk *)self filesystem];
    isJournaled = [filesystem isJournaled];
  }

  else
  {
    isJournaled = 0;
  }

  return isJournaled;
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
  isInternal = [(SKDisk *)self isInternal];
  if (isInternal)
  {
    LOBYTE(isInternal) = ![(SKDisk *)self isRemovable];
  }

  return isInternal;
}

- (void)expireCacheWithOptions:(unint64_t)options completionBlock:(id)block
{
  blockCopy = block;
  v7 = +[SKHelperClient sharedClient];
  [v7 recacheDisk:self options:options callbackBlock:blockCopy];
}

- (void)expireCacheWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = +[SKHelperClient sharedClient];
  [v5 recacheDisk:self options:0 callbackBlock:blockCopy];
}

- (void)expireCache
{
  v3 = +[SKHelperClient sharedClient];
  [v3 recacheDisk:self options:0 callbackBlock:0];
}

- (void)recacheWithOptions:(unint64_t)options
{
  v5 = +[SKHelperClient sharedClient];
  [v5 recacheDisk:self options:options blocking:1 callbackBlock:0];
}

- (BOOL)canBoot
{
  role = [(SKDisk *)self role];
  if ([role isEqualToString:kSKDiskRoleMacSystem[0]] & 1) != 0 || (objc_msgSend(role, "isEqualToString:", kSKDiskRoleLegacyMacSystem[0]))
  {
    v3 = 1;
  }

  else
  {
    v3 = [role isEqualToString:kSKDiskRoleWindowsSystem[0]];
  }

  return v3;
}

- (id)innerDescriptionWithPrivateData:(BOOL)data
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  diskObjectID = selfCopy->_diskObjectID;
  diskIdentifier = selfCopy->_diskIdentifier;
  mountPoint = selfCopy->_mountPoint;
  v9 = [(SKDisk *)selfCopy innerDescriptionWithPrivateData:0];
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

  objc_sync_exit(selfCopy);

  return v13;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  diskObjectID = selfCopy->_diskObjectID;
  volumeName = selfCopy->_volumeName;
  diskIdentifier = selfCopy->_diskIdentifier;
  mountPoint = selfCopy->_mountPoint;
  v10 = [(SKDisk *)selfCopy innerDescriptionWithPrivateData:1];
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

  objc_sync_exit(selfCopy);

  return v15;
}

- (id)wholeDiskIdentifier
{
  contentDiskIdentifier = [(SKDisk *)self contentDiskIdentifier];
  v4 = [contentDiskIdentifier substringFromIndex:4];

  v5 = [v4 componentsSeparatedByString:@"s"];
  if ([v5 count] >= 2)
  {
    contentDiskIdentifier2 = [(SKDisk *)self contentDiskIdentifier];
    v8 = [contentDiskIdentifier2 substringToIndex:4];
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
  wholeDiskIdentifier = [(SKDisk *)self wholeDiskIdentifier];
  if (wholeDiskIdentifier)
  {
    v3 = +[SKBaseManager sharedManager];
    allDisks = [v3 allDisks];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = allDisks;
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
          diskIdentifier = [v9 diskIdentifier];
          v11 = [diskIdentifier isEqualToString:wholeDiskIdentifier];

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
  diskIdentifier = [(SKDisk *)self diskIdentifier];
  v3 = [diskIdentifier hasPrefix:@"apfs://disk"];

  return v3;
}

- (BOOL)rename:(id)rename withCompletionBlock:(id)block
{
  blockCopy = block;
  renameCopy = rename;
  v8 = +[SKHelperClient sharedClient];
  [v8 renameDisk:self to:renameCopy withCompletionBlock:blockCopy];

  return 1;
}

- (BOOL)unmountWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = +[SKHelperClient sharedClient];
  [v5 unmountDisk:self withCompletionBlock:blockCopy];

  return 1;
}

- (BOOL)unmountWithOptions:(id)options completionBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  v8 = +[SKHelperClient sharedClient];
  [v8 unmountDisk:self options:optionsCopy withCompletionBlock:blockCopy];

  return 1;
}

- (BOOL)unmountWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = objc_alloc_init(SKSyncCommand);
  v8 = +[SKHelperClient sharedClient];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __35__SKDisk_unmountWithOptions_error___block_invoke;
  v11[3] = &unk_279D1F948;
  v12 = v7;
  v9 = v7;
  [v8 unmountDisk:self options:optionsCopy blocking:1 withCompletionBlock:v11];

  LOBYTE(error) = [(SKSyncCommand *)v9 returnWithError:error];
  return error;
}

- (BOOL)mountWithOptions:(id)options withCompletionBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v9 = v8;
  if (optionsCopy)
  {
    [v8 setObject:optionsCopy forKey:@"kSKDiskMountOptionToolOptions"];
  }

  v10 = [(SKDisk *)self mountWithOptionsDictionary:v9 withCompletionBlock:blockCopy];

  return v10;
}

- (BOOL)mountWithOptionsDictionary:(id)dictionary withCompletionBlock:(id)block
{
  blockCopy = block;
  dictionaryCopy = dictionary;
  v8 = +[SKHelperClient sharedClient];
  [v8 mountDisk:self options:dictionaryCopy completionBlock:blockCopy];

  return 1;
}

- (BOOL)mountWithOptionsDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (dictionaryCopy)
  {
    if ((isValidNSDictionary(dictionaryCopy) & 1) == 0)
    {
      error = [SKError failWithPOSIXCode:22 debugDescription:@"Options must be a dictionary" error:error];
      goto LABEL_12;
    }

    v8 = [v7 mutableCopy];
    v9 = [v7 objectForKeyedSubscript:@"kSKDiskMountOptionMountPoint"];
    v10 = v9;
    if (v9)
    {
      if (!isValidNSString(v9))
      {
        error = [SKError failWithPOSIXCode:22 debugDescription:@"Mount point must be a string (a path error:not a URL)", error];
        goto LABEL_10;
      }

      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
      absoluteURL = [v11 absoluteURL];
      path = [absoluteURL path];

      if (!path)
      {
        error = [SKError failWithPOSIXCode:22 debugDescription:@"Invalid mount point error:cannot be converted to absolute path", error];

        goto LABEL_10;
      }

      [v8 setObject:path forKeyedSubscript:@"kSKDiskMountOptionMountPoint"];
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

  error = [(SKSyncCommand *)v10 returnWithError:error];
LABEL_10:

LABEL_12:
  return error;
}

- (BOOL)mountWithParams:(id)params error:(id *)error
{
  dictionaryRepresentation = [params dictionaryRepresentation];
  LOBYTE(error) = [(SKDisk *)self mountWithOptionsDictionary:dictionaryRepresentation error:error];

  return error;
}

- (BOOL)ejectWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = +[SKHelperClient sharedClient];
  [v5 ejectDisk:self withCompletionBlock:blockCopy];

  return 1;
}

- (BOOL)ejectWithError:(id *)error
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

  LOBYTE(error) = [(SKSyncCommand *)v7 returnWithError:error];
  return error;
}

- (id)resizeToSize:(unint64_t)size completionBlock:(id)block
{
  blockCopy = block;
  v7 = [SKProgress progressWithTotalUnitCount:100];
  v8 = +[SKHelperClient sharedClient];
  v9 = [v8 resize:self toSize:size completionBlock:blockCopy];

  [v7 chainChildProgress:v9 withPendingUnitCount:100];

  return v7;
}

- (void)resize:(unint64_t)resize completion:(id)completion
{
  completionCopy = completion;
  v6 = +[SKHelperClient sharedClient];
  v7 = [v6 resize:self toSize:resize completionBlock:completionCopy];
}

- (id)formattableFilesystems
{
  if ([(SKDisk *)self isMediaWritable])
  {
    v3 = +[SKBaseManager sharedManager];
    formatableFileSystems = [v3 formatableFileSystems];

    if ([(SKDisk *)self isExternal])
    {
      v5 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_6];
      v6 = [formatableFileSystems filteredArrayUsingPredicate:v5];
    }

    else
    {
      v5 = +[SKFilesystem allFilesystems];
      v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_17];
      v8 = [formatableFileSystems filteredArrayUsingPredicate:v7];

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

- (id)formattableFilesystemWithFilesystem:(id)filesystem
{
  filesystemCopy = filesystem;
  formattableFilesystems = [(SKDisk *)self formattableFilesystems];
  if (([formattableFilesystems containsObject:filesystemCopy] & 1) == 0)
  {
    v6 = MEMORY[0x277CCAC30];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__SKDisk_Erase__formattableFilesystemWithFilesystem___block_invoke;
    v11[3] = &unk_279D1F9E8;
    v12 = filesystemCopy;
    v7 = filesystemCopy;
    v8 = [v6 predicateWithBlock:v11];
    v9 = [formattableFilesystems filteredArrayUsingPredicate:v8];

    if ([v9 count])
    {
      filesystemCopy = [v9 firstObject];
    }

    else
    {
      filesystemCopy = 0;
    }
  }

  return filesystemCopy;
}

- (BOOL)cleanupWithError:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(SKDisk *)self children];
  v5 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(children);
        }

        if (![*(*(&v12 + 1) + 8 * i) cleanupWithError:error])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  diskIdentifier = [(SKDisk *)self diskIdentifier];

  if (!diskIdentifier)
  {
    v11 = SKGetOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SKDisk(Erase) getSectorSize]";
      v20 = 2112;
      selfCopy3 = self;
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
  diskIdentifier2 = [(SKDisk *)self diskIdentifier];
  v6 = [v4 stringWithFormat:@"/dev/r%@", diskIdentifier2];
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
      selfCopy3 = self;
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
      selfCopy3 = self;
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

- (BOOL)wipeDiskWithError:(id *)error
{
  diskIdentifier = [(SKDisk *)self diskIdentifier];

  if (!diskIdentifier)
  {
    v13 = @"Disk does not have a BSD name";
    v14 = 22;
LABEL_7:

    return [SKError failWithPOSIXCode:v14 debugDescription:v13 error:error];
  }

  v6 = MEMORY[0x277CCACA8];
  diskIdentifier2 = [(SKDisk *)self diskIdentifier];
  v8 = [v6 stringWithFormat:@"/dev/r%@", diskIdentifier2];
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

  return [SKError failWithPOSIXCode:v11 debugDescription:v12 error:error];
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