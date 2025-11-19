@interface SPCorrectionHandler
+ (id)sharedHandler;
- (BOOL)sanityCheckFile:(__sFILE *)a3;
- (SPCorrectionHandler)init;
- (id)getCorrections:(id)a3 forLanguage:(id)a4 version:(id *)a5;
- (id)readCommittedVersions;
- (id)versionForLanguage:(id)a3;
- (void)commitDictionary:(void *)a3 language:(id)a4 version:(id)a5;
- (void)dealloc;
- (void)openCorrectionRef:(id)a3 language:(id)a4 create:(BOOL)a5;
- (void)processCorrectionsWithHandle:(id)a3;
- (void)readCommittedVersions;
- (void)revokeUnusedFiles;
- (void)updateWithFileHandle:(id)a3;
- (void)updateWithFilePath:(id)a3;
- (void)writeCommittedVersions:(id)a3;
@end

@implementation SPCorrectionHandler

+ (id)sharedHandler
{
  if (sharedHandler_onceToken != -1)
  {
    +[SPCorrectionHandler sharedHandler];
  }

  v3 = sharedHandler_handler;

  return v3;
}

uint64_t __36__SPCorrectionHandler_sharedHandler__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedHandler_handler;
  sharedHandler_handler = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SPCorrectionHandler)init
{
  v33 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SPCorrectionHandler;
  v2 = [(SPCorrectionHandler *)&v16 init];
  if (v2)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *buffer = 0u;
    v18 = 0u;
    v3 = CFCopyHomeDirectoryURL();
    v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
    MutableCopy = CFStringCreateMutableCopy(0, 0, v4);
    CFStringAppend(MutableCopy, @"/Library/Spotlight/Corrections");
    CFStringGetFileSystemRepresentation(MutableCopy, buffer, 256);
    memset(&v15, 0, sizeof(v15));
    if (stat(buffer, &v15))
    {
      mkdir(buffer, 0x1FFu);
    }

    [(SPCorrectionHandler *)v2 setDictDirFd:open(buffer, 0x100000)];
    v6 = MEMORY[0x277CBEBC0];
    v7 = [MEMORY[0x277CCACA8] stringWithCString:buffer encoding:1];
    v8 = [v7 stringByAppendingString:@"/correction_version.txt"];
    v9 = [v6 URLWithString:v8];
    [(SPCorrectionHandler *)v2 setVersionInfoLocation:v9];

    v14 = *byte_2846BBE38;
    [(SPCorrectionHandler *)v2 setCorrectionRefs:CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], &v14)];
    v10 = objc_opt_new();
    [(SPCorrectionHandler *)v2 setCorrectionRefsLock:v10];

    v11 = [(SPCorrectionHandler *)v2 readCommittedVersions];
    [(SPCorrectionHandler *)v2 setLastCommittedVersions:v11];

    CFRelease(v4);
    CFRelease(v3);
    CFRelease(MutableCopy);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  close([(SPCorrectionHandler *)self dictDirFd]);
  v3.receiver = self;
  v3.super_class = SPCorrectionHandler;
  [(SPCorrectionHandler *)&v3 dealloc];
}

- (id)versionForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(SPCorrectionHandler *)self lastCommittedVersions];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (id)getCorrections:(id)a3 forLanguage:(id)a4 version:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SPCorrectionHandler *)self lastCommittedVersions];

  if (v10)
  {
    v11 = [(SPCorrectionHandler *)self lastCommittedVersions];
    v12 = [v11 valueForKey:v9];

    if (v12)
    {
      v13 = [(SPCorrectionHandler *)self correctionRefsLock];
      [v13 lock];

      [(SPCorrectionHandler *)self openCorrectionRef:v12 language:v9 create:0];
      v14 = SICopyCorrections();
      v15 = v12;
      *a5 = v12;
      v16 = [(SPCorrectionHandler *)self correctionRefsLock];
      [v16 unlock];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)updateWithFilePath:(id)a3
{
  v4 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:a3];
  [(SPCorrectionHandler *)self updateWithFileHandle:v4];
}

