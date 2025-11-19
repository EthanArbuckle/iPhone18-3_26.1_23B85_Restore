void sub_27421816C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, __int16 a14, uint64_t a15, __int16 a16, int a17, __int16 a18, uint64_t a19)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    OSLog = W5GetOSLog();
    if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    objc_end_catch();
    JUMPOUT(0x27421813CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_274218ED0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Unwind_Resume(a1);
}

void sub_274219AE0(void *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x274219A00);
  }

  JUMPOUT(0x274219B10);
}

void sub_27421A38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_27421A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_27421AA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t W5GetOSLog()
{
  if (qword_280D9E7A0 != -1)
  {
    dispatch_once(&qword_280D9E7A0, &__block_literal_global);
  }

  return _MergedGlobals;
}

uint64_t W5CreateTarball(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v32 = 0;
  memset(&v31, 0, sizeof(v31));
  stat([objc_msgSend(a1 "path")], &v31);
  if (qword_280D9E7A0 != -1)
  {
    dispatch_once(&qword_280D9E7A0, &__block_literal_global);
  }

  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1 path];
    st_size = v31.st_size;
    v8 = [a2 path];
    v39 = 136316418;
    v40 = "W5CreateTarball";
    v41 = 2080;
    v42 = "W5MiscUtil.m";
    v43 = 1024;
    v44 = 388;
    v45 = 2114;
    v46 = v6;
    v47 = 2048;
    v48 = st_size;
    v49 = 2114;
    v50 = v8;
    LODWORD(v30) = 58;
    v29 = &v39;
    _os_log_send_and_compose_impl();
  }

  v9 = archive_write_new();
  if (!v9)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA5B8];
    v37 = *MEMORY[0x277CCA470];
    v38 = @"ENOMEM";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v17 = v14;
    v18 = v15;
    v19 = 12;
LABEL_17:
    v32 = [v17 errorWithDomain:v18 code:v19 userInfo:{v16, v29, v30}];
    goto LABEL_18;
  }

  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA5B8];
    v35 = *MEMORY[0x277CCA470];
    v36 = @"ENOENT";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v17 = v20;
    v18 = v21;
    v19 = 2;
    goto LABEL_17;
  }

  archive_write_add_filter_gzip();
  archive_write_set_format_pax();
  [objc_msgSend(a2 "path")];
  v10 = archive_write_open_filename();
  if (v10)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA5B8];
    v24 = v10;
    v33 = *MEMORY[0x277CCA470];
    v34 = @"err";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v17 = v22;
    v18 = v23;
    v19 = v24;
    goto LABEL_17;
  }

  if (__W5ArchiveAddURLToArchive(v9, a1, [objc_msgSend(a2 "lastPathComponent")], &v32))
  {
    if (qword_280D9E7A0 != -1)
    {
      dispatch_once(&qword_280D9E7A0, &__block_literal_global);
    }

    if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [a1 path];
      v12 = [a2 path];
      v39 = 136316162;
      v40 = "W5CreateTarball";
      v41 = 2080;
      v42 = "W5MiscUtil.m";
      v43 = 1024;
      v44 = 412;
      v45 = 2114;
      v46 = v11;
      v47 = 2114;
      v48 = v12;
      v13 = 1;
      _os_log_send_and_compose_impl();
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_22;
  }

LABEL_18:
  if (qword_280D9E7A0 != -1)
  {
    dispatch_once(&qword_280D9E7A0, &__block_literal_global);
  }

  v13 = 0;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [a2 path];
    v26 = [v32 code];
    v40 = "W5CreateTarball";
    v41 = 2080;
    v39 = 136316162;
    v42 = "W5MiscUtil.m";
    v43 = 1024;
    v44 = 408;
    v45 = 2114;
    v46 = v25;
    v47 = 2048;
    v48 = v26;
    _os_log_send_and_compose_impl();
    v13 = 0;
  }

LABEL_22:
  if (a3 && v32)
  {
    *a3 = v32;
  }

  if (v9)
  {
    archive_write_free();
  }

  v27 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __W5ArchiveAddURLToArchive(uint64_t a1, void *a2, void *a3, id *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v8 = objc_autoreleasePoolPush();
  if (![a2 checkResourceIsReachableAndReturnError:&v41])
  {
    goto LABEL_33;
  }

  v40 = 0;
  if (![a2 getResourceValue:&v40 forKey:*MEMORY[0x277CBE868] error:&v41])
  {
    goto LABEL_33;
  }

  if ([v40 BOOLValue])
  {
    memset(&v52, 0, sizeof(v52));
    stat([objc_msgSend(a2 "path")], &v52);
    if (qword_280D9E7A0 != -1)
    {
      dispatch_once(&qword_280D9E7A0, &__block_literal_global);
    }

    if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a2 path];
      *&v43[4] = "__W5ArchiveAddURLToArchive";
      v44 = 2080;
      *v43 = 136316162;
      v45 = "W5MiscUtil.m";
      v46 = 1024;
      v47 = 341;
      v48 = 2114;
      v49 = v9;
      v50 = 2048;
      st_size = v52.st_size;
      LODWORD(v31) = 48;
      v29 = v43;
      _os_log_send_and_compose_impl();
    }

    v10 = [objc_msgSend(MEMORY[0x277CCAA00] defaultManager];
    if (v10)
    {
      v11 = v10;
      v34 = a4;
      v12 = v8;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = [v10 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v37;
        do
        {
          v16 = 0;
          do
          {
            if (*v37 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v36 + 1) + 8 * v16);
            v35 = 0;
            if ((__W5ArchiveAddURLToArchive(a1, v17, [a3 stringByAppendingPathComponent:{objc_msgSend(v17, "lastPathComponent", v30, v32)}], &v35) & 1) == 0)
            {
              if (qword_280D9E7A0 != -1)
              {
                dispatch_once(&qword_280D9E7A0, &__block_literal_global);
              }

              if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
              {
                v33 = [a2 path];
                v18 = [v35 code];
                *v43 = 136316162;
                *&v43[4] = "__W5ArchiveAddURLToArchive";
                v44 = 2080;
                v45 = "W5MiscUtil.m";
                v46 = 1024;
                v47 = 351;
                v48 = 2114;
                v49 = v33;
                v50 = 2048;
                st_size = v18;
                LODWORD(v32) = 48;
                v30 = v43;
                _os_log_send_and_compose_impl();
              }
            }

            ++v16;
          }

          while (v14 != v16);
          v19 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
          v14 = v19;
        }

        while (v19);
      }

      v20 = 1;
      v8 = v12;
      a4 = v34;
      goto LABEL_25;
    }

    if (qword_280D9E7A0 != -1)
    {
      dispatch_once(&qword_280D9E7A0, &__block_literal_global);
    }

    if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [a2 path];
      v26 = [v41 code];
      *&v43[4] = "__W5ArchiveAddURLToArchive";
      v44 = 2080;
      *v43 = 136316162;
      v45 = "W5MiscUtil.m";
      v46 = 1024;
      v47 = 344;
      v48 = 2114;
      v49 = v25;
      v50 = 2048;
      st_size = v26;
      _os_log_send_and_compose_impl();
    }

LABEL_33:
    v20 = 0;
    goto LABEL_25;
  }

  *v43 = 0;
  if ((__W5ArchiveAddFileURLToArchive() & 1) == 0)
  {
    if (qword_280D9E7A0 != -1)
    {
      dispatch_once(&qword_280D9E7A0, &__block_literal_global);
    }

    if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [a2 path];
      v28 = [*v43 code];
      *&v52.st_mode = "__W5ArchiveAddURLToArchive";
      WORD2(v52.st_ino) = 2080;
      v52.st_dev = 136316162;
      *(&v52.st_ino + 6) = "W5MiscUtil.m";
      HIWORD(v52.st_gid) = 1024;
      v52.st_rdev = 359;
      *(&v52.st_rdev + 2) = 2114;
      *(&v52.st_rdev + 6) = v27;
      HIWORD(v52.st_atimespec.tv_sec) = 2048;
      v52.st_atimespec.tv_nsec = v28;
      _os_log_send_and_compose_impl();
    }
  }

  v20 = 1;
LABEL_25:
  v21 = v41;
  objc_autoreleasePoolPop(v8);
  v22 = v41;
  if (a4 && v41)
  {
    *a4 = v41;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t W5DescriptionForPeerDiscoveryFlags(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"Rapport "];
  }

  if (![v3 length])
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"? (%lu)", a1];
  }

  v4 = [v3 length] - 1;

  return [v3 substringWithRange:{0, v4}];
}

uint64_t W5DescriptionForPeerControlFlags(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"ForceBLE "];
  }

  if (![v3 length])
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"? (%lu)", a1];
  }

  v4 = [v3 length] - 1;

  return [v3 substringWithRange:{0, v4}];
}

os_log_t __W5GetOSLog_block_invoke()
{
  result = os_log_create("com.apple.wifivelocity", "");
  _MergedGlobals = result;
  return result;
}

uint64_t W5NSDateToISO8601Description(uint64_t a1)
{
  v2 = MEMORY[0x277CCAA68];
  v3 = [MEMORY[0x277CBEBB0] systemTimeZone];

  return [v2 stringFromDate:a1 timeZone:v3 formatOptions:1907];
}

uint64_t __W5ArchiveAddFileURLToArchive()
{
  MEMORY[0x28223BE20]();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v47 = *MEMORY[0x277D85DE8];
  memset(&v33, 0, sizeof(v33));
  stat([objc_msgSend(v4 "path")], &v33);
  if (qword_280D9E7A0 != -1)
  {
    dispatch_once(&qword_280D9E7A0, &__block_literal_global);
  }

  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v5 path];
    v42 = "__W5ArchiveAddFileURLToArchive";
    v43 = 2080;
    *buf = 136316162;
    *v44 = "W5MiscUtil.m";
    *&v44[8] = 1024;
    *&v44[10] = 276;
    *&v44[14] = 2114;
    *&v44[16] = v6;
    v45 = 2048;
    st_size = v33.st_size;
    LODWORD(v32) = 48;
    v31 = buf;
    _os_log_send_and_compose_impl();
  }

  v7 = archive_entry_new();
  if (v7)
  {
    archive_entry_copy_stat();
    [v3 UTF8String];
    archive_entry_set_pathname();
    archive_entry_set_perm();
    v8 = archive_write_header();
    if (v8)
    {
      v21 = v8;
      v22 = *MEMORY[0x277CCA5B8];
      v37 = *MEMORY[0x277CCA470];
      v38 = @"err";
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:v22 code:v8 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v38, &v37, 1)}];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v24 = [v3 UTF8String];
        v25 = archive_error_string();
        *buf = 136446722;
        v42 = v24;
        v43 = 1026;
        *v44 = v21;
        *&v44[4] = 2082;
        *&v44[6] = v25;
        _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] archive_write_header() FAILED for %{public}s, returned %{public}d (%{public}s)", buf, 0x1Cu);
      }

      goto LABEL_21;
    }

    v9 = open([objc_msgSend(v5 "path")], 0);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = v9;
      if (read(v9, v34, 0x2000uLL) < 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v30 = [v3 UTF8String];
          *buf = 136446210;
          v42 = v30;
          _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] Unexpected zero-length file encountered for %{public}s", buf, 0xCu);
        }

        v11 = 0;
      }

      else
      {
        v11 = 0;
        do
        {
          v11 += archive_write_data();
        }

        while (read(v10, v34, 0x2000uLL) > 0);
      }

      close(v10);
      if (v11 != v33.st_size && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v29 = [v3 UTF8String];
        *buf = 136446722;
        v42 = v29;
        v43 = 2050;
        *v44 = v33.st_size;
        *&v44[8] = 2050;
        *&v44[10] = v11;
        _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] Bytes written does not equal file size (file='%{public}s', size=%{public}lld, written=%{public}zd)", buf, 0x20u);
      }

      v12 = 1;
      goto LABEL_13;
    }

    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA5B8];
    v28 = *__error();
    v35 = *MEMORY[0x277CCA470];
    v36 = @"errno";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v18 = v26;
    v19 = v27;
    v20 = v28;
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA5B8];
    v39 = *MEMORY[0x277CCA470];
    v40 = @"ENOMEM";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v18 = v15;
    v19 = v16;
    v20 = 12;
  }

  v23 = [v18 errorWithDomain:v19 code:v20 userInfo:{v17, v31, v32}];
LABEL_21:
  v12 = 0;
  if (v1 && v23)
  {
    v12 = 0;
    *v1 = v23;
  }

