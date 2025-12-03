@interface VMUProcessDescription
+ (_CSTypeRef)symbolicatorFromBinaryImagesDescription:(id)description;
+ (_CSTypeRef)symbolicatorFromBinaryImagesDescription:(id)description withArchitecture:(_CSArchitecture)architecture;
+ (id)parseBinaryImagesDescription:(id)description;
- (BOOL)initFromCorpseOrCore;
- (VMUProcessDescription)initWithVMUTaskMemoryCache:(id)cache getBinariesList:(BOOL)list;
- (id)_binaryImagesDescriptionForRanges:(id)ranges;
- (id)_buildInfoDescription;
- (id)_bundleLock;
- (id)_cpuTypeDescription;
- (id)_extractInfoPlistFromSymbolOwner:(_CSTypeRef)owner withMemory:(id)memory;
- (id)_osVersionDictionary;
- (id)_rangesOfBinaryImages:(id)images forBacktraces:(id)backtraces;
- (id)_readDataFromMemory:(id)memory atAddress:(unint64_t)address size:(unint64_t)size;
- (id)_sanitizeVersion:(id)version;
- (id)_systemVersionDescription;
- (id)binaryImageDictionaryForAddress:(unint64_t)address;
- (id)binaryImages;
- (id)binaryImagesDescription;
- (id)binaryImagesDescriptionForBacktraces:(id)backtraces;
- (id)dateAndVersionDescription;
- (id)description;
- (id)processDescriptionHeader;
- (id)processIdentifier;
- (id)processStatisticsDescription;
- (id)processVersion;
- (id)processVersionDictionary;
- (id)valueForEnvVar:(id)var;
- (void)_libraryLoaded:(_CSTypeRef)loaded;
- (void)dealloc;
- (void)initFromLiveProcess;
- (void)setCrashReporterInfo;
@end

@implementation VMUProcessDescription

- (id)binaryImages
{
  selfCopy = self;
  [(VMUProcessDescription *)self setCrashReporterInfo];
  if (!selfCopy->_binaryImagePostProcessingComplete)
  {
    _bundleLock = [(VMUProcessDescription *)selfCopy _bundleLock];
    [_bundleLock lock];

    v4 = selfCopy->_binaryImages;
    objc_sync_enter(v4);
    v5 = [(NSMutableArray *)selfCopy->_binaryImages mutableCopy];
    objc_sync_exit(v4);

    objectEnumerator = [v5 objectEnumerator];
    v6 = 0;
    allocator = *MEMORY[0x1E695E480];
    v32 = v5;
    while (1)
    {
      nextObject = [objectEnumerator nextObject];

      if (!nextObject)
      {
        [v5 sortUsingFunction:_compareBinaryImageDicts context:0];
        selfCopy->_binaryImagePostProcessingComplete = 1;
        objc_storeStrong(&selfCopy->_sortedBinaryImages, v5);
        _bundleLock2 = [(VMUProcessDescription *)selfCopy _bundleLock];
        [_bundleLock2 unlock];

        goto LABEL_40;
      }

      v8 = [nextObject objectForKey:@"ExecutablePath"];
      v9 = selfCopy;
      v10 = [(NSDictionary *)selfCopy->_binaryImageHints objectForKey:v8];
      v11 = [nextObject objectForKey:@"ShortVersionString"];
      if (v11)
      {
        goto LABEL_5;
      }

      v14 = CFURLCreateWithFileSystemPath(allocator, v8, kCFURLPOSIXPathStyle, 1u);
      if (!v14)
      {
        break;
      }

      v15 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
      v16 = v15;
      if (v15)
      {
        v17 = [CFBundleGetValueForInfoDictionaryKey(v15 @"CFBundleShortVersionString")];
        v11 = [v17 copy];

        v18 = [CFBundleGetValueForInfoDictionaryKey(v16 @"CFBundleVersion")];
        v12 = [v18 copy];

        v19 = [(__CFString *)CFBundleGetIdentifier(v16) description];
        v13 = [v19 copy];

        CFRelease(v16);
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      CFRelease(v14);
LABEL_12:
      v20 = [nextObject objectForKey:@"SourceVersion"];
      v21 = v20;
      if (!v12 && v20)
      {
        v12 = v20;
      }

      if (v13 || ([(__CFString *)v8 lastPathComponent], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        [nextObject setObject:v13 forKey:@"Identifier"];
      }

      if (v12)
      {
        [nextObject setObject:v12 forKey:@"Version"];
      }

      if (v11)
      {
        [nextObject setObject:v11 forKey:@"ShortVersionString"];
      }

      v22 = [v10 objectForKey:@"IsAppleCode"];

      if (v22)
      {
        v23 = [v10 objectForKey:@"IsAppleCode"];
        bOOLValue = [v23 BOOLValue];
      }

      else
      {
        bOOLValue = ([v13 hasPrefix:@"com.apple."] & 1) != 0 || (objc_msgSend(v13, "hasPrefix:", @"commpage") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"Ozone") & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"Motion");
        if (([(__CFString *)v8 hasPrefix:@"/System"]& 1) != 0 || [(__CFString *)v8 hasPrefix:@"/usr/lib"])
        {
          bOOLValue = 1;
        }
      }

      v25 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
      [nextObject setObject:v25 forKey:@"IsAppleCode"];

      v26 = [v10 objectForKey:@"DisplayName"];

      if (v26)
      {
        [v10 objectForKey:@"DisplayName"];
      }

      else
      {
        [(__CFString *)v8 lastPathComponent];
      }
      v27 = ;
      if (v27)
      {
        [nextObject setObject:v27 forKey:@"DisplayName"];
      }

      v6 = nextObject;
      v5 = v32;
      selfCopy = v9;
    }

    v11 = 0;
LABEL_5:
    v12 = 0;
    v13 = 0;
    goto LABEL_12;
  }

LABEL_40:
  [(VMUProcessDescription *)selfCopy cleansePathsIncludingBinaryImageList:1];
  [(VMUProcessDescription *)selfCopy clearCrashReporterInfo];
  sortedBinaryImages = selfCopy->_sortedBinaryImages;

  return sortedBinaryImages;
}

- (void)dealloc
{
  [(VMUProcessDescription *)self setCrashReporterInfo];
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSRelease();
  self->_symbolicator._opaque_1 = 0;
  self->_symbolicator._opaque_2 = 0;
  v5 = self->_binaryImages;
  objc_sync_enter(v5);
  binaryImages = self->_binaryImages;
  self->_binaryImages = 0;

  objc_sync_exit(v5);
  [(VMUProcessDescription *)self clearCrashReporterInfo];
  v7.receiver = self;
  v7.super_class = VMUProcessDescription;
  [(VMUProcessDescription *)&v7 dealloc];
}

- (void)setCrashReporterInfo
{
  v3 = objc_autoreleasePoolPush();
  processName = self->_processName;
  if (!processName)
  {
    processName = @"<unknown>";
  }

  v5 = processName;
  executablePath = self->_executablePath;
  if (!executablePath)
  {
    executablePath = @"<unknown>";
  }

  v7 = executablePath;
  parentProcessName = self->_parentProcessName;
  if (!parentProcessName)
  {
    parentProcessName = @"<unknown>";
  }

  v9 = parentProcessName;
  parentExecutablePath = self->_parentExecutablePath;
  if (!parentExecutablePath)
  {
    parentExecutablePath = @"<unknown>";
  }

  v11 = parentExecutablePath;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VMUProcessDescription is examining:\n   process: %@  pid: %d  path: %@  _binaryImages count: %zu\n   parent process: %@  pid: %d  path: %@\n", v5, self->_pid, v7, -[NSMutableArray count](self->_binaryImages, "count"), v9, self->_ppid, v11];
  VMUSetCrashReporterInfo(v12);

  objc_autoreleasePoolPop(v3);
}

+ (id)parseBinaryImagesDescription:(id)description
{
  descriptionCopy = description;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:descriptionCopy];
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  while (1)
  {
    [v5 scanUpToString:@"/" intoString:0];
    if ([v5 isAtEnd])
    {
      break;
    }

    v12 = 0;
    [v5 scanUpToCharactersFromSet:newlineCharacterSet intoString:&v12];
    v7 = v12;
    v8 = v7;
    if (v7)
    {
      v9 = [v7 substringFromIndex:{objc_msgSend(v7, "rangeOfString:options:", @"/", 4) + 1}];
      if ([v9 length])
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v10 setObject:v8 forKey:@"ExecutablePath"];
        [v10 setObject:v9 forKey:@"DisplayName"];
        [array addObject:v10];
      }
    }
  }

  return array;
}

