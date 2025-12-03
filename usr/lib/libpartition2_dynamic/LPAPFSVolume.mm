@interface LPAPFSVolume
+ (const)roleMetadataForRole:(int)role;
+ (id)defaultVolumeNameGivenRole:(int)role;
+ (id)supportedContentTypes;
+ (void)_loadMountPointTableForMode:(int)mode;
+ (void)enumerateRoleMetadataUsingBlock:(id)block;
+ (void)initialize;
- (BOOL)_pathIsTemporaryMount:(id)mount;
- (BOOL)createSnapshot:(id)snapshot error:(id *)error;
- (BOOL)deleteSnapshots:(id)snapshots waitForDeletionFor:(double)for error:(id *)error;
- (BOOL)deleteVolumeWithError:(id *)error;
- (BOOL)eraseVolumeWithError:(id *)error;
- (BOOL)isEncrypted;
- (BOOL)isFilevaultEncrypted;
- (BOOL)isMounted;
- (BOOL)mountAtPath:(id)path options:(id)options error:(id *)error;
- (BOOL)mountWithError:(id *)error;
- (BOOL)renameSnapshot:(id)snapshot to:(id)to error:(id *)error;
- (BOOL)revertToSnapshot:(id)snapshot options:(id)options error:(id *)error;
- (BOOL)rootToSnapshot:(id)snapshot error:(id *)error;
- (BOOL)setRole:(int)role withError:(id *)error;
- (BOOL)unmountAllWithError:(id *)error;
- (BOOL)unmountWithOptions:(id)options error:(id *)error;
- (id)_createTemporaryMountPointWithError:(id *)error;
- (id)container;
- (id)mountAtTemporaryPathWithOptions:(id)options error:(id *)error;
- (id)pairedVolume;
- (id)snapshotInfoWithError:(id *)error;
- (id)snapshotMountPoints;
- (id)snapshotsWithError:(id *)error;
- (id)volumeGroupUUID;
- (int)role;
@end

@implementation LPAPFSVolume

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if (_is_running_in_ramdisk_onceToken != -1)
    {
      +[LPAPFSVolume initialize];
    }

    v2 = (_is_running_in_ramdisk_is_ramdisk & 1) == 0;

    [LPAPFSVolume _loadMountPointTableForMode:v2];
  }
}

+ (id)supportedContentTypes
{
  v7[1] = *MEMORY[0x29EDCA608];
  if (objc_opt_class() == self)
  {
    v7[0] = LPAPFSVolumeMediaTypeUUID[0];
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___LPAPFSVolume;
    v3 = objc_msgSendSuper2(&v6, sel_supportedContentTypes);
  }

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

+ (void)_loadMountPointTableForMode:(int)mode
{
  v3 = (&kLPDefaultMountPointTable + 16 * mode);
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:v4];
  if (v4 >= 1)
  {
    v7 = (v5 + 8);
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v7 += 2;
      v10 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v9];
      v11 = [MEMORY[0x29EDBA070] numberWithInt:v8];
      [v6 setObject:v10 forKey:v11];

      --v4;
    }

    while (v4);
  }

  v12 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:v6];
  v13 = sMountPointLookupTable;
  sMountPointLookupTable = v12;
}

+ (void)enumerateRoleMetadataUsingBlock:(id)block
{
  v4 = &enumerateRoleMetadataUsingBlock__sRoleMetadata;
  v5 = 17;
  do
  {
    (*(block + 2))(block, v4);
    v4 += 24;
    --v5;
  }

  while (v5);
}

+ (const)roleMetadataForRole:(int)role
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3254779904;
  v5[2] = __36__LPAPFSVolume_roleMetadataForRole___block_invoke;
  v5[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v5[4] = &v7;
  [self enumerateRoleMetadataUsingBlock:v5];
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __36__LPAPFSVolume_roleMetadataForRole___block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  return result;
}

+ (id)defaultVolumeNameGivenRole:(int)role
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3254779904;
  v5[2] = __43__LPAPFSVolume_defaultVolumeNameGivenRole___block_invoke;
  v5[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v5[4] = &v7;
  [self enumerateRoleMetadataUsingBlock:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __43__LPAPFSVolume_defaultVolumeNameGivenRole___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *a2)
  {
    v2 = *(a2 + 16);
    if (!v2)
    {
      v2 = *(a2 + 8);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v2);
  }
}

- (BOOL)setRole:(int)role withError:(id *)error
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v7 = objc_opt_class();
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3254779904;
  v11[2] = __34__LPAPFSVolume_setRole_withError___block_invoke;
  v11[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v11[4] = v13;
  [v7 enumerateRoleMetadataUsingBlock:v11];
  bSDName = [(LPMedia *)self BSDName];
  [bSDName fileSystemRepresentation];
  v9 = APFSVolumeRole();

  if (error && v9)
  {
    *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v9 userInfo:0];
  }

  _Block_object_dispose(v13, 8);
  return v9 == 0;
}

uint64_t __34__LPAPFSVolume_setRole_withError___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == *a2)
  {
    *(*(*(result + 32) + 8) + 24) = *(a2 + 4);
  }

  return result;
}

- (int)role
{
  v24 = *MEMORY[0x29EDCA608];
  v23 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  bSDName = [(LPMedia *)self BSDName];
  v4 = bSDName;
  [bSDName fileSystemRepresentation];
  v5 = APFSVolumeRole();

  if (v5)
  {
    _os_log_pack_size();
    v6 = _os_log_pack_fill();
    *v6 = 136315394;
    *(v6 + 4) = "[LPAPFSVolume role]";
    *(v6 + 12) = 1024;
    *(v6 + 14) = v5;
    _LPLogPack(1);
  }

  else
  {
    v7 = objc_opt_class();
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3254779904;
    v17[2] = __20__LPAPFSVolume_role__block_invoke;
    v17[3] = &__block_descriptor_42_e8_32r_e17_v16__0r____iS___8l;
    v18 = v23;
    v17[4] = &v19;
    [v7 enumerateRoleMetadataUsingBlock:v17];
  }

  v8 = *(v20 + 6);
  if (!v8)
  {
    name = [(LPMedia *)self name];
    v10 = objc_opt_class();
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3254779904;
    v14[2] = __20__LPAPFSVolume_role__block_invoke_122;
    v14[3] = &__block_descriptor_48_e8_32s40r_e17_v16__0r____iS___8l;
    v11 = name;
    v15 = v11;
    v16 = &v19;
    [v10 enumerateRoleMetadataUsingBlock:v14];

    v8 = *(v20 + 6);
  }

  _Block_object_dispose(&v19, 8);
  v12 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t __20__LPAPFSVolume_role__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == *(a2 + 4))
  {
    *(*(*(result + 32) + 8) + 24) = *a2;
  }

  return result;
}