LABEL_13:
  if (v7)
  {
    archive_entry_free();
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void *W5XPCRequestDelegateInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_288349A20];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startBrowsingAndReply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_stopBrowsingAndReply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startAdvertisingAndReply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_stopAdvertisingAndReply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startMonitoringEvents_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_stopMonitoringEvents_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryPeerCacheAndReply_, 0, 1}];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v1 forSelector:"setWithObjects:" argumentIndex:v2 ofReply:{objc_opt_class(), 0), sel_queryPeerCacheAndReply_, 1, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryLocalPeerAndReply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryLocalPeerAndReply_, 1, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryStatusForPeer_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryStatusForPeer_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryStatusForPeer_reply_, 1, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_listFilesFromPeer_remoteDirPath_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_listFilesFromPeer_remoteDirPath_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_listFilesFromPeer_remoteDirPath_reply_, 0, 1}];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{objc_opt_class(), 0), sel_listFilesFromPeer_remoteDirPath_reply_, 1, 1}];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v5 forSelector:"setWithObjects:" argumentIndex:v6 ofReply:{objc_opt_class(), 0), sel_runDiagnostics_configuration_uuid_reply_, 0, 0}];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v7 forSelector:"setWithObjects:" argumentIndex:v8 ofReply:{v9, v10, v11, v12, objc_opt_class(), 0), sel_runDiagnostics_configuration_uuid_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runDiagnostics_configuration_uuid_reply_, 2, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runDiagnostics_configuration_uuid_reply_, 0, 1}];
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v13 forSelector:"setWithObjects:" argumentIndex:v14 ofReply:{objc_opt_class(), 0), sel_runDiagnostics_configuration_uuid_reply_, 1, 1}];
  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v15 forSelector:"setWithObjects:" argumentIndex:v16 ofReply:{objc_opt_class(), 0), sel_runDiagnosticsForPeer_diagnostics_configuration_uuid_reply_, 0, 0}];
  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v17 forSelector:"setWithObjects:" argumentIndex:v18 ofReply:{objc_opt_class(), 0), sel_runDiagnosticsForPeer_diagnostics_configuration_uuid_reply_, 1, 0}];
  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v19 forSelector:"setWithObjects:" argumentIndex:v20 ofReply:{v21, v22, v23, v24, objc_opt_class(), 0), sel_runDiagnosticsForPeer_diagnostics_configuration_uuid_reply_, 2, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runDiagnosticsForPeer_diagnostics_configuration_uuid_reply_, 3, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runDiagnosticsForPeer_diagnostics_configuration_uuid_reply_, 0, 1}];
  v25 = MEMORY[0x277CBEB98];
  v26 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v25 forSelector:"setWithObjects:" argumentIndex:v26 ofReply:{objc_opt_class(), 0), sel_runDiagnosticsForPeer_diagnostics_configuration_uuid_reply_, 1, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_registerRemoteDiagnosticEventsForPeer_configuration_reply_, 0, 0}];
  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v27 forSelector:"setWithObjects:" argumentIndex:v28 ofReply:{v29, v30, v31, objc_opt_class(), 0), sel_registerRemoteDiagnosticEventsForPeer_configuration_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_registerRemoteDiagnosticEventsForPeer_configuration_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_unregisterRemoteDiagnosticEventsForPeer_configuration_reply_, 0, 0}];
  v32 = MEMORY[0x277CBEB98];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v32 forSelector:"setWithObjects:" argumentIndex:v33 ofReply:{v34, v35, v36, objc_opt_class(), 0), sel_unregisterRemoteDiagnosticEventsForPeer_configuration_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_unregisterRemoteDiagnosticEventsForPeer_configuration_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryRegisteredDiagnosticsPeersWithReply_, 0, 1}];
  v37 = MEMORY[0x277CBEB98];
  v38 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v37 forSelector:"setWithObjects:" argumentIndex:v38 ofReply:{objc_opt_class(), 0), sel_queryRegisteredDiagnosticsPeersWithReply_, 1, 1}];
  v39 = MEMORY[0x277CBEB98];
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v39 forSelector:"setWithObjects:" argumentIndex:v40 ofReply:{v41, v42, v43, v44, v45, objc_opt_class(), 0), sel_startDiagnosticsModeWithConfiguration_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startDiagnosticsModeWithConfiguration_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startDiagnosticsModeWithConfiguration_reply_, 1, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_stopDiagnosticsModeWithUUID_info_reply_, 0, 0}];
  v46 = MEMORY[0x277CBEB98];
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v46 forSelector:"setWithObjects:" argumentIndex:v47 ofReply:{v48, v49, v50, v51, v52, objc_opt_class(), 0), sel_stopDiagnosticsModeWithUUID_info_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_stopDiagnosticsModeWithUUID_info_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryDiagnosticsModeForPeer_info_reply_, 0, 0}];
  v53 = MEMORY[0x277CBEB98];
  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v53 forSelector:"setWithObjects:" argumentIndex:v54 ofReply:{v55, v56, objc_opt_class(), 0), sel_queryDiagnosticsModeForPeer_info_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryDiagnosticsModeForPeer_info_reply_, 0, 1}];
  v57 = MEMORY[0x277CBEB98];
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = objc_opt_class();
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v57 forSelector:"setWithObjects:" argumentIndex:v58 ofReply:{v59, v60, v61, v62, objc_opt_class(), 0), sel_queryDiagnosticsModeForPeer_info_reply_, 1, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryDebugConfigurationForPeer_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryDebugConfigurationForPeer_reply_, 0, 1}];
  v63 = MEMORY[0x277CBEB98];
  v64 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v63 forSelector:"setWithObjects:" argumentIndex:v64 ofReply:{objc_opt_class(), 0), sel_queryDebugConfigurationForPeer_reply_, 1, 1}];
  v65 = MEMORY[0x277CBEB98];
  v66 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v65 forSelector:"setWithObjects:" argumentIndex:v66 ofReply:{objc_opt_class(), 0), sel_setDebugConfiguration_peer_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_setDebugConfiguration_peer_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_setDebugConfiguration_peer_reply_, 0, 1}];
  v67 = MEMORY[0x277CBEB98];
  v68 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v67 forSelector:"setWithObjects:" argumentIndex:v68 ofReply:{objc_opt_class(), 0), sel_collectLogs_configuration_uuid_reply_, 0, 0}];
  v69 = MEMORY[0x277CBEB98];
  v70 = objc_opt_class();
  v71 = objc_opt_class();
  v72 = objc_opt_class();
  v73 = objc_opt_class();
  v74 = objc_opt_class();
  v75 = objc_opt_class();
  v76 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v69 forSelector:"setWithObjects:" argumentIndex:v70 ofReply:{v71, v72, v73, v74, v75, v76, objc_opt_class(), 0), sel_collectLogs_configuration_uuid_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_collectLogs_configuration_uuid_reply_, 2, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_collectLogs_configuration_uuid_reply_, 0, 1}];
  v77 = MEMORY[0x277CBEB98];
  v78 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v77 forSelector:"setWithObjects:" argumentIndex:v78 ofReply:{objc_opt_class(), 0), sel_collectLogs_configuration_uuid_reply_, 1, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_collectLogs_configuration_uuid_reply_, 2, 1}];
  v79 = MEMORY[0x277CBEB98];
  v80 = objc_opt_class();
  v81 = objc_opt_class();
  v82 = objc_opt_class();
  v83 = objc_opt_class();
  v84 = objc_opt_class();
  v85 = objc_opt_class();
  v86 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v79 forSelector:"setWithObjects:" argumentIndex:v80 ofReply:{v81, v82, v83, v84, v85, v86, objc_opt_class(), 0), sel_collectLogsDiagnosticMode_uuid_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_collectLogsDiagnosticMode_uuid_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_collectLogsDiagnosticMode_uuid_reply_, 0, 1}];
  v87 = MEMORY[0x277CBEB98];
  v88 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v87 forSelector:"setWithObjects:" argumentIndex:v88 ofReply:{objc_opt_class(), 0), sel_collectLogsDiagnosticMode_uuid_reply_, 1, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_collectLogsDiagnosticMode_uuid_reply_, 2, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startPeerDiscoveryWithConfiguration_uuid_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startPeerDiscoveryWithConfiguration_uuid_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startPeerDiscoveryWithConfiguration_uuid_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_stopPeerDiscoveryWithUUID_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_stopPeerDiscoveryWithUUID_reply_, 0, 1}];
  v89 = MEMORY[0x277CBEB98];
  v90 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v89 forSelector:"setWithObjects:" argumentIndex:v90 ofReply:{objc_opt_class(), 0), sel_runWiFiSnifferOnChannels_duration_peer_uuid_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runWiFiSnifferOnChannels_duration_peer_uuid_reply_, 2, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runWiFiSnifferOnChannels_duration_peer_uuid_reply_, 3, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runWiFiSnifferOnChannels_duration_peer_uuid_reply_, 0, 1}];
  v91 = MEMORY[0x277CBEB98];
  v92 = objc_opt_class();
  v93 = objc_opt_class();
  v94 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v91 forSelector:"setWithObjects:" argumentIndex:v92 ofReply:{v93, v94, objc_opt_class(), 0), sel_runWiFiSnifferOnChannels_duration_peer_uuid_reply_, 1, 1}];
  v95 = MEMORY[0x277CBEB98];
  v96 = objc_opt_class();
  v97 = objc_opt_class();
  v98 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v95 forSelector:"setWithObjects:" argumentIndex:v96 ofReply:{v97, v98, objc_opt_class(), 0), sel_runWiFiSnifferOnChannels_duration_peer_uuid_reply_, 2, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runWiFiSnifferOnChannels_duration_peer_uuid_reply_, 3, 1}];
  v99 = MEMORY[0x277CBEB98];
  v100 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v99 forSelector:"setWithObjects:" argumentIndex:v100 ofReply:{objc_opt_class(), 0), sel_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_uuid_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_uuid_reply_, 2, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_uuid_reply_, 3, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_uuid_reply_, 0, 1}];
  v101 = MEMORY[0x277CBEB98];
  v102 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v101 forSelector:"setWithObjects:" argumentIndex:v102 ofReply:{objc_opt_class(), 0), sel_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_uuid_reply_, 1, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startNetworkDiscoveryOnPeer_configuration_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startNetworkDiscoveryOnPeer_configuration_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startNetworkDiscoveryOnPeer_configuration_reply_, 0, 1}];
  v103 = MEMORY[0x277CBEB98];
  v104 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v103 forSelector:"setWithObjects:" argumentIndex:v104 ofReply:{objc_opt_class(), 0), sel_startNetworkDiscoveryOnPeer_configuration_reply_, 1, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_associateToNetworkOnPeer_scanResult_configuration_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_associateToNetworkOnPeer_scanResult_configuration_reply_, 1, 0}];
  v105 = MEMORY[0x277CBEB98];
  v106 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v105 forSelector:"setWithObjects:" argumentIndex:v106 ofReply:{objc_opt_class(), 0), sel_associateToNetworkOnPeer_scanResult_configuration_reply_, 2, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_associateToNetworkOnPeer_scanResult_configuration_reply_, 0, 1}];
  v107 = MEMORY[0x277CBEB98];
  v108 = objc_opt_class();
  v109 = objc_opt_class();
  v110 = objc_opt_class();
  v111 = objc_opt_class();
  v112 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v107 forSelector:"setWithObjects:" argumentIndex:v108 ofReply:{v109, v110, v111, v112, objc_opt_class(), 0), sel_runWiFiPerformanceLoggingWithConfiguration_uuid_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runWiFiPerformanceLoggingWithConfiguration_uuid_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_runWiFiPerformanceLoggingWithConfiguration_uuid_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_cancelRequestWithUUID_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_cancelRequestWithUUID_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_cancelRequestWithUUID_OnPeer_OfType_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_cancelRequestWithUUID_OnPeer_OfType_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_cancelRequestWithUUID_OnPeer_OfType_reply_, 2, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_cancelRequestWithUUID_OnPeer_OfType_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_cancelAllRequestsAndReply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_log_timestamp_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startMonitoringFaultEventsForPeer_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startMonitoringFaultEventsForPeer_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_stopMonitoringFaultEventsForPeer_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_stopMonitoringFaultEventsForPeer_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_submitFaultEvent_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_submitFaultEvent_reply_, 0, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryFaultEventCacheForPeer_reply_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryFaultEventCacheForPeer_reply_, 0, 1}];
  v113 = MEMORY[0x277CBEB98];
  v114 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v113 forSelector:"setWithObjects:" argumentIndex:v114 ofReply:{objc_opt_class(), 0), sel_queryFaultEventCacheForPeer_reply_, 1, 1}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryDatabaseForPeer_fetch_reply_, 0, 0}];
  v115 = MEMORY[0x277CBEB98];
  v116 = objc_opt_class();
  v117 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v115 forSelector:"setWithObjects:" argumentIndex:v116 ofReply:{v117, objc_opt_class(), 0), sel_queryDatabaseForPeer_fetch_reply_, 1, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_queryDatabaseForPeer_fetch_reply_, 0, 1}];
  v118 = MEMORY[0x277CBEB98];
  v119 = objc_opt_class();
  v120 = objc_opt_class();
  v121 = objc_opt_class();
  v122 = objc_opt_class();
  v123 = objc_opt_class();
  v124 = objc_opt_class();
  v125 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v118 forSelector:"setWithObjects:" argumentIndex:v119 ofReply:{v120, v121, v122, v123, v124, v125, objc_opt_class(), 0), sel_queryDatabaseForPeer_fetch_reply_, 1, 1}];
  return v0;
}

void *W5XPCEventDelegateInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_288349A80];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_receivedEvent_, 0, 0}];
  [v0 setClasses:objc_msgSend(MEMORY[0x277CBEB98] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_receivedPeerDiscoveryEvent_, 0, 0}];
  return v0;
}

id W5FormattedDescriptionForDebugConfiguration(void *a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = [a1 wifi] + 1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279ECD5A0[v3];
  }

  [v2 appendFormat:@"Wi-Fi                     : %s\n", -[__CFString UTF8String](v4, "UTF8String")];
  v5 = [a1 megaWiFiProfile] + 1;
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_279ECD5A0[v5];
  }

  [v2 appendFormat:@"Wi-Fi Profile (Mega)      : %s\n", -[__CFString UTF8String](v6, "UTF8String")];
  v7 = [a1 noLoggingWiFiProfile] + 1;
  if (v7 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_279ECD5A0[v7];
  }

  [v2 appendFormat:@"Wi-Fi Profile (NoLogging) : %s\n", -[__CFString UTF8String](v8, "UTF8String")];
  v9 = [a1 eapol] + 1;
  if (v9 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_279ECD5A0[v9];
  }

  [v2 appendFormat:@"EAPOL                     : %s\n", -[__CFString UTF8String](v10, "UTF8String")];
  v11 = [a1 bluetooth] + 1;
  if (v11 > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = off_279ECD5A0[v11];
  }

  [v2 appendFormat:@"Bluetooth                 : %s\n", -[__CFString UTF8String](v12, "UTF8String")];
  v13 = [a1 stbc] + 1;
  if (v13 > 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_279ECD5A0[v13];
  }

  [v2 appendFormat:@"STBC                      : %s\n", -[__CFString UTF8String](v14, "UTF8String")];
  [v2 appendFormat:@"Diagnostics               : %@\n", objc_msgSend(objc_msgSend(a1, "diagnosticsMode"), "description")];
  v15 = [v2 copy];

  return v15;
}

__CFString *W5DescriptionForLogState(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_279ECD5A0[a1 + 1];
  }
}

