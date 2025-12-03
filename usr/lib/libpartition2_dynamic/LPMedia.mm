@interface LPMedia
+ (BOOL)hasEmbeddedDeviceTypeRoot;
+ (NSDictionary)contentTypeToSubclassMap;
+ (id)allMedia;
+ (id)liveMediaForSnapshotAtPath:(id)path;
+ (id)mediaForBSDNameOrDeviceNode:(id)node;
+ (id)mediaForPath:(id)path isSnapshot:(BOOL *)snapshot;
+ (id)mediaForPath:(id)path snapshotName:(id *)name;
+ (id)mediaForUUID:(id)d;
+ (id)snapshotNameForMediaForPath:(id)path;
+ (unsigned)_copyIOMediaForDiskWithPath:(id)path;
+ (unsigned)_copyLiveFilesystemIOMediaForRootedSnapshot;
+ (void)waitForBlockStorage;
+ (void)waitForIOMediaWithDevNode:(id)node;
- (BOOL)getBoolPropertyWithName:(id)name;
- (BOOL)isEmbeddedDeviceTypeRoot;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInternal;
- (BOOL)isJournaled;
- (BOOL)isReadOnly;
- (BOOL)setName:(id)name withError:(id *)error;
- (id)_deviceCharacteristicStringForKey:(id)key;
- (id)description;
- (id)devNodePath;
- (id)deviceModel;
- (id)getPropertyWithName:(id)name;
- (id)mountPoint;
- (id)name;
- (id)wholeMediaForMedia;
- (int)storageMedium;
- (void)dealloc;
@end

@implementation LPMedia

+ (BOOL)hasEmbeddedDeviceTypeRoot
{
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB118], &unk_2A1F8C6A0);
  v3 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v3 != 0;
}

+ (id)allMedia
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
  +[LPMedia waitForBlockStorage];
  existing = 0;
  v3 = IOServiceMatching("IOMedia");
  if (IOServiceGetMatchingServices(*MEMORY[0x29EDBB118], v3, &existing))
  {
    _os_log_pack_size();
    v4 = _os_log_pack_fill();
    *v4 = 136315138;
    *(v4 + 4) = "+[LPMedia allMedia]";
    _LPLogPack(1);
    v5 = MEMORY[0x29EDB8E90];
  }

  else
  {
    v6 = IOIteratorNext(existing);
    if (v6)
    {
      v7 = v6;
      do
      {
        v8 = [LPMedia mediaOfCorrectTypeGivenIOMedia:v7];
        if (v8)
        {
          [v2 addObject:v8];
        }

        IOObjectRelease(v7);

        v7 = IOIteratorNext(existing);
      }

      while (v7);
    }

    if (existing)
    {
      IOObjectRelease(existing);
    }

    v5 = [MEMORY[0x29EDB8D80] arrayWithArray:v2];
  }

  v9 = *MEMORY[0x29EDCA608];

  return v5;
}

+ (id)mediaForPath:(id)path isSnapshot:(BOOL *)snapshot
{
  v7 = 0;
  v5 = [self mediaForPath:path snapshotName:&v7];
  if (snapshot && v5)
  {
    *snapshot = v7 != 0;
  }

  return v5;
}