void __20__LPAPFSVolume_role__block_invoke_122(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    v4 = *(a2 + 8);
  }

  v5 = v4;
  if (![*(a1 + 32) caseInsensitiveCompare:v5])
  {
    *(*(*(a1 + 40) + 8) + 24) = *a2;
  }
}

- (id)volumeGroupUUID
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = [(LPMedia *)self getStringPropertyWithName:@"VolGroupUUID"];
  uTF8String = [v2 UTF8String];
  memset(uu, 0, sizeof(uu));
  if (!uTF8String || uuid_parse(uTF8String, uu) || uuid_is_null(uu))
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

- (id)container
{
  iterator = 0;
  if (MEMORY[0x29C29F270]([(LPMedia *)self ioMedia], "IOService", 3, &iterator))
  {
    v2 = 0;
  }

  else
  {
    v3 = IOIteratorNext(iterator);
    if (v3)
    {
      v4 = v3;
      v2 = 0;
      do
      {
        if (IOObjectConformsTo(v4, "AppleAPFSMedia"))
        {
          v5 = [(LPMedia *)[LPAPFSContainer alloc] initWithIOMediaObject:v4];
          v6 = v5;
          v7 = v5 != 0;
          if (v5)
          {
            v8 = v5;

            v2 = v8;
          }
        }

        else
        {
          v7 = 0;
        }

        IOObjectRelease(v4);
        v4 = IOIteratorNext(iterator);
        if (v4)
        {
          v9 = !v7;
        }

        else
        {
          v9 = 0;
        }
      }

      while (v9);
    }

    else
    {
      v2 = 0;
    }

    IOObjectRelease(iterator);
  }

  return v2;
}

- (BOOL)isEncrypted
{
  devNodePath = [(LPMedia *)self devNodePath];
  [devNodePath fileSystemRepresentation];
  APFSVolumeGetVEKState();

  return 0;
}

- (BOOL)isFilevaultEncrypted
{
  devNodePath = [(LPMedia *)self devNodePath];
  [devNodePath fileSystemRepresentation];
  APFSVolumeGetVEKState();

  return 0;
}

- (id)pairedVolume
{
  role = [(LPAPFSVolume *)self role];
  if (role == 1)
  {
    v4 = 3;
    goto LABEL_5;
  }

  if (role == 3)
  {
    v4 = 1;
LABEL_5:
    v5 = [(LPAPFSVolume *)self pairedVolumeWithRole:v4];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)snapshotMountPoints
{
  v24[2] = *MEMORY[0x29EDCA608];
  devNodePath = [(LPMedia *)self devNodePath];
  if (devNodePath)
  {
    v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"@%@", devNodePath];
    v22 = 0;
    v4 = getmntinfo_r_np(&v22, 0);
    v5 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:13];
    v6 = objc_autoreleasePoolPush();
    if (v4 >= 1)
    {
      v20 = v6;
      v21 = devNodePath;
      v7 = 0;
      v8 = 0;
      v9 = v4;
      v10 = 1112;
      do
      {
        v11 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{v22 + v10, v20, v21}];
        if ([v11 hasSuffix:v3])
        {
          v12 = [v11 substringToIndex:{objc_msgSend(v11, "rangeOfString:options:", @"@", 4)}];

          1024 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v22 + v10 - 1024];
          v23[0] = LPAPFSVolumeSnapshotMountPointKeyName;
          v23[1] = LPAPFSVolumeSnapshotMountPointKeyMountPoint;
          v24[0] = v12;
          v24[1] = 1024;
          v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
          [v5 addObject:v14];

          v8 = 1024;
          v7 = v12;
        }

        v10 += 2168;
        --v9;
      }

      while (v9);

      v6 = v20;
      devNodePath = v21;
    }

    objc_autoreleasePoolPop(v6);
    if (v22)
    {
      free(v22);
    }

    if ([v5 count])
    {
      v15 = v5;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    _os_log_pack_size();
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[LPAPFSVolume snapshotMountPoints]";
    _LPLogPack(1);
    v16 = 0;
  }

  v18 = *MEMORY[0x29EDCA608];

  return v16;
}

- (BOOL)isMounted
{
  mountPoint = [(LPMedia *)self mountPoint];
  if (mountPoint)
  {
    v4 = 1;
  }

  else
  {
    snapshotMountPoints = [(LPAPFSVolume *)self snapshotMountPoints];
    v4 = snapshotMountPoints != 0;
  }

  return v4;
}

- (BOOL)eraseVolumeWithError:(id *)error
{
  v11 = *MEMORY[0x29EDCA608];
  mountPoint = [(LPMedia *)self mountPoint];
  v5 = mountPoint;
  if (mountPoint)
  {
    v6 = _lp2_delete_directory_contents([mountPoint fileSystemRepresentation]);
    if (error && v6)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v6 userInfo:0];
    }

    v7 = *__error() == 0;
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[LPAPFSVolume eraseVolumeWithError:]";
    _LPLogPack(1);
    v7 = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v7;
}

- (BOOL)mountWithError:(id *)error
{
  mountPoint = [(LPMedia *)self mountPoint];

  if (mountPoint)
  {
    return 1;
  }

  v7 = [LPAPFSVolume defaultMountPointGivenRole:[(LPAPFSVolume *)self role]];
  if (v7 && (v8 = [LPMedia mediaForPath:v7], v8, !v8))
  {
    v6 = [(LPAPFSVolume *)self mountAtPath:v7 error:error];
  }

  else
  {
    v9 = [(LPAPFSVolume *)self mountAtTemporaryPathWithError:error];
    v6 = v9 != 0;
  }

  return v6;
}