id W5FormattedDescriptionForStatus(void *a1)
{
  v184 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB68] string];
  [v2 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  [v2 appendFormat:@"NETWORK\n"];
  v159 = v2;
  [v2 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  v3 = [a1 network];
  v4 = [MEMORY[0x277CCAB68] string];
  if ([v3 primaryIPv4InterfaceName])
  {
    [v4 appendFormat:@"    Primary IPv4         : %s (%s / %s)\n", objc_msgSend(objc_msgSend(v3, "primaryIPv4InterfaceName"), "UTF8String"), objc_msgSend(objc_msgSend(v3, "primaryIPv4ServiceName"), "UTF8String"), objc_msgSend(objc_msgSend(v3, "primaryIPv4ServiceID"), "UTF8String")];
    v5 = [v3 primaryIPv4Addresses];
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v168 objects:&v172 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v169;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v169 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 appendFormat:@"                         : %s\n", objc_msgSend(*(*(&v168 + 1) + 8 * i), "UTF8String")];
        }

        v7 = [v5 countByEnumeratingWithState:&v168 objects:&v172 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [v4 appendFormat:@"    Primary IPv4         : None\n"];
  }

  if ([v3 primaryIPv6InterfaceName])
  {
    [v4 appendFormat:@"    Primary IPv6         : %s (%s / %s)\n", objc_msgSend(objc_msgSend(v3, "primaryIPv6InterfaceName"), "UTF8String"), objc_msgSend(objc_msgSend(v3, "primaryIPv6ServiceName"), "UTF8String"), objc_msgSend(objc_msgSend(v3, "primaryIPv6ServiceID"), "UTF8String")];
    v10 = [v3 primaryIPv6Addresses];
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v164 objects:&v180 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v165;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v165 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v4 appendFormat:@"                         : %s\n", objc_msgSend(*(*(&v164 + 1) + 8 * j), "UTF8String")];
        }

        v12 = [v10 countByEnumeratingWithState:&v164 objects:&v180 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [v4 appendFormat:@"    Primary IPv6         : None\n"];
  }

  v15 = [v3 primaryDNSAddresses];
  if ([v15 count])
  {
    [v4 appendFormat:@"    DNS Addresses        : %s\n", objc_msgSend(objc_msgSend(v15, "firstObject"), "UTF8String")];
    if ([v15 count] >= 2 && objc_msgSend(v15, "count") >= 2)
    {
      v16 = 1;
      do
      {
        [v4 appendFormat:@"                         : %s\n", objc_msgSend(objc_msgSend(v15, "objectAtIndexedSubscript:", v16++), "UTF8String")];
      }

      while (v16 < [v15 count]);
    }
  }

  else
  {
    [v4 appendFormat:@"    DNS Addresses        : None\n"];
  }

  v17 = "Not Reachable";
  if (([v3 isAppleReachable] & 2) != 0 && (objc_msgSend(v3, "isAppleReachable") & 4) == 0)
  {
    v17 = "Reachable";
  }

  v18 = [v3 isAppleReachable];
  v19 = " (WWAN)";
  if ((v18 & 0x40000) == 0)
  {
    v19 = "";
  }

  [v4 appendFormat:@"    Apple                : %s%s\n", v17, v19];
  [v159 appendString:{objc_msgSend(v4, "copy")}];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  [v159 appendFormat:@"WIFI\n"];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  v20 = [a1 wifi];
  v21 = [MEMORY[0x277CCAB68] string];
  [v21 appendFormat:@"    MAC Address          : %s (hw=%s)\n", objc_msgSend(objc_msgSend(objc_msgSend(v20, "macAddress"), "redactedForWiFi"), "UTF8String"), objc_msgSend(objc_msgSend(objc_msgSend(v20, "hardwareMACAddress"), "redactedForWiFi"), "UTF8String")];
  [v21 appendFormat:@"    Interface Name       : %s\n", objc_msgSend(objc_msgSend(v20, "interfaceName"), "UTF8String")];
  if ([v20 powerOn])
  {
    v22 = "On";
  }

  else
  {
    v22 = "Off";
  }

  if ([objc_msgSend(v20 "power")] == 24)
  {
    v23 = [objc_msgSend(v20 "power")];
  }

  else
  {
    v23 = 0;
  }

  [v21 appendFormat:@"    Power                : %s [%s]\n", v22, objc_msgSend(W5DescriptionForPower(v23), "UTF8String")];
  [v21 appendFormat:@"    Op Mode              : %s\n", -[__CFString UTF8String](W5DescriptionForOpMode(objc_msgSend(v20, "opMode")), "UTF8String")];
  if ([objc_msgSend(objc_msgSend(v20 "ssidString")])
  {
    v24 = [objc_msgSend(objc_msgSend(v20 "ssidString")];
  }

  else
  {
    v24 = "None";
  }

  [v21 appendFormat:@"    SSID                 : %s\n", v24];
  if ([objc_msgSend(objc_msgSend(v20 "bssid")])
  {
    v25 = [objc_msgSend(objc_msgSend(v20 "bssid")];
  }

  else
  {
    v25 = "None";
  }

  [v21 appendFormat:@"    BSSID                : %s\n", v25];
  [v21 appendFormat:@"    RSSI                 : %i dBm\n", objc_msgSend(v20, "rssi")];
  [v21 appendFormat:@"    CCA                  : %i %%\n", objc_msgSend(v20, "cca")];
  [v21 appendFormat:@"    Noise                : %i dBm\n", objc_msgSend(v20, "noise")];
  [v20 txRate];
  [v21 appendFormat:@"    Tx Rate              : %.1f Mbps\n", v26];
  if ([v20 ssid])
  {
    [v21 appendFormat:@"    Security             : %s\n", -[__CFString UTF8String](W5DescriptionForSecurity(objc_msgSend(v20, "security")), "UTF8String")];
  }

  else
  {
    [v21 appendFormat:@"    Security             : None\n", v157];
  }

  if ([v20 security] == 12 || objc_msgSend(v20, "security") == 11 || objc_msgSend(v20, "security") == 9 || objc_msgSend(v20, "security") == 10 || objc_msgSend(v20, "security") == 8)
  {
    [v21 appendFormat:@"    802.1X Mode          : %s\n", -[__CFString UTF8String](W5DescriptionForEAPOLControlMode(objc_msgSend(v20, "eapolControlMode")), "UTF8String")];
    [v21 appendFormat:@"    802.1X Supplicant    : %s\n", -[__CFString UTF8String](W5DescriptionForEAPOLSupplicantState(objc_msgSend(v20, "eapolSupplicantState")), "UTF8String")];
  }

  [v21 appendFormat:@"    PHY Mode             : %s\n", -[__CFString UTF8String](W5DescriptionForPHYMode(objc_msgSend(v20, "phyMode")), "UTF8String")];
  [v21 appendFormat:@"    MCS Index            : %i\n", objc_msgSend(v20, "mcsIndex")];
  v27 = [v20 ssid];
  if (v27)
  {
    v27 = [v20 guardInterval];
  }

  [v21 appendFormat:@"    Guard Interval       : %i\n", v27];
  [v21 appendFormat:@"    NSS                  : %i\n", objc_msgSend(v20, "numberOfSpacialStreams")];
  if ([objc_msgSend(objc_msgSend(v20 "channel")])
  {
    v28 = [objc_msgSend(objc_msgSend(v20 "channel")];
  }

  else
  {
    v28 = "None";
  }

  [v21 appendFormat:@"    Channel              : %s\n", v28];
  [v21 appendFormat:@"    Country Code         : %s\n", objc_msgSend(objc_msgSend(v20, "countryCode"), "UTF8String")];
  [v21 appendFormat:@"    Scan Cache Count     : %lu\n", objc_msgSend(objc_msgSend(v20, "cachedScanResults"), "count")];
  if ([objc_msgSend(v20 "networkServiceID")])
  {
    v29 = [objc_msgSend(v20 "networkServiceID")];
  }

  else
  {
    v29 = "None";
  }

  [v21 appendFormat:@"    NetworkServiceID     : %s\n", v29];
  [v21 appendFormat:@"    IPv4 Config Method   : %s\n", -[__CFString UTF8String](W5DescriptionForIPv4ConfigMethod(objc_msgSend(v20, "ipv4ConfigMethod")), "UTF8String")];
  if ([objc_msgSend(objc_msgSend(v20 "ipv4Addresses")])
  {
    v30 = [objc_msgSend(objc_msgSend(v20 "ipv4Addresses")];
  }

  else
  {
    v30 = "None";
  }

  [v21 appendFormat:@"    IPv4 Address         : %s\n", v30];
  if ([objc_msgSend(v20 "ipv4Addresses")] >= 2)
  {
    v31 = 1;
    do
    {
      [v21 appendFormat:@"                         : %s\n", objc_msgSend(objc_msgSend(objc_msgSend(v20, "ipv4Addresses"), "objectAtIndexedSubscript:", v31++), "UTF8String")];
    }

    while (v31 < [objc_msgSend(v20 "ipv4Addresses")]);
  }

  if ([objc_msgSend(v20 "ipv4RouterAddress")])
  {
    v32 = [objc_msgSend(v20 "ipv4RouterAddress")];
  }

  else
  {
    v32 = "None";
  }

  [v21 appendFormat:@"    IPv4 Router          : %s\n", v32];
  [v21 appendFormat:@"    IPv6 Config Method   : %s\n", -[__CFString UTF8String](W5DescriptionForIPv6ConfigMethod(objc_msgSend(v20, "ipv6ConfigMethod")), "UTF8String")];
  if ([objc_msgSend(objc_msgSend(v20 "ipv6Addresses")])
  {
    v33 = [objc_msgSend(objc_msgSend(v20 "ipv6Addresses")];
  }

  else
  {
    v33 = "None";
  }

  [v21 appendFormat:@"    IPv6 Address         : %s\n", v33];
  if ([objc_msgSend(v20 "ipv6Addresses")] >= 2)
  {
    v34 = 1;
    do
    {
      [v21 appendFormat:@"                         : %s\n", objc_msgSend(objc_msgSend(objc_msgSend(v20, "ipv6Addresses"), "objectAtIndexedSubscript:", v34++), "UTF8String")];
    }

    while (v34 < [objc_msgSend(v20 "ipv6Addresses")]);
  }

  if ([objc_msgSend(v20 "ipv6RouterAddress")])
  {
    v35 = [objc_msgSend(v20 "ipv6RouterAddress")];
  }

  else
  {
    v35 = "None";
  }

  [v21 appendFormat:@"    IPv6 Router          : %s\n", v35];
  if ([objc_msgSend(objc_msgSend(v20 "dnsAddresses")])
  {
    v36 = [objc_msgSend(objc_msgSend(v20 "dnsAddresses")];
  }

  else
  {
    v36 = "None";
  }

  [v21 appendFormat:@"    DNS                  : %s\n", v36];
  if ([objc_msgSend(v20 "dnsAddresses")] >= 2)
  {
    v37 = 1;
    do
    {
      [v21 appendFormat:@"                         : %s\n", objc_msgSend(objc_msgSend(objc_msgSend(v20, "dnsAddresses"), "objectAtIndexedSubscript:", v37++), "UTF8String")];
    }

    while (v37 < [objc_msgSend(v20 "dnsAddresses")]);
  }

  [v21 appendFormat:@"    BTC Mode             : %s\n", objc_msgSend(W5DescriptionForBTCMode(objc_msgSend(v20, "btcMode")), "UTF8String")];
  if ([objc_msgSend(v20 "desense")] == 16)
  {
    v38 = [objc_msgSend(v20 "desense")];
  }

  else
  {
    v38 = 0;
  }

  if ([objc_msgSend(v20 "desenseLevel")] == 8)
  {
    v39 = [objc_msgSend(v20 "desenseLevel")];
  }

  else
  {
    v39 = 0;
  }

  [v21 appendFormat:@"    Desense              : %s\n", objc_msgSend(W5DescriptionForDesense(v38, v39), "UTF8String")];
  v158 = a1;
  if ([objc_msgSend(v20 "chainAck")] == 24)
  {
    v40 = [objc_msgSend(v20 "chainAck")];
  }

  else
  {
    v40 = 0;
  }

  [v21 appendFormat:@"    Chain Ack            : [%s]\n", objc_msgSend(W5DescriptionForChainAck(v40), "UTF8String")];
  if ([v20 txChainPower])
  {
    [objc_msgSend(v20 "txChainPower")];
    if (*([objc_msgSend(v20 "txChainPower")] + 4))
    {
      [objc_msgSend(v20 "txChainPower")];
      if (*([objc_msgSend(v20 "txChainPower")] + 4) >= 1)
      {
        v41 = 0;
        v42 = 0;
        do
        {
          [objc_msgSend(v20 "txChainPower")];
          v43 = *([objc_msgSend(v20 "txChainPower")] + v41 + 8);
          if (v43 >= 3)
          {
            v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v43];
          }

          else
          {
            v44 = off_279ECDF18[v43];
          }

          [v21 appendFormat:@"    Tx Power [%i]         : %s\n", v42, -[__CFString UTF8String](v44, "UTF8String")];
          [objc_msgSend(v20 "txChainPower")];
          if (*([objc_msgSend(v20 "txChainPower")] + v41 + 8) == 2)
          {
            [objc_msgSend(v20 "txChainPower")];
            v45 = [objc_msgSend(v20 "txChainPower")];
            v47 = *(v45 + v41 + 12);
            v46 = *(v45 + v41 + 16);
            v48 = *(v45 + v41 + 20);
            v49 = *(v45 + v41 + 24);
            v50 = [MEMORY[0x277CCAB68] string];
            [v50 appendFormat:@"      Current            : %i\n", v46];
            [v50 appendFormat:@"      Offset             : %i\n", v47];
            [v50 appendFormat:@"      Min                : %i\n", v48];
            [v50 appendFormat:@"      Max                : %i\n", v49];
            v51 = [v50 copy];
          }

          ++v42;
          [objc_msgSend(v20 "txChainPower")];
          v41 += 20;
        }

        while (v42 < *([objc_msgSend(v20 "txChainPower")] + 4));
      }
    }
  }

  v52 = "Disabled";
  if ([v20 btcConfig])
  {
    [objc_msgSend(v20 "btcConfig")];
    if (*([objc_msgSend(v20 "btcConfig")] + 4))
    {
      v52 = "Enabled";
    }
  }

  [v21 appendFormat:@"    BTC Profile 2.4GHz   : %s\n", v52];
  if ([v20 btcConfig])
  {
    [objc_msgSend(v20 "btcConfig")];
    if (*([objc_msgSend(v20 "btcConfig")] + 4))
    {
      [objc_msgSend(v20 "btcProfiles2GHz")];
      if (*([objc_msgSend(v20 "btcProfiles2GHz")] + 8))
      {
        if ([objc_msgSend(v20 "btcProfiles2GHz")] == 572)
        {
          v53 = [objc_msgSend(v20 "btcProfiles2GHz")];
        }

        else
        {
          v53 = 0;
        }

        [objc_msgSend(v20 "btcConfig")];
        v54 = v53 + 140 * *([objc_msgSend(v20 "btcConfig")] + 8);
        v177 = *(v54 + 92);
        v178 = *(v54 + 108);
        v179[0] = *(v54 + 124);
        *(v179 + 12) = *(v54 + 136);
        v173 = *(v54 + 28);
        v174 = *(v54 + 44);
        v175 = *(v54 + 60);
        v176 = *(v54 + 76);
        v172 = *(v54 + 12);
        __printBTCProfile(&v172);
      }
    }
  }

  v55 = "Disabled";
  if ([v20 btcConfig])
  {
    [objc_msgSend(v20 "btcConfig")];
    if (*([objc_msgSend(v20 "btcConfig")] + 12))
    {
      v55 = "Enabled";
    }
  }

  [v21 appendFormat:@"    BTC Profile 5GHz     : %s\n", v55];
  if ([v20 btcConfig])
  {
    [objc_msgSend(v20 "btcConfig")];
    if (*([objc_msgSend(v20 "btcConfig")] + 12))
    {
      [objc_msgSend(v20 "btcProfiles5GHz")];
      if (*([objc_msgSend(v20 "btcProfiles5GHz")] + 8))
      {
        if ([objc_msgSend(v20 "btcProfiles5GHz")] == 572)
        {
          v56 = [objc_msgSend(v20 "btcProfiles5GHz")];
        }

        else
        {
          v56 = 0;
        }

        [objc_msgSend(v20 "btcConfig")];
        v57 = v56 + 140 * *([objc_msgSend(v20 "btcConfig")] + 16);
        v177 = *(v57 + 92);
        v178 = *(v57 + 108);
        v179[0] = *(v57 + 124);
        *(v179 + 12) = *(v57 + 136);
        v173 = *(v57 + 28);
        v174 = *(v57 + 44);
        v175 = *(v57 + 60);
        v176 = *(v57 + 76);
        v172 = *(v57 + 12);
        __printBTCProfile(&v172);
      }
    }
  }

  v58 = [v20 isSnifferSupported];
  v59 = "NO";
  if (v58)
  {
    v59 = "YES";
  }

  [v21 appendFormat:@"    Sniffer Supported    : %s\n", v59];
  v60 = "Yes";
  if ([objc_msgSend(v20 "capabilities")])
  {
    v61 = "Yes";
  }

  else
  {
    v61 = "No";
  }

  [v21 appendFormat:@"    Supports 6e          : %s\n", v61];
  [v21 appendFormat:@"    Supported Channels   : %s\n", objc_msgSend(objc_msgSend(objc_msgSend(v20, "supportedChannels"), "componentsJoinedByString:", @", "), "UTF8String")];
  [v159 appendString:{objc_msgSend(v21, "copy")}];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  [v159 appendFormat:@"BLUETOOTH\n"];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  v62 = [v158 bluetooth];
  v63 = [MEMORY[0x277CCAB68] string];
  v64 = [v62 powerOn];
  v65 = "Off";
  if (v64)
  {
    v65 = "On";
  }

  [v63 appendFormat:@"    Power                : %s\n", v65];
  if ([objc_msgSend(v62 "address")])
  {
    v66 = [objc_msgSend(v62 "address")];
  }

  else
  {
    v66 = "None";
  }

  [v63 appendFormat:@"    Address              : %s\n", v66];
  if ([v62 isDiscoverable])
  {
    v67 = "Yes";
  }

  else
  {
    v67 = "No";
  }

  [v63 appendFormat:@"    Discoverable         : %s\n", v67];
  if ([v62 isConnectable])
  {
    v68 = "Yes";
  }

  else
  {
    v68 = "No";
  }

  [v63 appendFormat:@"    Connectable          : %s\n", v68];
  if ([v62 isScanning])
  {
    v69 = "Yes";
  }

  else
  {
    v69 = "No";
  }

  [v63 appendFormat:@"    Scanning             : %s\n", v69];
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  obj = v62;
  v70 = [v62 devices];
  v71 = [v70 countByEnumeratingWithState:&v168 objects:&v172 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = *v169;
    do
    {
      for (k = 0; k != v72; ++k)
      {
        if (*v169 != v76)
        {
          objc_enumerationMutation(v70);
        }

        v78 = *(*(&v168 + 1) + 8 * k);
        v73 += [v78 isPaired];
        v74 += [v78 isCloudPaired];
        v75 += [v78 isConnected];
      }

      v72 = [v70 countByEnumeratingWithState:&v168 objects:&v172 count:16];
    }

    while (v72);
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
  }

  [v63 appendFormat:@"    Devices              : %lu (paired=%lu cloud=%lu connected=%lu)\n\n", objc_msgSend(objc_msgSend(obj, "devices"), "count"), v73, v74, v75];
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  obja = [obj devices];
  v79 = [obja countByEnumeratingWithState:&v164 objects:&v180 count:16];
  v80 = "No";
  if (v79)
  {
    v81 = v79;
    v82 = @"    %s\n";
    v83 = @"    Address          : %s\n";
    v84 = *v165;
    v85 = @"    Paired           : %s\n";
    v160 = v63;
    do
    {
      for (m = 0; m != v81; ++m)
      {
        if (*v165 != v84)
        {
          objc_enumerationMutation(obja);
        }

        v87 = *(*(&v164 + 1) + 8 * m);
        [v63 appendFormat:v82, objc_msgSend(objc_msgSend(v87, "name"), "UTF8String")];
        [v63 appendFormat:v83, objc_msgSend(objc_msgSend(v87, "address"), "UTF8String")];
        if ([v87 isPaired])
        {
          v88 = v60;
        }

        else
        {
          v88 = v80;
        }

        [v63 appendFormat:v85, v88];
        if ([v87 isCloudPaired])
        {
          v89 = v60;
        }

        else
        {
          v89 = v80;
        }

        [v63 appendFormat:@"    CloudPaired      : %s\n", v89];
        if ([v87 isConnected])
        {
          v90 = v60;
        }

        else
        {
          v90 = v80;
        }

        [v63 appendFormat:@"    Connected        : %s\n", v90];
        if ([v87 isConnected])
        {
          v91 = v81;
          v92 = v80;
          v93 = v84;
          v94 = v60;
          v95 = v85;
          v96 = v83;
          v97 = v82;
          v98 = [v87 majorClass];
          v99 = [v87 minorClass];
          v100 = v98;
          v82 = v97;
          v83 = v96;
          v85 = v95;
          v60 = v94;
          v84 = v93;
          v80 = v92;
          v81 = v91;
          v63 = v160;
          [v160 appendFormat:@"    Type             : %s\n", objc_msgSend(W5DescriptionForBluetoothDeviceType(v100, v99), "UTF8String")];
          if ([v87 isLowEnergy])
          {
            v101 = v60;
          }

          else
          {
            v101 = v80;
          }

          [v160 appendFormat:@"    LE               : %s\n", v101];
          if ([v87 isAppleDevice])
          {
            v102 = v60;
          }

          else
          {
            v102 = v80;
          }

          [v160 appendFormat:@"    Apple            : %s\n", v102];
        }

        [v63 appendFormat:@"\n"];
      }

      v81 = [obja countByEnumeratingWithState:&v164 objects:&v180 count:16];
    }

    while (v81);
  }

  [v159 appendString:{objc_msgSend(v63, "copy")}];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  [v159 appendFormat:@"AWDL\n"];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  v103 = [v158 awdl];
  v104 = [MEMORY[0x277CCAB68] string];
  if ([v103 power])
  {
    v105 = [objc_msgSend(v103 "macAddress")];
  }

  else
  {
    v105 = "n/a";
  }

  if ([v103 power])
  {
    v106 = [objc_msgSend(v103 "hardwareMACAddress")];
  }

  else
  {
    v106 = "n/a";
  }

  [v104 appendFormat:@"    MAC Address            : %s (hw=%s)\n", v105, v106];
  v107 = [v103 airDropDiscoverableMode];
  if (v107 >= 3)
  {
    v108 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%ld)", v107];
  }

  else
  {
    v108 = off_279ECD850[v107];
  }

  [v104 appendFormat:@"    AirDrop Disc Mode      : %s\n", -[__CFString UTF8String](v108, "UTF8String")];
  if ([v103 awdlSyncEnabled])
  {
    if (*([objc_msgSend(v103 "awdlSyncEnabled")] + 8))
    {
      v109 = v60;
    }

    else
    {
      v109 = v80;
    }
  }

  else
  {
    v109 = "n/a";
  }

  [v104 appendFormat:@"    AWDL Enabled           : %s\n", v109];
  [v104 appendFormat:@"    Interface Name         : %s\n", objc_msgSend(objc_msgSend(v103, "interfaceName"), "UTF8String")];
  v110 = [v103 power];
  v111 = "Off";
  if (v110)
  {
    v111 = "On";
  }

  [v104 appendFormat:@"    Power                  : %s\n", v111];
  if ([objc_msgSend(objc_msgSend(v103 "ipv6Addresses")])
  {
    v112 = [objc_msgSend(objc_msgSend(v103 "ipv6Addresses")];
  }

  else
  {
    v112 = "None";
  }

  [v104 appendFormat:@"    IPv6 Address           : %s\n", v112];
  if ([v103 awdlStrategy])
  {
    v113 = -[__CFString UTF8String](W5DescriptionForAWDLScheduleState(*([objc_msgSend(v103 "awdlStrategy")] + 8)), "UTF8String");
  }

  else
  {
    v113 = "n/a";
  }

  [v104 appendFormat:@"    Schedule State         : %s\n", v113];
  if ([objc_msgSend(v103 "ipv6Addresses")] >= 2)
  {
    v114 = 1;
    do
    {
      [v104 appendFormat:@"                           : %s\n", objc_msgSend(objc_msgSend(objc_msgSend(v103, "ipv6Addresses"), "objectAtIndexedSubscript:", v114++), "UTF8String")];
    }

    while (v114 < [objc_msgSend(v103 "ipv6Addresses")]);
  }

  if ([v103 awdlSyncChannelSequence])
  {
    v115 = [W5DebugDescriptionForAWDLSyncChannelSequence(objc_msgSend(objc_msgSend(v103 "awdlSyncChannelSequence")];
  }

  else
  {
    v115 = "n/a";
  }

  [v104 appendFormat:@"    Channel Sequence       : %s\n", v115];
  if ([v103 awdlOpMode])
  {
    if (*([objc_msgSend(v103 "awdlOpMode")] + 4) <= 2u)
    {
      v116 = off_279ECD588[*([objc_msgSend(v103 "awdlOpMode")] + 4)];
    }

    else
    {
      v116 = "UNKNOWN";
    }
  }

  else
  {
    v116 = "n/a";
  }

  [v104 appendFormat:@"    Op Mode                : %s\n", v116];
  if ([v103 awdlSyncState])
  {
    v117 = [objc_msgSend(v103 "awdlSyncState")];
    if (v117)
    {
      v118 = HIDWORD(v117->isa) - 1;
      if (v118 > 2)
      {
        v117 = @"Stop";
      }

      else
      {
        v117 = off_279ECD838[v118];
      }
    }

    v119 = [(__CFString *)v117 UTF8String];
  }

  else
  {
    v119 = "n/a";
  }

  [v104 appendFormat:@"    Sync State             : %s\n", v119];
  v120 = [objc_msgSend(v103 "awdlSyncParameters")];
  if (v120)
  {
    v121 = v120;
    [v104 appendFormat:@"    Sync Params\n"];
    [v104 appendFormat:@"      AW Period            : %d\n", v121[2]];
    [v104 appendFormat:@"      AW Length            : %d\n", v121[1]];
    [v104 appendFormat:@"      Extension Length     : %d\n", v121[3]];
    [v104 appendFormat:@"      Sync Frame Period    : %d (Non-Election Master=%d)\n", v121[4], v121[5]];
  }

  else
  {
    [v104 appendString:@"    Sync Params            : n/a\n"];
  }

  v122 = [objc_msgSend(v103 "awdlMasterChannel")];
  v123 = [objc_msgSend(v103 "awdlSecondaryMasterChannel")];
  if (v122 && v123)
  {
    [v104 appendFormat:@"    Master Channel         : %u/%u\n", *(v122 + 4), *(v123 + 4)];
  }

  else
  {
    [v104 appendString:@"    Master Channel         : n/a\n"];
  }

  v124 = [objc_msgSend(v103 "awdlElectionParameters")];
  if (v124)
  {
    v125 = v124;
    [v104 appendFormat:@"    Election Params\n"];
    [v104 appendFormat:@"      Election ID          : %u\n", *(v125 + 18)];
    [v104 appendFormat:@"      Self Metric          : %u\n", *(v125 + 32)];
    [v104 appendFormat:@"      Flags                : 0x%x\n", *(v125 + 16)];
    [v104 appendFormat:@"      Top Master Metric    : %u\n", *(v125 + 28)];
    [v104 appendFormat:@"      Distance From Top    : %u\n", *(v125 + 20)];
    [v104 appendFormat:@"      Top Master           : %02X:%02X:%02X:%02X:%02X:%02X\n", *(v125 + 22), *(v125 + 23), *(v125 + 24), *(v125 + 25), *(v125 + 26), *(v125 + 27)];
  }

  else
  {
    [v104 appendString:@"    Election Params        : n/a\n"];
  }

  v126 = [objc_msgSend(v103 "awdlPeerDatabase")];
  if (v126)
  {
    [v104 appendFormat:@"      PeerDB Count         : %u\n", *(v126 + 4)];
  }

  v127 = [objc_msgSend(v103 "awdlSidecarDiagnostics")];
  if (v127)
  {
    [v104 appendFormat:@"      Sidecar Tx Latency   : %ums\n", *(v127 + 4)];
  }

  [v159 appendString:{objc_msgSend(v104, "copy")}];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  [v159 appendFormat:@"POWER\n"];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  v128 = [v158 power];
  v129 = [MEMORY[0x277CCAB68] string];
  [v129 appendFormat:@"    Power Source         : %s\n", -[__CFString UTF8String](W5DescriptionForPowerSourceType(objc_msgSend(v128, "powerSourceType")), "UTF8String")];
  v130 = [v128 batteryWarningLevel];
  if (v130 - 1 >= 3)
  {
    v131 = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", v130];
  }

  else
  {
    v131 = off_279ECDE78[v130 - 1];
  }

  [v129 appendFormat:@"    Battery Warning Level: %s\n", -[__CFString UTF8String](v131, "UTF8String")];
  [v128 powerStateCaps];
  [v129 appendFormat:@"    System Caps          : %s\n", objc_msgSend(W5DescriptionForPowerStateCaps(), "UTF8String")];
  [v159 appendString:{objc_msgSend(v129, "copy")}];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  [v159 appendFormat:@"WIFI FAULTS LAST HOUR\n"];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  v132 = [v158 lastHrFaults];
  v133 = [MEMORY[0x277CCAB68] string];
  if ([v132 lastHrFaults] && (!objc_msgSend(v132, "lastHrFaults") || objc_msgSend(objc_msgSend(v132, "lastHrFaults"), "count")))
  {
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    objb = [v132 lastHrFaults];
    v134 = [objb countByEnumeratingWithState:&v180 objects:&v172 count:16];
    if (v134)
    {
      v135 = v134;
      v136 = *v181;
      do
      {
        for (n = 0; n != v135; ++n)
        {
          if (*v181 != v136)
          {
            objc_enumerationMutation(objb);
          }

          v138 = *(*(&v180 + 1) + 8 * n);
          [v133 appendFormat:@"    Fault                : %s\n", objc_msgSend(objc_msgSend(v138, "objectForKeyedSubscript:", @"type", "UTF8String")];
          [v133 appendFormat:@"%@", __printDictionaryContents(v138, objc_msgSend(MEMORY[0x277CBEB98], "setWithObjects:", @"date", @"interface", 0), 0)];
        }

        v135 = [objb countByEnumeratingWithState:&v180 objects:&v172 count:16];
      }

      while (v135);
    }
  }

  else
  {
    [v133 appendFormat:@"    None\n"];
  }

  [v159 appendString:{objc_msgSend(v133, "copy")}];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  [v159 appendFormat:@"WIFI RECOVERIES LAST HOUR\n"];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  v139 = [v158 lastHrRecoveries];
  v140 = [MEMORY[0x277CCAB68] string];
  if ([v139 lastHrRecoveries] && (!objc_msgSend(v139, "lastHrRecoveries") || objc_msgSend(objc_msgSend(v139, "lastHrRecoveries"), "count")))
  {
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v141 = [v139 lastHrRecoveries];
    v142 = [v141 countByEnumeratingWithState:&v180 objects:&v172 count:16];
    if (v142)
    {
      v143 = v142;
      v144 = *v181;
      do
      {
        for (ii = 0; ii != v143; ++ii)
        {
          if (*v181 != v144)
          {
            objc_enumerationMutation(v141);
          }

          v146 = *(*(&v180 + 1) + 8 * ii);
          [v140 appendFormat:@"    Reason               : %s\n", objc_msgSend(objc_msgSend(v146, "objectForKeyedSubscript:", @"recoveryReason", "UTF8String")];
          [v140 appendFormat:@"%@", __printDictionaryContents(v146, 0, objc_msgSend(MEMORY[0x277CBEB98], "setWithObjects:", @"recoveryReason", 0))];
        }

        v143 = [v141 countByEnumeratingWithState:&v180 objects:&v172 count:16];
      }

      while (v143);
    }
  }

  else
  {
    [v140 appendFormat:@"    None\n"];
  }

  [v159 appendString:{objc_msgSend(v140, "copy")}];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  [v159 appendFormat:@"WIFI LINK TESTS LAST HOUR\n"];
  [v159 appendFormat:@"————————————————————————————————————————————————————————————————————\n"];
  v147 = [v158 lastHrLinkTests];
  v148 = [MEMORY[0x277CCAB68] string];
  if ([v147 lastHrLinkTests] && (!objc_msgSend(v147, "lastHrLinkTests") || objc_msgSend(objc_msgSend(v147, "lastHrLinkTests"), "count")))
  {
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v149 = [v147 lastHrLinkTests];
    v150 = [v149 countByEnumeratingWithState:&v180 objects:&v172 count:16];
    if (v150)
    {
      v151 = v150;
      v152 = *v181;
      do
      {
        for (jj = 0; jj != v151; ++jj)
        {
          if (*v181 != v152)
          {
            objc_enumerationMutation(v149);
          }

          v154 = *(*(&v180 + 1) + 8 * jj);
          [v148 appendFormat:@"    Reason               : %s\n", objc_msgSend(objc_msgSend(v154, "objectForKeyedSubscript:", @"initiatingReason", "UTF8String")];
          [v148 appendFormat:@"%@", __printDictionaryContents(v154, 0, objc_msgSend(MEMORY[0x277CBEB98], "setWithObjects:", @"initiatingReason", 0))];
        }

        v151 = [v149 countByEnumeratingWithState:&v180 objects:&v172 count:16];
      }

      while (v151);
    }
  }

  else
  {
    [v148 appendFormat:@"    None\n"];
  }

  [v159 appendString:{objc_msgSend(v148, "copy")}];
  result = [v159 copy];
  v156 = *MEMORY[0x277D85DE8];
  return result;
}

id W5FormattedHeaderForDiagnosticsTestResults()
{
  v0 = [MEMORY[0x277CCAB68] string];
  [v0 appendString:@"————————————————————————————————————————————————————————————————————————————————————————————————————————\n"];
  [v0 appendString:@"Timestamp    Name                          Duration    Result    Description                            \n"];
  [v0 appendString:@"————————————————————————————————————————————————————————————————————————————————————————————————————————\n"];
  v1 = [v0 copy];

  return v1;
}

id W5FormattedHeaderForDiagnosticsTestResults2()
{
  v0 = [MEMORY[0x277CCAB68] string];
  [v0 appendString:@"————————————————————————————————————————————————————————————————————————————————————————————————————————\n"];
  [v0 appendString:@"Name                                       Duration    Result    Timestamp           Description        \n"];
  [v0 appendString:@"————————————————————————————————————————————————————————————————————————————————————————————————————————\n"];
  v1 = [v0 copy];

  return v1;
}

id W5FormattedDescriptionForDiagnosticsTestResult2(void *a1, uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x277D85DE8];
  if (qword_280D9E7C0 != -1)
  {
    dispatch_once(&qword_280D9E7C0, &__block_literal_global_1);
  }

  v6 = [MEMORY[0x277CCAB68] string];
  v7 = MEMORY[0x277CBEAA8];
  [a1 testStarted];
  v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  [a1 testCompleted];
  v10 = v9;
  [a1 testStarted];
  v12 = v11;
  v13 = [objc_msgSend(a1 "configuration")];
  if (!v13)
  {
    v13 = W5DescriptionForDiagnosticsTestID([a1 testID]);
  }

  v14 = v10 - v12;
  for (i = [MEMORY[0x277CCAB68] string]; a2; --a2)
  {
    [i appendString:a3];
  }

  v16 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", i, v13), "UTF8String"];
  if ([a1 result])
  {
    v17 = "Yes";
  }

  else
  {
    v17 = "No";
  }

  [v6 appendFormat:@"%-43.43s%-12.3f%-10.10s%-20.12s%s\n", v16, *&v14, v17, objc_msgSend(objc_msgSend(_MergedGlobals_1, "stringFromDate:", v8), "UTF8String"), -[__CFString UTF8String](W5DescriptionForDiagnosticsTestResult(a1), "UTF8String")];
  if ([a1 testID] == 28)
  {
    v18 = [objc_msgSend(a1 "info")];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v78 objects:v86 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v79;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v79 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v6 appendFormat:@"                                                                                     '%s' — %s (%s)\n", objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v78 + 1) + 8 * j), "ssidString"), "redactedForWiFi"), "UTF8String"), objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v78 + 1) + 8 * j), "bssid"), "redactedForWiFi"), "UTF8String"), objc_msgSend(objc_msgSend(*(*(&v78 + 1) + 8 * j), "countryCode"), "UTF8String")];
        }

        v20 = [v18 countByEnumeratingWithState:&v78 objects:v86 count:16];
      }

      while (v20);
    }
  }

  else if ([a1 testID] == 24 || objc_msgSend(a1, "testID") == 23)
  {
    [v6 appendFormat:@"                                                                                     Recommended 2.4GHz — %ld\n", objc_msgSend(objc_msgSend(objc_msgSend(a1, "info"), "objectForKeyedSubscript:", @"2GHzChannel", "channel")];
    v23 = [objc_msgSend(a1 "info")];
    v24 = [objc_msgSend(a1 "info")];
    v25 = [v23 channel];
    v26 = [v24 channel];
    v27 = [v23 channel];
    if (v25 == v26)
    {
      [v6 appendFormat:@"                                                                                     Recommended 5GHz — %ld\n", v27, v61];
    }

    else
    {
      [v6 appendFormat:@"                                                                                     Recommended 5GHz — %ld, %ld\n", v27, objc_msgSend(v24, "channel")];
    }
  }

  else if ([a1 testID] == 29)
  {
    v30 = [objc_msgSend(a1 "info")];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v31 = [v30 countByEnumeratingWithState:&v74 objects:v85 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v75;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v75 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [v6 appendFormat:@"                                                                                     '%s' — %s\n", objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v74 + 1) + 8 * k), "ssidString"), "redactedForWiFi"), "UTF8String"), objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v74 + 1) + 8 * k), "bssid"), "redactedForWiFi"), "UTF8String")];
        }

        v32 = [v30 countByEnumeratingWithState:&v74 objects:v85 count:16];
      }

      while (v32);
    }
  }

  else if ([a1 testID] == 27)
  {
    v35 = [objc_msgSend(a1 "info")];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v36 = [v35 countByEnumeratingWithState:&v70 objects:v84 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v71;
      do
      {
        for (m = 0; m != v37; ++m)
        {
          if (*v71 != v38)
          {
            objc_enumerationMutation(v35);
          }

          [v6 appendFormat:@"                                                                                     '%s' — %s (ch %ld)\n", objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v70 + 1) + 8 * m), "ssidString"), "redactedForWiFi"), "UTF8String"), objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v70 + 1) + 8 * m), "bssid"), "redactedForWiFi"), "UTF8String"), objc_msgSend(objc_msgSend(*(*(&v70 + 1) + 8 * m), "channel"), "channel")];
        }

        v37 = [v35 countByEnumeratingWithState:&v70 objects:v84 count:16];
      }

      while (v37);
    }
  }

  else if ([a1 testID] == 48)
  {
    v40 = [objc_msgSend(a1 "info")];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v41 = [v40 countByEnumeratingWithState:&v66 objects:v83 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v67;
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v67 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [v6 appendFormat:@"                                                                                     '%s' — %s\n", objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v66 + 1) + 8 * n), "ssidString"), "redactedForWiFi"), "UTF8String"), -[__CFString UTF8String](W5DescriptionForSecurity(objc_msgSend(*(*(&v66 + 1) + 8 * n), "security")), "UTF8String")];
        }

        v42 = [v40 countByEnumeratingWithState:&v66 objects:v83 count:16];
      }

      while (v42);
    }
  }

  else if ([a1 testID] == 4 || objc_msgSend(a1, "testID") == 5 || objc_msgSend(a1, "testID") == 6)
  {
    v45 = [objc_msgSend(a1 "info")];
    if ([v45 count] >= 2)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v46 = [v45 countByEnumeratingWithState:&v62 objects:v82 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v63;
        do
        {
          for (ii = 0; ii != v47; ++ii)
          {
            if (*v63 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v62 + 1) + 8 * ii);
            v51 = [v50 address];
            [v50 min];
            v53 = v52;
            v54 = W5DescriptionForPingTrafficClass([v50 trafficClass]);
            v55 = [v50 dataLength] + 64;
            [v50 interval];
            v57 = v56;
            [v50 wait];
            v59 = v58;
            [v50 timeout];
            [v6 appendFormat:@"                                                                                     %@ / %.2fms / %@ / %ld bytes / i=%fs / W=%fs / t=%fs / c=%ld\n", v51, v53, v54, v55, v57, v59, v60, objc_msgSend(v50, "count")];
          }

          v47 = [v45 countByEnumeratingWithState:&v62 objects:v82 count:16];
        }

        while (v47);
      }
    }
  }

  result = [v6 copy];
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __W5FormattedDescriptionForDiagnosticsTestResult2_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  _MergedGlobals_1 = v0;

  return [v0 setDateFormat:@"HH:mm:ss.SSS"];
}

