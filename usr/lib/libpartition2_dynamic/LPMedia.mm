@interface LPMedia
+ (BOOL)hasEmbeddedDeviceTypeRoot;
+ (NSDictionary)contentTypeToSubclassMap;
+ (id)allMedia;
+ (id)liveMediaForSnapshotAtPath:(id)a3;
+ (id)mediaForBSDNameOrDeviceNode:(id)a3;
+ (id)mediaForPath:(id)a3 isSnapshot:(BOOL *)a4;
+ (id)mediaForPath:(id)a3 snapshotName:(id *)a4;
+ (id)mediaForUUID:(id)a3;
+ (id)snapshotNameForMediaForPath:(id)a3;
+ (unsigned)_copyIOMediaForDiskWithPath:(id)a3;
+ (unsigned)_copyLiveFilesystemIOMediaForRootedSnapshot;
+ (void)waitForBlockStorage;
+ (void)waitForIOMediaWithDevNode:(id)a3;
- (BOOL)getBoolPropertyWithName:(id)a3;
- (BOOL)isEmbeddedDeviceTypeRoot;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInternal;
- (BOOL)isJournaled;
- (BOOL)isReadOnly;
- (BOOL)setName:(id)a3 withError:(id *)a4;
- (id)_deviceCharacteristicStringForKey:(id)a3;
- (id)description;
- (id)devNodePath;
- (id)deviceModel;
- (id)getPropertyWithName:(id)a3;
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

+ (id)mediaForPath:(id)a3 isSnapshot:(BOOL *)a4
{
  v7 = 0;
  v5 = [a1 mediaForPath:a3 snapshotName:&v7];
  if (a4 && v5)
  {
    *a4 = v7 != 0;
  }

  return v5;
}