- (BOOL)_pathIsTemporaryMount:(id)mount
{
  mountCopy = mount;
  if ([mountCopy containsString:@"tmp-mount-"])
  {
    if (_is_running_in_ramdisk_onceToken != -1)
    {
      +[LPAPFSVolume initialize];
    }

    if (_is_running_in_ramdisk_is_ramdisk)
    {
      v4 = @"/mnt5";
    }

    else
    {
      v4 = @"/tmp/";
    }

    stringByResolvingSymlinksInPath = [(__CFString *)v4 stringByResolvingSymlinksInPath];
    stringByResolvingSymlinksInPath2 = [mountCopy stringByResolvingSymlinksInPath];
    stringByDeletingLastPathComponent = [stringByResolvingSymlinksInPath2 stringByDeletingLastPathComponent];

    v8 = [stringByDeletingLastPathComponent isEqualToString:stringByResolvingSymlinksInPath];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_createTemporaryMountPointWithError:(id *)error
{
  v11 = *MEMORY[0x29EDCA608];
  if (_is_running_in_ramdisk_onceToken != -1)
  {
    +[LPAPFSVolume initialize];
  }

  bzero(v10, 0x400uLL);
  __strlcpy_chk();
  if (mkdtemp(v10))
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v10];
  }

  else
  {
    _os_log_pack_size();
    MEMORY[0x2A1C7C4A8]();
    v5 = _os_log_pack_fill();
    *v5 = 136315138;
    *(v5 + 4) = v10;
    _LPLogPack(1);
    if (*error)
    {
      v6 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
      v7 = v6;
      v4 = 0;
      *error = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *MEMORY[0x29EDCA608];

  return v4;
}

- (id)mountAtTemporaryPathWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [(LPAPFSVolume *)self _createTemporaryMountPointWithError:error];
  if (v7 && [(LPAPFSVolume *)self mountAtPath:v7 options:optionsCopy error:error])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)mountAtPath:(id)path options:(id)options error:(id *)error
{
  v73[1] = *MEMORY[0x29EDCA608];
  pathCopy = path;
  optionsCopy = options;
  devNodePath = [(LPMedia *)self devNodePath];
  if (devNodePath)
  {
    mountPoint = [(LPMedia *)self mountPoint];
    v12 = [mountPoint isEqualToString:pathCopy];
    if (optionsCopy || !v12)
    {
      if (!mountPoint)
      {
        goto LABEL_10;
      }

      _os_log_pack_size();
      v18 = _os_log_pack_fill();
      *v18 = 138412546;
      *(v18 + 4) = mountPoint;
      *(v18 + 12) = 2112;
      *(v18 + 14) = pathCopy;
      _LPLogPack(2);
      v14 = 0;
      if ([(LPAPFSVolume *)self unmountWithError:error])
      {
LABEL_10:
        v19 = mkpath_np([pathCopy fileSystemRepresentation], 0x1FFu);
        if (v19 && v19 != 17)
        {
          v45 = optionsCopy;
          if (error)
          {
            v46 = MEMORY[0x29EDB9FA0];
            v47 = *MEMORY[0x29EDB9EF8];
            v48 = v19;
            v72 = *MEMORY[0x29EDB9E60];
            v73[0] = pathCopy;
            v49 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
            *error = [v46 errorWithDomain:v47 code:v48 userInfo:v49];
          }

          _os_log_pack_size();
          v50 = _os_log_pack_fill();
          v51 = [(LPMedia *)self description];
          uTF8String = [v51 UTF8String];
          fileSystemRepresentation = [pathCopy fileSystemRepresentation];
          *v50 = 136380931;
          *(v50 + 4) = uTF8String;
          *(v50 + 12) = 2081;
          *(v50 + 14) = fileSystemRepresentation;

          _LPLogPack(1);
          v14 = 0;
          optionsCopy = v45;
        }

        else
        {
          v68 = xmmword_29EF6BA38;
          v69 = unk_29EF6BA48;
          v70 = xmmword_29EF6BA58;
          v71 = 0;
          v66 = xmmword_29EF6BA18;
          v67 = unk_29EF6BA28;
          v20 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionReadOnly];
          v21 = v20;
          v22 = MEMORY[0x29EDB8EA8];
          if (!v20)
          {
            v20 = MEMORY[0x29EDB8EA8];
          }

          v23 = v20;

          v62 = v23;
          if ([v23 BOOLValue])
          {
            *(&v66 + 1) = "-o";
            *&v67 = "rdonly";
            v24 = 3;
          }

          else
          {
            v24 = 1;
          }

          v25 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionNoBrowse];
          v26 = v25;
          if (!v25)
          {
            v25 = MEMORY[0x29EDB8EB0];
          }

          v27 = v25;

          v61 = v27;
          if ([v27 BOOLValue])
          {
            *(&v66 + v24) = "-o";
            v28 = v24 + 1;
            v24 += 2;
            *(&v66 + v28) = "nobrowse";
          }

          v29 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionNoFirmlinks];
          v30 = v29;
          if (!v29)
          {
            v29 = v22;
          }

          v31 = v29;

          v60 = v31;
          if ([v31 BOOLValue])
          {
            *(&v66 + v24++) = "-n";
          }

          errorCopy = error;
          v32 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionSnapshotName];
          v57 = [v32 length];
          v63 = optionsCopy;
          v59 = v32;
          if (v57)
          {
            v33 = v24 + 1;
            *(&v66 + v24) = "-s";
            v24 += 2;
            *(&v66 + v33) = [v32 fileSystemRepresentation];
          }

          *(&v66 + v24) = [devNodePath fileSystemRepresentation];
          *(&v66 + v24 + 1) = [pathCopy fileSystemRepresentation];
          v34 = _execForLibpartition(&v66);
          if (v34 == 75)
          {
            _os_log_pack_size();
            v35 = 0;
            do
            {
              v36 = _os_log_pack_fill();
              *v36 = 138412802;
              *(v36 + 4) = devNodePath;
              *(v36 + 12) = 1024;
              *(v36 + 14) = 75;
              *(v36 + 18) = 1024;
              *(v36 + 20) = v35;
              _LPLogPack(1);
              sleep(3u);
              v34 = _execForLibpartition(&v66);
              if (v34 != 75)
              {
                break;
              }
            }

            while (v35++ < 2);
          }

          v14 = v34 == 0;
          if (v34)
          {
            if (errorCopy)
            {
              v38 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"mount_apfs returned : %d", v34];
              v39 = MEMORY[0x29EDB9FA0];
              v40 = *MEMORY[0x29EDB9EF8];
              v41 = *MEMORY[0x29EDB9ED8];
              v64[0] = *MEMORY[0x29EDB9EE0];
              v64[1] = v41;
              v65[0] = @"Mount failed";
              v65[1] = v38;
              v42 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
              *errorCopy = [v39 errorWithDomain:v40 code:22 userInfo:v42];
            }

            _os_log_pack_size();
            v43 = _os_log_pack_fill();
            *v43 = 138412546;
            *(v43 + 4) = devNodePath;
            *(v43 + 12) = 1024;
            *(v43 + 14) = v34;
            _LPLogPack(1);
            optionsCopy = v63;
            v44 = v59;
          }

          else
          {
            v44 = v32;
            _os_log_pack_size();
            v54 = _os_log_pack_fill();
            if (v57)
            {
              *v54 = 138412803;
              *(v54 + 4) = devNodePath;
              *(v54 + 12) = 2113;
              *(v54 + 14) = v32;
              *(v54 + 22) = 2113;
              *(v54 + 24) = pathCopy;
            }

            else
            {
              *v54 = 138412547;
              *(v54 + 4) = devNodePath;
              *(v54 + 12) = 2113;
              *(v54 + 14) = pathCopy;
            }

            _LPLogPack(2);
          }
        }
      }
    }

    else
    {
      _os_log_pack_size();
      v13 = _os_log_pack_fill();
      *v13 = 138412290;
      *(v13 + 4) = pathCopy;
      _LPLogPack(2);
      v14 = 1;
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    _os_log_pack_size();
    v15 = _os_log_pack_fill();
    v16 = [(LPMedia *)self description];
    uTF8String2 = [v16 UTF8String];
    *v15 = 136315138;
    *(v15 + 4) = uTF8String2;

    _LPLogPack(1);
    v14 = 0;
  }

  v55 = *MEMORY[0x29EDCA608];
  return v14;
}