+ (id)mediaForPath:(id)path snapshotName:(id *)name
{
  v43 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  bzero(&v42, 0x878uLL);
  if (statfs([pathCopy fileSystemRepresentation], &v42))
  {
    v7 = *__error();
    _os_log_pack_size();
    MEMORY[0x2A1C7C4A8]();
    v8 = _os_log_pack_fill();
    v9 = strerror(v7);
    *v8 = 136315906;
    *(v8 + 4) = "+[LPMedia mediaForPath:snapshotName:]";
    *(v8 + 12) = 2112;
    *(v8 + 14) = pathCopy;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v7;
    *(v8 + 28) = 2080;
    *(v8 + 30) = v9;
    _LPLogPack(1);
    v10 = 0;
LABEL_3:
    v11 = 0;
    goto LABEL_24;
  }

  v12 = v42.f_fsid.val[0];
  v40[0] = @"IOProviderClass";
  v40[1] = @"IOPropertyMatch";
  v41[0] = @"IOMedia";
  v38[0] = @"BSD Major";
  v13 = [MEMORY[0x29EDBA070] numberWithInt:HIBYTE(v42.f_fsid.val[0])];
  v38[1] = @"BSD Minor";
  v39[0] = v13;
  0xFFFFFF = [MEMORY[0x29EDBA070] numberWithInt:v12 & 0xFFFFFF];
  v39[1] = 0xFFFFFF;
  v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v41[1] = v15;
  v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v41 forKeys:v40 count:2];

  LODWORD(v13) = *MEMORY[0x29EDBB118];
  v16 = CFRetain(v10);
  MatchingService = IOServiceGetMatchingService(v13, v16);
  if (!MatchingService)
  {
    _os_log_pack_size();
    MEMORY[0x2A1C7C4A8]();
    v21 = _os_log_pack_fill();
    *v21 = 136315650;
    *(v21 + 4) = "+[LPMedia mediaForPath:snapshotName:]";
    *(v21 + 12) = 2112;
    *(v21 + 14) = pathCopy;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v12;
    _LPLogPack(1);
    goto LABEL_3;
  }

  v18 = MatchingService;
  v19 = [self mediaOfCorrectTypeGivenIOMedia:MatchingService];
  v11 = v19;
  if (name && v19)
  {
    if ((v42.f_flags & 0x40000000) == 0)
    {
      v20 = 0;
LABEL_22:
      v30 = v20;
      *name = v20;

      goto LABEL_23;
    }

    v22 = strrchr(v42.f_mntfromname, 64);
    if (v22)
    {
      v20 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:v42.f_mntfromname length:v22 - v42.f_mntfromname encoding:4];
      goto LABEL_20;
    }

    if (!IOObjectConformsTo(v18, "AppleAPFSSnapshot"))
    {
      v20 = 0;
      goto LABEL_20;
    }

    memset(v37, 0, 37);
    CFProperty = IORegistryEntryCreateCFProperty(v18, @"UUID", 0, 0);
    [CFProperty getCString:v37 maxLength:37 encoding:4];
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v34 = 2;
    if (uuid_parse(v37, v35))
    {
      _os_log_pack_size();
      MEMORY[0x2A1C7C4A8]();
      v24 = _os_log_pack_fill();
      *v24 = 136315907;
      *(v24 + 4) = "+[LPMedia mediaForPath:snapshotName:]";
      *(v24 + 12) = 2080;
      *(v24 + 14) = "AppleAPFSSnapshot";
      *(v24 + 22) = 2081;
      *(v24 + 24) = "UUID";
      *(v24 + 32) = 2113;
      *(v24 + 34) = CFProperty;
      _LPLogPack(1);
    }

    else
    {
      if (!fsctl(v42.f_mntonname, 0xC1204A43uLL, &v34, 0))
      {
        v20 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:&v35[24] length:strnlen(&v35[24] encoding:{0xFFuLL), 4}];
        goto LABEL_19;
      }

      _os_log_pack_size();
      v33[1] = v33;
      MEMORY[0x2A1C7C4A8]();
      v25 = _os_log_pack_fill();
      v26 = *__error();
      v27 = __error();
      v28 = strerror(*v27);
      *v25 = 136315650;
      *(v25 + 4) = "+[LPMedia mediaForPath:snapshotName:]";
      *(v25 + 12) = 1024;
      *(v25 + 14) = v26;
      *(v25 + 18) = 2080;
      *(v25 + 20) = v28;
      _LPLogPack(1);
    }

    v20 = 0;
LABEL_19:

LABEL_20:
    if (![v20 length])
    {
      _os_log_pack_size();
      MEMORY[0x2A1C7C4A8]();
      v29 = _os_log_pack_fill();
      *v29 = 136315395;
      *(v29 + 4) = "+[LPMedia mediaForPath:snapshotName:]";
      *(v29 + 12) = 2113;
      *(v29 + 14) = pathCopy;
      _LPLogPack(1);
    }

    goto LABEL_22;
  }

LABEL_23:
  IOObjectRelease(v18);