__CFString *W5DescriptionForDiagnosticsTestID(unint64_t a1)
{
  if (a1 >= 0x40)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"<%li>", a1];
  }

  else
  {
    return off_279ECD5B8[a1];
  }
}

__CFString *W5DescriptionForDiagnosticsTestResult(void *a1)
{
  [a1 testID];
  result = &stru_288333B30;
  switch(&stru_288333B30)
  {
    case 0uLL:
    case 0x35uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x3EuLL:
      return result;
    case 1uLL:
    case 2uLL:
    case 3uLL:
      v3 = [objc_msgSend(a1 "info")];
      v4 = MEMORY[0x277CCACA8];
      if ([a1 didPass])
      {
        v5 = "";
      }

      else
      {
        v5 = "not ";
      }

      v6 = [v3 address];
      [v3 min];
      v8 = v7;
      v9 = W5DescriptionForPingTrafficClass([v3 trafficClass]);
      v10 = [v3 dataLength] + 64;
      [v3 interval];
      v12 = v11;
      [v3 wait];
      v14 = v13;
      [v3 timeout];
      v16 = v15;
      v155 = [v3 count];
      v153 = v14;
      v154 = v16;
      v152 = v12;
      v150 = v9;
      v151 = v10;
      v149 = v8;
      v17 = @"Could %sping router (%@ / %.2fms / %@ / %ld bytes / i=%fs / W=%fs t=%fs / c=%ld)";
      goto LABEL_140;
    case 4uLL:
    case 5uLL:
    case 6uLL:
      v18 = [objc_msgSend(a1 "info")];
      if ([v18 count] >= 2)
      {
        v19 = [a1 didPass];
        v20 = MEMORY[0x277CCACA8];
        v147 = [v18 count];
        if (v19)
        {
          v17 = @"Could ping DNS server(s) (%ld)";
        }

        else
        {
          v17 = @"Could not ping DNS server(s) (%ld)";
        }

        goto LABEL_200;
      }

      v29 = [v18 firstObject];
      v4 = MEMORY[0x277CCACA8];
      if ([a1 didPass])
      {
        v5 = "";
      }

      else
      {
        v5 = "not ";
      }

      v6 = [v29 address];
      [v29 min];
      v31 = v30;
      v32 = W5DescriptionForPingTrafficClass([v29 trafficClass]);
      v33 = [v29 dataLength] + 64;
      [v29 interval];
      v35 = v34;
      [v29 wait];
      v37 = v36;
      [v29 timeout];
      v39 = v38;
      v155 = [v29 count];
      v153 = v37;
      v154 = v39;
      v152 = v35;
      v150 = v32;
      v151 = v33;
      v149 = v31;
      v17 = @"Could %sping DNS server (%@ / %.2fms / %@ / %ld bytes / i=%fs / W=%fs / t=%fs / c=%ld)";
      goto LABEL_140;
    case 7uLL:
      v53 = [a1 didPass];
      v54 = @"Could not resolve 'captive.apple.com'";
      v55 = @"Could resolve 'captive.apple.com'";
      goto LABEL_105;
    case 8uLL:
      v53 = [a1 didPass];
      v54 = @"Detected double NAT";
      v55 = @"Did not detect double NAT";
      goto LABEL_105;
    case 9uLL:
      v53 = [a1 didPass];
      v54 = @"Could not reach 'www.apple.com'";
      v55 = @"Could reach 'www.apple.com'";
      goto LABEL_105;
    case 0xAuLL:
      v53 = [a1 didPass];
      v54 = @"Could not retrieve 'https://captive.apple.com'";
      v55 = @"Could retrieve 'https://captive.apple.com'";
      goto LABEL_105;
    case 0xBuLL:
      v53 = [a1 didPass];
      v54 = @"Could not retrieve 'https://captive.apple.com' over Wi-Fi";
      v55 = @"Could retrieve 'https://captive.apple.com' over Wi-Fi";
      goto LABEL_105;
    case 0xCuLL:
      v63 = [objc_msgSend(a1 "info")];
      v64 = [objc_msgSend(a1 "info")];
      if ([a1 didPass])
      {
        v20 = MEMORY[0x277CCACA8];
        v147 = v63;
        v148 = [v64 firstObject];
        v17 = @"Wi-Fi has IPv4 assigned (router=%@ ip=%@)";
        goto LABEL_200;
      }

      return @"Wi-Fi does not have IPv4 assigned";
    case 0xDuLL:
      v94 = [objc_msgSend(a1 "info")];
      v95 = [objc_msgSend(a1 "info")];
      if ([a1 didPass])
      {
        v20 = MEMORY[0x277CCACA8];
        v147 = v94;
        v148 = [v95 firstObject];
        v17 = @"Wi-Fi has IPv6 assigned (router=%@ ip=%@)";
        goto LABEL_200;
      }

      return @"Wi-Fi does not have IPv6 assigned";
    case 0xEuLL:
      v103 = [objc_msgSend(objc_msgSend(a1 "info")];
      v20 = MEMORY[0x277CCACA8];
      v147 = W5DescriptionForIPv4ConfigMethod(v103);
      v17 = @"Wi-Fi is using '%@' for IPv4";
      goto LABEL_200;
    case 0xFuLL:
      v115 = [objc_msgSend(objc_msgSend(a1 "info")];
      v20 = MEMORY[0x277CCACA8];
      v147 = W5DescriptionForIPv6ConfigMethod(v115);
      v17 = @"Wi-Fi is using '%@' for IPv6";
      goto LABEL_200;
    case 0x10uLL:
      v53 = [a1 didPass];
      v54 = @"Detected custom DNS settings";
      v55 = @"Did not detect custom DNS settings";
      goto LABEL_105;
    case 0x11uLL:
      v53 = [a1 didPass];
      v54 = @"Detected custom web proxy settings";
      v55 = @"Did not detect custom web proxy settings";
      goto LABEL_105;
    case 0x12uLL:
      v108 = [objc_msgSend(objc_msgSend(a1 "info")];
      v109 = MEMORY[0x277CCACA8];
      v147 = v108;
      v17 = @"Paired Bluetooth device count (%ld)";
      goto LABEL_112;
    case 0x13uLL:
      v117 = [objc_msgSend(objc_msgSend(a1 "info")];
      v109 = MEMORY[0x277CCACA8];
      v147 = v117;
      v17 = @"Connected Bluetooth device count (%ld)";
      goto LABEL_112;
    case 0x14uLL:
      v53 = [a1 didPass];
      v54 = @"Bluetooth coexistence is active";
      v55 = @"Bluetooth coexistence is not active";
      goto LABEL_105;
    case 0x15uLL:
      v53 = [a1 didPass];
      v54 = @"AWDL is active";
      v55 = @"AWDL is not active";
      goto LABEL_105;
    case 0x16uLL:
      v53 = [a1 didPass];
      v54 = @"AWDL real time mode is active";
      v55 = @"AWDL real time mode is not active";
      goto LABEL_105;
    case 0x17uLL:
    case 0x18uLL:
      v21 = [objc_msgSend(a1 "info")];
      v22 = [objc_msgSend(a1 "info")];
      v23 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      v24 = [v22 channel];
      if (v23)
      {
        if (v21)
        {
          v25 = MEMORY[0x277CCACA8];
          [v21 floatValue];
          v27 = [v25 stringWithFormat:@"%.1f%%", v26];
        }

        else
        {
          v27 = @"n/a";
        }

        v147 = v24;
        v148 = v27;
        v17 = @"Current channel (%ld) is NOT congested (CCA = %@)";
      }

      else
      {
        if (v21)
        {
          v69 = MEMORY[0x277CCACA8];
          [v21 floatValue];
          v71 = [v69 stringWithFormat:@"%.1f%%", v70];
        }

        else
        {
          v71 = @"n/a";
        }

        v147 = v24;
        v148 = v71;
        v17 = @"Current channel (%ld) is congested (CCA = %@)";
      }

      goto LABEL_200;
    case 0x19uLL:
      v53 = [a1 didPass];
      v54 = @"2.4GHz band is congested";
      v55 = @"2.4GHz band is not congested";
      goto LABEL_105;
    case 0x1AuLL:
      v53 = [a1 didPass];
      v54 = @"5GHz band is congested";
      v55 = @"5GHz band is not congested";
      goto LABEL_105;
    case 0x1BuLL:
      v53 = [a1 didPass];
      v54 = @"Found HT40 network(s) in 2.4GHz";
      v55 = @"Did not find HT40 network(s) in 2.4GHz";
      goto LABEL_105;
    case 0x1CuLL:
      v104 = [objc_msgSend(a1 "info")];
      if ([a1 didPass])
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"Did not find conflicting country code(s) (%@)", v104, v148, v149, v150, v151, v152, v153, v154, v155];
      }

      else
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"Found conflicting country code(s) (%@)", v104, v148, v149, v150, v151, v152, v153, v154, v155];
      }

    case 0x1DuLL:
      v53 = [a1 didPass];
      v54 = @"Found conflicting security types";
      v55 = @"Did not find conflicting security types";
      goto LABEL_105;
    case 0x1EuLL:
      v62 = [objc_msgSend(a1 "info")];
      if ([a1 didPass])
      {
        return @"Did not find any hidden networks";
      }

      v20 = MEMORY[0x277CCACA8];
      v147 = [v62 count];
      v17 = @"Found %ld hidden network(s)";
      goto LABEL_200;
    case 0x1FuLL:
      v53 = [a1 didPass];
      v54 = @"No Wi-Fi networks are visible";
      v55 = @"Wi-Fi networks are visible";
      goto LABEL_105;
    case 0x20uLL:
      v57 = [objc_msgSend(a1 "info")];
      v58 = [objc_msgSend(objc_msgSend(a1 "info")];
      v59 = [objc_msgSend(objc_msgSend(a1 "info")];
      v60 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      if (v60)
      {
        if (v57)
        {
          v61 = [v57 redactedForWiFi];
        }

        else
        {
          v61 = @"Current network";
        }

        v148 = v58;
        v149 = v58 - v59;
        v147 = v61;
        v17 = @"%@ has good signal (RSSI=%lddBm, SNR=%lddB)";
      }

      else
      {
        if (v57)
        {
          v129 = [v57 redactedForWiFi];
        }

        else
        {
          v129 = @"Current network";
        }

        v148 = v58;
        v149 = v58 - v59;
        v147 = v129;
        v17 = @"%@ has poor signal (RSSI=%lddBm, SNR=%lddB)";
      }

      goto LABEL_200;
    case 0x21uLL:
      v47 = [objc_msgSend(a1 "info")];
      v48 = [objc_msgSend(a1 "info")];
      v49 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      if (v49)
      {
        v147 = v48;
        v17 = @"%@";
      }

      else
      {
        if (v47)
        {
          v127 = [v47 redactedForWiFi];
        }

        else
        {
          v127 = @"Current network";
        }

        v147 = v127;
        v17 = @"%@ is not an AirPort Base Station";
      }

      goto LABEL_200;
    case 0x22uLL:
      v118 = [objc_msgSend(objc_msgSend(a1 "info")];
      v109 = MEMORY[0x277CCACA8];
      v147 = v118;
      v17 = @"Beacon interval is %ldms";
      goto LABEL_112;
    case 0x23uLL:
      v110 = [objc_msgSend(objc_msgSend(a1 "info")];
      v109 = MEMORY[0x277CCACA8];
      v147 = v110;
      v17 = @"DTIM interval is %ldms";
      goto LABEL_112;
    case 0x24uLL:
      v82 = [objc_msgSend(a1 "info")];
      if ([a1 didPass])
      {
        v20 = MEMORY[0x277CCACA8];
        v147 = [v82 count];
        v17 = @"%ld PNL networks have conflicting PHY modes (802.11ac).";
        goto LABEL_200;
      }

      return @"No PNL networks have conflicting PHY modes (802.11ac).";
    case 0x25uLL:
      v96 = [objc_msgSend(a1 "info")];
      if ([a1 didPass])
      {
        v20 = MEMORY[0x277CCACA8];
        v147 = [v96 count];
        v17 = @"%ld PNL networks have conflicting PHY modes (802.11n).";
        goto LABEL_200;
      }

      return @"No PNL networks have conflicting PHY modes (802.11n).";
    case 0x26uLL:
      v111 = [objc_msgSend(a1 "info")];
      v112 = [objc_msgSend(objc_msgSend(a1 "info")];
      v113 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      if (v113)
      {
        if (v111)
        {
          v114 = [v111 redactedForWiFi];
        }

        else
        {
          v114 = @"Current network";
        }

        v147 = v114;
        v148 = W5DescriptionForSecurity(v112);
        v17 = @"%@ does not use open security (%@)";
      }

      else
      {
        if (v111)
        {
          v145 = [v111 redactedForWiFi];
        }

        else
        {
          v145 = @"Current network";
        }

        v147 = v145;
        v17 = @"%@ uses open security";
      }

      goto LABEL_200;
    case 0x27uLL:
      v43 = [objc_msgSend(a1 "info")];
      v44 = [objc_msgSend(objc_msgSend(a1 "info")];
      v45 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      if (v45)
      {
        if (v43)
        {
          v46 = [v43 redactedForWiFi];
        }

        else
        {
          v46 = @"Current network";
        }

        v147 = v46;
        v148 = W5DescriptionForSecurity(v44);
        v17 = @"%@ does not use WEP security (%@)";
      }

      else
      {
        if (v43)
        {
          v126 = [v43 redactedForWiFi];
        }

        else
        {
          v126 = @"Current network";
        }

        v147 = v126;
        v17 = @"%@ uses WEP security";
      }

      goto LABEL_200;
    case 0x28uLL:
      v65 = [objc_msgSend(a1 "info")];
      v66 = [objc_msgSend(objc_msgSend(a1 "info")];
      v67 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      if (v67)
      {
        if (v65)
        {
          v68 = [v65 redactedForWiFi];
        }

        else
        {
          v68 = @"Current network";
        }

        v147 = v68;
        v148 = W5DescriptionForSecurity(v66);
        v17 = @"%@ does not use WPA security (%@)";
      }

      else
      {
        if (v65)
        {
          v130 = [v65 redactedForWiFi];
        }

        else
        {
          v130 = @"Current network";
        }

        v147 = v130;
        v17 = @"%@ uses WPA security";
      }

      goto LABEL_200;
    case 0x29uLL:
      v105 = [objc_msgSend(a1 "info")];
      v106 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      if (v106)
      {
        if (v105)
        {
          v107 = [v105 redactedForWiFi];
        }

        else
        {
          v107 = @"Current network";
        }

        v147 = v107;
        v17 = @"%@ is not using 802.11b";
      }

      else
      {
        if (v105)
        {
          v144 = [v105 redactedForWiFi];
        }

        else
        {
          v144 = @"Current network";
        }

        v147 = v144;
        v17 = @"%@ is using 802.11b";
      }

      goto LABEL_200;
    case 0x2AuLL:
      v120 = [objc_msgSend(a1 "info")];
      v121 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      if (v121)
      {
        if (v120)
        {
          v122 = [v120 redactedForWiFi];
        }

        else
        {
          v122 = @"Current network";
        }

        v147 = v122;
        v17 = @"%@ is not ambiguous";
      }

      else
      {
        if (v120)
        {
          v146 = [v120 redactedForWiFi];
        }

        else
        {
          v146 = @"Current network";
        }

        v147 = v146;
        v17 = @"%@ is ambiguous";
      }

      goto LABEL_200;
    case 0x2BuLL:
      v50 = [objc_msgSend(a1 "info")];
      v51 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      if (v51)
      {
        if (v50)
        {
          v52 = [v50 redactedForWiFi];
        }

        else
        {
          v52 = @"Current network";
        }

        v147 = v52;
        v17 = @"%@ is not marked as hidden";
      }

      else
      {
        if (v50)
        {
          v128 = [v50 redactedForWiFi];
        }

        else
        {
          v128 = @"Current network";
        }

        v147 = v128;
        v17 = @"%@ is marked as hidden";
      }

      goto LABEL_200;
    case 0x2CuLL:
      v72 = [objc_msgSend(a1 "info")];
      v73 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      if (v73)
      {
        if (v72)
        {
          v74 = [v72 redactedForWiFi];
        }

        else
        {
          v74 = @"Current network";
        }

        v147 = v74;
        v17 = @"%@ is not an iOS PH";
      }

      else
      {
        if (v72)
        {
          v131 = [v72 redactedForWiFi];
        }

        else
        {
          v131 = @"Current network";
        }

        v147 = v131;
        v17 = @"%@ is an iOS PH";
      }

      goto LABEL_200;
    case 0x2DuLL:
      v79 = [objc_msgSend(a1 "info")];
      v80 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      if (v80)
      {
        if (v79)
        {
          v81 = [v79 redactedForWiFi];
        }

        else
        {
          v81 = @"Current network";
        }

        v147 = v81;
        v17 = @"%@ is not Passpoint";
      }

      else
      {
        if (v79)
        {
          v132 = [v79 redactedForWiFi];
        }

        else
        {
          v132 = @"Current network";
        }

        v147 = v132;
        v17 = @"%@ is Passpoint";
      }

      goto LABEL_200;
    case 0x2EuLL:
      v40 = [objc_msgSend(a1 "info")];
      v41 = [a1 didPass];
      v20 = MEMORY[0x277CCACA8];
      if (v41)
      {
        if (v40)
        {
          v42 = [v40 redactedForWiFi];
        }

        else
        {
          v42 = @"Current network";
        }

        v147 = v42;
        v17 = @"%@ is not captive";
      }

      else
      {
        if (v40)
        {
          v125 = [v40 redactedForWiFi];
        }

        else
        {
          v125 = @"Current network";
        }

        v147 = v125;
        v17 = @"%@ is captive";
      }

      goto LABEL_200;
    case 0x2FuLL:
      v123 = [objc_msgSend(objc_msgSend(a1 "info")];
      v109 = MEMORY[0x277CCACA8];
      v147 = v123;
      v17 = @"Wi-Fi PNL count (%ld)";
      goto LABEL_112;
    case 0x30uLL:
      v53 = [a1 didPass];
      v54 = @"PNL contains hidden networks";
      v55 = @"PNL does not contain hidden networks";
      goto LABEL_105;
    case 0x31uLL:
    case 0x32uLL:
      if ([a1 didPass])
      {
        v28 = [objc_msgSend(a1 "info")];
        v20 = MEMORY[0x277CCACA8];
        v147 = [v28 integerValue];
        v17 = @"Completed speed test (%ld Mbps)";
        goto LABEL_200;
      }

      v119 = MEMORY[0x277CCACA8];

      return [v119 stringWithFormat:@"Failed to perform speed test"];
    case 0x33uLL:
      v53 = [a1 didPass];
      v54 = @"Current network is 'leaky'";
      v55 = @"Current network is not 'leaky'";
      goto LABEL_105;
    case 0x34uLL:
      if ([a1 didPass])
      {
        v56 = [objc_msgSend(a1 "info")];
        v20 = MEMORY[0x277CCACA8];
        v147 = [v56 redactedForWiFi];
        v17 = @"Wi-Fi is associated to '%@'";
        goto LABEL_200;
      }

      return @"Wi-Fi is not associated";
    case 0x36uLL:
      v53 = [a1 didPass];
      v54 = @"Could not curl 'https://captive.apple.com'";
      v55 = @"Could curl 'https://captive.apple.com'";
LABEL_105:
      if (v53)
      {
        return v55;
      }

      else
      {
        return v54;
      }

    case 0x39uLL:
      v75 = [objc_msgSend(a1 "info")];
      v76 = [objc_msgSend(a1 "info")];
      v77 = [a1 info];
      v78 = @"IPv4ServiceID";
      goto LABEL_94;
    case 0x3AuLL:
      v75 = [objc_msgSend(a1 "info")];
      v76 = [objc_msgSend(a1 "info")];
      v77 = [a1 info];
      v78 = @"IPv6ServiceID";
LABEL_94:
      v116 = [v77 objectForKeyedSubscript:v78];
      if (!v75)
      {
        return @"None";
      }

      v109 = MEMORY[0x277CCACA8];
      v148 = v76;
      v149 = v116;
      v147 = v75;
      v17 = @"%@ (%@ / %@)";
LABEL_112:
      v124 = v109;
      goto LABEL_201;
    case 0x3BuLL:
      v83 = [objc_msgSend(a1 "info")];
      v84 = MEMORY[0x277CCACA8];
      if ([a1 didPass])
      {
        v85 = "";
      }

      else
      {
        v85 = "not ";
      }

      v86 = [v83 address];
      [v83 min];
      v88 = v87;
      v89 = W5DescriptionForPingTrafficClass([v83 trafficClass]);
      v90 = [v83 dataLength] + 64;
      [v83 wait];
      return [v84 stringWithFormat:@"Could %sping AWDL (%@ / %.2fms / %@ / %ld bytes / w=%fs / c=%ld)", v85, v86, v88, v89, v90, v91, objc_msgSend(v83, "count"), v154, v155];
    case 0x3CuLL:
      if ([a1 result])
      {
        v97 = [objc_msgSend(a1 "info")];
        v20 = MEMORY[0x277CCACA8];
        v147 = [v97 count];
        v17 = @"Collected diagnostics from %lu device(s)";
        goto LABEL_200;
      }

      return @"No peers or no response";
    case 0x3DuLL:
      if ([a1 result])
      {
        v98 = [objc_msgSend(a1 "info")];
        v99 = [objc_msgSend(v98 objectForKey:{@"numberOfIOSDevices", "unsignedIntValue"}];
        v100 = [objc_msgSend(v98 objectForKey:{@"numberOfTVOSDevices", "unsignedIntValue"}] + v99;
        v101 = v100 + [objc_msgSend(v98 objectForKey:{@"numberOfMacOSDevices", "unsignedIntValue"}];
        v102 = (v101 + [objc_msgSend(v98 objectForKey:{@"numberOfWatchOSDevices", "unsignedIntValue"}]);
        v4 = MEMORY[0x277CCACA8];
        v147 = [v98 objectForKeyedSubscript:@"DeviceModel"];
        v148 = v102;
        v17 = @"Collected peer device info from %@: found %lu devices";
        goto LABEL_141;
      }

      result = @"No response";
      break;
    case 0x3FuLL:
      v92 = [objc_msgSend(a1 "info")];
      if ([v92 count] < 2)
      {
        v133 = [v92 firstObject];
        v4 = MEMORY[0x277CCACA8];
        if ([a1 didPass])
        {
          v5 = "";
        }

        else
        {
          v5 = "not ";
        }

        v6 = [v133 address];
        [v133 min];
        v135 = v134;
        v136 = W5DescriptionForPingTrafficClass([v133 trafficClass]);
        v137 = [v133 dataLength] + 64;
        [v133 interval];
        v139 = v138;
        [v133 wait];
        v141 = v140;
        [v133 timeout];
        v143 = v142;
        v155 = [v133 count];
        v153 = v141;
        v154 = v143;
        v152 = v139;
        v150 = v136;
        v151 = v137;
        v149 = v135;
        v17 = @"Could %sping IP address (%@ / %.2fms / %@ / %ld bytes / i=%fs / W=%fs / t=%fs / c=%ld)";
LABEL_140:
        v147 = v5;
        v148 = v6;
LABEL_141:
        v124 = v4;
      }

      else
      {
        v93 = [a1 didPass];
        v20 = MEMORY[0x277CCACA8];
        v147 = [v92 count];
        if (v93)
        {
          v17 = @"Could ping IP address(es) (%ld)";
        }

        else
        {
          v17 = @"Could not ping IP address(es) (%ld)";
        }

LABEL_200:
        v124 = v20;
      }

LABEL_201:
      result = [v124 stringWithFormat:v17, v147, v148, v149, v150, v151, v152, v153, v154, v155];
      break;
    default:
      v4 = MEMORY[0x277CCACA8];
      v147 = [a1 testID];
      v17 = @"<%li>";
      goto LABEL_141;
  }

  return result;
}

__CFString *W5DescriptionForSecurity(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return @"?";
  }

  else
  {
    return off_279ECD7B8[a1];
  }
}

__CFString *W5DescriptionForPingTrafficClass(uint64_t a1)
{
  if (a1 > 499)
  {
    if (a1 <= 699)
    {
      if (a1 == 500)
      {
        return @"RV";
      }

      if (a1 == 600)
      {
        return @"OAM";
      }
    }

    else
    {
      switch(a1)
      {
        case 700:
          return @"VI";
        case 800:
          return @"VO";
        case 900:
          return @"CTL";
      }
    }
  }

  else if (a1 <= 199)
  {
    if (!a1)
    {
      return @"BE";
    }

    if (a1 == 100)
    {
      return @"BK_SYS";
    }
  }

  else
  {
    switch(a1)
    {
      case 200:
        return @"BK";
      case 300:
        return @"RD";
      case 400:
        return @"AV";
    }
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%ld>", a1];
}

__CFString *W5MachineSerialNumber()
{
  v0 = *MEMORY[0x277CD2898];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (!MatchingService)
  {
    return @"????????????";
  }

  v3 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformSerialNumber", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    v6 = [MEMORY[0x277CCACA8] stringWithString:CFProperty];
    CFRelease(v5);
  }

  else
  {
    v6 = @"????????????";
  }

  IOObjectRelease(v3);
  return v6;
}

uint64_t W5IsSelfAssignedIPv6(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"::"];
  if ([v1 count] < 2)
  {
    return 0;
  }

  v2 = [objc_msgSend(v1 objectAtIndexedSubscript:{1), "componentsSeparatedByString:", @":"}];
  result = [objc_msgSend(objc_msgSend(v1 "firstObject")];
  if (result)
  {
    return [v2 count] == 4;
  }

  return result;
}

id W5DescriptionForAWDLElectionParameters(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = v2;
  if (a1)
  {
    [v2 appendFormat:@"  Election ID           %u\n", *(a1 + 18)];
    [v3 appendFormat:@"  Self Metric           0x%x\n", *(a1 + 32)];
    [v3 appendFormat:@"  Flags                 0x%x\n", *(a1 + 16)];
    [v3 appendFormat:@"  Top Master Metric     0x%x\n", *(a1 + 28)];
    [v3 appendFormat:@"  Distance From Top     %u\n", *(a1 + 20)];
    [v3 appendFormat:@"  Top Master            %02X:%02X:%02X:%02X:%02X:%02X\n", *(a1 + 22), *(a1 + 23), *(a1 + 24), *(a1 + 25), *(a1 + 26), *(a1 + 27)];
  }

  v4 = [v3 copy];

  return v4;
}

__CFString *W5DescriptionForAWDLSyncState(__CFString *result)
{
  if (result)
  {
    v1 = HIDWORD(result->isa) - 1;
    if (v1 > 2)
    {
      return @"Stop";
    }

    else
    {
      return off_279ECD838[v1];
    }
  }

  return result;
}

id W5DebugDescriptionForAWDLSyncState(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = v2;
  if (a1)
  {
    v4 = *(a1 + 4);
    switch(v4)
    {
      case 1:
        [v2 appendFormat:@"master [%02X:%02X:%02X:%02X:%02X:%02X]", *(a1 + 8), *(a1 + 9), *(a1 + 10), *(a1 + 11), *(a1 + 12), *(a1 + 13)];
        break;
      case 2:
        [v2 appendFormat:@"slave [%02X:%02X:%02X:%02X:%02X:%02X]", *(a1 + 8), *(a1 + 9), *(a1 + 10), *(a1 + 11), *(a1 + 12), *(a1 + 13)];
        break;
      case 3:
        [v2 appendFormat:@"non-election master [%02X:%02X:%02X:%02X:%02X:%02X]", *(a1 + 8), *(a1 + 9), *(a1 + 10), *(a1 + 11), *(a1 + 12), *(a1 + 13)];
        break;
      default:
        [v2 appendString:@"stop"];
        break;
    }
  }

  v5 = [v3 copy];

  return v5;
}

__CFString *W5DescriptionForAWDLOpMode(uint64_t a1)
{
  if (!a1)
  {
    return &stru_288333B30;
  }

  v1 = *(a1 + 4);
  if (v1 <= 2)
  {
    v2 = off_279ECD588[v1];
  }

  else
  {
    v2 = "UNKNOWN";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"AWDL OpMode: %s", v2];
}

id W5DescriptionForAWDLSyncParameters(unsigned int *a1)
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v3 = v2;
  if (a1)
  {
    [v2 appendFormat:@"  AW Period             %d\n", a1[2]];
    [v3 appendFormat:@"  AW Length             %d\n", a1[1]];
    [v3 appendFormat:@"  Extension Length      %d\n", a1[3]];
    [v3 appendFormat:@"  Sync Frame Period     %d (NE Master=%d)\n", a1[4], a1[5]];
  }

  v4 = [v3 copy];

  return v4;
}

id W5DebugDescriptionForAWDLSyncChannelSequence(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  if (a1 && *(a1 + 5))
  {
    v3 = 0;
    v4 = (a1 + 16);
    while (1)
    {
      [v2 appendFormat:@"%u", *v4];
      if (*v4)
      {
        v5 = v4[1];
        v6 = @"++";
        if ((v5 & 0x400) != 0)
        {
          goto LABEL_10;
        }

        if ((v5 & 4) != 0)
        {
          break;
        }
      }

LABEL_11:
      ++v3;
      v7 = *(a1 + 5);
      if (v3 < v7)
      {
        [v2 appendString:@" "];
        v7 = *(a1 + 5);
      }

      v4 += 3;
      if (v3 >= v7)
      {
        goto LABEL_14;
      }
    }

    if ((v5 & 0x200) != 0)
    {
      v6 = @"+";
    }

    else
    {
      v6 = @"-";
    }

LABEL_10:
    [v2 appendString:v6];
    goto LABEL_11;
  }

LABEL_14:
  v8 = [v2 copy];

  return v8;
}

id W5DescriptionForAWDLSyncChannelSequence(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  if (a1)
  {
    v3 = W5DebugDescriptionForAWDLSyncChannelSequence(a1);
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [v3 componentsSeparatedByString:@" "];
    if ([v5 count])
    {
      v6 = 0;
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = v7;
        v10 = [v5 objectAtIndexedSubscript:v6];
        v7 = v10;
        if (!v9 || !v10)
        {
          goto LABEL_11;
        }

        if ([v9 isEqualToString:v10])
        {
          v11 = ++v8;
          if (v6 != [v5 count] - 1)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v11 = 1;
        }

        [v4 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@(%ld)", v9, v8)}];
        v8 = v11;
LABEL_11:
        ++v6;
      }

      while (v6 < [v5 count]);
    }

    if ([v4 count])
    {
      v12 = 0;
      do
      {
        v13 = [v4 objectAtIndexedSubscript:v12];
        if (v12 >= [v4 count] - 1)
        {
          v14 = @"%@";
        }

        else
        {
          v14 = @"%@ ";
        }

        [v2 appendFormat:v14, v13];
        ++v12;
      }

      while (v12 < [v4 count]);
    }
  }

  v15 = [v2 copy];

  return v15;
}

__CFString *W5DescriptionForAirDropDiscoverableMode(unint64_t a1)
{
  if (a1 >= 3)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    return off_279ECD850[a1];
  }
}

__CFString *W5DescriptionForAWDLScheduleState(uint64_t a1)
{
  if (a1 > 23)
  {
    if (a1 <= 27)
    {
      if (a1 == 24)
      {
        return @"Scan + Data";
      }

      if (a1 == 26)
      {
        return @"Scan + RealtimeData";
      }
    }

    else
    {
      switch(a1)
      {
        case 0x1C:
          return @"Piggyback Scan + Data";
        case 0x1D:
          return @"Infra Priority";
        case 0x20:
          return @"Forced";
      }
    }
  }

  else if (a1 <= 3)
  {
    if (!a1)
    {
      return @"Discovery";
    }

    if (a1 == 3)
    {
      return @"Idle";
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return @"Low Power";
      case 5:
        return @"Data";
      case 9:
        return @"RealTimeData";
    }
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%u)", a1];
}

__CFString *W5DescriptionForDiagnosticsState(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_279ECD868[a1];
  }
}

__CFString *W5DescriptionForDiagnosticsRole(char a1)
{
  if ((a1 & 8) != 0)
  {
    v2 = @"Controller";
  }

  else
  {
    v2 = &stru_288333B30;
  }

  if ((a1 & 4) == 0)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    if ([(__CFString *)v2 length])
    {
      v2 = [(__CFString *)v2 stringByAppendingString:@"/Primary"];
      if ((a1 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v2 = @"Primary";
      if ((a1 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_7:
    if ((a1 & 0x10) == 0)
    {
      return v2;
    }

    goto LABEL_21;
  }

  if ([(__CFString *)v2 length])
  {
    v2 = [(__CFString *)v2 stringByAppendingString:@"/Sniffer"];
    if (a1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = @"Sniffer";
    if (a1)
    {
      goto LABEL_13;
    }
  }

LABEL_6:
  if ((a1 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  if ([(__CFString *)v2 length])
  {
    v2 = [(__CFString *)v2 stringByAppendingString:@"/Secondary"];
    if ((a1 & 0x10) == 0)
    {
      return v2;
    }
  }

  else
  {
    v2 = @"Secondary";
    if ((a1 & 0x10) == 0)
    {
      return v2;
    }
  }

LABEL_21:
  if (![(__CFString *)v2 length])
  {
    return @"RemoteListener";
  }

  return [(__CFString *)v2 stringByAppendingString:@"/RemoteListener"];
}

__CFString *W5DescriptionForDiagnosticsFaultType(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return @"None";
    }

    if (a1 == 1)
    {
      return @"Home Theather";
    }
  }

  else
  {
    if (a1 <= 7)
    {
      if (((1 << a1) & 0xB0) != 0)
      {
        return @"Unknown";
      }

      if (((1 << a1) & 0x44) != 0)
      {
        return @"Airplay Audio";
      }

      if (a1 == 3)
      {
        return @"Siri";
      }
    }

    if (a1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return @"Unknown";
    }
  }

  return @"Unsupported";
}

__CFString *W5ExtendedDescriptionForDiagnosticsTestID(unint64_t a1)
{
  if (a1 >= 0x3F)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"<%li>", a1];
  }

  else
  {
    return off_279ECD8C8[a1];
  }
}

__CFString *W5DescriptionForIPv4ConfigMethod(unint64_t a1)
{
  if (a1 >= 8)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    return off_279ECDAC0[a1];
  }
}

__CFString *W5DescriptionForIPv6ConfigMethod(unint64_t a1)
{
  if (a1 >= 6)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    return off_279ECDB00[a1];
  }
}

__CFString *W5DescriptionForEventID(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return @"None";
      }

      if (a1 == 1)
      {
        return @"WiFi Status Changed";
      }

      return [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", a1];
    }

    if (a1 == 2)
    {
      return @"AWDL Status Changed";
    }

    else
    {
      return @"Bluetooth Status Changed";
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return @"Peer Updated";
        case 7:
          return @"Upload Performance Test Updated";
        case 38:
          return @"Fault Detected";
      }

      return [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", a1];
    }

    if (a1 == 4)
    {
      return @"Network Status Changed";
    }

    else
    {
      return @"Power Status Changed";
    }
  }
}

__CFString *W5DescriptionForLogItemID(unint64_t a1)
{
  if (a1 >= 0x5D)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"<%li>", a1];
  }

  else
  {
    return off_279ECDB30[a1];
  }
}

id W5DescriptionForReachabilityFlags(int a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v5 = v4;
  if (a1)
  {
    v6 = "Yes";
  }

  else
  {
    v6 = "No";
  }

  [v4 appendFormat:@"%@TransientConnection: %s\n", a2, v6];
  if ((a1 & 2) != 0)
  {
    v7 = "Yes";
  }

  else
  {
    v7 = "No";
  }

  [v5 appendFormat:@"%@Reachable: %s\n", a2, v7];
  if ((a1 & 4) != 0)
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  [v5 appendFormat:@"%@ConnectionRequired: %s\n", a2, v8];
  if ((a1 & 8) != 0)
  {
    v9 = "Yes";
  }

  else
  {
    v9 = "No";
  }

  [v5 appendFormat:@"%@ConnectionOnTraffic: %s\n", a2, v9];
  if ((a1 & 0x10) != 0)
  {
    v10 = "Yes";
  }

  else
  {
    v10 = "No";
  }

  [v5 appendFormat:@"%@InterventionRequired: %s\n", a2, v10];
  if ((a1 & 0x20) != 0)
  {
    v11 = "Yes";
  }

  else
  {
    v11 = "No";
  }

  [v5 appendFormat:@"%@ConnectionOnDemand: %s\n", a2, v11];
  if ((a1 & 0x10000) != 0)
  {
    v12 = "Yes";
  }

  else
  {
    v12 = "No";
  }

  [v5 appendFormat:@"%@IsLocalAddress: %s\n", a2, v12];
  if ((a1 & 0x20000) != 0)
  {
    v13 = "Yes";
  }

  else
  {
    v13 = "No";
  }

  [v5 appendFormat:@"%@IsDirect: %s\n", a2, v13];
  if ((a1 & 0x40000) != 0)
  {
    v14 = "Yes";
  }

  else
  {
    v14 = "No";
  }

  [v5 appendFormat:@"%@IsWWAN: %s", a2, v14];
  v15 = [v5 copy];

  return v15;
}

__CFString *W5DescriptionForDeviceType(unint64_t a1)
{
  result = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%lu)", a1];
  if (a1 <= 7)
  {
    return off_279ECDE18[a1];
  }

  return result;
}

__CFString *W5DescriptionForPowerSourceType(unint64_t a1)
{
  if (a1 >= 4)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    return off_279ECDE58[a1];
  }
}

__CFString *W5DescriptionForBatteryWarningLevel(unsigned int a1)
{
  if (a1 - 1 >= 3)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    return off_279ECDE78[a1 - 1];
  }
}

uint64_t W5DescriptionForPowerStateCaps()
{
  v3 = *MEMORY[0x277D85DE8];
  if (IOPMGetCapabilitiesDescription())
  {
    result = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  }

  else
  {
    result = 0;
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *W5DescriptionForChannelWidth(void *a1)
{
  if (([a1 flags] & 0x400) != 0)
  {
    return @"80 MHz";
  }

  if (([a1 flags] & 4) != 0)
  {
    return @"40 MHz";
  }

  if (([a1 flags] & 2) != 0)
  {
    return @"20 MHz";
  }

  return 0;
}

__CFString *W5DescriptionForEAPOLControlMode(uint64_t a1)
{
  if (a1 >= 4)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"? (%d)", a1];
  }

  else
  {
    return off_279ECDE90[a1];
  }
}

__CFString *W5DescriptionForEAPOLControlState(uint64_t a1)
{
  if (a1 >= 4)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"? (%d)", a1];
  }

  else
  {
    return off_279ECDEB0[a1];
  }
}