- (BOOL)unmountWithOptions:(id)options error:(id *)error
{
  v87 = *MEMORY[0x29EDCA608];
  optionsCopy = options;
  v62 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:1];
  v6 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionAll];
  bOOLValue = [v6 BOOLValue];

  v8 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionSnapshotName];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = bOOLValue == 0;
  }

  selfCopy = self;
  if (v9)
  {
    mountPoint = [(LPMedia *)self mountPoint];

    if (!mountPoint)
    {
      goto LABEL_28;
    }

    mountPoint2 = [(LPMedia *)self mountPoint];
    [v62 addObject:mountPoint2];
  }

  else
  {
    mountPoint2 = [(LPAPFSVolume *)self snapshotMountPoints];
    mountPoint3 = [(LPMedia *)self mountPoint];
    v12 = mountPoint3;
    if (mountPoint2)
    {
      v68 = mountPoint3;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v71 = mountPoint2;
      v74 = mountPoint2;
      v13 = [v74 countByEnumeratingWithState:&v81 objects:v86 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v82;
        while (2)
        {
          v16 = 0;
          v72 = v14;
          do
          {
            if (*v82 != v15)
            {
              objc_enumerationMutation(v74);
            }

            v17 = *(*(&v81 + 1) + 8 * v16);
            if (bOOLValue)
            {
              v18 = [v17 objectForKey:LPAPFSVolumeSnapshotMountPointKeyMountPoint];
              [v62 addObject:v18];
            }

            else
            {
              v19 = [optionsCopy objectForKey:LPAPFSVolumeSnapshotMountPointKeyName];
              v20 = v15;
              v21 = bOOLValue;
              v22 = [v17 objectForKey:v19];
              v23 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionSnapshotName];
              v24 = [v22 isEqualToString:v23];

              v25 = v22;
              bOOLValue = v21;
              v15 = v20;
              v14 = v72;

              if (v24)
              {
                v26 = [v17 objectForKey:LPAPFSVolumeSnapshotMountPointKeyMountPoint];
                [v62 addObject:v26];

                if ((bOOLValue & 1) == 0)
                {

                  self = selfCopy;
                  mountPoint2 = v71;
                  v12 = v68;
                  goto LABEL_26;
                }
              }
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v74 countByEnumeratingWithState:&v81 objects:v86 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      self = selfCopy;
      mountPoint2 = v71;
      v12 = v68;
    }

    if (v12)
    {
      v27 = bOOLValue;
    }

    else
    {
      v27 = 0;
    }

    if (v27 == 1)
    {
      [v62 addObject:v12];
    }

LABEL_26:
  }

LABEL_28:
  v65 = optionsCopy;
  if ([v62 count])
  {
    [v62 sortUsingComparator:&__block_literal_global];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v63 = v62;
    v66 = [v63 countByEnumeratingWithState:&v77 objects:v85 count:16];
    if (!v66)
    {
      v56 = 0;
      goto LABEL_72;
    }

    v64 = *v78;
    v67 = *MEMORY[0x29EDB9EF8];
    while (1)
    {
      v29 = 0;
      do
      {
        if (*v78 != v64)
        {
          objc_enumerationMutation(v63);
        }

        v69 = v29;
        v30 = *(*(&v77 + 1) + 8 * v29);
        if (optionsCopy)
        {
          v31 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionForce];
          v32 = v31 != 0;

          v75 = v32 << 19;
          v33 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionDoNotLock];

          if (v33)
          {
            v76 = 1;
            if (fsctl([v30 fileSystemRepresentation], 0x80014A22uLL, &v76, 0))
            {
              if (*__error() == 17)
              {
                _os_log_pack_size();
                v34 = _os_log_pack_fill();
                devNodePath = [(LPMedia *)self devNodePath];
                *v34 = 138412290;
                *(v34 + 4) = devNodePath;
                v36 = 2;
              }

              else
              {
                _os_log_pack_size();
                v37 = _os_log_pack_fill();
                devNodePath = [(LPMedia *)self devNodePath];
                v38 = *__error();
                *v37 = 138412546;
                *(v37 + 4) = devNodePath;
                *(v37 + 12) = 1024;
                *(v37 + 14) = v38;
                v36 = 1;
              }

              _LPLogPack(v36);
            }
          }
        }

        else
        {
          v75 = 0;
        }

        v39 = 0;
        while (unmount([v30 fileSystemRepresentation], v75))
        {
          v40 = *__error();
          v41 = selfCopy;
          if (v40 == 22)
          {
            _os_log_pack_size();
            *_os_log_pack_fill() = 0;
            _LPLogPack(1);
            v42 = 0;
          }

          else if (v39 < 3)
          {
            if (v40 != 35 && v40 != 16)
            {
              goto LABEL_55;
            }

            ++v39;
            sleep(3u);
            v42 = 1;
          }

          else
          {
            if (v39 == 3 && v40 == 16 && [(LPAPFSVolume *)selfCopy role]!= 12)
            {
              v75 |= 0x80000u;
              sleep(3u);
              _os_log_pack_size();
              v47 = _os_log_pack_fill();
              devNodePath2 = [(LPMedia *)selfCopy devNodePath];
              *v47 = 138412546;
              *(v47 + 4) = devNodePath2;
              *(v47 + 12) = 1024;
              *(v47 + 14) = 16;
              v42 = 1;
              _LPLogPack(1);
              v49 = devNodePath2;
              v41 = selfCopy;

              v39 = 4;
              goto LABEL_56;
            }

            if (!error)
            {
LABEL_55:
              v42 = 0;
              goto LABEL_56;
            }

            v42 = 0;
            *error = [MEMORY[0x29EDB9FA0] errorWithDomain:v67 code:v40 userInfo:0];
          }

LABEL_56:
          _os_log_pack_size();
          v43 = _os_log_pack_fill();
          devNodePath3 = [(LPMedia *)v41 devNodePath];
          v45 = devNodePath3;
          *v43 = 138412802;
          v46 = "no";
          if (v42)
          {
            v46 = "yes";
          }

          *(v43 + 4) = devNodePath3;
          *(v43 + 12) = 2080;
          *(v43 + 14) = v46;
          *(v43 + 22) = 1024;
          *(v43 + 24) = v40;
          _LPLogPack(1);

          if ((v42 & 1) == 0)
          {
            self = selfCopy;
            v55 = v69;
            v56 = v40 == 22;
            goto LABEL_67;
          }
        }

        _os_log_pack_size();
        v50 = _os_log_pack_fill();
        self = selfCopy;
        devNodePath4 = [(LPMedia *)selfCopy devNodePath];
        *v50 = 138412547;
        *(v50 + 4) = devNodePath4;
        *(v50 + 12) = 2113;
        *(v50 + 14) = v30;
        _LPLogPack(2);

        if ([(LPAPFSVolume *)selfCopy _pathIsTemporaryMount:v30])
        {
          if (rmdir([v30 fileSystemRepresentation]))
          {
            _os_log_pack_size();
            v52 = _os_log_pack_fill();
            v53 = *__error();
            *v52 = 67109120;
            v52[1] = v53;
            v54 = 1;
          }

          else
          {
            _os_log_pack_size();
            *_os_log_pack_fill() = 0;
            v54 = 2;
          }

          _LPLogPack(v54);
        }

        v56 = 1;
        v55 = v69;
LABEL_67:
        v29 = v55 + 1;
        optionsCopy = v65;
      }

      while (v29 != v66);
      v66 = [v63 countByEnumeratingWithState:&v77 objects:v85 count:16];
      if (!v66)
      {
LABEL_72:

        goto LABEL_73;
      }
    }
  }

  _os_log_pack_size();
  v57 = _os_log_pack_fill();
  devNodePath5 = [(LPMedia *)self devNodePath];
  *v57 = 138412290;
  *(v57 + 4) = devNodePath5;
  _LPLogPack(2);
  v59 = devNodePath5;
  optionsCopy = v65;

  v56 = 1;
LABEL_73:

  v60 = *MEMORY[0x29EDCA608];
  return v56;
}