LABEL_24:

  v31 = *MEMORY[0x29EDCA608];

  return v11;
}

+ (id)snapshotNameForMediaForPath:(id)path
{
  v46 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  v44 = 0;
  v5 = [self mediaForPath:pathCopy snapshotName:&v44];
  v6 = v44;
  v7 = v6;
  if (!v5)
  {
    _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315395;
    *(v9 + 4) = "+[LPMedia snapshotNameForMediaForPath:]";
    *(v9 + 12) = 2113;
    *(v9 + 14) = pathCopy;
    _LPLogPack(1);
    v8 = 0;
    goto LABEL_32;
  }

  if (v6)
  {
    v8 = v6;
    goto LABEL_32;
  }

  v10 = [self liveMediaForSnapshotAtPath:@"/"];
  if (!v10 || ![v5 isEqual:v10])
  {
    goto LABEL_10;
  }

  v43 = 0;
  v11 = [self mediaForPath:@"/" snapshotName:&v43];
  v8 = v43;

  if (!v11 || !v8)
  {

LABEL_10:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v5;
      v42 = 0;
      v13 = [v12 snapshotInfoWithError:&v42];
      v14 = v42;
      v15 = v14;
      if (v13)
      {
        v33 = v14;
        v35 = v12;
        v36 = v10;
        v37 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v13, "count")}];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v34 = v13;
        v16 = v13;
        v17 = [v16 countByEnumeratingWithState:&v38 objects:v45 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v39;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v39 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v38 + 1) + 8 * i);
              v8 = [v21 objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyName[0]];
              v22 = [v21 objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyMarkedForRoot[0]];
              if ([v22 BOOLValue])
              {

                v10 = v36;
                v12 = v35;
                v13 = v34;
                v23 = v37;
                goto LABEL_29;
              }

              if ([v8 hasPrefix:@"com.apple.os.update-"])
              {
                [v37 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v38 objects:v45 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v23 = v37;
        if ([v37 count])
        {
          v24 = [v37 sortedArrayUsingComparator:&__block_literal_global_1];
          lastObject = [v24 lastObject];
          v8 = [lastObject objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyName[0]];
        }

        else
        {
          _os_log_pack_size();
          v30 = _os_log_pack_fill();
          *v30 = 136315138;
          *(v30 + 4) = "+[LPMedia snapshotNameForMediaForPath:]";
          _LPLogPack(1);
          v8 = 0;
        }

        v10 = v36;
        v12 = v35;
        v13 = v34;
LABEL_29:

        v15 = v33;
      }

      else
      {
        _os_log_pack_size();
        v28 = _os_log_pack_fill();
        devNodePath = [v12 devNodePath];
        *v28 = 136315650;
        *(v28 + 4) = "+[LPMedia snapshotNameForMediaForPath:]";
        *(v28 + 12) = 2112;
        *(v28 + 14) = devNodePath;
        *(v28 + 22) = 2112;
        *(v28 + 24) = v15;

        _LPLogPack(1);
        v8 = 0;
      }
    }

    else
    {
      _os_log_pack_size();
      v26 = _os_log_pack_fill();
      devNodePath2 = [v5 devNodePath];
      *v26 = 136315394;
      *(v26 + 4) = "+[LPMedia snapshotNameForMediaForPath:]";
      *(v26 + 12) = 2112;
      *(v26 + 14) = devNodePath2;

      _LPLogPack(1);
      v8 = 0;
    }
  }

LABEL_32:
  v31 = *MEMORY[0x29EDCA608];

  return v8;
}

uint64_t __39__LPMedia_snapshotNameForMediaForPath___block_invoke(int a1, void *a2, id a3)
{
  v4 = LPAPFSSnapshotPropertyKeyXID[0];
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyXID[0]];

  v8 = [v6 compare:v7];
  return v8;
}