__CFString *W5DescriptionForEAPOLSupplicantState(uint64_t a1)
{
  if (a1 >= 9)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"? (%d)", a1];
  }

  else
  {
    return off_279ECDED0[a1];
  }
}

__CFString *W5DescriptionForOpMode(uint64_t a1)
{
  if (!a1)
  {
    return @"None";
  }

  if ((a1 & 0x10) != 0)
  {
    return @"MONITOR";
  }

  if (a1)
  {
    return @"STA";
  }

  if ((a1 & 2) != 0)
  {
    return @"IBSS";
  }

  if ((a1 & 8) != 0)
  {
    return @"HOSTAP";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"? (0x%X)", a1];
}

__CFString *W5DescriptionForPHYMode(uint64_t a1)
{
  if (!a1)
  {
    return @"None";
  }

  if ((a1 & 0x100) != 0)
  {
    return @"11ax";
  }

  if ((a1 & 0x80) != 0)
  {
    return @"11ac";
  }

  if ((a1 & 0x10) != 0)
  {
    return @"11n";
  }

  if ((a1 & 8) != 0)
  {
    return @"11g";
  }

  if ((a1 & 2) != 0)
  {
    return @"11a";
  }

  if ((a1 & 4) != 0)
  {
    return @"11b";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"? (0x%X)", a1];
}