- (BOOL)unmountAllWithError:(id *)error
{
  v9[1] = *MEMORY[0x29EDCA608];
  v8 = LPAPFSVolumeUnmountOptionAll;
  v9[0] = MEMORY[0x29EDB8EB0];
  v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  LOBYTE(error) = [(LPAPFSVolume *)self unmountWithOptions:v5 error:error];

  v6 = *MEMORY[0x29EDCA608];
  return error;
}

- (BOOL)deleteVolumeWithError:(id *)error
{
  v22 = *MEMORY[0x29EDCA608];
  devNodePath = [(LPMedia *)self devNodePath];
  if (devNodePath)
  {
    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *&v6 = 136315394;
    v21 = v6;
    *v5 = 136315394;
    *(v5 + 4) = "[LPAPFSVolume deleteVolumeWithError:]";
    *(v5 + 12) = 2112;
    *(v5 + 14) = devNodePath;
    _LPLogPack(2);
    [devNodePath fileSystemRepresentation];
    v7 = APFSVolumeDelete();
    if (!v7)
    {
      v14 = 1;
      goto LABEL_18;
    }

    v8 = v7;
    if (v7 >> 26 == 56)
    {
      _os_log_pack_size();
      v9 = _os_log_pack_fill();
      v10 = v8 & 0x3FFF;
      *v9 = v21;
      *(v9 + 4) = "[LPAPFSVolume deleteVolumeWithError:]";
      *(v9 + 12) = 1024;
      *(v9 + 14) = v10;
      _LPLogPack(1);
      if (error)
      {
        v11 = MEMORY[0x29EDB9FA0];
        v12 = @"com.apple.IOKit";
LABEL_14:
        v17 = v10;
LABEL_17:
        v14 = 0;
        *error = [v11 errorWithDomain:v12 code:v17 userInfo:{0, v21}];
        goto LABEL_18;
      }
    }

    else
    {
      v15 = v7 & 0xFFFFC000;
      _os_log_pack_size();
      if (v15 == 49152)
      {
        v16 = _os_log_pack_fill();
        v10 = v8 & 0x3FFF;
        *v16 = v21;
        *(v16 + 4) = "[LPAPFSVolume deleteVolumeWithError:]";
        *(v16 + 12) = 1024;
        *(v16 + 14) = v10;
        _LPLogPack(1);
        if (error)
        {
          v11 = MEMORY[0x29EDB9FA0];
          v12 = *MEMORY[0x29EDB9EF8];
          goto LABEL_14;
        }
      }

      else
      {
        v18 = _os_log_pack_fill();
        *v18 = v21;
        *(v18 + 4) = "[LPAPFSVolume deleteVolumeWithError:]";
        *(v18 + 12) = 1024;
        *(v18 + 14) = v8;
        _LPLogPack(1);
        if (error)
        {
          v11 = MEMORY[0x29EDB9FA0];
          v12 = *MEMORY[0x29EDB9EF0];
          v17 = v8;
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "[LPAPFSVolume deleteVolumeWithError:]";
    _LPLogPack(1);
  }

  v14 = 0;
LABEL_18:

  v19 = *MEMORY[0x29EDCA608];
  return v14;
}

- (id)snapshotsWithError:(id *)error
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = [(LPAPFSVolume *)self snapshotInfoWithError:error];
  v4 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) objectForKey:{LPAPFSSnapshotPropertyKeyName[0], v13}];
          if (v10)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x29EDCA608];

  return v4;
}