+ (_CSTypeRef)symbolicatorFromBinaryImagesDescription:(id)description
{
  descriptionCopy = description;
  v5 = [self symbolicatorFromBinaryImagesDescription:descriptionCopy withArchitecture:MEMORY[0x1C695D930]()];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._opaque_2 = v9;
  result._opaque_1 = v8;
  return result;
}

+ (_CSTypeRef)symbolicatorFromBinaryImagesDescription:(id)description withArchitecture:(_CSArchitecture)architecture
{
  descriptionCopy = description;
  v38 = 0;
  v39 = &v38;
  v40 = 0x4812000000;
  v41 = __Block_byref_object_copy__3;
  v42 = __Block_byref_object_dispose__3;
  v43 = &unk_1C6872315;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x4812000000;
  v32 = __Block_byref_object_copy__17;
  v33 = __Block_byref_object_dispose__18;
  v34 = &unk_1C6872315;
  v36 = 0;
  v37 = 0;
  __p = 0;
  v6 = objc_msgSend(descriptionCopy, "containsString:", @"(");
  if (v6)
  {
    v7 = @"(0x[a-fA-F0-9]*)\\s*-\\s*(0x[a-fA-F0-9]*)\\s*(\\S*)\\s*\\(([0-9\\- \\.\\?]*)\\)\\s*<(\\S{36})>\\s*(.*)";
  }

  else
  {
    v7 = @"(0x[a-fA-F0-9]*)\\s*-\\s*(0x[a-fA-F0-9]*)\\s*(\\S*)\\s*(\\S*)\\s*<(\\S{32})>\\s*(.*)";
  }

  v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v7 options:1 error:0];
  v9 = [descriptionCopy length];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __82__VMUProcessDescription_symbolicatorFromBinaryImagesDescription_withArchitecture___block_invoke;
  v23[3] = &unk_1E8278170;
  v10 = descriptionCopy;
  v24 = v10;
  v25 = &v29;
  v28 = v6;
  v26 = &v38;
  architectureCopy = architecture;
  [v8 enumerateMatchesInString:v10 options:0 range:0 usingBlock:{v9, v23}];
  v11 = v39[6];
  v12 = v39[7];
  if (v12 != v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 48;
    do
    {
      *(v11 + v15) = v30[6] + v13;
      ++v14;
      v11 = v39[6];
      v12 = v39[7];
      v13 += 40;
      v15 += 64;
    }

    while (v14 < (v12 - v11) >> 6);
  }

  if (v12 == v11)
  {
    v18 = 0;
    v16 = 0;
  }

  else
  {
    v16 = CSSymbolicatorCreateWithBinaryImageListCountPidFlagsAndNotification();
    v18 = v17;
    v19 = v39[6];
    v20 = v39[7];
    while (v19 != v20)
    {
      free(*(v19 + 40));
      v19 += 64;
    }
  }

  _Block_object_dispose(&v29, 8);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v38, 8);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  v21 = v16;
  v22 = v18;
  result._opaque_2 = v22;
  result._opaque_1 = v21;
  return result;
}

void __82__VMUProcessDescription_symbolicatorFromBinaryImagesDescription_withArchitecture___block_invoke(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  *(&v82 + 1) = 1;
  strcpy(&v84, "__TEXT");
  v4 = [v3 rangeAtIndex:1];
  v6 = v5;
  v7 = [v3 rangeAtIndex:2];
  v9 = v8;
  v10 = [v3 rangeAtIndex:4];
  v75 = v11;
  v76 = v10;
  v12 = [v3 rangeAtIndex:5];
  v73 = v13;
  v74 = v12;
  v14 = [v3 rangeAtIndex:6];
  v16 = v15;
  v17 = objc_alloc(MEMORY[0x1E696AE88]);
  v18 = [*(a1 + 32) substringWithRange:{v4, v6}];
  v19 = [v17 initWithString:v18];

  [v19 scanHexLongLong:&v83];
  v20 = objc_alloc(MEMORY[0x1E696AE88]);
  v21 = [*(a1 + 32) substringWithRange:{v7, v9}];
  v22 = [v20 initWithString:v21];

  [v22 scanHexLongLong:&v83 + 8];
  ++*(&v83 + 1);
  v23 = *(*(a1 + 40) + 8);
  v24 = v23[7];
  v25 = v23[8];
  if (v24 >= v25)
  {
    v29 = v23[6];
    v30 = 0xCCCCCCCCCCCCCCCDLL * ((v24 - v29) >> 3);
    v31 = v30 + 1;
    if (v30 + 1 > 0x666666666666666)
    {
      std::vector<_CSTypeRef>::__throw_length_error[abi:ne200100]();
    }

    v32 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - v29) >> 3);
    if (2 * v32 > v31)
    {
      v31 = 2 * v32;
    }

    if (v32 >= 0x333333333333333)
    {
      v33 = 0x666666666666666;
    }

    else
    {
      v33 = v31;
    }

    if (v33)
    {
      std::allocator<_CSBinaryRelocationInformation>::allocate_at_least[abi:ne200100]((v23 + 6), v33);
    }

    v34 = 40 * v30;
    v35 = v83;
    v36 = v84;
    *(v34 + 32) = v85;
    *v34 = v35;
    *(v34 + 16) = v36;
    v28 = 40 * v30 + 40;
    v37 = v23[6];
    v38 = v23[7] - v37;
    v39 = 40 * v30 - v38;
    memcpy((v34 - v38), v37, v38);
    v40 = v23[6];
    v23[6] = v39;
    v23[7] = v28;
    v23[8] = 0;
    if (v40)
    {
      operator delete(v40);
    }
  }

  else
  {
    v26 = v83;
    v27 = v84;
    *(v24 + 32) = v85;
    *v24 = v26;
    *(v24 + 16) = v27;
    v28 = v24 + 40;
  }

  v23[7] = v28;
  if (*(a1 + 64))
  {
    v41 = *(a1 + 56);
  }

  else
  {
    *subtype = 0;
    v42 = [*(a1 + 32) substringWithRange:{v76, v75}];
    v43 = v42;
    v44 = [v42 cStringUsingEncoding:4];

    if (!macho_cpu_type_for_arch_name(v44, &subtype[1], subtype))
    {
      CFLog();
      goto LABEL_35;
    }

    v41 = subtype[1] | (subtype[0] << 32);
  }

  *&v81 = v41;
  v45 = [*(a1 + 32) substringWithRange:{v14, v16}];
  v46 = v45;
  v47 = [v45 cStringUsingEncoding:4];

  v48 = strlen(v47);
  *(&v81 + 1) = strndup(v47, v48);
  if (*(&v81 + 1))
  {
    v49 = [*(a1 + 32) substringWithRange:{v74, v73}];
    v50 = [v49 containsString:@"-"];
    v51 = v49;
    if (v50)
    {
      MEMORY[0x1C695DE40]([v49 cStringUsingEncoding:1], &v80);
    }

    else
    {
      sscanf([v49 cStringUsingEncoding:1], "%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx", &v80, &v80 + 1, &v80 + 2, &v80 + 3, &v80 + 4, &v80 + 5, &v80 + 6, &v80 + 7, &v80 + 8, &v80 + 9, &v80 + 10, &v80 + 11, &v80 + 12, &v80 + 13, &v80 + 14, &v80 + 15);
    }

    v52 = *(*(a1 + 48) + 8);
    v53 = v52[7];
    v54 = v52[8];
    if (v53 >= v54)
    {
      v59 = v52[6];
      v60 = (v53 - v59) >> 6;
      v61 = v60 + 1;
      if ((v60 + 1) >> 58)
      {
        std::vector<_CSTypeRef>::__throw_length_error[abi:ne200100]();
      }

      v62 = v54 - v59;
      if (v62 >> 5 > v61)
      {
        v61 = v62 >> 5;
      }

      if (v62 >= 0x7FFFFFFFFFFFFFC0)
      {
        v63 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v63 = v61;
      }

      if (v63)
      {
        std::allocator<_CSBinaryImageInformation>::allocate_at_least[abi:ne200100]((v52 + 6), v63);
      }

      v64 = (v60 << 6);
      v65 = v79;
      v66 = v80;
      v67 = v82;
      v64[2] = v81;
      v64[3] = v67;
      *v64 = v65;
      v64[1] = v66;
      v58 = (v60 << 6) + 64;
      v68 = v52[6];
      v69 = v52[7] - v68;
      v70 = (v60 << 6) - v69;
      memcpy(v64 - v69, v68, v69);
      v71 = v52[6];
      v52[6] = v70;
      v52[7] = v58;
      v52[8] = 0;
      if (v71)
      {
        operator delete(v71);
      }
    }

    else
    {
      v55 = v79;
      v56 = v80;
      v57 = v82;
      v53[2] = v81;
      v53[3] = v57;
      *v53 = v55;
      v53[1] = v56;
      v58 = (v53 + 4);
    }

    v52[7] = v58;
  }