+ (id)liveMediaForSnapshotAtPath:(id)path
{
  v17 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  if (([pathCopy isEqualToString:@"/"] & 1) == 0)
  {
    selfCopy = self;
LABEL_9:
    v9 = [(__objc2_class *)selfCopy mediaForPath:pathCopy];
    goto LABEL_18;
  }

  v5 = [LPMedia _copyIOMediaForDiskWithPath:pathCopy];
  if (!v5)
  {
    if (![pathCopy isEqualToString:@"/"] || (v10 = +[LPMedia _copyLiveFilesystemIOMediaForRootedSnapshot](LPMedia, "_copyLiveFilesystemIOMediaForRootedSnapshot"), !v10))
    {
      _os_log_pack_size();
      v11 = _os_log_pack_fill();
      *v11 = 136315395;
      *(v11 + 4) = "+[LPMedia liveMediaForSnapshotAtPath:]";
      *(v11 + 12) = 2113;
      *(v11 + 14) = pathCopy;
      _LPLogPack(1);
      v9 = 0;
      goto LABEL_18;
    }

    v6 = v10;
    v7 = v10;
    goto LABEL_13;
  }

  v6 = v5;
  if (!IOObjectConformsTo(v5, "AppleAPFSSnapshot"))
  {
    _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315395;
    *(v12 + 4) = "+[LPMedia liveMediaForSnapshotAtPath:]";
    *(v12 + 12) = 2113;
    *(v12 + 14) = pathCopy;
    _LPLogPack(1);
    IOObjectRelease(v6);
    selfCopy = LPMedia;
    goto LABEL_9;
  }

  parent = 0;
  if (IORegistryEntryGetParentEntry(v6, "IOService", &parent) || !parent || !IOObjectConformsTo(parent, "AppleAPFSVolume"))
  {
    _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315395;
    *(v13 + 4) = "+[LPMedia liveMediaForSnapshotAtPath:]";
    *(v13 + 12) = 2113;
    *(v13 + 14) = pathCopy;
    _LPLogPack(1);
    v9 = 0;
    goto LABEL_17;
  }

  v7 = parent;
LABEL_13:
  v9 = [LPMedia mediaOfCorrectTypeGivenIOMedia:v7];
LABEL_17:
  IOObjectRelease(v6);
LABEL_18:

  v14 = *MEMORY[0x29EDCA608];

  return v9;
}

+ (id)mediaForUUID:(id)d
{
  v3 = *MEMORY[0x29EDB8ED8];
  dCopy = d;
  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, @"IOProviderClass", @"IOMedia");
  CFDictionarySetValue(Mutable, @"UUID", dCopy);

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB118], Mutable);
  if (MatchingService)
  {
    v7 = MatchingService;
    v8 = [LPMedia mediaOfCorrectTypeGivenIOMedia:MatchingService];
    IOObjectRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)mediaForBSDNameOrDeviceNode:(id)node
{
  nodeCopy = node;
  v4 = nodeCopy;
  if (nodeCopy)
  {
    if ([nodeCopy length])
    {
      v5 = v4;
      if ([v4 hasPrefix:@"/dev/"])
      {
        v5 = [v4 substringFromIndex:5];
      }

      v6 = *MEMORY[0x29EDBB118];
      v7 = IOBSDNameMatching(*MEMORY[0x29EDBB118], 0, [v5 fileSystemRepresentation]);
      MatchingService = IOServiceGetMatchingService(v6, v7);
      if (MatchingService)
      {
        v9 = MatchingService;
        v10 = [LPMedia mediaOfCorrectTypeGivenIOMedia:MatchingService];
        IOObjectRelease(v9);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v5 = v4;
    }
  }

  else
  {
    v10 = 0;
    v5 = 0;
  }

  return v10;
}

- (id)wholeMediaForMedia
{
  v16 = *MEMORY[0x29EDCA608];
  if ([(LPMedia *)self isWhole])
  {
    selfCopy = self;
  }

  else
  {
    v15 = 0;
    if (MEMORY[0x29C29F270]([(LPMedia *)self ioMedia], "IOService", 3, &v15))
    {
      _os_log_pack_size();
      v4 = _os_log_pack_fill();
      *v4 = 136315138;
      *(v4 + 4) = "[LPMedia wholeMediaForMedia]";
      _LPLogPack(1);
      selfCopy = 0;
    }

    else
    {
      v5 = IOIteratorNext(v15);
      if (v5)
      {
        v6 = v5;
        selfCopy = 0;
        do
        {
          if (IOObjectConformsTo(v6, "IOMedia") && (CFProperty = IORegistryEntryCreateCFProperty(v6, @"Whole", 0, 0)) != 0)
          {
            v8 = CFProperty;
            v9 = CFGetTypeID(CFProperty);
            if (v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v8))
            {
              v10 = [LPMedia mediaOfCorrectTypeGivenIOMedia:v6];

              v11 = 1;
              selfCopy = v10;
            }

            else
            {
              v11 = 0;
            }

            CFRelease(v8);
          }

          else
          {
            v11 = 0;
          }

          IOObjectRelease(v6);
          v6 = IOIteratorNext(v15);
          if (v6)
          {
            v12 = v11 == 0;
          }

          else
          {
            v12 = 0;
          }
        }

        while (v12);
      }

      else
      {
        selfCopy = 0;
      }

      IOObjectRelease(v15);
    }
  }

  v13 = *MEMORY[0x29EDCA608];

  return selfCopy;
}