- (id)snapshotInfoWithError:(id *)error
{
  v45[256] = *MEMORY[0x29EDCA608];
  mountPoint = [(LPMedia *)self mountPoint];
  v6 = mountPoint;
  if (!mountPoint)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    _os_log_pack_size();
    v32 = _os_log_pack_fill();
    v33 = [(LPMedia *)self description];
    *v32 = 136315395;
    *(v32 + 4) = "[LPAPFSVolume snapshotInfoWithError:]";
    *(v32 + 12) = 2113;
    *(v32 + 14) = v33;
    _LPLogPack(1);

    goto LABEL_43;
  }

  v7 = open([mountPoint fileSystemRepresentation], 0x100000);
  if (v7 < 0)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    }

    _os_log_pack_size();
    v34 = _os_log_pack_fill();
    *v34 = 136315651;
    *(v34 + 4) = "[LPAPFSVolume snapshotInfoWithError:]";
    *(v34 + 12) = 2113;
    *(v34 + 14) = v6;
    *(v34 + 22) = 1024;
    *(v34 + 24) = 0;
    _LPLogPack(1);
LABEL_43:
    v31 = 0;
    goto LABEL_47;
  }

  v8 = v7;
  errorCopy = error;
  v39 = v6;
  v40 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
  *&v44.volattr = 0;
  *&v44.fileattr = 0;
  bzero(v45, 0x800uLL);
  *&v44.bitmapcount = 0xA000002100000005;
  v9 = fs_snapshot_list(v8, &v44, v45, 0x800uLL, 0);
  if (v9 >= 1)
  {
    v10 = v45;
    v41 = v8;
    do
    {
      do
      {
        v11 = __OFSUB__(v9--, 1);
        if (v9 < 0 != v11)
        {
          break;
        }

        v12 = (v10 + 6);
        v13 = v10[1];
        v43 = *v10;
        if ((v13 & 0x20000000) != 0)
        {
          v16 = *v12;
          _os_log_pack_size();
          v17 = _os_log_pack_fill();
          *v17 = 136315394;
          *(v17 + 4) = "[LPAPFSVolume snapshotInfoWithError:]";
          *(v17 + 12) = 1024;
          *(v17 + 14) = v16;
          _LPLogPack(1);
        }

        else
        {
          if (v13)
          {
            v18 = v12 + *v12;
            v14 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v18];
            if (!v14)
            {
              _os_log_pack_size();
              v19 = _os_log_pack_fill();
              *v19 = 136315395;
              *(v19 + 4) = "[LPAPFSVolume snapshotInfoWithError:]";
              *(v19 + 12) = 2081;
              *(v19 + 14) = v18;
              _LPLogPack(2);
              v14 = 0;
            }

            v12 = (v10 + 8);
            v15 = v10[1];
          }

          else
          {
            v14 = 0;
            LOBYTE(v15) = v10[1];
          }

          v42 = v14;
          if ((v15 & 0x20) != 0)
          {
            v23 = *v12;
            0x3FFFFFFFFFFFFFFFLL = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*v12 & 0x3FFFFFFFFFFFFFFFLL];
            v24 = MEMORY[0x29EDB8EB0];
            v25 = MEMORY[0x29EDB8EA8];
            if ((v23 & 0x4000000000000000) != 0)
            {
              v26 = MEMORY[0x29EDB8EB0];
            }

            else
            {
              v26 = MEMORY[0x29EDB8EA8];
            }

            v21 = v26;
            if (v23 < 0)
            {
              v27 = v24;
            }

            else
            {
              v27 = v25;
            }

            v20 = v27;
          }

          else
          {
            v20 = 0;
            v21 = 0;
            0x3FFFFFFFFFFFFFFFLL = 0;
          }

          v28 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:4];
          v29 = v28;
          if (v42)
          {
            [v28 setObject:v42 forKey:LPAPFSSnapshotPropertyKeyName[0]];
          }

          if (0x3FFFFFFFFFFFFFFFLL)
          {
            [v29 setObject:0x3FFFFFFFFFFFFFFFLL forKey:LPAPFSSnapshotPropertyKeyXID[0]];
          }

          if (v21)
          {
            [v29 setObject:v21 forKey:LPAPFSSnapshotPropertyKeyMarkedForRevert];
          }

          if (v20)
          {
            [v29 setObject:v20 forKey:LPAPFSSnapshotPropertyKeyMarkedForRoot[0]];
          }

          if ([v29 count])
          {
            [v40 addObject:v29];
          }

          v8 = v41;
        }

        v10 = (v10 + v43);
      }

      while ((v13 & 0x20000000) == 0);
      v10 = v45;
      v9 = fs_snapshot_list(v8, &v44, v45, 0x800uLL, 0);
    }

    while (v9 > 0);
  }

  if (v9 < 0)
  {
    _os_log_pack_size();
    v35 = _os_log_pack_fill();
    *v35 = 136315394;
    *(v35 + 4) = "[LPAPFSVolume snapshotInfoWithError:]";
    *(v35 + 12) = 1024;
    *(v35 + 14) = v9;
    _LPLogPack(1);
    close(v8);
    v30 = v40;
    v31 = 0;
    if (errorCopy)
    {
      *errorCopy = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v9 userInfo:0];
    }
  }

  else
  {
    close(v8);
    v30 = v40;
    v31 = [MEMORY[0x29EDB8D80] arrayWithArray:v40];
  }

  v6 = v39;
