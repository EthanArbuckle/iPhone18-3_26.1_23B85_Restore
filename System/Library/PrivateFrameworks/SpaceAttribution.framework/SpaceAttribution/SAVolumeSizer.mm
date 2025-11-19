@interface SAVolumeSizer
+ (BOOL)isInternalVolume:(id)a3;
+ (void)computeSizeOfVolumeAtURL:(id)a3 completionHandler:(id)a4;
+ (void)computeSizeOfVolumeAtURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation SAVolumeSizer

+ (BOOL)isInternalVolume:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  existing = 0;
  bzero(&v22, 0x878uLL);
  if (!statfs([v3 fileSystemRepresentation], &v22))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v22.f_mntfromname];
    v7 = [v6 componentsSeparatedByString:@"/dev/"];
    v5 = [v7 objectAtIndex:1];

    LODWORD(v6) = *MEMORY[0x277CD2898];
    v8 = IOBSDNameMatching(*MEMORY[0x277CD2898], 0, [v5 UTF8String]);
    if (IOServiceGetMatchingServices(v6, v8, &existing))
    {
      v9 = SALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[SAVolumeSizer isInternalVolume:];
      }

      goto LABEL_8;
    }

    v13 = IOIteratorNext(existing);
    if (!v13)
    {
      v20 = SALog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[SAVolumeSizer isInternalVolume:];
      }

      v10 = 0;
      goto LABEL_25;
    }

    v14 = v13;
    v15 = IORegistryEntrySearchCFProperty(v13, "IOService", @"Protocol Characteristics", *MEMORY[0x277CBECE8], 3u);
    if (v15 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v15)))
    {
      Value = CFDictionaryGetValue(v15, @"Physical Interconnect Location");
      if (Value)
      {
        v18 = CFStringCompare(Value, @"Internal", 0) == kCFCompareEqualTo;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v19 = SALog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[SAVolumeSizer isInternalVolume:];
      }

      v18 = 0;
      v10 = 0;
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    CFRelease(v15);
    v10 = v18;
LABEL_24:
    IOObjectRelease(v14);
LABEL_25:
    IOObjectRelease(existing);
    goto LABEL_9;
  }

  v4 = *__error();
  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SAVolumeSizer isInternalVolume:v3];
  }

LABEL_8:
  v10 = 0;
LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)computeSizeOfVolumeAtURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v69[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([SAVolumeSizer isInternalVolume:v7])
  {
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 1;
    v9 = objc_opt_new();
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__0;
    v62 = __Block_byref_object_dispose__0;
    v63 = 0;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke;
    v55[3] = &unk_279CD6C80;
    v57 = &v58;
    v10 = v9;
    v56 = v10;
    v11 = [SADaemonXPC newWithInvalidationHandler:v55];
    v12 = v59[5];
    v59[5] = v11;

    v13 = v59[5];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_68;
    v52[3] = &unk_279CD6C80;
    v54 = &v58;
    v14 = v10;
    v53 = v14;
    v15 = [v13 remoteObjectProxyWithErrorHandler:v52];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__0;
    v42 = __Block_byref_object_dispose__0;
    v43 = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    [v14 enter];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_69;
    v31[3] = &unk_279CD6CA8;
    v33 = &v48;
    v34 = &v44;
    v35 = &v38;
    v36 = &v64;
    v16 = v14;
    v32 = v16;
    [v15 computeSizeOfVolumeAtURL:v7 options:a4 completionHandler:v31];
    [v16 wait:{dispatch_time(0, 60000000000)}];
    if ((a4 & 3) != 0)
    {
      *(v65 + 24) = 1;
      [v16 enter];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_2;
      v25[3] = &unk_279CD6CD0;
      v27 = v37;
      v28 = &v48;
      v29 = &v38;
      v30 = &v64;
      v17 = v16;
      v26 = v17;
      [v15 getPurgeableInfo:v7 options:a4 reply:v25];
      [v17 wait:{dispatch_time(0, 60000000000)}];
    }

    if (*(v65 + 24) == 1)
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
      v19 = v39[5];
      v39[5] = v18;
    }

    [v59[5] invalidate];
    v8[2](v8, v49[3], v45[3], v39[5]);

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(&v38, 8);

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v64, 8);
  }

  else
  {
    v20 = SALog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SAVolumeSizer computeSizeOfVolumeAtURL:v7 options:? completionHandler:?];
    }

    v21 = MEMORY[0x277CCA9B8];
    v68 = *MEMORY[0x277CCA470];
    v69[0] = @"Non internal URL";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:v22];
    v8[2](v8, 0, 0, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_cold_1(v3);
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  [*(a1 + 32) leave];
}

void __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_68_cold_1(v3);
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  [*(a1 + 32) leave];
}

void __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v6 rawUsed];
  v7 = [v6 capacity];

  *(*(*(a1 + 48) + 8) + 24) = v7;
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  *(*(*(a1 + 64) + 8) + 24) = 0;
  [*(a1 + 32) leave];
}

void __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = v6;
  if (!a2 || v6)
  {
    v16 = SALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_2_cold_1(v7);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v8 = 0;
  }

  else
  {
    v8 = [a2 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_2_cold_2(v8, v9);
    }

    if ([v8 unsignedLongLongValue])
    {
      *(*(*(a1 + 40) + 8) + 24) = [v8 longLongValue];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 24);
      v12 = *(*(*(a1 + 40) + 8) + 24);
      v13 = v11 >= v12;
      v14 = v11 - v12;
      if (v13)
      {
        *(v10 + 24) = v14;
      }

      else
      {
        v15 = SALog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_2_cold_3(a1 + 40, a1 + 48, v15);
        }
      }
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
  [*(a1 + 32) leave];
}

+ (void)computeSizeOfVolumeAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SAVolumeSizer computeSizeOfVolumeAtURL:completionHandler:];
    }

    goto LABEL_8;
  }

  if (!v6)
  {
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SAVolumeSizer computeSizeOfVolumeAtURL:completionHandler:];
    }

LABEL_8:

    goto LABEL_9;
  }

  [SAVolumeSizer computeSizeOfVolumeAtURL:v5 options:1 completionHandler:v6];
LABEL_9:
}

+ (void)isInternalVolume:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 fileSystemRepresentation];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)isInternalVolume:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isInternalVolume:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isInternalVolume:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)computeSizeOfVolumeAtURL:(void *)a1 options:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 absoluteString];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 description];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_68_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 description];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 136315906;
  v4 = "+[SAVolumeSizer computeSizeOfVolumeAtURL:options:completionHandler:]_block_invoke_2";
  v5 = 2112;
  v6 = @"/private/var";
  v7 = 2112;
  v8 = @"CACHE_DELETE_TOTAL_AVAILABLE";
  v9 = 2112;
  v10 = a1;
  _os_log_debug_impl(&dword_26B26B000, a2, OS_LOG_TYPE_DEBUG, "%s: Volume %@, %@ %@", &v3, 0x2Au);
  v2 = *MEMORY[0x277D85DE8];
}

void __68__SAVolumeSizer_computeSizeOfVolumeAtURL_options_completionHandler___block_invoke_2_cold_3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(*(*a1 + 8) + 24);
  v4 = *(*(*a2 + 8) + 24);
  v6 = 134218240;
  v7 = v3;
  v8 = 2048;
  v9 = v4;
  _os_log_error_impl(&dword_26B26B000, log, OS_LOG_TYPE_ERROR, "Purgeable size %llu is larger than used size %llu, ignoring", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)computeSizeOfVolumeAtURL:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)computeSizeOfVolumeAtURL:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end