LABEL_35:

  objc_autoreleasePoolPop(context);
  v72 = *MEMORY[0x1E69E9840];
}

- (VMUProcessDescription)initWithVMUTaskMemoryCache:(id)cache getBinariesList:(BOOL)list
{
  listCopy = list;
  v72 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v69.receiver = self;
  v69.super_class = VMUProcessDescription;
  v7 = [(VMUProcessDescription *)&v69 init];
  if (!v7)
  {
    goto LABEL_61;
  }

  date = [MEMORY[0x1E695DF00] date];
  date = v7->_date;
  v7->_date = date;

  if (cacheCopy)
  {
    objc_storeStrong(&v7->_memoryCache, cache);
    representsCore = [(VMUTaskMemoryCache *)v7->_memoryCache representsCore];
    memoryCache = v7->_memoryCache;
    if (representsCore)
    {
      if ([(VMUTaskMemoryCache *)memoryCache isKernel])
      {
        v7->_pid = -1;
LABEL_11:
        if ([(VMUTaskMemoryCache *)v7->_memoryCache getPlatform:&v7->_platform])
        {

          v7 = 0;
          goto LABEL_13;
        }

        if ([(VMUTaskMemoryCache *)v7->_memoryCache representsCore])
        {
          v7->_taskType = 2;
          [(VMUProcessDescription *)v7 initFromCorpseOrCore];
        }

        else if ([(VMUProcessDescription *)v7 initFromCorpseOrCore])
        {
          v7->_taskType = 1;
        }

        else
        {
          v7->_taskType = 0;
          [(VMUProcessDescription *)v7 initFromLiveProcess];
        }

        v68 = 0;
        *v71 = 0x100000006;
        if (!sysctl(v71, 2u, 0, &v68, 0, 0))
        {
          v14 = malloc_type_malloc(v68, 0x100004077774924uLL);
          if (!sysctl(v71, 2u, v14, &v68, 0, 0))
          {
            v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v14];
            hardwareModel = v7->_hardwareModel;
            v7->_hardwareModel = v15;
          }

          free(v14);
        }

        if (!v7->_hardwareModel)
        {
          v7->_hardwareModel = &stru_1F461F9C8;
        }

        if (![(VMUTaskMemoryCache *)v7->_memoryCache representsCore])
        {
          ppid = v7->_ppid;
          if (ppid)
          {
            v18 = _CRCopyProcessNameForPID(ppid);
            parentProcessName = v7->_parentProcessName;
            v7->_parentProcessName = &v18->isa;

            v20 = _CRCopyExecutablePathForPID(v7->_ppid);
            parentExecutablePath = v7->_parentExecutablePath;
            v7->_parentExecutablePath = &v20->isa;
          }
        }

        if (!v7->_taskType)
        {
          [(VMUTaskMemoryCache *)v7->_memoryCache taskPort];
          if (CSTaskHasNotStarted())
          {
            listCopy = 0;
          }
        }

        if ([(VMUTaskMemoryCache *)v7->_memoryCache representsCore]|| [(VMUTaskMemoryCache *)v7->_memoryCache taskPort]&& [(VMUTaskMemoryCache *)v7->_memoryCache taskPort]!= -1)
        {
          v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
          binaryImages = v7->_binaryImages;
          v7->_binaryImages = v22;

          if (listCopy)
          {
            taskType = v7->_taskType;
            FlagsForNoSymbolOrSourceInfoData = CSSymbolicatorGetFlagsForNoSymbolOrSourceInfoData();
            v26 = taskType == 0;
            objc_initWeak(location, v7);
            representsCore2 = [(VMUTaskMemoryCache *)v7->_memoryCache representsCore];
            v28 = v7->_memoryCache;
            if (representsCore2)
            {
              v7->_symbolicator._opaque_1 = [(VMUTaskMemoryCache *)v7->_memoryCache createSymbolicatorWithFlags:0 andNotification:?];
              v7->_symbolicator._opaque_2 = v29;
              v66[1] = MEMORY[0x1E69E9820];
              v66[2] = 3221225472;
              v66[3] = __68__VMUProcessDescription_initWithVMUTaskMemoryCache_getBinariesList___block_invoke;
              v66[4] = &unk_1E8277F18;
              v67 = v7;
              CSSymbolicatorForeachSymbolOwnerAtTime();
            }

            else
            {
              v65[0] = MEMORY[0x1E69E9820];
              v65[1] = 3221225472;
              v65[2] = __68__VMUProcessDescription_initWithVMUTaskMemoryCache_getBinariesList___block_invoke_2;
              v65[3] = &unk_1E82781C0;
              objc_copyWeak(v66, location);
              v7->_symbolicator._opaque_1 = [(VMUTaskMemoryCache *)v28 createSymbolicatorWithFlags:v65 andNotification:?];
              v7->_symbolicator._opaque_2 = v31;
              objc_destroyWeak(v66);
            }

            opaque_1 = v7->_symbolicator._opaque_1;
            opaque_2 = v7->_symbolicator._opaque_2;
            if (CSIsNull())
            {
              pid = v7->_pid;
              [(VMUProcessDescription *)v7 processName];
              v51 = v50 = pid;
              CFLog();
            }

            objc_destroyWeak(location);
          }
        }

        else
        {
          v30 = v7->_pid;
          [(VMUProcessDescription *)v7 processName];
          v51 = v50 = v30;
          CFLog();
        }

        if (v7->_executablePathNeedsCorrection || ![(NSString *)v7->_executablePath length])
        {
          v52 = v7->_binaryImages;
          objc_sync_enter(v52);
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          obj = v7->_binaryImages;
          v35 = [(NSMutableArray *)obj countByEnumeratingWithState:&v61 objects:v70 count:16];
          if (v35)
          {
            v36 = *v62;
            while (2)
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v62 != v36)
                {
                  objc_enumerationMutation(obj);
                }

                v38 = *(*(&v61 + 1) + 8 * i);
                v39 = [(VMUProcessDescription *)v7 processIdentifier:v50];
                v40 = [v38 objectForKey:@"Identifier"];
                v41 = [v39 isEqualToString:v40];

                if (v41)
                {
                  v42 = [v38 objectForKey:@"ExecutablePath"];
                  v43 = v42;
                  if (v42)
                  {
                    v44 = [v42 copy];
                    executablePath = v7->_executablePath;
                    v7->_executablePath = v44;

                    v7->_executablePathNeedsCorrection = 0;
                    goto LABEL_55;
                  }
                }
              }

              v35 = [(NSMutableArray *)obj countByEnumeratingWithState:&v61 objects:v70 count:16];
              if (v35)
              {
                continue;
              }

              break;
            }
          }

LABEL_55:

          objc_sync_exit(v52);
        }

        [(VMUProcessDescription *)v7 cleansePathsIncludingBinaryImageList:0, v50, v51];
        v46 = v7->_symbolicator._opaque_1;
        v47 = v7->_symbolicator._opaque_2;
        CSSymbolicatorGetAOutSymbolOwner();
        if (CSIsNull())
        {
          if (![(VMUTaskMemoryCache *)cacheCopy isExclave])
          {
            v59 = 0;
            v60 = 0;
            v58 = 9999;
            v56 = 0u;
            v57 = 0u;
            *location = 0u;
            if (![(VMUTaskMemoryCache *)v7->_memoryCache machVMRegionRecurseSubmapShortInfo64onAddress:&v60 size:&v59 nestingDepth:&v58 info:location])
            {
              v7->_executableLoadAddress = v60;
            }
          }
        }

        else
        {
          v7->_executableLoadAddress = CSSymbolOwnerGetBaseAddress();
        }