- (void)updateWithFileHandle:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_INFO, "Processing corrections begin", buf, 2u);
  }

  [(SPCorrectionHandler *)v5 processCorrectionsWithHandle:v4];
  v7 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_INFO, "Processing corrections complete", v8, 2u);
  }

  objc_sync_exit(v5);
}

- (BOOL)sanityCheckFile:(__sFILE *)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    bzero(__ptr, 0x400uLL);
    if (fread(__ptr, 1uLL, 0x400uLL, a3))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithCString:__ptr encoding:1];
      rewind(a3);
      v5 = [v4 containsString:@"\n"];
    }

    else
    {
      v4 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [SPCorrectionHandler sanityCheckFile:];
      }

      v5 = 0;
    }
  }

  else
  {
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SPCorrectionHandler sanityCheckFile:];
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)processCorrectionsWithHandle:(id)a3
{
  v4 = a3;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 languageCode];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __52__SPCorrectionHandler_processCorrectionsWithHandle___block_invoke;
  v18 = &unk_278937CD8;
  v21 = &v31;
  v19 = self;
  v22 = &v37;
  v23 = &v25;
  v7 = v6;
  v20 = v7;
  v24 = v41;
  v8 = &v15;
  v9 = [v4 fileDescriptor];
  v10 = v9;
  if (v9 != -1)
  {
    memset(&v43, 0, sizeof(v43));
    fstat(v9, &v43);
    st_size = v43.st_size;
    v12 = mmap(0, v43.st_size, 1, 1, v10, 0);
    v13 = v12;
    if (v12 != -1)
    {
      madvise(v12, st_size, 2);
      (v17)(v8, v13, st_size);
      munmap(v13, st_size);
    }
  }

  if (v38[3])
  {
    if (v26[5] && v32[5])
    {
      [SPCorrectionHandler commitDictionary:"commitDictionary:language:version:" language:? version:?];
      v14 = v38[3];
    }

    SICorrectionDestory();
  }

  [(SPCorrectionHandler *)self revokeUnusedFiles];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(v41, 8);
}

void __52__SPCorrectionHandler_processCorrectionsWithHandle___block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v49[3] = *MEMORY[0x277D85DE8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __52__SPCorrectionHandler_processCorrectionsWithHandle___block_invoke_2;
  v27[3] = &unk_278937C60;
  v27[4] = *(v0 + 48);
  v6 = MEMORY[0x2383760E0](v27);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v7 = *(v5 + 56);
  v24[2] = __52__SPCorrectionHandler_processCorrectionsWithHandle___block_invoke_3;
  v24[3] = &unk_278937C88;
  v24[4] = *(v5 + 32);
  v26 = v7;
  v22 = *(v5 + 40);
  v8 = v22;
  v25 = v22;
  v9 = MEMORY[0x2383760E0](v24);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __52__SPCorrectionHandler_processCorrectionsWithHandle___block_invoke_4;
  v23[3] = &unk_278937CB0;
  v23[4] = *(v5 + 56);
  v10 = MEMORY[0x2383760E0](v23);
  v11 = v6;
  v12 = v9;
  v13 = v10;
  memset(v49, 0, 24);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = -1;
  bzero(v48, 0x6000uLL);
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = v48;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3810000000;
  v43[3] = &unk_231B07211;
  v43[5] = 0;
  v43[6] = 0;
  v43[4] = 1;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __si_process_corrections_block_invoke;
  v29[3] = &unk_278937D00;
  v33 = v46;
  v34 = v44;
  v14 = v13;
  v30 = v14;
  v35 = v43;
  v36 = v45;
  v37 = v49;
  v38 = "";
  v39 = "q";
  v40 = "c";
  v41 = "version";
  v42 = "language";
  v15 = v12;
  v31 = v15;
  v16 = v11;
  v32 = v16;
  v17 = MEMORY[0x2383760E0](v29);
  v18 = v4 + v2;
  do
  {
    v19 = v4;
    if (v4 >= v18)
    {
      break;
    }

    v28 = 0;
    v20 = json_parse();
    v4 += v28;
  }

  while ((v20 & 1) != 0);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);

  *(*(*(v5 + 72) + 8) + 24) = v19 >= v18;
  v21 = *MEMORY[0x277D85DE8];
}