LABEL_47:

  v36 = *MEMORY[0x29EDCA608];

  return v31;
}

- (BOOL)createSnapshot:(id)snapshot error:(id *)error
{
  v19 = *MEMORY[0x29EDCA608];
  snapshotCopy = snapshot;
  mountPoint = [(LPMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    goto LABEL_12;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

LABEL_12:
    _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[LPAPFSVolume createSnapshot:error:]";
LABEL_13:
    _LPLogPack(1);
    v11 = 0;
    goto LABEL_14;
  }

  v8 = open([mountPoint fileSystemRepresentation], 0);
  if (v8 < 0)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    }

    _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315395;
    *(v18 + 4) = "[LPAPFSVolume createSnapshot:error:]";
    *(v18 + 12) = 2113;
    *(v18 + 14) = mountPoint;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = fs_snapshot_create(v8, [snapshotCopy fileSystemRepresentation], 0);
  v11 = v10 == 0;
  if (v10)
  {
    v12 = *__error();
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v12 userInfo:0];
    }

    _os_log_pack_size();
    v13 = _os_log_pack_fill();
    v14 = strerror(v12);
    *v13 = 67109378;
    *(v13 + 4) = v12;
    *(v13 + 8) = 2080;
    *(v13 + 10) = v14;
    _LPLogPack(1);
  }

  close(v9);
LABEL_14:

  v16 = *MEMORY[0x29EDCA608];
  return v11;
}

- (BOOL)deleteSnapshots:(id)snapshots waitForDeletionFor:(double)for error:(id *)error
{
  v37 = *MEMORY[0x29EDCA608];
  snapshotsCopy = snapshots;
  mountPoint = [(LPMedia *)self mountPoint];
  if (!snapshotsCopy)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    goto LABEL_25;
  }

  if (![snapshotsCopy count])
  {
    v21 = 1;
    goto LABEL_27;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

LABEL_25:
    _os_log_pack_size();
    v22 = _os_log_pack_fill();
    *v22 = 136315138;
    *(v22 + 4) = "[LPAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
LABEL_26:
    _LPLogPack(1);
    v21 = 0;
    goto LABEL_27;
  }

  v10 = open([mountPoint fileSystemRepresentation], 0);
  if (v10 < 0)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    }

    _os_log_pack_size();
    v25 = _os_log_pack_fill();
    v26 = *__error();
    *v25 = 136315394;
    *(v25 + 4) = "[LPAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
    *(v25 + 12) = 1024;
    *(v25 + 14) = v26;
    goto LABEL_26;
  }

  v11 = v10;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v12 = snapshotsCopy;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    errorCopy = error;
    v29 = mountPoint;
    v15 = 0;
    v30 = 0;
    v16 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        if (fs_snapshot_delete(v11, [v18 fileSystemRepresentation], 0))
        {
          v15 = *__error();
          _os_log_pack_size();
          v19 = _os_log_pack_fill();
          v20 = *__error();
          *v19 = 136315651;
          *(v19 + 4) = "[LPAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
          *(v19 + 12) = 2113;
          *(v19 + 14) = v18;
          *(v19 + 22) = 1024;
          *(v19 + 24) = v20;
          _LPLogPack(1);
        }

        else
        {
          v30 = 1;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);

    if (errorCopy)
    {
      v21 = v30;
      if (v15)
      {
        *errorCopy = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v15 userInfo:0];
      }

      mountPoint = v29;
    }

    else
    {
      mountPoint = v29;
      v21 = v30;
    }
  }

  else
  {

    v21 = 0;
  }

  if (for != 0.0)
  {
    v31[2] = 0;
    v31[1] = 0;
    v31[0] = 15;
    if (ffsctl(v11, 0x80184A24uLL, v31, 0))
    {
      _os_log_pack_size();
      v27 = _os_log_pack_fill();
      *v27 = 136315138;
      *(v27 + 4) = "[LPAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
      _LPLogPack(1);
    }
  }

  close(v11);
LABEL_27:

  v23 = *MEMORY[0x29EDCA608];
  return v21 & 1;
}