id W5DescriptionForPower(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  if (a1 && *(a1 + 4))
  {
    for (i = 0; i < v7; ++i)
    {
      v4 = *(a1 + 8 + 4 * i);
      if (v4 <= 1)
      {
        if (v4)
        {
          if (v4 != 1)
          {
LABEL_23:
            [v2 appendFormat:@"%u", *(a1 + 8 + 4 * i)];
            goto LABEL_16;
          }

          v5 = v2;
          v6 = @"On";
        }

        else
        {
          v5 = v2;
          v6 = @"Off";
        }
      }

      else
      {
        switch(v4)
        {
          case 2:
            v5 = v2;
            v6 = @"Tx";
            break;
          case 3:
            v5 = v2;
            v6 = @"Rx";
            break;
          case 4:
            v5 = v2;
            v6 = @"Restricted";
            break;
          default:
            goto LABEL_23;
        }
      }

      [v5 appendString:v6];
LABEL_16:
      LODWORD(v7) = *(a1 + 4);
      if (i < (v7 - 1))
      {
        [v2 appendFormat:@", "];
        LODWORD(v7) = *(a1 + 4);
      }

      if (v7 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v7;
      }
    }
  }

  v8 = [v2 copy];

  return v8;
}

id W5DescriptionForChainAck(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  if (a1 && *(a1 + 4))
  {
    for (i = 0; i < v7; ++i)
    {
      v4 = *(a1 + 8 + 4 * i);
      if (v4 == 1)
      {
        v5 = v2;
        v6 = @"On";
      }

      else
      {
        if (v4)
        {
          [v2 appendFormat:@"%u", *(a1 + 8 + 4 * i)];
          goto LABEL_10;
        }

        v5 = v2;
        v6 = @"Off";
      }

      [v5 appendString:v6];
LABEL_10:
      LODWORD(v7) = *(a1 + 4);
      if (i < (v7 - 1))
      {
        [v2 appendFormat:@", "];
        LODWORD(v7) = *(a1 + 4);
      }

      if (v7 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v7;
      }
    }
  }

  v8 = [v2 copy];

  return v8;
}