LABEL_61:
        v7 = v7;
        v13 = v7;
        goto LABEL_62;
      }

      if (![VMUTaskMemoryCache getCoreFilePid:?])
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (![(VMUTaskMemoryCache *)memoryCache taskPort])
      {
        goto LABEL_11;
      }

      if ([(VMUTaskMemoryCache *)v7->_memoryCache taskPort]== -1)
      {
        goto LABEL_11;
      }

      v12 = pid_for_task([(VMUTaskMemoryCache *)v7->_memoryCache taskPort], &v7->_pid);
      if (!v12)
      {
        goto LABEL_11;
      }

      [(VMUTaskMemoryCache *)v7->_memoryCache taskPort];
      mach_error_string(v12);
      CFLog();
    }
  }

LABEL_13:
  v13 = 0;
LABEL_62:

  v48 = *MEMORY[0x1E69E9840];
  return v13;
}

void __68__VMUProcessDescription_initWithVMUTaskMemoryCache_getBinariesList___block_invoke_2(uint64_t a1, int a2, uint64_t *a3)
{
  if (a2 == 256)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _libraryLoaded:{a3[2], a3[3]}];
  }

  else if (a2 == 16)
  {
    v5 = *a3;
    v4 = a3[1];
    objc_copyWeak(&v7, (a1 + 32));
    CSSymbolicatorForeachSymbolOwnerAtTime();
    objc_destroyWeak(&v7);
  }
}

void __68__VMUProcessDescription_initWithVMUTaskMemoryCache_getBinariesList___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _libraryLoaded:{a2, a3}];
}