- (BOOL)renameSnapshot:(id)snapshot to:(id)to error:(id *)error
{
  v22 = *MEMORY[0x29EDCA608];
  snapshotCopy = snapshot;
  toCopy = to;
  mountPoint = [(LPMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    goto LABEL_17;
  }

  if (!toCopy || ![toCopy length])
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    goto LABEL_17;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

LABEL_17:
    _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[LPAPFSVolume renameSnapshot:to:error:]";
LABEL_18:
    _LPLogPack(1);
    v14 = 0;
    goto LABEL_19;
  }

  v11 = open([mountPoint fileSystemRepresentation], 0);
  if (v11 < 0)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    }

    _os_log_pack_size();
    v21 = _os_log_pack_fill();
    *v21 = 136315395;
    *(v21 + 4) = "[LPAPFSVolume renameSnapshot:to:error:]";
    *(v21 + 12) = 2113;
    *(v21 + 14) = mountPoint;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = fs_snapshot_rename(v11, [snapshotCopy fileSystemRepresentation], objc_msgSend(toCopy, "fileSystemRepresentation"), 0);
  v14 = v13 == 0;
  if (v13)
  {
    v15 = *__error();
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v15 userInfo:0];
    }

    _os_log_pack_size();
    v16 = _os_log_pack_fill();
    v17 = strerror(v15);
    *v16 = 67109378;
    *(v16 + 4) = v15;
    *(v16 + 8) = 2080;
    *(v16 + 10) = v17;
    _LPLogPack(1);
  }

  close(v12);
LABEL_19:

  v19 = *MEMORY[0x29EDCA608];
  return v14;
}

- (BOOL)revertToSnapshot:(id)snapshot options:(id)options error:(id *)error
{
  v26[1] = *MEMORY[0x29EDCA608];
  snapshotCopy = snapshot;
  optionsCopy = options;
  mountPoint = [(LPMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    goto LABEL_13;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

LABEL_13:
    _os_log_pack_size();
    v20 = _os_log_pack_fill();
    *v20 = 136315138;
    *(v20 + 4) = "[LPAPFSVolume revertToSnapshot:options:error:]";
    _LPLogPack(1);
    v14 = 0;
    goto LABEL_14;
  }

  v11 = open([mountPoint fileSystemRepresentation], 0);
  if (v11 < 0)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    }

    _os_log_pack_size();
    v23 = _os_log_pack_fill();
    *v23 = 136315395;
    *(v23 + 4) = "[LPAPFSVolume revertToSnapshot:options:error:]";
    *(v23 + 12) = 2113;
    *(v23 + 14) = mountPoint;
    v14 = 1;
    _LPLogPack(1);
  }

  else
  {
    v12 = v11;
    v13 = fs_snapshot_revert(v11, [snapshotCopy fileSystemRepresentation], 0);
    v14 = v13 == 0;
    if (v13)
    {
      v15 = *__error();
      if (error)
      {
        *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v15 userInfo:0];
      }

      _os_log_pack_size();
      v26[0] = v26;
      v16 = _os_log_pack_fill();
      v17 = strerror(v15);
      *v16 = 67109378;
      *(v16 + 4) = v15;
      *(v16 + 8) = 2080;
      *(v16 + 10) = v17;
      _LPLogPack(1);
    }

    close(v12);
    v18 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeRevertOptionSkipRemount];
    if ([v18 BOOLValue])
    {
      _os_log_pack_size();
      v19 = _os_log_pack_fill();
      *v19 = 136315394;
      *(v19 + 4) = "[LPAPFSVolume revertToSnapshot:options:error:]";
      *(v19 + 12) = 2112;
      *(v19 + 14) = mountPoint;
      _LPLogPack(2);
    }

    else if ([(LPAPFSVolume *)self unmountWithError:error]&& [(LPAPFSVolume *)self mountAtPath:mountPoint options:optionsCopy error:error])
    {
      v14 = 1;
    }

    else
    {
      _os_log_pack_size();
      v24 = _os_log_pack_fill();
      v25 = *__error();
      *v24 = 136315394;
      *(v24 + 4) = "[LPAPFSVolume revertToSnapshot:options:error:]";
      *(v24 + 12) = 1024;
      *(v24 + 14) = v25;
      _LPLogPack(1);
      v14 = 0;
    }
  }

LABEL_14:

  v21 = *MEMORY[0x29EDCA608];
  return v14;
}

- (BOOL)rootToSnapshot:(id)snapshot error:(id *)error
{
  v20 = *MEMORY[0x29EDCA608];
  snapshotCopy = snapshot;
  _os_log_pack_size();
  v7 = _os_log_pack_fill();
  *v7 = 136315138;
  *(v7 + 4) = "[LPAPFSVolume rootToSnapshot:error:]";
  _LPLogPack(3);
  mountPoint = [(LPMedia *)self mountPoint];
  if (snapshotCopy && [snapshotCopy length])
  {
    [snapshotCopy fileSystemRepresentation];
    if (!mountPoint)
    {
LABEL_4:
      if (error)
      {
        *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
      }

      v9 = _os_log_pack_fill();
      *v9 = 136315138;
      *(v9 + 4) = "[LPAPFSVolume rootToSnapshot:error:]";
LABEL_17:
      _LPLogPack(1);
      v14 = 0;
      goto LABEL_18;
    }
  }

  else if (!mountPoint)
  {
    goto LABEL_4;
  }

  _os_log_pack_size();
  v10 = _os_log_pack_fill();
  *v10 = 136315395;
  *(v10 + 4) = "[LPAPFSVolume rootToSnapshot:error:]";
  *(v10 + 12) = 2113;
  *(v10 + 14) = mountPoint;
  _LPLogPack(3);
  v11 = open([mountPoint fileSystemRepresentation], 0);
  if (v11 < 0)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    }

    v17 = _os_log_pack_fill();
    *v17 = 136315395;
    *(v17 + 4) = "[LPAPFSVolume rootToSnapshot:error:]";
    *(v17 + 12) = 2113;
    *(v17 + 14) = mountPoint;
    goto LABEL_17;
  }

  v12 = v11;
  v13 = fs_snapshot_root();
  v14 = v13 == 0;
  if (v13)
  {
    v15 = *__error();
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v15 userInfo:0];
    }

    _os_log_pack_size();
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = "[LPAPFSVolume rootToSnapshot:error:]";
    *(v16 + 12) = 1024;
    *(v16 + 14) = v15;
    _LPLogPack(1);
  }

  close(v12);
LABEL_18:

  v18 = *MEMORY[0x29EDCA608];
  return v14;
}

@end