__CFString *W5DescriptionForChainPowerState(uint64_t a1)
{
  if (a1 >= 3)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%u", a1];
  }

  else
  {
    return off_279ECDF18[a1];
  }
}

id W5DescriptionForTxChainPower(unsigned int *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v4 appendFormat:@"%@Current: %i\n", a2, a1[2]];
  [v4 appendFormat:@"%@Offset: %i\n", a2, a1[1]];
  [v4 appendFormat:@"%@Min: %i\n", a2, a1[3]];
  [v4 appendFormat:@"%@Max: %i\n", a2, a1[4]];
  v5 = [v4 copy];

  return v5;
}

id W5DescriptionForDesense(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v5 = v4;
  if (a1 && a2)
  {
    v6 = *(a1 + 4);
    if ((~v6 & 3) != 0)
    {
      if (v6)
      {
        [v4 appendFormat:@"2GHz[%i, %i] lvl %i", *(a1 + 8), *(a1 + 10), *(a2 + 4), v9, v10];
      }

      else if ((v6 & 2) != 0)
      {
        [v4 appendFormat:@"5GHz[%i, %i] lvl %i", *(a1 + 12), *(a1 + 14), *(a2 + 4), v9, v10];
      }

      else
      {
        [v4 appendString:@"None"];
      }
    }

    else
    {
      [v4 appendFormat:@"2GHz[%i, %i] 5GHz[%i, %i] lvl %i", *(a1 + 8), *(a1 + 10), *(a1 + 12), *(a1 + 14), *(a2 + 4)];
    }
  }

  v7 = [v5 copy];

  return v7;
}

id W5DescriptionForDesenseFlags(int a1)
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v3 = v2;
  v4 = @"5GHz";
  if ((a1 & 2) == 0)
  {
    v4 = @"None";
  }

  if (a1)
  {
    v4 = @"2GHz";
  }

  if ((~a1 & 3) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"2GHz 5GHz";
  }

  [v2 appendString:v5];
  v6 = [v3 copy];

  return v6;
}

id W5DescriptionForBTCMode(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v3 = v2;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v4 = @"Default";
      }

      else
      {
        v4 = @"Full TDM";
      }

      goto LABEL_20;
    }

    if (!a1)
    {
      v4 = @"Off";
      goto LABEL_20;
    }

    if (a1 == 1)
    {
      v4 = @"On";
      goto LABEL_20;
    }
  }

  else
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v4 = @"Full TDM Preempt";
      }

      else
      {
        v4 = @"Lightweight";
      }

      goto LABEL_20;
    }

    switch(a1)
    {
      case 6:
        v4 = @"Unique Antennae";
        goto LABEL_20;
      case 7:
        v4 = @"Hybrid";
        goto LABEL_20;
      case 8:
        v4 = @"Hybrid (WLTX)";
LABEL_20:
        [v2 appendString:v4];
        goto LABEL_21;
    }
  }

  [v2 appendFormat:@"? (%i)", a1];
LABEL_21:
  v5 = [v3 copy];

  return v5;
}

id W5DescriptionForBTCProfile(unsigned int *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v4 appendFormat:@"%@Mode: %@\n", a2, W5DescriptionForBTCMode(*a1)];
  [v4 appendFormat:@"%@Desense: %@\n", a2, W5DescriptionForDesenseFlags(a1[1])];
  [v4 appendFormat:@"%@Desense Level: %i\n", a2, a1[2]];
  [v4 appendFormat:@"%@Desense Threshold: [%i, %i]\n", a2, a1[4], a1[3]];
  [v4 appendFormat:@"%@Chain Ack: [", a2];
  if (a1[5])
  {
    v5 = 0;
    do
    {
      if (a1[v5 + 6] == 1)
      {
        v6 = "On";
      }

      else
      {
        v6 = "Off";
      }

      [v4 appendFormat:@"%s", v6];
      v7 = a1[5];
      if (v5 < v7 - 1)
      {
        [v4 appendString:{@", "}];
        v7 = a1[5];
      }

      ++v5;
    }

    while (v5 < v7);
  }

  [v4 appendString:@"]\n"];
  [v4 appendFormat:@"%@Chain Tx Power Offset: [", a2];
  if (a1[5])
  {
    v8 = 0;
    do
    {
      [v4 appendFormat:@"%i", a1[v8 + 10]];
      v9 = a1[5];
      if (v8 < v9 - 1)
      {
        [v4 appendString:{@", "}];
        v9 = a1[5];
      }

      ++v8;
    }

    while (v8 < v9);
  }

  [v4 appendString:@"]\n"];
  [v4 appendFormat:@"%@WiFi RSSI Threshold / Hysteresis: %i/%i\n", a2, a1[14], a1[15]];
  [v4 appendFormat:@"%@BT RSSI Threshold / Hysteresis: %i/%i\n", a2, a1[16], a1[17]];
  [v4 appendFormat:@"%@SISO Resp Enable: [", a2];
  if (a1[18])
  {
    v10 = 0;
    do
    {
      [v4 appendFormat:@"%i", a1[v10 + 19]];
      v11 = a1[18];
      if (v10 < v11 - 1)
      {
        [v4 appendString:{@", "}];
        v11 = a1[18];
      }

      ++v10;
    }

    while (v10 < v11);
  }

  [v4 appendString:@"]\n"];
  [v4 appendFormat:@"%@Max SISO Resp Power: [", a2];
  if (a1[18])
  {
    v12 = 0;
    do
    {
      [v4 appendFormat:@"%i", a1[v12 + 27]];
      v13 = a1[18];
      if (v12 < v13 - 1)
      {
        [v4 appendString:{@", "}];
        v13 = a1[18];
      }

      ++v12;
    }

    while (v12 < v13);
  }

  [v4 appendString:@"]\n"];
  v14 = [v4 copy];

  return v14;
}