- (void)initFromLiveProcess
{
  v23 = *MEMORY[0x1E69E9840];
  size = 0;
  *v20 = 0xE00000001;
  pid = self->_pid;
  v21 = 1;
  v22 = pid;
  if ((sysctl(v20, 4u, 0, &size, 0, 0) & 0x80000000) == 0)
  {
    v4 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    if (v4)
    {
      if ((sysctl(v20, 4u, v4, &size, 0, 0) & 0x80000000) == 0)
      {
        self->_is64Bit = (*(v4 + 32) & 4) != 0;
        self->_proc_starttime = *v4;
        self->_ppid = *(v4 + 140);
      }

      free(v4);
    }
  }

  v18 = 0;
  size = 0;
  *v20 = 0;
  _CRCopyExecutablePathAndNameForPIDDetectingInconsistencies(self->_pid, v20, &v18, &size, &v18 + 1);
  executablePath = self->_executablePath;
  self->_executablePath = *v20;

  processName = self->_processName;
  self->_processName = size;

  memoryCache = self->_memoryCache;
  self->_executablePathNeedsCorrection = v18 != 0;
  self->_processNameNeedsCorrection = HIBYTE(v18) != 0;
  [(VMUTaskMemoryCache *)memoryCache taskPort];
  self->_taskIsTranslated = CSTaskIsTranslated();
  flags = 0;
  proc_get_dirty(self->_pid, &flags);
  if ((flags & 4) != 0)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  if ((~flags & 3) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  self->_idleExitStatus = v9;
  v10 = [[VMUProcInfo alloc] initWithTask:[(VMUTaskMemoryCache *)self->_memoryCache taskPort]];
  v11 = v10;
  if (!v10)
  {
    v16 = self->_pid;
    CFLog();
    goto LABEL_25;
  }

  cpuType = [(VMUProcInfo *)v10 cpuType];
  self->_cpuType = cpuType;
  if (self->_is64Bit)
  {
    v13 = 16777223;
    if (cpuType == 18)
    {
      v13 = 16777234;
    }

    else if (cpuType != 7)
    {
      goto LABEL_20;
    }

    self->_cpuType = v13;
  }

LABEL_20:
  if (self->_processNameNeedsCorrection || ![(NSString *)self->_processName length])
  {
    name = [(VMUProcInfo *)v11 name];
    if (name)
    {
      objc_storeStrong(&self->_processName, name);
      self->_processNameNeedsCorrection = 0;
    }
  }

LABEL_25:

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)initFromCorpseOrCore
{
  v81 = *MEMORY[0x1E69E9840];
  v75 = 0u;
  memset(v76, 0, 24);
  v73 = 0u;
  v74 = 0u;
  *obj = 0u;
  *v72 = 0u;
  representsCore = [(VMUTaskMemoryCache *)self->_memoryCache representsCore];
  memoryCache = self->_memoryCache;
  if (representsCore)
  {
    v5 = memoryCache;
    coreFileProcName = [(VMUTaskMemoryCache *)v5 coreFileProcName];
    obj[0] = [coreFileProcName copy];

    coreFileProcPath = [(VMUTaskMemoryCache *)v5 coreFileProcPath];
    obj[1] = [coreFileProcPath copy];

    coreFileParentProcName = [(VMUTaskMemoryCache *)v5 coreFileParentProcName];
    v72[0] = [coreFileParentProcName copy];

    coreFileParentProcPath = [(VMUTaskMemoryCache *)v5 coreFileParentProcPath];
    v72[1] = [coreFileParentProcPath copy];

    if ([VMUTaskMemoryCache getCoreFileProcStarttimeSec:v5]|| [VMUTaskMemoryCache getCoreFileProcStarttimeUSec:v5]|| [VMUTaskMemoryCache getCoreFileUserstack:v5]|| [VMUTaskMemoryCache getCoreFileProcFlags:v5]|| [VMUTaskMemoryCache getCoreFileArgsLen:v5]|| [VMUTaskMemoryCache getCoreFileProcArgc:v5]|| [VMUTaskMemoryCache getCoreFileLedgerPhysFootprint:v5]|| [VMUTaskMemoryCache getCoreFileLedgerPhysFootprintLifetimeMax:v5]|| [VMUTaskMemoryCache getCoreFilePid:v5]|| [VMUTaskMemoryCache getCoreFilePPid:v5]|| [(VMUTaskMemoryCache *)v5 getCoreFileCPUType:&v73 + 4])
    {
      v10 = 5;
    }

    else if ([VMUTaskMemoryCache getCoreFileDirtyFlags:v5])
    {
      v10 = 5;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    taskPort = [(VMUTaskMemoryCache *)memoryCache taskPort];
    kcd_addr_begin = 0;
    kcd_size = 0;
    v12 = MEMORY[0x1E69E9A60];
    v10 = task_map_corpse_info_64(*MEMORY[0x1E69E9A60], taskPort, &kcd_addr_begin, &kcd_size);
    if (!v10)
    {
      v13 = kcd_addr_begin;
      v14 = kcd_size;
      v15 = kcd_size + kcd_addr_begin;
      v16 = kcd_addr_begin + 16;
      if (v13 + 16 <= kcd_size + v13 && v16 + *(kcd_addr_begin + 4) <= v15 && *kcd_addr_begin == -559025833)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v69 = 0;
        do
        {
          if (v16 + *(v13 + 4) > v15)
          {
            break;
          }

          v20 = *v13;
          if (*v13 == -242132755)
          {
            break;
          }

          if ((v20 & 0xFFFFFFF0) == 0x20)
          {
            v20 = 17;
          }

          if (v20 <= 2062)
          {
            if (v20 > 2058)
            {
              switch(v20)
              {
                case 2059:
                  *&v74 = *(v13 + 16);
                  *(&v74 + 1) = *(v13 + 24);
                  v19 = 1;
                  break;
                case 2060:
                  *&v75 = *(v13 + 16);
                  LODWORD(v65) = 1;
                  break;
                case 2061:
                  HIDWORD(v75) = *(v13 + 16);
                  LOBYTE(v66) = 1;
                  break;
              }
            }

            else
            {
              switch(v20)
              {
                case 2053:
                  DWORD2(v73) = *(v13 + 16);
                  v17 = 1;
                  break;
                case 2054:
                  HIDWORD(v73) = *(v13 + 16);
                  v18 = 1;
                  break;
                case 2057:
                  v79 = *(v13 + 16);
                  v80 = 0;
                  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v79];
                  v22 = obj[0];
                  obj[0] = v21;

                  break;
              }
            }
          }

          else if (v20 <= 2069)
          {
            switch(v20)
            {
              case 2063:
                v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13 + 16];
                v24 = obj[1];
                obj[1] = v23;

                break;
              case 2068:
                LODWORD(v76[0]) = *(v13 + 16);
                BYTE4(v66) = 1;
                break;
              case 2069:
                DWORD2(v75) = *(v13 + 16);
                HIDWORD(v65) = 1;
                break;
            }
          }

          else if (v20 > 2085)
          {
            if (v20 == 2086)
            {
              *(&v76[0] + 1) = *(v13 + 16);
              BYTE4(v69) = 1;
            }

            else if (v20 == 2087)
            {
              *&v76[1] = *(v13 + 16);
              LOBYTE(v69) = 1;
            }
          }

          else if (v20 == 2070)
          {
            DWORD1(v73) = *(v13 + 16);
            BYTE4(v67) = 1;
          }

          else if (v20 == 2073)
          {
            LODWORD(v73) = *(v13 + 16);
            LOBYTE(v67) = 1;
          }

          v13 = v16 + *(v13 + 4);
          v16 = v13 + 16;
        }

        while (v13 + 16 <= v15);
        v25 = v12;
        v13 = kcd_addr_begin;
        v26 = v17 ^ 1;
        v14 = kcd_size;
        v27 = v18 ^ 1;
        v28 = v19 ^ 1;
        v29 = v65 ^ 1;
        v30 = BYTE4(v65) ^ 1;
        v31 = v66 ^ 1;
        v32 = BYTE4(v66) ^ 1;
        BYTE4(v69) ^= 1u;
        if (v69 & v67)
        {
          v33 = 0;
        }

        else
        {
          v33 = 5;
        }

        v68 = BYTE4(v67) ^ 1;
        LODWORD(v69) = v33;
      }

      else
      {
        v25 = v12;
        v69 = 0x100000005;
        v68 = 1;
        v32 = 1;
        v31 = 1;
        v30 = 1;
        v29 = 1;
        v28 = 1;
        v27 = 1;
        v26 = 1;
      }

      mach_vm_deallocate(*v25, v13, v14);
      v10 = 5;
      if (obj[0])
      {
        if ((obj[1] == 0) | ((v26 | v27 | v28 | v29 | v30) | v31) & 1 | ((v32 | v68) | BYTE4(v69)) & 1)
        {
          v10 = 5;
        }

        else
        {
          v10 = v69;
        }
      }
    }
  }

  if ([(VMUTaskMemoryCache *)self->_memoryCache isKernel])
  {
    v34 = obj[0];
    obj[0] = @"kernel";

    LODWORD(v73) = 4;
    DWORD2(v75) = 4;
  }

  else if (v10)
  {
    v35 = 0;
    goto LABEL_114;
  }

  objc_storeStrong(&self->_processName, obj[0]);
  v36 = v74;
  self->_proc_starttime.tv_sec = v74;
  v37 = v75;
  self->_proc_starttime.tv_usec = DWORD2(v36);
  v38 = HIDWORD(v75);
  objc_storeStrong(&self->_executablePath, obj[1]);
  lastPathComponent = [(NSString *)self->_executablePath lastPathComponent];
  if ([lastPathComponent length])
  {
    objc_storeStrong(&self->_processName, lastPathComponent);
  }

  objc_storeStrong(&self->_parentExecutablePath, v72[1]);
  objc_storeStrong(&self->_parentProcessName, v72[0]);
  lastPathComponent2 = [(NSString *)self->_parentExecutablePath lastPathComponent];
  if ([lastPathComponent2 length])
  {
    objc_storeStrong(&self->_parentProcessName, lastPathComponent2);
  }

  v41 = DWORD1(v73);
  if ((v73 & 4) != 0)
  {
    v42 = 3;
  }

  else
  {
    v42 = 2;
  }

  if ((~v73 & 3) != 0)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42;
  }

  self->_idleExitStatus = v43;
  v44 = v76[0];
  v45 = DWORD2(v75);
  self->_is64Bit = (BYTE8(v75) & 4) != 0;
  self->_cpuType = v41;
  v46 = HIDWORD(v73);
  self->_pid = DWORD2(v73);
  *&self->_physicalFootprint = *(v76 + 8);
  self->_ppid = v46;
  self->_taskIsTranslated = (v45 & 0x20000) != 0;
  if (v37)
  {
    if (v38 >= 1)
    {
      v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
      environment = self->_environment;
      self->_environment = v47;

      *&v79 = 0;
      if (![(VMUTaskMemoryCache *)self->_memoryCache mapAddress:v37 - v38 size:v38 returnedAddress:&v79 returnedSize:0]&& v38 >= 5)
      {
        v49 = (v79 + 4);
        v50 = 4;
        while (*v49)
        {
          ++v50;
          ++v49;
          if (v38 == v50)
          {
            goto LABEL_113;
          }
        }

        if (v50 < v38)
        {
          v51 = v50 + 1;
          while (v38 != v51)
          {
            v52 = *++v49;
            ++v51;
            if (v52)
            {
              v53 = v51 - 1;
              if (v44 >= 1)
              {
                for (i = 0; i != v44; ++i)
                {
                  if (v53 >= v38)
                  {
                    break;
                  }

                  v55 = v49 + 1;
                  while (*v49)
                  {
                    ++v53;
                    ++v49;
                    ++v55;
                    if (v38 == v53)
                    {
                      goto LABEL_113;
                    }
                  }

                  if (v53 < v38)
                  {
                    while (1)
                    {
                      v49 = v55;
                      if (++v53 >= v38)
                      {
                        break;
                      }

                      ++v55;
                      if (*v49)
                      {
                        goto LABEL_102;
                      }
                    }

                    v53 = v38;
                  }

LABEL_102:
                  ;
                }
              }

              for (; v53 < v38; v53 += v62)
              {
                if (*v49)
                {
                  v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v49 length:strnlen(v49 encoding:{v38 - v53), 4}];
                  v57 = [v56 rangeOfString:@"="];
                  if ([v56 length])
                  {
                    v58 = v57 == 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v58 = 1;
                  }

                  if (!v58)
                  {
                    v59 = [v56 substringToIndex:v57];
                    v60 = [v56 substringFromIndex:v57 + 1];
                    [(NSMutableDictionary *)self->_environment setObject:v60 forKeyedSubscript:v59];
                  }

                  v61 = [v56 length];

                  v62 = v61 + 1;
                  v49 += v61 + 1;
                }

                else
                {
                  ++v49;
                  v62 = 1;
                }
              }

              break;
            }
          }
        }
      }
    }
  }

LABEL_113:

  v35 = 1;
LABEL_114:

  v63 = *MEMORY[0x1E69E9840];
  return v35;
}

- (id)_readDataFromMemory:(id)memory atAddress:(unint64_t)address size:(unint64_t)size
{
  memoryCopy = memory;
  __src = 0;
  if ([memoryCopy mapAddress:address size:size returnedAddress:&__src returnedSize:0])
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF88] dataWithLength:size];
    mutableBytes = [v8 mutableBytes];
    memcpy(mutableBytes, __src, size);
  }

  return v8;
}

- (id)_extractInfoPlistFromSymbolOwner:(_CSTypeRef)owner withMemory:(id)memory
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__65;
  v12 = __Block_byref_object_dispose__66;
  v13 = 0;
  memoryCopy = memory;
  v4 = memoryCopy;
  CSSymbolOwnerForeachSection();
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __69__VMUProcessDescription__extractInfoPlistFromSymbolOwner_withMemory___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    Name = CSRegionGetName();
    if (!strcmp("__TEXT __info_plist", Name))
    {
      Range = CSRegionGetRange();
      v5 = [*(a1 + 32) _readDataFromMemory:*(a1 + 40) atAddress:Range size:v4];
      if (v5)
      {
        v7 = v5;
        v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
        }

        v5 = v7;
      }
    }
  }
}