- (void)dealloc
{
  if ([(LPMedia *)self ioMedia])
  {
    IOObjectRelease([(LPMedia *)self ioMedia]);
  }

  v3.receiver = self;
  v3.super_class = LPMedia;
  [(LPMedia *)&v3 dealloc];
}

- (id)name
{
  v12 = *MEMORY[0x29EDCA608];
  mountPoint = [(LPMedia *)self mountPoint];
  if (!mountPoint || (bzero(v10, 0x40CuLL), v9[2] = 0, v9[0] = 5, v9[1] = 2147491840, getattrlist([mountPoint fileSystemRepresentation], v9, v10, 0x40CuLL, 0) == -1))
  {
    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    if (MEMORY[0x29C29F280]([(LPMedia *)self ioMedia], v10))
    {
      v6 = 0;
      goto LABEL_8;
    }

    HIBYTE(v11) = 0;
    v4 = MEMORY[0x29EDBA0F8];
    v5 = v10;
  }

  else
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = v10 + SDWORD1(v10[0]) + 4;
  }

  v6 = [v4 stringWithCString:v5 encoding:4];
LABEL_8:

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (BOOL)setName:(id)name withError:(id *)error
{
  v27 = *MEMORY[0x29EDCA608];
  nameCopy = name;
  bzero(v25, 0x408uLL);
  mountPoint = [(LPMedia *)self mountPoint];
  fileSystemRepresentation = [mountPoint fileSystemRepresentation];

  if (!fileSystemRepresentation)
  {
    _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[LPMedia setName:withError:]";
    _LPLogPack(1);
    if (error)
    {
      v16 = MEMORY[0x29EDB9FA0];
      v17 = *MEMORY[0x29EDB9EF8];
      v15 = 22;
      goto LABEL_7;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_10;
  }

  v24 = 0;
  v23 = xmmword_2997DCB50;
  [nameCopy UTF8String];
  __strlcpy_chk();
  v25[0] = 8;
  v25[1] = strlen(v26) + 1;
  v9 = setattrlist(fileSystemRepresentation, &v23, v25, 0x408uLL, 0);
  _os_log_pack_size();
  if (!v9)
  {
    v20 = _os_log_pack_fill();
    *v20 = 136315395;
    *(v20 + 4) = "[LPMedia setName:withError:]";
    *(v20 + 12) = 2113;
    *(v20 + 14) = nameCopy;
    _LPLogPack(3);
    v19 = 1;
    goto LABEL_10;
  }

  v10 = _os_log_pack_fill();
  v11 = __error();
  v12 = strerror(*v11);
  *v10 = 136315394;
  *(v10 + 4) = "[LPMedia setName:withError:]";
  *(v10 + 12) = 2080;
  *(v10 + 14) = v12;
  _LPLogPack(1);
  if (!error)
  {
    goto LABEL_8;
  }

  v13 = MEMORY[0x29EDB9FA0];
  v14 = *MEMORY[0x29EDB9EF8];
  v15 = *__error();
  v16 = v13;
  v17 = v14;
LABEL_7:
  v19 = 0;
  *error = [v16 errorWithDomain:v17 code:v15 userInfo:0];
LABEL_10:

  v21 = *MEMORY[0x29EDCA608];
  return v19;
}

- (id)devNodePath
{
  bSDName = [(LPMedia *)self BSDName];
  if (bSDName)
  {
    v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"/dev/%@", bSDName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mountPoint
{
  devNodePath = [(LPMedia *)self devNodePath];
  if (devNodePath)
  {
    v10 = 0;
    v3 = getmntinfo_r_np(&v10, 2);
    if (v3 < 1)
    {
LABEL_6:
      1024 = 0;
    }

    else
    {
      v4 = v3;
      v5 = 1112;
      while (1)
      {
        fileSystemRepresentation = [devNodePath fileSystemRepresentation];
        v7 = v10 + v5;
        if (!strcmp(fileSystemRepresentation, v10 + v5))
        {
          break;
        }

        v5 += 2168;
        if (!--v4)
        {
          goto LABEL_6;
        }
      }

      1024 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7 - 1024];
    }

    if (v10)
    {
      free(v10);
    }
  }

  else
  {
    1024 = 0;
  }

  return 1024;
}

- (id)deviceModel
{
  v3 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    v5 = IORegistryEntrySearchCFProperty([(LPMedia *)self ioMedia], "IOService", off_29EF6BAD0[v3], v4, 3u);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (++v3 == 4)
    {
      v5 = 0;
      break;
    }
  }

  return v5;
}

- (int)storageMedium
{
  v2 = [(LPMedia *)self _deviceCharacteristicStringForKey:@"Medium Type"];
  if ([v2 isEqualToString:@"Rotational"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"Solid State"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isInternal
{
  v2 = IORegistryEntrySearchCFProperty([(LPMedia *)self ioMedia], "IOService", @"Protocol Characteristics", 0, 3u);
  v3 = [v2 objectForKeyedSubscript:@"Physical Interconnect Location"];
  v4 = [v3 isEqualToString:@"Internal"];

  return v4;
}

- (BOOL)isEmbeddedDeviceTypeRoot
{
  v2 = IORegistryEntrySearchCFProperty([(LPMedia *)self ioMedia], "IOService", @"EmbeddedDeviceTypeRoot", 0, 3u);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isReadOnly
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = objc_autoreleasePoolPush();
  mountPoint = [(LPMedia *)self mountPoint];
  if (mountPoint)
  {
    bzero(&v9, 0x878uLL);
    if (!statfs([mountPoint fileSystemRepresentation], &v9))
    {
      f_flags = v9.f_flags;
      goto LABEL_6;
    }

    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *v5 = 136315394;
    *(v5 + 4) = "[LPMedia isReadOnly]";
    *(v5 + 12) = 2112;
    *(v5 + 14) = mountPoint;
    _LPLogPack(1);
  }

  f_flags = 0;
LABEL_6:

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x29EDCA608];
  return f_flags & 1;
}

- (BOOL)isJournaled
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = objc_autoreleasePoolPush();
  mountPoint = [(LPMedia *)self mountPoint];
  if (mountPoint)
  {
    bzero(&v9, 0x878uLL);
    if (!statfs([mountPoint fileSystemRepresentation], &v9))
    {
      v6 = BYTE2(v9.f_flags) >> 7;
      goto LABEL_6;
    }

    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *v5 = 136315394;
    *(v5 + 4) = "[LPMedia isJournaled]";
    *(v5 + 12) = 2112;
    *(v5 + 14) = mountPoint;
    _LPLogPack(1);
  }

  LOBYTE(v6) = 0;
LABEL_6:

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

- (id)description
{
  mountPoint = [(LPMedia *)self mountPoint];
  if (mountPoint)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = objc_opt_class();
    mediaUUID = NSStringFromClass(v5);
    name = [(LPMedia *)self name];
    v8 = [v4 stringWithFormat:@"%@: %@, Mount: %@", mediaUUID, name, mountPoint];
  }

  else
  {
    mediaUUID = [(LPMedia *)self mediaUUID];
    v9 = MEMORY[0x29EDBA0F8];
    v10 = objc_opt_class();
    name = NSStringFromClass(v10);
    name2 = [(LPMedia *)self name];
    v12 = name2;
    if (mediaUUID)
    {
      v13 = [v9 stringWithFormat:@"%@: %@, UUID: %@", name, name2, mediaUUID];
    }

    else
    {
      v13 = [v9 stringWithFormat:@"%@: %@", name, name2, v15];
    }

    v8 = v13;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    ioMedia = [(LPMedia *)self ioMedia];
    ioMedia2 = [v5 ioMedia];

    v8 = IOObjectIsEqualTo(ioMedia, ioMedia2) == 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_deviceCharacteristicStringForKey:(id)key
{
  keyCopy = key;
  v5 = IORegistryEntrySearchCFProperty([(LPMedia *)self ioMedia], "IOService", @"Device Characteristics", 0, 3u);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKeyedSubscript:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (unsigned)_copyIOMediaForDiskWithPath:(id)path
{
  v15 = *MEMORY[0x29EDCA608];
  bzero(&v14, 0x878uLL);
  if (statfs([path fileSystemRepresentation], &v14))
  {
    v4 = *__error();
    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    v6 = strerror(v4);
    *v5 = 136315650;
    *(v5 + 4) = "+[LPMedia _copyIOMediaForDiskWithPath:]";
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    *(v5 + 18) = 2080;
    *(v5 + 20) = v6;
    _LPLogPack(1);
    MatchingService = 0;
  }

  else
  {
    v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v14.f_mntfromname];
    if ([v8 hasPrefix:@"/dev/"])
    {
      v9 = [v8 substringFromIndex:5];

      v8 = v9;
    }

    v10 = *MEMORY[0x29EDBB118];
    v11 = IOBSDNameMatching(*MEMORY[0x29EDBB118], 0, [v8 UTF8String]);
    MatchingService = IOServiceGetMatchingService(v10, v11);
  }

  v12 = *MEMORY[0x29EDCA608];
  return MatchingService;
}

+ (unsigned)_copyLiveFilesystemIOMediaForRootedSnapshot
{
  v17 = *MEMORY[0x29EDCA608];
  bzero(&v16, 0x878uLL);
  if (statfs("/", &v16))
  {
    v2 = *__error();
    _os_log_pack_size();
    v3 = _os_log_pack_fill();
    v4 = strerror(v2);
    *v3 = 136315650;
    *(v3 + 4) = "+[LPMedia _copyLiveFilesystemIOMediaForRootedSnapshot]";
    *(v3 + 12) = 1024;
    *(v3 + 14) = v2;
    *(v3 + 18) = 2080;
    *(v3 + 20) = v4;
    _LPLogPack(1);
    MatchingService = 0;
  }

  else
  {
    v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v16.f_mntfromname];
    v7 = [v6 componentsSeparatedByString:@"@"];
    if ([v7 count] == 2 && (v8 = objc_msgSend(v7, "objectAtIndexedSubscript:", 1), v9 = objc_msgSend(v8, "hasPrefix:", @"/dev/"), v8, v9))
    {
      v10 = [v7 objectAtIndexedSubscript:1];
      v11 = [v10 substringFromIndex:5];

      v12 = *MEMORY[0x29EDBB118];
      v13 = IOBSDNameMatching(*MEMORY[0x29EDBB118], 0, [v11 UTF8String]);
      MatchingService = IOServiceGetMatchingService(v12, v13);
      v6 = v11;
    }

    else
    {
      MatchingService = 0;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return MatchingService;
}

+ (NSDictionary)contentTypeToSubclassMap
{
  if (contentTypeToSubclassMap_once != -1)
  {
    +[LPMedia(Private) contentTypeToSubclassMap];
  }

  v3 = contentTypeToSubclassMap_sharedMap;

  return v3;
}

void __44__LPMedia_Private__contentTypeToSubclassMap__block_invoke()
{
  v26[4] = *MEMORY[0x29EDCA608];
  context = objc_autoreleasePoolPush();
  v0 = [MEMORY[0x29EDB8E00] dictionary];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v1 = [MEMORY[0x29EDB8D80] arrayWithObjects:v26 count:4];
  v2 = [v1 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      v5 = 0;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v20 + 1) + 8 * v5);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v7 = [v6 supportedContentTypes];
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v17;
          do
          {
            v11 = 0;
            do
            {
              if (*v17 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [v0 setObject:v6 forKeyedSubscript:*(*(&v16 + 1) + 8 * v11++)];
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v3);
  }

  v12 = [v0 copy];
  v13 = contentTypeToSubclassMap_sharedMap;
  contentTypeToSubclassMap_sharedMap = v12;

  objc_autoreleasePoolPop(context);
  v14 = *MEMORY[0x29EDCA608];
}

- (id)getPropertyWithName:(id)name
{
  v9 = *MEMORY[0x29EDCA608];
  nameCopy = name;
  CFProperty = IORegistryEntryCreateCFProperty([(LPMedia *)self ioMedia], nameCopy, 0, 0);
  if (!CFProperty)
  {
    _os_log_pack_size();
    MEMORY[0x2A1C7C4A8]();
    v6 = _os_log_pack_fill();
    *v6 = 136315394;
    *(v6 + 4) = "[LPMedia(Private) getPropertyWithName:]";
    *(v6 + 12) = 2112;
    *(v6 + 14) = nameCopy;
    _LPLogPack(3);
  }

  v7 = *MEMORY[0x29EDCA608];

  return CFProperty;
}

- (BOOL)getBoolPropertyWithName:(id)name
{
  v3 = [(LPMedia *)self getPropertyWithName:name];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (void)waitForIOMediaWithDevNode:(id)node
{
  v13 = *MEMORY[0x29EDCA608];
  nodeCopy = node;
  v4 = nodeCopy;
  if ([nodeCopy hasPrefix:@"/dev/"])
  {
    v4 = [nodeCopy substringFromIndex:5];
  }

  v5 = *MEMORY[0x29EDBB118];
  v6 = IOBSDNameMatching(*MEMORY[0x29EDBB118], 0, [v4 fileSystemRepresentation]);
  MatchingService = IOServiceGetMatchingService(v5, v6);
  if (MatchingService)
  {
    v8 = MatchingService;
    waitTime = 5;
    if (IOServiceWaitQuiet(MatchingService, &waitTime) == -536870186)
    {
      _os_log_pack_size();
      v9 = _os_log_pack_fill();
      *v9 = 138412290;
      *(v9 + 4) = v4;
      _LPLogPack(1);
    }

    IOObjectRelease(v8);
  }

  else
  {
    _os_log_pack_size();
    v10 = _os_log_pack_fill();
    *v10 = 138412290;
    *(v10 + 4) = v4;
    _LPLogPack(1);
  }

  v11 = *MEMORY[0x29EDCA608];
}

+ (void)waitForBlockStorage
{
  v11 = *MEMORY[0x29EDCA608];
  existing = 0;
  v2 = IOServiceMatching("IOBlockStorageDevice");
  if (!IOServiceGetMatchingServices(*MEMORY[0x29EDBB118], v2, &existing))
  {
    v3 = 0;
    do
    {
      MEMORY[0x29C29F210](existing);
      waitTime = 5;
      v4 = IOIteratorNext(existing);
      if (v4)
      {
        v5 = v4;
        v6 = 0;
        do
        {
          v6 |= IOServiceWaitQuiet(v5, &waitTime) == -536870186;
          IOObjectRelease(v5);
          v5 = IOIteratorNext(existing);
        }

        while (v5);
      }

      else
      {
        v6 = 0;
      }

      if (IOIteratorIsValid(existing))
      {
        v7 = 1;
      }

      else
      {
        v7 = v3 >= 4;
      }

      ++v3;
    }

    while (!v7);
    if (v6)
    {
      _os_log_pack_size();
      *_os_log_pack_fill() = 0;
      _LPLogPack(2);
    }

    IOObjectRelease(existing);
  }

  v8 = *MEMORY[0x29EDCA608];
}

@end