void __52__SPCorrectionHandler_processCorrectionsWithHandle___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  json_utf8_string(a2, v9, 0x100uLL);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __52__SPCorrectionHandler_processCorrectionsWithHandle___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    memset(v15, 0, sizeof(v15));
    json_utf8_string(a2, v15, 0x100uLL);
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = [*(a1 + 32) lastCommittedVersions];
    v8 = [v7 valueForKey:v5];
    v9 = [v6 isEqualToString:v8];

    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if ((v9 & 1) == 0 && *(*(*(a1 + 64) + 8) + 40))
      {
        v10 = *(*(*(a1 + 48) + 8) + 40);
        [*(a1 + 32) commitDictionary:? language:? version:?];
        v11 = *(*(*(a1 + 56) + 8) + 24);
      }

      SICorrectionDestory();
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    if ((v9 & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
      if ([*(a1 + 40) isEqualToString:*(*(*(a1 + 64) + 8) + 40)])
      {
        v12 = [*(a1 + 32) correctionRefsLock];
        [v12 lock];

        *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) openCorrectionRef:*(*(*(a1 + 48) + 8) + 40) language:*(*(*(a1 + 64) + 8) + 40) create:1];
        v13 = [*(a1 + 32) correctionRefsLock];
        [v13 unlock];

        if (!*(*(*(a1 + 56) + 8) + 24))
        {
          if ([*(a1 + 40) isEqualToString:*(*(*(a1 + 64) + 8) + 40)])
          {
            *a3 = 1;
          }
        }
      }
    }
  }

  else
  {
    *a3 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __52__SPCorrectionHandler_processCorrectionsWithHandle___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  bzero(v14, 0x400uLL);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v8 = objc_autoreleasePoolPush();
    json_utf8_string(a2, v14, 0x400uLL);
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
    if ([v9 length])
    {
      for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
      {
        json_utf8_string(a3, v14, 0x400uLL);
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
        if ([v11 length])
        {
          [i addObject:v11];
        }

        a3 += 24;
      }

      if ([i count])
      {
        v12 = *(*(*(a1 + 32) + 8) + 24);
        SIAddCorrection();
      }
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)openCorrectionRef:(id)a3 language:(id)a4 create:(BOOL)a5
{
  v8 = a3;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:", v8, a4];
  Value = CFDictionaryGetValue([(SPCorrectionHandler *)self correctionRefs], v9);
  if (Value || ([(SPCorrectionHandler *)self dictDirFd], (Value = SICorrectionCreate()) != 0))
  {
    v11 = Value;
    if (!a5)
    {
LABEL_4:
      CFDictionaryAddValue([(SPCorrectionHandler *)self correctionRefs], v9, v11);
    }
  }

  else
  {
    v13 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SPCorrectionHandler openCorrectionRef:language:create:];
    }

    v11 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }
  }

  return v11;
}