- (void)_libraryLoaded:(_CSTypeRef)loaded
{
  opaque_2 = loaded._opaque_2;
  opaque_1 = loaded._opaque_1;
  v6 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  Name = CSSymbolOwnerGetName();
  if (Name)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
    if (!v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:Name encoding:30];
      if (v10)
      {
        v9 = v10;
      }

      else
      {
        v9 = @"nonUTF8-binary-name";
      }
    }

    [dictionary setObject:v9 forKey:@"Identifier"];
  }

  Path = CSSymbolOwnerGetPath();
  if (Path)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Path];
    if (!v12)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithCString:Path encoding:30];
      if (v13)
      {
        v12 = v13;
      }

      else
      {
        v12 = @"nonUTF8-binary-path";
      }
    }

    stringByStandardizingPath = [(__CFString *)v12 stringByStandardizingPath];

    [dictionary setObject:stringByStandardizingPath forKey:@"ExecutablePath"];
  }

  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (CFUUIDBytes)
  {
    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:CFUUIDBytes length:16];
    [dictionary setObject:v16 forKey:@"BinaryInfoDwarfUUIDKey"];
  }

  Architecture = CSSymbolOwnerGetArchitecture();
  v18 = macho_arch_name_for_cpu_type(Architecture, SHIDWORD(Architecture));
  if (v18)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
    [dictionary setObject:v19 forKey:@"BinaryInfoArchitectureKey"];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __40__VMUProcessDescription__libraryLoaded___block_invoke;
  v32 = &unk_1E8278210;
  v33 = &v39;
  v34 = &v35;
  CSSymbolOwnerForeachSection();
  if (v40[3] || v36[3])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{v29, 3221225472, __40__VMUProcessDescription__libraryLoaded___block_invoke, &unk_1E8278210, &v39, &v35}];
    [dictionary setObject:v20 forKey:@"StartAddress"];

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v36[3] - v40[3] + 1];
    [dictionary setObject:v21 forKey:@"Size"];
  }

  v22 = [(VMUProcessDescription *)self _extractInfoPlistFromSymbolOwner:opaque_1 withMemory:opaque_2, self->_memoryCache, v29, v30, v31, v32, v33, v34];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 objectForKey:@"CFBundleShortVersionString"];
    if (v24)
    {
      [dictionary setObject:v24 forKey:@"ShortVersionString"];
    }

    v25 = [v23 objectForKey:@"CFBundleVersion"];

    if (v25)
    {
      [dictionary setObject:v25 forKey:@"Version"];
    }
  }

  Version = CSSymbolOwnerGetVersion();
  if (Version)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Version];
    if (v27)
    {
      [dictionary setObject:v27 forKey:@"SourceVersion"];
    }
  }

  v28 = self->_binaryImages;
  objc_sync_enter(v28);
  [(NSMutableArray *)self->_binaryImages addObject:dictionary];
  self->_binaryImagePostProcessingComplete = 0;
  objc_sync_exit(v28);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  objc_autoreleasePoolPop(v6);
}

unint64_t __40__VMUProcessDescription__libraryLoaded___block_invoke(uint64_t a1)
{
  Name = CSRegionGetName();
  if (!strncmp(Name, "__TEXT", 6uLL) || (result = strcmp(Name, "MACH_HEADER"), !result))
  {
    result = CSRegionGetRange();
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 24) - 1 >= result)
    {
      *(v5 + 24) = result;
    }

    v6 = v4 + result - 1;
    v7 = *(*(a1 + 40) + 8);
    if (v6 > *(v7 + 24))
    {
      *(v7 + 24) = v6;
    }
  }

  return result;
}

- (id)processIdentifier
{
  binaryImages = [(VMUProcessDescription *)self binaryImages];
  v4 = binaryImages;
  if (!binaryImages || ![binaryImages count] || (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", @"Identifier"), processName = objc_claimAutoreleasedReturnValue(), v5, !processName))
  {
    processName = [(VMUProcessDescription *)self processName];
  }

  return processName;
}

- (id)processVersionDictionary
{
  binaryImages = [(VMUProcessDescription *)self binaryImages];
  v3 = binaryImages;
  if (binaryImages && [binaryImages count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 objectForKey:@"Version"];
    v6 = [v4 objectForKey:@"ShortVersionString"];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  if (v6)
  {
    v8 = [v6 description];
    [v7 setObject:v8 forKey:@"shortVersion"];
  }

  if (v5)
  {
    v9 = [v5 description];
    [v7 setObject:v9 forKey:@"version"];
  }

  return v7;
}

- (id)_sanitizeVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy length])
  {
    v4 = objc_msgSend(versionCopy, "stringByReplacingOccurrencesOfString:withString:", @"("), CFSTR("[");

    v5 = [v4 stringByReplacingOccurrencesOfString:@"" withString:?], @"]");
    versionCopy = v4;
  }

  else
  {
    v5 = @"???";
  }

  return v5;
}

- (id)processVersion
{
  processVersionDictionary = [(VMUProcessDescription *)self processVersionDictionary];
  v4 = [processVersionDictionary objectForKey:@"version"];
  v5 = [processVersionDictionary objectForKey:@"shortVersion"];
  v6 = MEMORY[0x1E696AEC0];
  if (v5)
  {
    v7 = [(VMUProcessDescription *)self _sanitizeVersion:v5];
    v8 = [(VMUProcessDescription *)self _sanitizeVersion:v4];
    v9 = [v6 stringWithFormat:@"%@ (%@)", v7, v8];
  }

  else
  {
    v7 = [(VMUProcessDescription *)self _sanitizeVersion:v4];
    v9 = [v6 stringWithFormat:@"%@", v7];
  }

  return v9;
}

- (id)_bundleLock
{
  if ([VMUProcessDescription _bundleLock]::onceToken != -1)
  {
    [VMUProcessDescription _bundleLock];
  }

  v3 = [VMUProcessDescription _bundleLock]::_bundleLock;

  return v3;
}

void __36__VMUProcessDescription__bundleLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AE68]);
  v1 = [VMUProcessDescription _bundleLock]::_bundleLock;
  [VMUProcessDescription _bundleLock]::_bundleLock = v0;
}

- (id)binaryImageDictionaryForAddress:(unint64_t)address
{
  binaryImages = [(VMUProcessDescription *)self binaryImages];
  objectEnumerator = [binaryImages objectEnumerator];

  v6 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v8 = [nextObject objectForKey:@"StartAddress"];
    unsignedLongLongValue = [v8 unsignedLongLongValue];

    v10 = [nextObject objectForKey:@"Size"];
    unsignedLongLongValue2 = [v10 unsignedLongLongValue];

    v6 = nextObject;
    if (unsignedLongLongValue <= address)
    {
      v6 = nextObject;
      if (unsignedLongLongValue2 + unsignedLongLongValue >= address)
      {
        break;
      }
    }
  }

  return nextObject;
}

- (id)valueForEnvVar:(id)var
{
  v27 = *MEMORY[0x1E69E9840];
  varCopy = var;
  if ((!self || !self->_taskType) && !self->_environment)
  {
    context = objc_autoreleasePoolPush();
    v19 = [[VMUProcInfo alloc] initWithPid:self->_pid];
    envVars = [(VMUProcInfo *)v19 envVars];
    if ([envVars count])
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      environment = self->_environment;
      self->_environment = v4;

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v6 = envVars;
      v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:{16, context}];
      if (v7)
      {
        v8 = *v23;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v23 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v22 + 1) + 8 * i);
            v11 = [v10 rangeOfString:@"="];
            if ([v10 length])
            {
              v12 = v11 == 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = 1;
            }

            if (!v12)
            {
              v13 = [v10 substringToIndex:v11];
              v14 = [v10 substringFromIndex:v11 + 1];
              [(NSMutableDictionary *)self->_environment setObject:v14 forKeyedSubscript:v13];
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v7);
      }
    }

    objc_autoreleasePoolPop(context);
  }

  context = [(NSMutableDictionary *)self->_environment objectForKeyedSubscript:varCopy, context];

  v16 = *MEMORY[0x1E69E9840];

  return context;
}

void *__52__VMUProcessDescription_targetUsesExtraPointerBits___block_invoke()
{
  result = dlopen("/usr/lib/system/libsystem_platform.dylib", 18);
  if (result)
  {
    result = dlsym(result, "os_security_config_get_for_task");
    [VMUProcessDescription targetUsesExtraPointerBits:]::osSecurityConfigGetForTaskFunctionPointer = result;
  }

  return result;
}