uint64_t W5DescriptionForBluetoothDeviceType(uint64_t a1, unint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%lx", a1];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%lx", a2];
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2 < 7)
          {
            v5 = off_279ECDF30[a2];
          }

          v4 = @"Computer";
        }
      }

      else
      {
        v4 = @"Misc";
      }
    }

    else if (a1 == 2)
    {
      if (a2 < 6)
      {
        v5 = off_279ECDF68[a2];
      }

      v4 = @"Phone";
    }

    else if (a1 == 3)
    {
      v4 = @"Access Point";
    }

    else
    {
      if (a2 < 0x13 && ((0x5FFF7u >> a2) & 1) != 0)
      {
        v5 = off_279ECDF98[a2];
      }

      v4 = @"Audio";
    }
  }

  else if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        if (a2 - 1 < 5)
        {
          v5 = off_279ECE0E8[a2 - 1];
        }

        v4 = @"Toy";
        break;
      case 9:
        if (a2 < 8)
        {
          v5 = off_279ECE110[a2];
        }

        v4 = @"Health";
        break;
      case 31:
        v4 = @"Unclassified";
        break;
    }
  }

  else if (a1 == 5)
  {
    v7 = (a2 & 0xF) - 1;
    if (v7 >= 9)
    {
      v9 = (a2 >> 4) & 3;
      if (v9 > 1)
      {
        v4 = @"Peripheral";
        if (v9 == 2)
        {
          v5 = @"Mouse";
        }

        else
        {
          v5 = @"Combo";
        }
      }

      else
      {
        if (v9)
        {
          v5 = @"Keyboard";
        }

        v4 = @"Peripheral";
      }
    }

    else
    {
      v5 = off_279ECE030[v7];
      v4 = @"Peripheral";
    }
  }

  else if (a1 == 6)
  {
    v6 = __ROR8__(a2, 2);
    if (v6 < 9 && ((0x117u >> v6) & 1) != 0)
    {
      v5 = off_279ECE078[v6];
    }

    v4 = @"Imaging";
  }

  else
  {
    if (a2 - 1 < 5)
    {
      v5 = off_279ECE0C0[a2 - 1];
    }

    v4 = @"Wearable";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v4, v5];
}

__CFString *W5DescriptionForBluetoothDeviceManufacturer(uint64_t a1)
{
  result = @"Ericsson";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = @"Nokia";
      break;
    case 2:
      result = @"Intel";
      break;
    case 3:
      result = @"IBM";
      break;
    case 4:
      result = @"Toshiba";
      break;
    case 5:
      result = @"3Com";
      break;
    case 6:
      result = @"Microsoft";
      break;
    case 7:
      result = @"Lucent";
      break;
    case 8:
      result = @"Motorola";
      break;
    case 9:
      result = @"Infineon";
      break;
    case 10:
      result = @"Cambridge";
      break;
    case 11:
      result = @"Silicon Wave";
      break;
    case 12:
      result = @"Digianswer";
      break;
    case 13:
      result = @"Texas Instruments";
      break;
    case 14:
      result = @"Parthus";
      break;
    case 15:
      result = @"Broadcom";
      break;
    case 16:
      result = @"Mitel";
      break;
    case 17:
      result = @"Widcomm";
      break;
    case 18:
      result = @"Zeevo";
      break;
    case 19:
      result = @"Atmel";
      break;
    case 20:
      result = @"Mitsubishi";
      break;
    case 21:
      result = @"RXT Telecom";
      break;
    case 22:
      result = @"KC Technology";
      break;
    case 23:
      result = @"New Logic";
      break;
    case 24:
      result = @"Transilica";
      break;
    case 25:
      result = @"Rohde and Schwarz";
      break;
    case 26:
      result = @"TTPCom";
      break;
    case 27:
      result = @"Signia";
      break;
    case 28:
      result = @"Conexant";
      break;
    case 29:
      result = @"Qualcomm";
      break;
    case 30:
      result = @"Inventel";
      break;
    case 31:
      result = @"AVM Berlin";
      break;
    case 32:
      result = @"Bandspeed";
      break;
    case 33:
      result = @"Mansella";
      break;
    case 34:
      result = @"NEC";
      break;
    case 35:
      result = @"Wave Plus";
      break;
    case 36:
      result = @"Alcatel";
      break;
    case 37:
      result = @"Philips";
      break;
    case 38:
      result = @"CTechnologies";
      break;
    case 39:
      result = @"Open Interface";
      break;
    case 40:
      result = @"RFC Micro";
      break;
    case 41:
      result = @"Hitachi";
      break;
    case 42:
      result = @"Symbol";
      break;
    case 43:
      result = @"Tenovis";
      break;
    case 44:
      result = @"Macronix";
      break;
    case 45:
      result = @"GCT Semi";
      break;
    case 46:
      result = @"Norwood";
      break;
    case 47:
      result = @"MewTel";
      break;
    case 48:
      result = @"ST Micro";
      break;
    case 49:
      result = @"Synopsys";
      break;
    case 50:
      result = @"Red M Comms";
      break;
    case 51:
      result = @"Commil";
      break;
    case 52:
      result = @"CATC";
      break;
    case 53:
      result = @"Eclipse";
      break;
    case 54:
      result = @"Renesas";
      break;
    case 55:
      result = @"Mobilian";
      break;
    case 56:
      result = @"Terax";
      break;
    case 57:
      result = @"Integrated System Solution";
      break;
    case 58:
      result = @"Matsushita";
      break;
    case 59:
      result = @"Gennum";
      break;
    case 60:
      result = @"RIM";
      break;
    case 61:
      result = @"IPextreme";
      break;
    case 62:
      result = @"System and Chips";
      break;
    case 63:
      result = @"Bluetooth SIG";
      break;
    case 64:
      result = @"Seiko Epson";
      break;
    case 65:
      result = @"Integrated Silicon Solution";
      break;
    case 66:
      result = @"CONWISE";
      break;
    case 67:
      result = @"Parrot";
      break;
    case 68:
      result = @"Socket Comms";
      break;
    case 69:
      result = @"Atheros Comms";
      break;
    case 70:
      result = @"MediaTek";
      break;
    case 71:
      result = @"Bluegiga";
      break;
    case 72:
      result = @"Marvell";
      break;
    case 73:
      result = @"3DSP";
      break;
    case 74:
      result = @"Accel Semi";
      break;
    case 75:
      result = @"Continental Auto";
      break;
    case 76:
      result = @"Apple";
      break;
    case 77:
      result = @"Staccato";
      break;
    case 78:
      result = @"Avago";
      break;
    case 79:
      result = @"APT";
      break;
    case 80:
      result = @"SiRF";
      break;
    case 81:
      result = @"TZero";
      break;
    case 82:
      result = @"JandM";
      break;
    case 83:
      result = @"Free2Move";
      break;
    case 84:
      result = @"3DiJoy";
      break;
    case 85:
      result = @"Plantronics";
      break;
    case 86:
      result = @"Sony Ericsson";
      break;
    case 87:
      result = @"Harmon";
      break;
    case 88:
      result = @"Visio";
      break;
    case 89:
      result = @"Nordic";
      break;
    case 90:
      result = @"EMMicro";
      break;
    default:
      if (a1 == 0xFFFF)
      {
        result = @"Interop ID";
      }

      else
      {
        result = [MEMORY[0x277CCACA8] stringWithFormat:@"<%ld>", a1];
      }

      break;
  }

  return result;
}

__CFString *W5DescriptionForBluetoothDeviceRole(unint64_t a1)
{
  if (a1 >= 5)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"<%ld>", a1];
  }

  else
  {
    return off_279ECE150[a1];
  }
}

__CFString *W5DescriptionForBluetoothDeviceConnectionMode(unint64_t a1)
{
  if (a1 >= 5)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"<%ld>", a1];
  }

  else
  {
    return off_279ECE178[a1];
  }
}

__CFString *W5DescriptionForWiFiDropReason(unint64_t a1)
{
  if (a1 >= 7)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"<%ld>", a1];
  }

  else
  {
    return off_279ECE1A0[a1];
  }
}

id W5DescriptionForFaultsStatus(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB68] string];
  if (a1 && [a1 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(a1);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          [v2 appendFormat:@"    Fault                : %s\n", objc_msgSend(objc_msgSend(v7, "objectForKeyedSubscript:", @"type", "UTF8String")];
          [v2 appendFormat:@"%@", __printDictionaryContents(v7, objc_msgSend(MEMORY[0x277CBEB98], "setWithObjects:", @"date", @"interface", 0), 0)];
        }

        v4 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  else
  {
    [v2 appendFormat:@"    None\n"];
  }

  result = [v2 copy];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

id __printDictionaryContents(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (qword_280D9E7D0 != -1)
  {
    dispatch_once(&qword_280D9E7D0, &__block_literal_global_2639);
  }

  v6 = [MEMORY[0x277CCAB68] string];
  v7 = [a1 allKeys];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];
  if ([v7 containsObject:@"date"])
  {
    v9 = [MEMORY[0x277CBEB40] orderedSetWithObject:@"date"];
    v10 = v9;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
  }

  [v9 addObjectsFromArray:v8];
  if (a2)
  {
    [v9 intersectSet:a2];
  }

  if (a3)
  {
    [v9 minusSet:a3];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = @"date";
    v14 = *v31;
    v28 = *v31;
    do
    {
      v15 = 0;
      v29 = v12;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        v17 = [a1 valueForKey:v16];
        if ([v16 containsString:v13])
        {
          [v17 timeIntervalSinceNow];
          [v6 appendFormat:@"    |> Age               : %02ld:%02ld:%02ld HH:MM:SS Ago\n", -v18 / 0xE10, -v18 % 0xE10 / 0x3C, -v18 % 0xE10 % 0x3C];
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_msgSend(qword_280D9E7C8, "stringFromDate:", v17)];
          v19 = @"    |> Date              : %s\n";
LABEL_25:
          [v6 appendFormat:v19, objc_msgSend(v16, "UTF8String")];
          goto LABEL_26;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v20 = v13;
          v21 = a1;
          v22 = v9;
          [v6 appendFormat:@"    |> %s", objc_msgSend(v16, "UTF8String")];
          if ([v16 length] <= 0x11)
          {
            if ([v16 length] != 18)
            {
              v23 = 1;
              do
              {
                [v6 appendFormat:@" "];
              }

              while (18 - [v16 length] > v23++);
            }
          }

          else
          {
            [v6 appendFormat:@" "];
          }

          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v17];
          v19 = @": %s\n";
          v9 = v22;
          a1 = v21;
          v13 = v20;
          v14 = v28;
          v12 = v29;
          goto LABEL_25;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = @"    |> %s (NSDictionary not followed)";
          goto LABEL_25;
        }

        objc_opt_class();
        v19 = @"    |> %s (NSArray not followed)";
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_25;
        }

LABEL_26:
        ++v15;
      }

      while (v15 != v12);
      v25 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v12 = v25;
    }

    while (v25);
  }

  result = [v6 copy];
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

id W5DescriptionForLinkTestsStatus(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB68] string];
  if (a1 && [a1 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(a1);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          [v2 appendFormat:@"    Reason               : %s\n", objc_msgSend(objc_msgSend(v7, "objectForKeyedSubscript:", @"initiatingReason", "UTF8String")];
          [v2 appendFormat:@"%@", __printDictionaryContents(v7, 0, objc_msgSend(MEMORY[0x277CBEB98], "setWithObjects:", @"initiatingReason", 0))];
        }

        v4 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  else
  {
    [v2 appendFormat:@"    None\n"];
  }

  result = [v2 copy];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

id W5DescriptionForRecoveriesStatus(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB68] string];
  if (a1 && [a1 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(a1);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          [v2 appendFormat:@"    Reason               : %s\n", objc_msgSend(objc_msgSend(v7, "objectForKeyedSubscript:", @"recoveryReason", "UTF8String")];
          [v2 appendFormat:@"%@", __printDictionaryContents(v7, 0, objc_msgSend(MEMORY[0x277CBEB98], "setWithObjects:", @"recoveryReason", 0))];
        }

        v4 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  else
  {
    [v2 appendFormat:@"    None\n"];
  }

  result = [v2 copy];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

id __printBTCProfile(unsigned int *a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  [v2 appendFormat:@"      Mode                      : %s\n", objc_msgSend(W5DescriptionForBTCMode(*a1), "UTF8String")];
  [v2 appendFormat:@"      Desense                   : %s\n", objc_msgSend(W5DescriptionForDesenseFlags(a1[1]), "UTF8String")];
  [v2 appendFormat:@"      Desense Lvl               : %i\n", a1[2]];
  [v2 appendFormat:@"      Desense Thr               : [%i, %i]\n", a1[4], a1[3]];
  [v2 appendFormat:@"      Chain Ack                 : ["];
  if (a1[5])
  {
    v3 = 0;
    do
    {
      if (a1[v3 + 6] == 1)
      {
        v4 = "On";
      }

      else
      {
        v4 = "Off";
      }

      [v2 appendFormat:@"%s", v4];
      v5 = a1[5];
      if (v3 < v5 - 1)
      {
        [v2 appendFormat:@", "];
        v5 = a1[5];
      }

      ++v3;
    }

    while (v3 < v5);
  }

  [v2 appendFormat:@"]\n"];
  [v2 appendFormat:@"      Chain Tx Power Offset     : ["];
  if (a1[5])
  {
    v6 = 0;
    do
    {
      [v2 appendFormat:@"%i", a1[v6 + 10]];
      v7 = a1[5];
      if (v6 < v7 - 1)
      {
        [v2 appendFormat:@", "];
        v7 = a1[5];
      }

      ++v6;
    }

    while (v6 < v7);
  }

  [v2 appendFormat:@"]\n"];
  [v2 appendFormat:@"      WiFi RSSI Thresh / Hyst   : %i/%i\n", a1[14], a1[15]];
  [v2 appendFormat:@"      BT RSSI Thresh / Hyst     : %i/%i\n", a1[16], a1[17]];
  [v2 appendFormat:@"      SISO Resp Enable          : ["];
  if (a1[18])
  {
    v8 = 0;
    do
    {
      [v2 appendFormat:@"%i", a1[v8 + 19]];
      v9 = a1[18];
      if (v8 < v9 - 1)
      {
        [v2 appendFormat:@", "];
        v9 = a1[18];
      }

      ++v8;
    }

    while (v8 < v9);
  }

  [v2 appendFormat:@"]\n"];
  [v2 appendFormat:@"      Max SISO Resp Power       : ["];
  if (a1[18])
  {
    v10 = 0;
    do
    {
      [v2 appendFormat:@"%i", a1[v10 + 27]];
      v11 = a1[18];
      if (v10 < v11 - 1)
      {
        [v2 appendFormat:@", "];
        v11 = a1[18];
      }

      ++v10;
    }

    while (v10 < v11);
  }

  [v2 appendFormat:@"]\n"];
  v12 = [v2 copy];

  return v12;
}

uint64_t ____printDictionaryContents_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  qword_280D9E7C8 = v0;

  return [v0 setDateFormat:@"yyyy'-'MM'-'dd HH:mm:ss.SSS"];
}

void sub_274235B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2742362DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_sync_exit(v23);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_274237608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_274237B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_274238468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_27423CA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_27423D70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_27423F370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_27423FBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2742403C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_274241E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_274242098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}