- (id)readCommittedVersions
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCACA8];
  v5 = [(SPCorrectionHandler *)self versionInfoLocation];
  v6 = [v5 path];
  v26 = 0;
  v7 = [v4 stringWithContentsOfFile:v6 encoding:1 error:&v26];
  v8 = v26;

  if (v8)
  {
    v9 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SPCorrectionHandler *)self readCommittedVersions];
    }

    v10 = 0;
  }

  else
  {
    v21 = v7;
    v9 = [v7 componentsSeparatedByString:@"\n"];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([v15 length])
          {
            v16 = [v15 componentsSeparatedByString:@":"];
            v17 = [v16 lastObject];
            v18 = [v16 firstObject];
            [v3 setValue:v17 forKey:v18];
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    v10 = v3;
    v7 = v21;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)writeCommittedVersions:(id)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v6 = [v4 string];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__SPCorrectionHandler_writeCommittedVersions___block_invoke;
  v13[3] = &unk_278936E60;
  v7 = v6;
  v14 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v13];

  v8 = [(SPCorrectionHandler *)self versionInfoLocation];
  v9 = [v8 path];
  v12 = 0;
  [v7 writeToFile:v9 atomically:1 encoding:1 error:&v12];
  v10 = v12;

  if (v10)
  {
    v11 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SPCorrectionHandler writeCommittedVersions:];
    }
  }
}

- (void)commitDictionary:(void *)a3 language:(id)a4 version:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(SPCorrectionHandler *)self readCommittedVersions];
  if (!v8)
  {
    v8 = objc_opt_new();
  }

  [v8 setValue:v7 forKey:v9];
  SICorrectionCommit();
  [(SPCorrectionHandler *)self writeCommittedVersions:v8];
}

- (void)revokeUnusedFiles
{
  v2 = self;
  v42 = *MEMORY[0x277D85DE8];
  v30 = [(SPCorrectionHandler *)self readCommittedVersions];
  v3 = [(SPCorrectionHandler *)v2 correctionRefsLock];
  [v3 lock];

  memset(buffer, 0, sizeof(buffer));
  fcntl([(SPCorrectionHandler *)v2 dictDirFd], 50, buffer);
  v4 = CFStringCreateWithFileSystemRepresentation(0, buffer);
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  v7 = *MEMORY[0x277CBE8E8];
  v40 = *MEMORY[0x277CBE8E8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v31 = v5;
  v9 = [v5 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:v8 options:0 error:0];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v9;
  v33 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v33)
  {
    v28 = v4;
    v29 = v7;
    v11 = 0;
    v32 = *v36;
    do
    {
      v12 = 0;
      v13 = v11;
      do
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v35 + 1) + 8 * v12);
        v34 = 0;
        [v14 getResourceValue:&v34 forKey:v7 error:0];
        v11 = v34;

        v15 = [(SPCorrectionHandler *)v2 versionInfoLocation];
        v16 = [v15 path];
        v17 = [v16 lastPathComponent];
        v18 = [v11 isEqualToString:v17];

        if ((v18 & 1) == 0)
        {
          v19 = [v11 componentsSeparatedByString:@":"];
          if ([v19 count] > 2)
          {
            v20 = v10;
            v21 = v2;
            v22 = [v19 firstObject];
            v23 = [v19 objectAtIndex:1];
            v24 = [v30 valueForKey:v23];
            v25 = [v22 isEqualToString:v24];

            if ((v25 & 1) == 0)
            {
              [v31 removeItemAtURL:v14 error:0];
            }

            v2 = v21;
            v10 = v20;
            v7 = v29;
          }

          else
          {
            [v31 removeItemAtURL:v14 error:0];
          }
        }

        ++v12;
        v13 = v11;
      }

      while (v33 != v12);
      v33 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v33);

    v4 = v28;
  }

  CFRelease(v4);
  CFDictionaryRemoveAllValues([(SPCorrectionHandler *)v2 correctionRefs]);
  [(SPCorrectionHandler *)v2 setLastCommittedVersions:v30];
  v26 = [(SPCorrectionHandler *)v2 correctionRefsLock];
  [v26 unlock];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)openCorrectionRef:language:create:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readCommittedVersions
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 versionInfoLocation];
  v4 = [v3 path];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_231A35000, a2, OS_LOG_TYPE_ERROR, "could not read version info %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeCommittedVersions:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end