- (id)_cpuTypeDescription
{
  cpuType = self->_cpuType;
  if (cpuType <= 16777222)
  {
    switch(cpuType)
    {
      case 7:
        v6 = @"X86";
        goto LABEL_21;
      case 0xC:
        v6 = @"ARM";
        goto LABEL_21;
      case 0x12:
        v6 = @"PPC";
        goto LABEL_21;
    }

LABEL_16:
    cpuType = [MEMORY[0x1E696AEC0] stringWithFormat:@"%08X", cpuType];
LABEL_17:
    v6 = cpuType;
    goto LABEL_21;
  }

  if (cpuType > 16777233)
  {
    if (cpuType == 33554444)
    {
      v6 = @"ARM64_32";
      goto LABEL_21;
    }

    if (cpuType == 16777234)
    {
      v6 = @"PPC-64";
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (cpuType == 16777223)
  {
    v6 = @"X86-64";
    goto LABEL_21;
  }

  if (cpuType != 16777228)
  {
    goto LABEL_16;
  }

  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  v6 = @"ARM64";
  if ((CSIsNull() & 1) == 0)
  {
    v7 = self->_symbolicator._opaque_1;
    v8 = self->_symbolicator._opaque_2;
    if (CSSymbolicatorGetArchitecture() == 0x20100000CLL)
    {
      v6 = @"ARM64E";
    }

    else if (CSArchitectureIsX86_64())
    {
      v6 = @"X86-64";
    }

    if (self->_taskIsTranslated)
    {
      cpuType = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ (translated)", v6];
      goto LABEL_17;
    }
  }

LABEL_21:

  return v6;
}

- (id)_binaryImagesDescriptionForRanges:(id)ranges
{
  rangesCopy = ranges;
  selfCopy = self;
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  self = (self + 72);
  CSRelease();
  self->super.isa = 0;
  self->_memoryCache = 0;
  string = [MEMORY[0x1E696AD60] string];
  if ([(NSArray *)selfCopy->_unreadableBinaryImagePaths count])
  {
    [string appendString:@"Unreadable Binary Images:\n"];
    v7 = [(NSArray *)selfCopy->_unreadableBinaryImagePaths componentsJoinedByString:@"\n"];
    [string appendString:v7];
  }

  binaryImages = [(VMUProcessDescription *)selfCopy binaryImages];
  v9 = [binaryImages count];

  if (v9)
  {
    [string appendString:@"Binary Images:\n"];
    binaryImages2 = [(VMUProcessDescription *)selfCopy binaryImages];
    objectEnumerator = [binaryImages2 objectEnumerator];

    nextObject = 0;
    v32 = rangesCopy;
    while (1)
    {
      v12 = nextObject;
      nextObject = [objectEnumerator nextObject];

      if (!nextObject)
      {
        break;
      }

      v13 = objc_autoreleasePoolPush();
      v37 = [nextObject objectForKey:@"Identifier"];
      v36 = [nextObject objectForKey:@"ExecutablePath"];
      v14 = [nextObject objectForKey:@"BinaryInfoDwarfUUIDKey"];
      v15 = [nextObject objectForKey:@"Size"];
      unsignedLongLongValue = [v15 unsignedLongLongValue];

      v17 = [nextObject objectForKey:@"IsAppleCode"];
      bOOLValue = [v17 BOOLValue];

      v19 = [nextObject objectForKey:@"StartAddress"];
      v20 = v19;
      if (v19)
      {
        unsignedLongLongValue2 = [v19 unsignedLongLongValue];
        if (!rangesCopy || [rangesCopy indexForLocation:unsignedLongLongValue2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          string2 = [MEMORY[0x1E696AD60] string];
          if ([v14 length])
          {
            [string2 appendString:@"<"];
            bytes = [v14 bytes];
            for (i = 0; [v14 length] > i; ++i)
            {
              [string2 appendFormat:@"%02x", *(bytes + i)];
            }

            [string2 appendString:@"> "];
          }

          v25 = [nextObject objectForKey:@"BinaryInfoArchitectureKey"];
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ", v25];
          v27 = v26;
          v28 = @"+";
          if (bOOLValue)
          {
            v28 = @" ";
          }

          v29 = v37;
          if (!v37)
          {
            v29 = @"???";
          }

          if (selfCopy->_is64Bit)
          {
            v30 = @"%#18qx - %#18qx %@%@ %@%@ %@%@\n";
          }

          else
          {
            v30 = @"%#10lx - %#10lx %@%@ %@%@ %@%@\n";
          }

          [string appendFormat:v30, unsignedLongLongValue2, unsignedLongLongValue + unsignedLongLongValue2 - 1, v28, v29, v26, &stru_1F461F9C8, string2, v36];

          rangesCopy = v32;
        }
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    [string appendString:@"Binary images description not available\n\n"];
  }

  return string;
}

- (id)_rangesOfBinaryImages:(id)images forBacktraces:(id)backtraces
{
  v49 = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  backtracesCopy = backtraces;
  if (!backtracesCopy)
  {
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = backtracesCopy;
      goto LABEL_6;
    }

LABEL_30:
    v38 = 0;
    goto LABEL_31;
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithObject:backtracesCopy];

  v33 = v6;
LABEL_6:
  v7 = objc_alloc_init(VMURangeArray);
  v38 = objc_alloc_init(VMURangeArray);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = imagesCopy;
  v8 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v8)
  {
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        v12 = [v11 objectForKey:@"StartAddress"];
        v13 = v12;
        if (v12)
        {
          unsignedLongLongValue = [v12 unsignedLongLongValue];
          v15 = [v11 objectForKey:@"Size"];
          unsignedLongLongValue2 = [v15 unsignedLongLongValue];

          [(VMURangeArray *)v7 addRange:unsignedLongLongValue, unsignedLongLongValue2];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v8);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obja = v33;
  v17 = [obja countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v17)
  {
    v18 = *v40;
    do
    {
      v19 = 0;
      v35 = v17;
      do
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(obja);
        }

        v20 = *(*(&v39 + 1) + 8 * v19);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
          backtrace = [v21 backtrace];
          backtraceLength = [v21 backtraceLength];
          v24 = v18;
          if (backtraceLength)
          {
            v25 = backtraceLength;
            do
            {
              v26 = *backtrace++;
              v27 = [(VMURangeArray *)v7 indexForLocation:v26];
              if (v27 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v28 = [(VMURangeArray *)v7 rangeAtIndex:v27];
                v30 = v29;
                [(VMURangeArray *)v7 removeRangeAtIndex:v27];
                [(VMURangeArray *)v38 addRange:v28, v30];
              }

              --v25;
            }

            while (v25);
          }

          v18 = v24;
          v17 = v35;
        }

        ++v19;
      }

      while (v19 != v17);
      v17 = [obja countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v17);
  }

  backtracesCopy = obja;
LABEL_31:

  v31 = *MEMORY[0x1E69E9840];

  return v38;
}

- (id)binaryImagesDescriptionForBacktraces:(id)backtraces
{
  backtracesCopy = backtraces;
  v5 = objc_autoreleasePoolPush();
  binaryImages = [(VMUProcessDescription *)self binaryImages];
  v7 = [(VMUProcessDescription *)self _rangesOfBinaryImages:binaryImages forBacktraces:backtracesCopy];

  v8 = [(VMUProcessDescription *)self _binaryImagesDescriptionForRanges:v7];

  objc_autoreleasePoolPop(v5);

  return v8;
}

- (id)binaryImagesDescription
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(VMUProcessDescription *)self _binaryImagesDescriptionForRanges:0];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)_buildInfoDescription
{
  _buildVersionDictionary = [(VMUProcessDescription *)self _buildVersionDictionary];

  if (_buildVersionDictionary)
  {
    _buildVersionDictionary2 = [(VMUProcessDescription *)self _buildVersionDictionary];
    v5 = [_buildVersionDictionary2 objectForKey:@"ProjectName"];

    _buildVersionDictionary3 = [(VMUProcessDescription *)self _buildVersionDictionary];
    v7 = [_buildVersionDictionary3 objectForKey:@"SourceVersion"];

    _buildVersionDictionary4 = [(VMUProcessDescription *)self _buildVersionDictionary];
    v9 = [_buildVersionDictionary4 objectForKey:@"BuildVersion"];

    _buildVersionDictionary5 = [(VMUProcessDescription *)self _buildVersionDictionary];
    v11 = [_buildVersionDictionary5 objectForKey:@"ProductBuildVersion"];

    v12 = @"Unknown";
    if (v5)
    {
      v13 = v5;
    }

    else
    {
      v13 = @"Unknown";
    }

    if (v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = @"Unknown";
    }

    if (v9)
    {
      v12 = v9;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@~%@", v13, v14, v12];
    if ([v11 length])
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v15, v11];

      v15 = v16;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_osVersionDictionary
{
  osVersionDictionary = self->_osVersionDictionary;
  if (!osVersionDictionary)
  {
    _bundleLock = [(VMUProcessDescription *)self _bundleLock];
    [_bundleLock lock];

    v5 = _CRGetOSVersionDictionary();
    v6 = self->_osVersionDictionary;
    self->_osVersionDictionary = v5;

    _bundleLock2 = [(VMUProcessDescription *)self _bundleLock];
    [_bundleLock2 unlock];

    osVersionDictionary = self->_osVersionDictionary;
  }

  return osVersionDictionary;
}

- (id)_systemVersionDescription
{
  _osVersionDictionary = [(VMUProcessDescription *)self _osVersionDictionary];
  v3 = [_osVersionDictionary objectForKey:*MEMORY[0x1E695E208]];
  v4 = [_osVersionDictionary objectForKey:*MEMORY[0x1E695E1F0]];
  v5 = [_osVersionDictionary objectForKey:*MEMORY[0x1E695E1E8]];
  v6 = @"???";
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = @"???";
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = @"???";
  }

  if (v5)
  {
    v6 = v5;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ (%@)", v7, v8, v6];

  return v9;
}

- (id)processDescriptionHeader
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"Hardware Model:  %@\n", self->_hardwareModel];
  if (self->_taskType)
  {
    if ([(VMUTaskMemoryCache *)self->_memoryCache representsCore])
    {
      v3 = @"core file";
    }

    else
    {
      v3 = @"corpse";
    }
  }

  else
  {
    v3 = @"live task";
  }

  v4 = [MEMORY[0x1E696AD60] stringWithString:v3];
  _cpuTypeDescription = [(VMUProcessDescription *)self _cpuTypeDescription];
  v39 = v4;
  if ([_cpuTypeDescription isEqualToString:@"ARM64E"])
  {
    v6 = [(VMUProcessDescription *)self targetUsesExtraPointerBits:[(VMUTaskMemoryCache *)self->_memoryCache taskPort]];

    if (v6)
    {
      [v4 appendString:@" (MTE Enabled)"];
    }
  }

  else
  {
  }

  _buildInfoDescription = [(VMUProcessDescription *)self _buildInfoDescription];
  v30 = _buildInfoDescription;
  processName = [(VMUProcessDescription *)self processName];
  v8 = [processName length];
  if (v8)
  {
    processName2 = [(VMUProcessDescription *)self processName];
  }

  else
  {
    processName2 = @"???";
  }

  pid = self->_pid;
  v28 = v8;
  if (pid)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", pid];
  }

  else
  {
    v35 = @"Unknown";
  }

  v27 = pid;
  executablePath = [(VMUProcessDescription *)self executablePath];
  v10 = [executablePath length];
  if (v10)
  {
    executablePath2 = [(VMUProcessDescription *)self executablePath];
  }

  else
  {
    executablePath2 = @"???";
  }

  executableLoadAddress = self->_executableLoadAddress;
  v25 = v10;
  processIdentifier = [(VMUProcessDescription *)self processIdentifier];
  v38 = [processIdentifier length];
  if (v38)
  {
    processIdentifier2 = [(VMUProcessDescription *)self processIdentifier];
  }

  else
  {
    processIdentifier2 = @"???";
  }

  processVersion = [(VMUProcessDescription *)self processVersion];
  v11 = [_buildInfoDescription length];
  if (v11)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Build Info:      %@\n", _buildInfoDescription];
  }

  else
  {
    v32 = &stru_1F461F9C8;
  }

  _cpuTypeDescription2 = [(VMUProcessDescription *)self _cpuTypeDescription];
  platform = self->_platform;
  if (platform)
  {
    v14 = MEMORY[0x1E696AEC0];
    v22 = VMUPlatformNameForPlatform(self->_platform);
    v15 = [v14 stringWithFormat:@"Platform:        %@\n", v22];
  }

  else
  {
    v15 = &stru_1F461F9C8;
  }

  parentProcessName = [(VMUProcessDescription *)self parentProcessName];
  v17 = [parentProcessName length];
  if (v17)
  {
    parentProcessName2 = [(VMUProcessDescription *)self parentProcessName];
  }

  else
  {
    parentProcessName2 = @"???";
  }

  ppid = self->_ppid;
  if (ppid)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_ppid];
  }

  else
  {
    v20 = @"Unknown";
  }

  [string appendFormat:@"Process:         %@ [%@]\nPath:            %@\nLoad Address:    %#qx\nIdentifier:      %@\nVersion:         %@\n%@Code Type:       %@\n%@Parent Process:  %@ [%@]\nTarget Type:     %@\n", processName2, v35, executablePath2, executableLoadAddress, processIdentifier2, processVersion, v32, _cpuTypeDescription2, v15, parentProcessName2, v20, v39];
  if (ppid)
  {
  }

  if (v17)
  {
  }

  if (platform)
  {
  }

  if (v11)
  {
  }

  if (v38)
  {
  }

  if (v25)
  {
  }

  if (v27)
  {
  }

  if (v28)
  {
  }

  return string;
}