+ (id)mediaForPath:(id)a3 snapshotName:(id *)a4
{
  v43 = *MEMORY[0x29EDCA608];
  v6 = a3;
  bzero(&v42, 0x878uLL);
  if (statfs([v6 fileSystemRepresentation], &v42))
  {
    v7 = *__error();
    _os_log_pack_size();
    MEMORY[0x2A1C7C4A8]();
    v8 = _os_log_pack_fill();
    v9 = strerror(v7);
    *v8 = 136315906;
    *(v8 + 4) = "+[LPMedia mediaForPath:snapshotName:]";
    *(v8 + 12) = 2112;
    *(v8 + 14) = v6;
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
  v14 = [MEMORY[0x29EDBA070] numberWithInt:v12 & 0xFFFFFF];
  v39[1] = v14;
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
    *(v21 + 14) = v6;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v12;
    _LPLogPack(1);
    goto LABEL_3;
  }

  v18 = MatchingService;
  v19 = [a1 mediaOfCorrectTypeGivenIOMedia:MatchingService];
  v11 = v19;
  if (a4 && v19)
  {
    if ((v42.f_flags & 0x40000000) == 0)
    {
      v20 = 0;
LABEL_22:
      v30 = v20;
      *a4 = v20;

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
      *(v29 + 14) = v6;
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

+ (id)snapshotNameForMediaForPath:(id)a3
{
  v46 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v44 = 0;
  v5 = [a1 mediaForPath:v4 snapshotName:&v44];
  v6 = v44;
  v7 = v6;
  if (!v5)
  {
    _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315395;
    *(v9 + 4) = "+[LPMedia snapshotNameForMediaForPath:]";
    *(v9 + 12) = 2113;
    *(v9 + 14) = v4;
    _LPLogPack(1);
    v8 = 0;
    goto LABEL_32;
  }

  if (v6)
  {
    v8 = v6;
    goto LABEL_32;
  }

  v10 = [a1 liveMediaForSnapshotAtPath:@"/"];
  if (!v10 || ![v5 isEqual:v10])
  {
    goto LABEL_10;
  }

  v43 = 0;
  v11 = [a1 mediaForPath:@"/" snapshotName:&v43];
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
          v25 = [v24 lastObject];
          v8 = [v25 objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyName[0]];
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
        v29 = [v12 devNodePath];
        *v28 = 136315650;
        *(v28 + 4) = "+[LPMedia snapshotNameForMediaForPath:]";
        *(v28 + 12) = 2112;
        *(v28 + 14) = v29;
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
      v27 = [v5 devNodePath];
      *v26 = 136315394;
      *(v26 + 4) = "+[LPMedia snapshotNameForMediaForPath:]";
      *(v26 + 12) = 2112;
      *(v26 + 14) = v27;

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

+ (id)liveMediaForSnapshotAtPath:(id)a3
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if (([v4 isEqualToString:@"/"] & 1) == 0)
  {
    v8 = a1;
LABEL_9:
    v9 = [(__objc2_class *)v8 mediaForPath:v4];
    goto LABEL_18;
  }

  v5 = [LPMedia _copyIOMediaForDiskWithPath:v4];
  if (!v5)
  {
    if (![v4 isEqualToString:@"/"] || (v10 = +[LPMedia _copyLiveFilesystemIOMediaForRootedSnapshot](LPMedia, "_copyLiveFilesystemIOMediaForRootedSnapshot"), !v10))
    {
      _os_log_pack_size();
      v11 = _os_log_pack_fill();
      *v11 = 136315395;
      *(v11 + 4) = "+[LPMedia liveMediaForSnapshotAtPath:]";
      *(v11 + 12) = 2113;
      *(v11 + 14) = v4;
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
    *(v12 + 14) = v4;
    _LPLogPack(1);
    IOObjectRelease(v6);
    v8 = LPMedia;
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
    *(v13 + 14) = v4;
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

+ (id)mediaForUUID:(id)a3
{
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = a3;
  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, @"IOProviderClass", @"IOMedia");
  CFDictionarySetValue(Mutable, @"UUID", v4);

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

+ (id)mediaForBSDNameOrDeviceNode:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 length])
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
    v3 = self;
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
      v3 = 0;
    }

    else
    {
      v5 = IOIteratorNext(v15);
      if (v5)
      {
        v6 = v5;
        v3 = 0;
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
              v3 = v10;
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
        v3 = 0;
      }

      IOObjectRelease(v15);
    }
  }

  v13 = *MEMORY[0x29EDCA608];

  return v3;
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
  v3 = [(LPMedia *)self mountPoint];
  if (!v3 || (bzero(v10, 0x40CuLL), v9[2] = 0, v9[0] = 5, v9[1] = 2147491840, getattrlist([v3 fileSystemRepresentation], v9, v10, 0x40CuLL, 0) == -1))
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

- (BOOL)setName:(id)a3 withError:(id *)a4
{
  v27 = *MEMORY[0x29EDCA608];
  v6 = a3;
  bzero(v25, 0x408uLL);
  v7 = [(LPMedia *)self mountPoint];
  v8 = [v7 fileSystemRepresentation];

  if (!v8)
  {
    _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[LPMedia setName:withError:]";
    _LPLogPack(1);
    if (a4)
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
  [v6 UTF8String];
  __strlcpy_chk();
  v25[0] = 8;
  v25[1] = strlen(v26) + 1;
  v9 = setattrlist(v8, &v23, v25, 0x408uLL, 0);
  _os_log_pack_size();
  if (!v9)
  {
    v20 = _os_log_pack_fill();
    *v20 = 136315395;
    *(v20 + 4) = "[LPMedia setName:withError:]";
    *(v20 + 12) = 2113;
    *(v20 + 14) = v6;
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
  if (!a4)
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
  *a4 = [v16 errorWithDomain:v17 code:v15 userInfo:0];
LABEL_10:

  v21 = *MEMORY[0x29EDCA608];
  return v19;
}

- (id)devNodePath
{
  v2 = [(LPMedia *)self BSDName];
  if (v2)
  {
    v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"/dev/%@", v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mountPoint
{
  v2 = [(LPMedia *)self devNodePath];
  if (v2)
  {
    v10 = 0;
    v3 = getmntinfo_r_np(&v10, 2);
    if (v3 < 1)
    {
LABEL_6:
      v8 = 0;
    }

    else
    {
      v4 = v3;
      v5 = 1112;
      while (1)
      {
        v6 = [v2 fileSystemRepresentation];
        v7 = v10 + v5;
        if (!strcmp(v6, v10 + v5))
        {
          break;
        }

        v5 += 2168;
        if (!--v4)
        {
          goto LABEL_6;
        }
      }

      v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7 - 1024];
    }

    if (v10)
    {
      free(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isReadOnly
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = objc_autoreleasePoolPush();
  v4 = [(LPMedia *)self mountPoint];
  if (v4)
  {
    bzero(&v9, 0x878uLL);
    if (!statfs([v4 fileSystemRepresentation], &v9))
    {
      f_flags = v9.f_flags;
      goto LABEL_6;
    }

    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *v5 = 136315394;
    *(v5 + 4) = "[LPMedia isReadOnly]";
    *(v5 + 12) = 2112;
    *(v5 + 14) = v4;
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
  v4 = [(LPMedia *)self mountPoint];
  if (v4)
  {
    bzero(&v9, 0x878uLL);
    if (!statfs([v4 fileSystemRepresentation], &v9))
    {
      v6 = BYTE2(v9.f_flags) >> 7;
      goto LABEL_6;
    }

    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *v5 = 136315394;
    *(v5 + 4) = "[LPMedia isJournaled]";
    *(v5 + 12) = 2112;
    *(v5 + 14) = v4;
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
  v3 = [(LPMedia *)self mountPoint];
  if (v3)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(LPMedia *)self name];
    v8 = [v4 stringWithFormat:@"%@: %@, Mount: %@", v6, v7, v3];
  }

  else
  {
    v6 = [(LPMedia *)self mediaUUID];
    v9 = MEMORY[0x29EDBA0F8];
    v10 = objc_opt_class();
    v7 = NSStringFromClass(v10);
    v11 = [(LPMedia *)self name];
    v12 = v11;
    if (v6)
    {
      v13 = [v9 stringWithFormat:@"%@: %@, UUID: %@", v7, v11, v6];
    }

    else
    {
      v13 = [v9 stringWithFormat:@"%@: %@", v7, v11, v15];
    }

    v8 = v13;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(LPMedia *)self ioMedia];
    v7 = [v5 ioMedia];

    v8 = IOObjectIsEqualTo(v6, v7) == 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_deviceCharacteristicStringForKey:(id)a3
{
  v4 = a3;
  v5 = IORegistryEntrySearchCFProperty([(LPMedia *)self ioMedia], "IOService", @"Device Characteristics", 0, 3u);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKeyedSubscript:v4];
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

+ (unsigned)_copyIOMediaForDiskWithPath:(id)a3
{
  v15 = *MEMORY[0x29EDCA608];
  bzero(&v14, 0x878uLL);
  if (statfs([a3 fileSystemRepresentation], &v14))
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

- (id)getPropertyWithName:(id)a3
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = a3;
  CFProperty = IORegistryEntryCreateCFProperty([(LPMedia *)self ioMedia], v4, 0, 0);
  if (!CFProperty)
  {
    _os_log_pack_size();
    MEMORY[0x2A1C7C4A8]();
    v6 = _os_log_pack_fill();
    *v6 = 136315394;
    *(v6 + 4) = "[LPMedia(Private) getPropertyWithName:]";
    *(v6 + 12) = 2112;
    *(v6 + 14) = v4;
    _LPLogPack(3);
  }

  v7 = *MEMORY[0x29EDCA608];

  return CFProperty;
}

- (BOOL)getBoolPropertyWithName:(id)a3
{
  v3 = [(LPMedia *)self getPropertyWithName:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (void)waitForIOMediaWithDevNode:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = v3;
  if ([v3 hasPrefix:@"/dev/"])
  {
    v4 = [v3 substringFromIndex:5];
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