- (id)dateAndVersionDescription
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS ZZZ"];
  v4 = [v3 stringFromDate:self->_date];
  launchTime = [(VMUProcessDescription *)self launchTime];
  v6 = [v3 stringFromDate:launchTime];

  v7 = MEMORY[0x1E696AEC0];
  _systemVersionDescription = [(VMUProcessDescription *)self _systemVersionDescription];
  v9 = [v7 stringWithFormat:@"Date/Time:       %@\nLaunch Time:     %@\nOS Version:      %@\nReport Version:  %d\n", v4, v6, _systemVersionDescription, 104];

  return v9;
}

- (id)processStatisticsDescription
{
  v42 = *MEMORY[0x1E69E9840];
  if (self && self->_taskType)
  {
    physicalFootprint = self->_physicalFootprint;
    if (!physicalFootprint)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *buffer = 0u;
    if (proc_pid_rusage(self->_pid, 6, buffer))
    {
      goto LABEL_14;
    }

    physicalFootprint = *(&v17 + 1);
    v12 = v28;
    self->_physicalFootprint = *(&v17 + 1);
    self->_physicalFootprintPeak = v12;
    if (!physicalFootprint)
    {
      goto LABEL_15;
    }
  }

  if (!self->_physicalFootprintPeak)
  {
LABEL_14:
    physicalFootprint = 0;
    goto LABEL_15;
  }

  idleExitStatus = self->_idleExitStatus;
  v5 = "untracked";
  v6 = "clean";
  if (idleExitStatus == 3)
  {
    v6 = "dirty";
  }

  if (idleExitStatus != 1)
  {
    v5 = v6;
  }

  if (idleExitStatus)
  {
    v7 = v5;
  }

  else
  {
    v7 = "unknown";
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = VMUMemorySizeString(physicalFootprint);
  physicalFootprint = [v8 stringWithFormat:@"Physical footprint:         %s\nPhysical footprint (peak):  %s\nIdle exit:                  %s\n", v9, VMUMemorySizeString(self->_physicalFootprintPeak), v7];
LABEL_15:
  v10 = *MEMORY[0x1E69E9840];

  return physicalFootprint;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_autoreleasePoolPush();
  processDescriptionHeader = [(VMUProcessDescription *)self processDescriptionHeader];
  [string appendString:processDescriptionHeader];

  [string appendString:@"\n"];
  dateAndVersionDescription = [(VMUProcessDescription *)self dateAndVersionDescription];
  [string appendString:dateAndVersionDescription];

  processStatisticsDescription = [(VMUProcessDescription *)self processStatisticsDescription];
  if ([processStatisticsDescription length])
  {
    [string appendString:@"\n"];
    [string appendString:processStatisticsDescription];
  }

  [string appendString:@"----\n"];
  [string appendString:@"\n"];

  objc_autoreleasePoolPop(v4);

  return string;
}

@end