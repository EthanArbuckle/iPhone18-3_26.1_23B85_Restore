BOOL isInternalBuild()
{
  if (qword_1000146D0 != -1)
  {
    sub_100008E70();
  }

  return byte_1000146C8 != 0;
}

id isTaskingEnabled(uint64_t a1)
{
  v2 = OSAGetDATaskingValue();
  if (!v2 || (result = [v2 intValue], result != 1))
  {
    NSLog(@"NANDStats: %@ status not available", a1);
    return 0;
  }

  return result;
}

uint64_t CRUOpenSQLDB()
{
  errmsg = 0;
  if (CRUdb)
  {
    return 1;
  }

  v1 = sqlite3_open("/var/mobile/Library/Caches/NANDUsage.db", &CRUdb);
  pStmt = 0;
  v2 = sqlite3_prepare_v2(CRUdb, "PRAGMA user_version;", -1, &pStmt, 0);
  if (v2 == 100)
  {
    goto LABEL_6;
  }

  if (v2)
  {
    goto LABEL_16;
  }

  if (sqlite3_step(pStmt) == 100)
  {
LABEL_6:
    v3 = sqlite3_column_int(pStmt, 0);
    sqlite3_finalize(pStmt);
    pStmt = 0;
    if (v3 == 1)
    {
      goto LABEL_16;
    }

    v4 = sqlite3_exec(CRUdb, "DROP TABLE NANDStats;", 0, 0, &errmsg);
    v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v5)
      {
        goto LABEL_16;
      }

      *buf = 0;
      v6 = "NANDStats: Failed to drop table";
    }

    else
    {
      if (!v5)
      {
        goto LABEL_16;
      }

      *buf = 0;
      v6 = "NANDStats: Dropping table due to schema mismatch";
    }

    v7 = 2;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 67109378;
    v17 = v1;
    v18 = 2080;
    v19 = errmsg;
    v6 = "NANDStats: Failed to check user_version for CRUdb - %d %s\n";
    v7 = 18;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, buf, v7);
LABEL_16:
  if (v1)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 67109120;
    v17 = v1;
    v8 = "NANDStats: Failed to open CRUdb with error number %d\n";
    v9 = 8;
    goto LABEL_25;
  }

  v10 = sqlite3_exec(CRUdb, "PRAGMA journal_mode = WAL", 0, 0, &errmsg);
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v17 = v11;
      v18 = 2080;
      v19 = errmsg;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats: Failed to enable WAL for CRUdb - %d %s\n", buf, 0x12u);
    }
  }

  v12 = sqlite3_exec(CRUdb, "PRAGMA user_version = 1;", 0, 0, &errmsg);
  if (!v12)
  {
    return 1;
  }

  v13 = v12;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v17 = v13;
    v18 = 2080;
    v19 = errmsg;
    v8 = "NANDStats: Failed to set user_version for CRUdb - %d %s\n";
    v9 = 18;
LABEL_25:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, buf, v9);
  }

LABEL_26:
  result = CRUdb;
  if (CRUdb)
  {
    sqlite3_close(CRUdb);
    result = 0;
    CRUdb = 0;
  }

  return result;
}

uint64_t CRUCloseSQLDB()
{
  result = CRUdb;
  if (CRUdb)
  {
    result = sqlite3_close(CRUdb);
    CRUdb = 0;
  }

  return result;
}

void InstallIOCSNotificationHandler()
{
  name = 0;
  if (qword_1000146D8)
  {
    return;
  }

  v0 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "IOCS: Installing IOCS notification handler", buf, 2u);
  }

  qword_1000146D8 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
  if (mach_port_allocate(mach_task_self_, 1u, &name))
  {
    sub_100008E84();
  }

  else if (mach_port_insert_right(mach_task_self_, name, name, 0x14u))
  {
    sub_100008F10();
  }

  else
  {
    v1 = mach_host_self();
    if (host_set_special_port(v1, 32, name))
    {
      sub_100008F9C();
    }

    else
    {
      if (!mach_port_set_context(mach_task_self_, name, qword_1000146D8))
      {
        v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
        v3 = dispatch_queue_create("com.apple.fs_task_scheduler", v2);
        *qword_1000146D8 = v3;
        v4 = dispatch_source_create(&_dispatch_source_type_mach_recv, name, 0, v3);
        *(qword_1000146D8 + 8) = v4;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100001520;
        handler[3] = &unk_1000106E0;
        v7 = name;
        dispatch_source_set_event_handler(v4, handler);
        v5 = oslog;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IOCS: Successfully installed mach_port", buf, 2u);
        }

        dispatch_resume(*(qword_1000146D8 + 8));
        return;
      }

      sub_100009028();
    }
  }

  if (name)
  {
    mach_port_deallocate(mach_task_self_, name);
  }
}

void sub_100001520(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (mach_msg_server_once(iocompressionstats_notification_server, 0x1000u, *(a1 + 32), 0))
  {
    sub_100009028();
  }

  objc_autoreleasePoolPop(v2);
}

void fetch_and_process_iocs_store_buffer(int a1, int a2)
{
  size = 0;
  v10 = a1;
  if (sysctlbyname("vfs.io_compression_dump_stats", 0, &size, &v10, 4uLL))
  {
    v3 = oslog;
    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "IOCS: Failed to get buffer length\n";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
    return;
  }

  if (size >= 0x6400001)
  {
    v3 = oslog;
    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "IOCS: Buffer length needed longer than supported \n";
    goto LABEL_13;
  }

  v5 = malloc_type_calloc(1uLL, size, 0xC3A7D9BuLL);
  if (!v5)
  {
    v3 = oslog;
    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "IOCS: Failed to allocate buffer for reading iocs_store_buffer_entry\n";
    goto LABEL_13;
  }

  v6 = v5;
  v7 = sysctlbyname("vfs.io_compression_dump_stats", v5, &size, &v10, 4uLL);
  v8 = oslog;
  v9 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IOCS: Failed to get iocs_store_buffer_entry from XNU", buf, 2u);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 67109120;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IOCS: Sucessfully read iocs_store_buffer. Action = %d", buf, 8u);
    }

    ProcessIOCSStoreBuffer(v6, size, a2);
  }

  free(v6);
}

uint64_t iocompressionstats_notification()
{
  v0 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "IOCS: received kernel notification", v2, 2u);
  }

  fetch_and_process_iocs_store_buffer(4, 1);
  return 0;
}

void sub_100001810(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t sub_10000183C()
{

  return __os_assumes_log(v0);
}

BOOL sub_100001854()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void GetWriteSourceFromFilePath(const char *a1, char *a2)
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = ContainerToBundleIDMap;
  v4 = [ContainerToBundleIDMap countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [ContainerToBundleIDMap objectForKey:v8];
        if (!strncmp([v8 UTF8String], a1, objc_msgSend(v8, "length")) || strlen(a1) >= 9 && !strncmp(objc_msgSend(v8, "UTF8String"), a1 + 8, objc_msgSend(v8, "length")))
        {
          strncpy(a2, [v10 UTF8String], 0x3FFuLL);
          objc_autoreleasePoolPop(v9);
          return;
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  v11 = [NSArray arrayWithObjects:@"/private/var/mobile/Library/Caches/", @"/private/var/root/Library/Caches/", @"/private/var/mobile/Library/Preferences/", @"/private/var/root/Library/Preferences/", @"/private/var/mobile/Library/HTTPStorages/", @"/private/var/root/Library/HTTPStorages/", @"/private/var/mobile/Library/Logs/", @"/private/var/root/Library/Logs/", @"/private/var/mobile/Library/Saved Application State/", @"/private/var/root/Library/Saved Application State/", @"/private/var/mobile/Library/Cookies/", @"/private/var/root/Library/Cookies/", @"/private/var/mobile/Library/Application Support/", @"/private/var/root/Library/Application Support/", @"/private/var/mobile/Library/", @"/private/var/root/Library/", @"/private/var/mobile/", @"/private/var/root/", @"/private/var/db/", @"/private/var/log/", @"/private/var/logs/", @"/private/var/tmp/", @"/private/var/preferences/", @"/private/var/", @"/dev/", 0];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  v14 = *v27;
  while (2)
  {
    for (j = 0; j != v13; j = j + 1)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v26 + 1) + 8 * j);
      v17 = [v16 UTF8String];
      v18 = [v16 length];
      if (v18 >= 1023)
      {
        v19 = 1023;
      }

      else
      {
        v19 = v18;
      }

      if (!strncmp(v17, a1, v19))
      {
        v20 = [[NSString stringWithUTF8String:?], "componentsSeparatedByString:", @"/"];
        v21 = [objc_msgSend(v16 componentsSeparatedByString:{@"/", "count"}];
        if ([(NSArray *)v20 count]>= v21)
        {
          v22 = [(NSArray *)v20 objectAtIndex:((v21 << 32) - 0x100000000) >> 32];
          if (([v16 hasSuffix:@"Preferences/"] & 1) != 0 || objc_msgSend(v16, "hasSuffix:", @"preferences/"))
          {
            v23 = @".plist";
          }

          else
          {
            if (![v16 hasSuffix:@"Saved Application State/"])
            {
              if (![v16 hasSuffix:@"Cookies/"])
              {
                v24 = a2;
                goto LABEL_30;
              }

              v23 = @".binaryCookies";
              v24 = a2;
              if (![v22 hasSuffix:@".binaryCookies"])
              {
                goto LABEL_30;
              }

              goto LABEL_29;
            }

            v23 = @".savedState";
          }

          v24 = a2;
          if (([v22 hasSuffix:v23] & 1) == 0)
          {
LABEL_30:
            strncpy(v24, [v22 UTF8String], 0x3FFuLL);
            return;
          }

LABEL_29:
          v22 = [v22 substringToIndex:{(objc_msgSend(v22, "length") - -[__CFString length](v23, "length"))}];
          goto LABEL_30;
        }
      }
    }

    v13 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_23:
  bzero(a2, 0x3FFuLL);
}

int64_t GetFileExtensionFromFilePath(const char *a1, const char **a2)
{
  result = strnlen(a1, 0x400uLL);
  if (result < 2)
  {
    goto LABEL_11;
  }

  v5 = result >= 0x14 ? 20 : result;
  v6 = result - 1;
  while (a1[v6] != 46)
  {
    --v6;
    if (!--v5)
    {
      goto LABEL_11;
    }
  }

  if (v6 == -1)
  {
LABEL_11:
    v7 = &unk_10000AD37;
  }

  else
  {
    v7 = &a1[v6];
  }

  *a2 = v7;
  return result;
}

BOOL IOCSOpenSQLDB()
{
  if (qword_1000146E0)
  {
    v0 = 1;
LABEL_12:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100009140();
    }

    return v0;
  }

  v1 = +[NSFileManager defaultManager];
  v9 = 0;
  if ([(NSFileManager *)v1 fileExistsAtPath:@"/var/db/IOCS/IOCSMonitoring.db"])
  {
    goto LABEL_20;
  }

  v2 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "IOCS: DB file does not exist, creating the file", &v8, 2u);
  }

  if ([(NSFileManager *)v1 createDirectoryAtPath:@"/var/db/IOCS" withIntermediateDirectories:0 attributes:0 error:&v9])
  {
LABEL_20:
    if (sqlite3_open("/var/db/IOCS/IOCSMonitoring.db", &qword_1000146E0))
    {
      sqlite3_close(qword_1000146E0);
      v0 = 0;
      qword_1000146E0 = 0;
    }

    else
    {
      v8 = 0;
      v3 = sqlite3_exec(qword_1000146E0, "PRAGMA journal_mode = WAL", 0, 0, &v8);
      v0 = v3 == 0;
      if (v3)
      {
        v4 = v3;
        v5 = oslog;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000090B4(&v8, v4, v5);
        }
      }
    }

    goto LABEL_12;
  }

  v7 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IOCS: Failed to create DIR", &v8, 2u);
  }

  return 0;
}

BOOL IOCSDeleteAllRowsSQLDB()
{
  if (qword_1000146E0)
  {
    if (sqlite3_open("/var/db/IOCS/IOCSMonitoring.db", &qword_1000146E0))
    {
      sqlite3_close(qword_1000146E0);
      result = 0;
      qword_1000146E0 = 0;
    }

    else
    {
      errmsg = 0;
      return sqlite3_exec(qword_1000146E0, "DELETE FROM IOCSTable", 0, 0, &errmsg) == 0;
    }
  }

  else
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100009174();
    }

    return 1;
  }

  return result;
}

uint64_t IOCSCloseSQLDB()
{
  result = qword_1000146E0;
  if (qword_1000146E0)
  {
    result = sqlite3_close(qword_1000146E0);
    qword_1000146E0 = 0;
  }

  return result;
}

size_t printLine(int a1)
{
  if (a1 >= 1)
  {
    v2 = a1;
    do
    {
      fputs("-------------", __stdoutp);
      --v2;
    }

    while (v2);
  }

  v3 = __stdoutp;

  return fwrite("-\n", 2uLL, 1uLL, v3);
}

size_t PrintIOCSStoreBufferEntry(uint64_t a1)
{
  bzero(v13, 0x400uLL);
  v12 = 0;
  GetWriteSourceFromFilePath(a1, v13);
  GetFileExtensionFromFilePath(a1, &v12);
  result = printf("IOCS: File Path: %s\nProcess Information: %s\nExtension: %s\n", a1, v13, v12);
  if (*(a1 + 128))
  {
    fprintf(__stdoutp, "TotalUncompressedBytes = %lld\n", *(a1 + 128));
    fprintf(__stdoutp, "TotalCompressedBytes = %lld\n", *(a1 + 136));
    fwrite("Block Level compressed buffer size histogram\n", 0x2DuLL, 1uLL, __stdoutp);
    printLine(16);
    for (i = 0; i != 4096; i += 256)
    {
      if (!i)
      {
        fputc(124, __stdoutp);
      }

      fprintf(__stdoutp, "  %4d-%4d |", i, i + 255);
    }

    fputc(10, __stdoutp);
    printLine(16);
    for (j = 0; j != 64; j += 4)
    {
      v5 = *(a1 + 424 + j);
      if (!j)
      {
        fputc(124, __stdoutp);
      }

      fprintf(__stdoutp, "%9d   |", v5);
    }

    fputc(10, __stdoutp);
    printLine(16);
    fwrite("Buffer size (Rows) vs compressibility (Columns) histogram \n", 0x3BuLL, 1uLL, __stdoutp);
    printLine(8);
    fprintf(__stdoutp, "|%12s", &unk_10000AD37);
    v6 = &unk_10000A744;
    v7 = 7;
    do
    {
      if (v7 == 7)
      {
        fputc(124, __stdoutp);
      }

      fprintf(__stdoutp, "   %02d - %02d%% |", *(v6 - 1), *v6 - 1);
      ++v6;
      --v7;
    }

    while (v7);
    fputc(10, __stdoutp);
    printLine(8);
    v8 = 0;
    v9 = a1 + 144;
    do
    {
      fprintf(__stdoutp, "|%12s", (&off_100010740)[v8]);
      for (k = 0; k != 28; k += 4)
      {
        v11 = *(v9 + k);
        if (!k)
        {
          fputc(124, __stdoutp);
        }

        fprintf(__stdoutp, "%9d   |", v11);
      }

      fputc(10, __stdoutp);
      ++v8;
      v9 += 28;
    }

    while (v8 != 10);
    printLine(8);
    return fwrite("\n\n", 2uLL, 1uLL, __stdoutp);
  }

  return result;
}

void ProcessIOCSStoreBuffer(uint64_t a1, uint64_t a2, int a3)
{
  v5 = objc_autoreleasePoolPush();
  if (IOCSOpenSQLDB())
  {
    if (sqlite3_exec(qword_1000146E0, "CREATE TABLE IF NOT EXISTS IOCSTable( writeSource TEXT,  fileExtension INTEGER,  uncompressedBytes INTEGER,  compressedBytes INTEGER,  bufferSizeCompressionDist BLOB,  blockCompressedSizeDist BLOB,  PRIMARY KEY(writeSource, fileExtension))", 0, 0, 0))
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000091DC();
      }
    }

    else
    {
      if (ContainerToBundleIDMap)
      {
        [ContainerToBundleIDMap removeAllObjects];
      }

      else
      {
        ContainerToBundleIDMap = objc_alloc_init(NSMutableDictionary);
      }

      [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
      if (a2 >= 1)
      {
        v6 = 0;
        v34 = v5;
        v33 = a3;
        v32 = a2;
        do
        {
          v7 = objc_autoreleasePoolPush();
          v8 = a1 + v6;
          if (a3 == 1)
          {
            context = v7;
            bzero(__s, 0x400uLL);
            v39 = 0;
            GetWriteSourceFromFilePath(v8, __s);
            GetFileExtensionFromFilePath(v8, &v39);
            v10 = v39;
            ppStmt = 0;
            v11 = sqlite3_prepare_v2(qword_1000146E0, "SELECT uncompressedBytes,compressedBytes,bufferSizeCompressionDist,blockCompressedSizeDist FROM IOCSTable WHERE writeSource = ? AND fileExtension = ?", -1, &ppStmt, 0);
            if (v11)
            {
              v12 = v11;
              v13 = oslog;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                v31 = sqlite3_errmsg(qword_1000146E0);
                *buf = 67109378;
                *&buf[4] = v12;
                *&buf[8] = 2080;
                *&buf[10] = v31;
                _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "IOCS: SQL table Insert failure: %d %s\n", buf, 0x12u);
              }

              sqlite3_finalize(ppStmt);
            }

            else
            {
              v14 = strlen(__s);
              sqlite3_bind_text(ppStmt, 1, __s, v14, 0xFFFFFFFFFFFFFFFFLL);
              v15 = strlen(v10);
              v36 = v10;
              sqlite3_bind_text(ppStmt, 2, v10, v15, 0xFFFFFFFFFFFFFFFFLL);
              if (sqlite3_step(ppStmt) != 100)
              {
                goto LABEL_42;
              }

              v38 = 0;
              do
              {
                if (v38 >= 1)
                {
                  v16 = oslog;
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *&buf[4] = __s;
                    *&buf[12] = 2080;
                    *&buf[14] = v36;
                    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "IOCS: IOCSdb: We should only ever have one row %s %s", buf, 0x16u);
                  }
                }

                v64 = 0;
                memset(v63, 0, sizeof(v63));
                v61 = 0u;
                v62 = 0u;
                v59 = 0u;
                v60 = 0u;
                v57 = 0u;
                v58 = 0u;
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v51 = 0u;
                v52 = 0u;
                v49 = 0u;
                v50 = 0u;
                v47 = 0u;
                v48 = 0u;
                memset(buf, 0, sizeof(buf));
                v17 = sqlite3_column_int64(ppStmt, 0);
                v18 = sqlite3_column_int64(ppStmt, 1);
                v19 = sqlite3_column_bytes(ppStmt, 2);
                v20 = sqlite3_column_blob(ppStmt, 2);
                v21 = sqlite3_column_bytes(ppStmt, 3);
                v22 = sqlite3_column_blob(ppStmt, 3);
                v23 = *(v8 + 128) + v17;
                *&buf[8] = *(v8 + 136) + v18;
                *buf = v23;
                if (v20 && v19 == 280)
                {
                  if (v22 && v21 == 64)
                  {
                    v24 = 0;
                    v26 = &buf[16];
                    v25 = v8 + 144;
                    do
                    {
                      for (i = 0; i != 28; i += 4)
                      {
                        *&v26[i] = *&v20[i] + *(v25 + i);
                      }

                      ++v24;
                      v26 += 28;
                      v20 += 28;
                      v25 += 28;
                    }

                    while (v24 != 10);
                    for (j = 0; j != 64; j += 4)
                    {
                      *(v63 + j + 8) = *&v22[j] + *(v8 + 424 + j);
                    }

                    ++v38;
                    sub_10000325C(buf, __s, v36);
                  }

                  else
                  {
                    v30 = oslog;
                    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                    {
                      sub_100009210(&v40, v41, v30);
                    }
                  }
                }

                else
                {
                  v29 = oslog;
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                  {
                    sub_100009250(&v42, v43, v29);
                  }
                }
              }

              while (sqlite3_step(ppStmt) == 100);
              v5 = v34;
              a3 = v33;
              a2 = v32;
              if (!v38)
              {
LABEL_42:
                sub_10000325C((v8 + 128), __s, v36);
              }
            }

            v7 = context;
          }

          else if (!a3)
          {
            v9 = v7;
            PrintIOCSStoreBufferEntry(a1 + v6);
            v7 = v9;
          }

          objc_autoreleasePoolPop(v7);
          v6 = v6 + 488;
        }

        while (v6 < a2);
      }
    }
  }

  else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_1000091A8();
  }

  objc_autoreleasePoolPop(v5);
}

void IOCSPeriodicSyncToCA(_xpc_activity_s *a1)
{
  fetch_and_process_iocs_store_buffer(4, 1);
  if (a1)
  {
    if (xpc_activity_should_defer(a1))
    {
      v2 = xpc_activity_set_state(a1, 3);
      v3 = oslog;
      v4 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
      if (v2)
      {
        if (!v4)
        {
          return;
        }

        LOWORD(v25[0]) = 0;
        v5 = "IOCS: deferring XPC activity";
      }

      else
      {
        if (!v4)
        {
          return;
        }

        LOWORD(v25[0]) = 0;
        v5 = "IOCS: unable to defer XPC activity, abandon";
      }

LABEL_33:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, v25, 2u);
      return;
    }

    fetch_and_process_iocs_store_buffer(1, 1);
    if (xpc_activity_should_defer(a1))
    {
      v6 = xpc_activity_set_state(a1, 3);
      v3 = oslog;
      v7 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (!v7)
        {
          return;
        }

        LOWORD(v25[0]) = 0;
        v5 = "IOCS: deferring XPC activity";
      }

      else
      {
        if (!v7)
        {
          return;
        }

        LOWORD(v25[0]) = 0;
        v5 = "IOCS: unable to defer XPC activity, abandon";
      }

      goto LABEL_33;
    }
  }

  else
  {
    fetch_and_process_iocs_store_buffer(1, 1);
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(qword_1000146E0, "SELECT writeSource, fileExtension, uncompressedBytes, compressedBytes,bufferSizeCompressionDist, blockCompressedSizeDist FROM IOCSTable", -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100009290();
    }

    sqlite3_finalize(ppStmt);
  }

  else
  {
    v8 = malloc_type_malloc(0xBuLL, 0x4774C7ECuLL);
    v9 = oslog;
    if (v8)
    {
      v10 = v8;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending IOCS Data to CA, SELECT query succeeded", v25, 2u);
      }

      v11 = 0;
      while (sqlite3_step(ppStmt) == 100)
      {
        v12 = sqlite3_column_text(ppStmt, 0);
        v13 = sqlite3_column_text(ppStmt, 1);
        v14 = sqlite3_column_int64(ppStmt, 2);
        v15 = sqlite3_column_int64(ppStmt, 3);
        v16 = sqlite3_column_blob(ppStmt, 4);
        v17 = sqlite3_column_blob(ppStmt, 5);
        if (v14 >= 0xA000)
        {
          v18 = v17;
          v19 = 0;
          v20 = 0uLL;
          do
          {
            v20 = vaddq_s32(*&v17[v19], v20);
            v19 += 16;
          }

          while (v19 != 64);
          if (vaddvq_s32(v20) >= 10)
          {
            strncpy(v10, v13, 0xAuLL);
            v10[10] = 0;
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_1000033CC;
            v25[3] = &unk_100010810;
            v25[4] = v15;
            v25[5] = v14;
            v25[6] = v10;
            v25[7] = v12;
            v25[8] = v18;
            v25[9] = v16;
            analytics_send_event_lazy();
            ++v11;
            if (a1 && !(v11 % 0xC8) && xpc_activity_should_defer(a1))
            {
              v21 = xpc_activity_set_state(a1, 3);
              v22 = oslog;
              v23 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
              if (v21)
              {
                if (!v23)
                {
                  break;
                }

                *buf = 67109120;
                v28 = v11;
                v24 = "IOCS: deferring XPC activity after processing %d rows";
              }

              else
              {
                if (!v23)
                {
                  break;
                }

                *buf = 67109120;
                v28 = v11;
                v24 = "IOCS: unable to defer XPC activity, abandon after %d rows";
              }

              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 8u);
              break;
            }

            if (v11 == 10001)
            {
              break;
            }
          }
        }
      }

      free(v10);
    }

    else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100009314();
    }
  }

  IOCSDeleteAllRowsSQLDB();
}

uint64_t EnableIOCSCollection()
{
  v6 = 0;
  v5 = 4;
  v4 = 1;
  v0 = 0xFFFFFFFFLL;
  if (!sysctlbyname("vfs.io_compression_stats_enable", &v6, &v5, &v4, 4uLL))
  {
    v1 = sysctlbyname("vfs.io_compression_stats_enable", &v6, &v5, 0, 0);
    if (v6)
    {
      v2 = v1 == 0;
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v0;
}

uint64_t DisableIOCSCollection()
{
  v6 = 0;
  v5 = 4;
  v4 = 0;
  v0 = 0xFFFFFFFFLL;
  if (!sysctlbyname("vfs.io_compression_stats_enable", &v6, &v5, &v4, 4uLL))
  {
    v1 = sysctlbyname("vfs.io_compression_stats_enable", &v6, &v5, 0, 0);
    if (v6 != 1 && v1 == 0)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v0;
}

uint64_t GetIOCSCollectionStatus()
{
  v2 = 0;
  v1 = 4;
  if (sysctlbyname("vfs.io_compression_stats_enable", &v2, &v1, 0, 0) && os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_100009348();
  }

  return v2;
}

id IOCSTaskingEnabled()
{
  v0 = OSAGetDATaskingValue();
  if (!v0 || (result = [v0 intValue], result != 1))
  {
    result = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10000937C();
      return 0;
    }
  }

  return result;
}

void sub_100002FD4(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {
    if (IOCSTaskingEnabled())
    {
      v3 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IOCS: Tasking enabled", buf, 2u);
      }

      if (GetIOCSCollectionStatus() == 1)
      {
        v4 = oslog;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IOCS: data collection has been running. Syncing data to CA", v10, 2u);
        }

        InstallIOCSNotificationHandler();
        IOCSPeriodicSyncToCA(a2);
      }

      else
      {
        v6 = EnableIOCSCollection();
        v7 = oslog;
        if (v6 == 1)
        {
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IOCS: data collection has not been running. Installing IOCS notification handler", v9, 2u);
          }

          InstallIOCSNotificationHandler();
        }

        else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000093B0();
        }
      }
    }

    else if (GetIOCSCollectionStatus() == 1)
    {
      v5 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IOCS: tasking is turned off, disabling data collection", v8, 2u);
      }

      DisableIOCSCollection();
    }
  }
}

void sub_10000317C(id a1, LSBundleProxy *a2, BOOL *a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [(LSBundleProxy *)a2 bundleIdentifier];
  if ([(LSBundleProxy *)a2 dataContainerURL])
  {
    v6 = [objc_msgSend(-[LSBundleProxy dataContainerURL](a2 "dataContainerURL")];
    [ContainerToBundleIDMap setObject:v5 forKey:v6];
  }

  [-[LSBundleProxy groupContainerURLs](a2 "groupContainerURLs")];

  objc_autoreleasePoolPop(v4);
}

void sub_100003210(id a1, id a2, id a3, BOOL *a4)
{
  v5 = [objc_msgSend(a3 "path")];
  v6 = ContainerToBundleIDMap;

  [v6 setObject:a2 forKey:v5];
}

uint64_t sub_10000325C(sqlite3_int64 *a1, const char *a2, const char *a3)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(qword_1000146E0, "REPLACE INTO IOCSTable (writeSource,fileExtension,uncompressedBytes,compressedBytes,bufferSizeCompressionDist,blockCompressedSizeDist)  VALUES (?,?,?,?,?,?)", -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000093E4();
    }
  }

  else
  {
    v6 = strlen(a2);
    sqlite3_bind_text(ppStmt, 1, a2, v6, 0xFFFFFFFFFFFFFFFFLL);
    v7 = strlen(a3);
    sqlite3_bind_text(ppStmt, 2, a3, v7, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_int64(ppStmt, 3, *a1);
    sqlite3_bind_int64(ppStmt, 4, a1[1]);
    sqlite3_bind_blob(ppStmt, 5, a1 + 2, 280, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_blob(ppStmt, 6, a1 + 37, 64, 0xFFFFFFFFFFFFFFFFLL);
    if (sqlite3_step(ppStmt) != 101 && os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100009468();
    }
  }

  return sqlite3_finalize(ppStmt);
}

xpc_object_t sub_1000033CC(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "CompressedWriteSize", *(a1 + 32));
  xpc_dictionary_set_uint64(v2, "UncompressedWriteSize", *(a1 + 40));
  xpc_dictionary_set_string(v2, "FileExtension", *(a1 + 48));
  xpc_dictionary_set_string(v2, "WriteSource", *(a1 + 56));
  xpc_dictionary_set_data(v2, "BlockCompressionHistogram", *(a1 + 64), 0x40uLL);
  xpc_dictionary_set_data(v2, "BufferSizeCompressionHistogram", *(a1 + 72), 0x118uLL);
  return v2;
}

void sub_100003498(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000034C0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

int main(int argc, const char **argv, const char **envp)
{
  is_darwinos = os_variant_is_darwinos();
  if (argc < 2 || (v6 = getopt(argc, argv, "fi") << 24, v6 == -16777216))
  {
    syslog(5, "Started");
    v7 = +[NSUserDefaults standardUserDefaults];
    v28[0] = @"NANDNotificationThresholdPerInterval";
    v29[0] = [NSNumber numberWithDouble:10.0];
    v28[1] = @"NANDNotificationThresholdPerDay";
    v29[1] = [NSNumber numberWithDouble:100.0];
    v28[2] = @"NANDNotificationTimeout";
    v29[2] = [NSNumber numberWithDouble:0.0];
    [(NSUserDefaults *)v7 registerDefaults:[NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3]];
    v8 = isInternalBuild();
    v9 = isTaskingEnabled(@"NANDUsageDialogActive");
    v10 = is_darwinos | ~(v8 & _os_feature_enabled_impl() & (v9 != 0));
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v11)
      {
        v12 = "True";
        if (v9)
        {
          v13 = "True";
        }

        else
        {
          v13 = "False";
        }

        *buf = 136315650;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        if (!is_darwinos)
        {
          v12 = "False";
        }

        *&buf[14] = v12;
        *&buf[22] = 2080;
        v31 = "False";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats :: nand_longetivity_daemon feature not enabled. isTaskingEnabled: %s, isWeakLinked: %s, nandDaemonEnabled: %s", buf, 0x20u);
      }
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats :: Registering nand_longetivity_daemon", buf, 2u);
      }

      [(NSUserDefaults *)v7 doubleForKey:@"NANDNotificationThresholdPerInterval"];
      v15 = v14;
      [(NSUserDefaults *)v7 doubleForKey:@"NANDNotificationThresholdPerDay"];
      v17 = v16;
      [(NSUserDefaults *)v7 doubleForKey:@"NANDNotificationTimeout"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats :: In nand_longetivity_daemon. Registering nand stats info daemon\n", buf, 2u);
      }

      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x2020000000;
      v27 = 0;
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x2020000000;
      v25[3] = 0;
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x2020000000;
      v24[3] = 0;
      if (!qword_1000146E8)
      {
        v18 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100003D68;
        v31 = &unk_1000108E8;
        v32 = v26;
        v33 = v25;
        v34 = v24;
        [v18 setTransitionHandler:buf];
        qword_1000146E8 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v18];
      }

      v19 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v19, XPC_ACTIVITY_REPEATING, 1);
      xpc_dictionary_set_BOOL(v19, XPC_ACTIVITY_ALLOW_BATTERY, 1);
      xpc_dictionary_set_int64(v19, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
      xpc_dictionary_set_string(v19, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000047EC;
      handler[3] = &unk_100010910;
      handler[5] = v15;
      handler[6] = v17;
      handler[4] = v26;
      xpc_activity_register("com.apple.fs_task_scheduler.nandstats", v19, handler);
      _Block_object_dispose(v24, 8);
      _Block_object_dispose(v25, 8);
      _Block_object_dispose(v26, 8);
    }

    xpc_activity_register("com.apple.fs_task_scheduler", XPC_ACTIVITY_CHECK_IN, &stru_100010930);
    if ((is_darwinos & 1) == 0 && IOCSFeatureEnabled())
    {
      v20 = os_log_create("com.apple.FSTaskScheduler.IOCS", "main");
      oslog = v20;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "IOCS feature is enabled, setting up IOCS periodic job", buf, 2u);
      }

      ScheduleIOCSTask();
    }

    CFRunLoopRun();
    NSLog(@"FSTaskScheduler :: CALLING FROM END OF RUNLOOP");
    if (qword_1000146E8)
    {
      [qword_1000146E8 invalidate];
      qword_1000146E8 = 0;
    }
  }

  else
  {
    do
    {
      v21 = v6 >> 24;
      if (v21 != 102)
      {
        if (v21 == 105)
        {
          if (IOCSFeatureEnabled())
          {
            if (GetIOCSCollectionStatus() == 1)
            {
              puts("Force syncing IOCS data to CA");
              IOCSPeriodicSyncToCA(0);
            }

            else
            {
              if (EnableIOCSCollection() == 1)
              {
                InstallIOCSNotificationHandler();
                dispatch_main();
              }

              fwrite("Failed to enabled IOCS collection\n", 0x22uLL, 1uLL, __stderrp);
            }
          }

          else
          {
            puts("IOCompressionStats disabled. Enabled the feature flag.");
          }

          exit(0);
        }

        puts("Usage: FSTaskScheduler [-ai]");
        exit(1);
      }

      v6 = getopt(argc, argv, "fi") << 24;
    }

    while (v6 != -16777216);
    sub_100003B18();
  }

  return 0;
}

void sub_100003ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_100003B18()
{
  v0 = CopyFSInfo();
  storage_capacity = get_storage_capacity();
  if (v0)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100003BA4;
    v2[3] = &unk_100010878;
    v2[4] = storage_capacity;
    [(__CFDictionary *)v0 enumerateKeysAndObjectsUsingBlock:v2];
  }
}

id sub_100003BA4(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    a2 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  result = [v6 mutableCopy];
  if (a2)
  {
    v8 = result == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = result;
    [result enumerateKeysAndObjectsUsingBlock:&stru_100010898];
    v10 = *(a1 + 32);
    if (v10)
    {
      [v9 setValue:v10 forKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "capacityGB")}];
    }

    return AnalyticsSendEventLazy();
  }

  return result;
}

void sub_100003CC0(id a1, id a2, id a3, BOOL *a4)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    a2 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    a3 = 0;
  }

  if (a2)
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = buildAggDKey(a2);
    v8 = [a3 longLongValue];

    _ADClientSetValueForScalarKey(v7, v8);
  }
}

void sub_100003D68(void *a1, uint64_t a2, void *a3)
{
  if (*(*(a1[4] + 8) + 24) != 1)
  {
    return;
  }

  v4 = a1;
  if ((CRUOpenSQLDB() & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats - Exception ::::: Unable to open SQL database\n", buf, 2u);
    }

    return;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v5 = [a3 elements];
  v6 = [v5 countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = &CRIsAppleInternal_ptr;
  v9 = *v65;
  v10 = SBSDisplayLayoutElementHomeScreenIdentifier;
  v52 = SBSDisplayLayoutElementHomeScreenIdentifier;
  v53 = *v65;
  v50 = v4;
  v49 = v5;
  while (2)
  {
    v11 = 0;
    v51 = v7;
    do
    {
      if (*v65 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v64 + 1) + 8 * v11);
      if (![objc_msgSend(v12 "identifier")])
      {
        if ([objc_msgSend(v12 "identifier")])
        {
          goto LABEL_58;
        }

        pStmt = 0;
        v34 = sqlite3_prepare_v2(CRUdb, "SELECT bundleID, logicalWrites FROM NANDStats WHERE presentDialog & 0x1 = 0x1", -1, &pStmt, 0);
        if (v34)
        {
          v42 = v34;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v43 = sqlite3_errmsg(CRUdb);
            *buf = 67109378;
            *v70 = v42;
            *&v70[4] = 2080;
            *&v70[6] = v43;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats - Exception ::::: SQL Select failure %d %s\n", buf, 0x12u);
          }

          sqlite3_finalize(pStmt);
          CRUCloseSQLDB();
          return;
        }

        if (sqlite3_step(pStmt) != 100 || !sqlite3_data_count(pStmt))
        {
          sqlite3_finalize(pStmt);
          CRUCloseSQLDB();
          *(*(v4[4] + 8) + 24) = 0;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats: INFO!! Displayed notifications for all apps. Invalidating mainDisplayLayoutMonitor", buf, 2u);
          }

          if (qword_1000146E8)
          {
            [qword_1000146E8 invalidate];
            qword_1000146E8 = 0;
          }

          return;
        }

        sqlite3_reset(pStmt);
        while (sqlite3_step(pStmt) == 100)
        {
          v35 = sqlite3_column_text(pStmt, 0);
          v36 = sqlite3_column_int64(pStmt, 1);
          if ([objc_msgSend(v12 "identifier")])
          {
            v37 = *(v4[5] + 8);
            v38 = *(v37 + 24);
            if (v38)
            {
              free(v38);
              *(*(v4[5] + 8) + 24) = 0;
              *(*(v4[6] + 8) + 24) = 0;
              v37 = *(v4[5] + 8);
            }

            *(v37 + 24) = strdup(v35);
            *(*(v4[6] + 8) + 24) = v36;
            v8 = &CRIsAppleInternal_ptr;
            break;
          }
        }

        sqlite3_finalize(pStmt);
        goto LABEL_52;
      }

      if (!*(*(v4[5] + 8) + 24))
      {
        goto LABEL_58;
      }

      pStmt = 0;
      v13 = [[LSApplicationRecord alloc] initWithBundleIdentifier:objc_msgSend(v8[176] allowPlaceholder:"stringWithUTF8String:" error:{*(*(v4[5] + 8) + 24)), 0, &pStmt}];
      if (!v13)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_58;
        }

        v39 = *(*(v4[5] + 8) + 24);
        *buf = 136315394;
        *v70 = v39;
        *&v70[8] = 2112;
        *&v70[10] = pStmt;
        v40 = "NANDStats - Exception ::::: Attempt to retrieve application record for bundle identifier %s failed with error: %@\n";
        v41 = 22;
        goto LABEL_57;
      }

      v14 = [objc_msgSend(v13 "localizedName")];
      v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      v55 = v14;
      if (v14)
      {
        if (v15)
        {
          v16 = *(*(v4[5] + 8) + 24);
          *buf = 136315394;
          *v70 = v16;
          *&v70[8] = 2080;
          *&v70[10] = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats: localizedName for bundleID: %s is %s\n", buf, 0x16u);
        }

        v17 = [+[NSFileManager defaultManager](NSFileManager URLForDirectory:"URLForDirectory:inDomain:appropriateForURL:create:error:" inDomain:5 appropriateForURL:8 create:0 error:0, 0];
        if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats - Exception ::::: Failed to find path to System-domain Library directory", buf, 2u);
        }

        v18 = [NSURL fileURLWithPath:@"Extensions/IONVMeFamily.kext" isDirectory:0 relativeToURL:v17];
        if (![(NSURL *)v18 checkResourceIsReachableAndReturnError:0]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats - Exception ::::: IONVMeFamily kext bundle file not found", buf, 2u);
        }

        v19 = [NSBundle bundleWithURL:v18];
        obj = +[NSBundle preferredLocalizationsFromArray:forPreferences:](NSBundle, "preferredLocalizationsFromArray:forPreferences:", [(NSBundle *)v19 localizations], +[NSLocale preferredLanguages]);
        if (v19 && ([(NSBundle *)v19 _cfBundle], v59 = 0u, v60 = 0u, v61 = 0u, v62 = 0u, (v20 = [(NSArray *)obj countByEnumeratingWithState:&v59 objects:v68 count:16]) != 0))
        {
          v21 = v20;
          v22 = *v60;
LABEL_23:
          v23 = 0;
          while (1)
          {
            if (*v60 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v59 + 1) + 8 * v23);
            v25 = CFBundleCopyLocalizedStringForLocalization();
            v26 = [NSString stringWithFormat:CFBundleCopyLocalizedStringForLocalization(), [NSString stringWithUTF8String:v55]];
            if (v25 && v26 != 0)
            {
              break;
            }

            if (v21 == ++v23)
            {
              v28 = v26;
              v21 = [(NSArray *)obj countByEnumeratingWithState:&v59 objects:v68 count:16];
              if (v21)
              {
                goto LABEL_23;
              }

              if (v25 && v28)
              {
                break;
              }

              goto LABEL_35;
            }
          }
        }

        else
        {
LABEL_35:
          [NSString stringWithFormat:@"%@ is writing relatively large amounts of data to internal storage. This may cause additional NAND wear.", [NSString stringWithUTF8String:v55]];
        }

        v29 = time(0);
        ppStmt[1] = _NSConcreteStackBlock;
        ppStmt[2] = 3221225472;
        v4 = v50;
        ppStmt[3] = sub_100004700;
        ppStmt[4] = &unk_1000108C0;
        v57 = xmmword_10000A780;
        ppStmt[5] = *(v50 + 6);
        v58 = v55;
        AnalyticsSendEventLazy();
        ppStmt[0] = 0;
        v30 = sqlite3_prepare_v2(CRUdb, "UPDATE NANDStats SET presentDialog = ?, dialogTimestamp = ?, dialogInterval = CASE WHEN presentDialog >> 8 & 0x1 == 0x1 AND dialogInterval >= 25 THEN 30 WHEN presentDialog >> 8 & 0x1 == 0x1 AND dialogInterval < 25 THEN dialogInterval * 5 ELSE dialogInterval END WHERE bundleID = ?", -1, ppStmt, 0);
        if (v30)
        {
          v44 = v30;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v45 = sqlite3_errmsg(CRUdb);
            *buf = 67109378;
            *v70 = v44;
            *&v70[4] = 2080;
            *&v70[6] = v45;
            v46 = "NANDStats - Exception ::::: SQL Update prepare failure %d %s\n";
            goto LABEL_74;
          }

LABEL_75:
          sqlite3_finalize(ppStmt[0]);
          return;
        }

        sqlite3_bind_int64(ppStmt[0], 1, 0);
        sqlite3_bind_int64(ppStmt[0], 2, v29);
        v31 = strlen(*(*(v50[5] + 8) + 24));
        sqlite3_bind_text(ppStmt[0], 3, *(*(v50[5] + 8) + 24), v31, 0);
        v32 = sqlite3_step(ppStmt[0]);
        if (v32 != 101)
        {
          v47 = v32;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v48 = sqlite3_errmsg(CRUdb);
            *buf = 67109378;
            *v70 = v47;
            *&v70[4] = 2080;
            *&v70[6] = v48;
            v46 = "NANDStats - Exception ::::: SQL Update step failure %d %s\n";
LABEL_74:
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v46, buf, 0x12u);
          }

          goto LABEL_75;
        }

        sqlite3_finalize(ppStmt[0]);
        v33 = *(*(v50[5] + 8) + 24);
        if (v33)
        {
          free(v33);
          *(*(v50[5] + 8) + 24) = 0;
          *(*(v50[6] + 8) + 24) = 0;
        }

        v5 = v49;
        v7 = v51;
        v8 = &CRIsAppleInternal_ptr;
LABEL_52:
        v10 = v52;
        v9 = v53;
        goto LABEL_58;
      }

      if (v15)
      {
        *buf = 0;
        v40 = "NANDStats - Exception ::::: Unable to derive appName from localizedName\n";
        v41 = 2;
LABEL_57:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v40, buf, v41);
      }

LABEL_58:
      v11 = v11 + 1;
    }

    while (v11 != v7);
    v7 = [v5 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }
}

NSDictionary *sub_100004700(void *a1)
{
  v3[0] = @"dismiss";
  v4[0] = [NSNumber numberWithUnsignedLongLong:a1[5]];
  v3[1] = @"learnMore";
  v4[1] = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v3[2] = @"logicalWrites";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(*(a1[4] + 8) + 24)];
  v3[3] = @"application";
  v4[3] = [NSString stringWithUTF8String:a1[7]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_1000047EC(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) != 2)
  {
    return;
  }

  v2 = &selRef_URLForDirectory_inDomain_appropriateForURL_create_error_;
  if (!qword_1000146E8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats :: mainDisplayLayoutMonitor is invalidated. Restarting the runloop.", buf, 2u);
    }

    Main = CFRunLoopGetMain();
    CFRetain(Main);
    CFRunLoopStop(Main);
    CFRelease(Main);
  }

  if ((CRUOpenSQLDB() & 1) == 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "NANDStats - Exception ::::: Unable to open SQL database\n";
    goto LABEL_15;
  }

  if (!CRUCreateTable())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sqlite3_errmsg(CRUdb);
      *buf = 136315138;
      *v71 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats -  Exception ::::: Unable to create NANDStats table %s\n", buf, 0xCu);
    }

    CRUCloseSQLDB();
    goto LABEL_19;
  }

  ppStmt = 0;
  v4 = sqlite3_prepare_v2(CRUdb, "SELECT bundleID, dialogTimestamp, dialogInterval FROM NANDStats", -1, &ppStmt, 0);
  if (!v4)
  {
    v52 = objc_alloc_init(NSMutableDictionary);
    v53 = objc_alloc_init(NSMutableDictionary);
    v11 = objc_alloc_init(NSMutableDictionary);
    v55 = objc_alloc_init(NSMutableDictionary);
    v51 = objc_alloc_init(NSMutableDictionary);
    while (sqlite3_step(ppStmt) == 100)
    {
      v12 = sqlite3_column_text(ppStmt, 0);
      v13 = sqlite3_column_int64(ppStmt, 1);
      v14 = sqlite3_column_int(ppStmt, 2);
      if (v13)
      {
        v15 = v14;
        NSLog(@"NANDStats: Apps with positive dialog timestamp [bundleId: %s - dialogTimestamp: %llu - Interval: %u]", v12, v13, v14);
        [v11 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v13), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v12)}];
        [v53 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", v15), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v12)}];
      }

      [v55 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 0), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v12)}];
    }

    sqlite3_finalize(ppStmt);
    v77 = @"LogicalWriteThresholdPerDay";
    v78 = [NSNumber numberWithDouble:*(a1 + 40) * 1073741820.0];
    [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    v16 = PLQueryRegistered();
    v17 = [v16 objectForKeyedSubscript:@"lastUpgradeTimestamp"];
    v18 = [v16 objectForKeyedSubscript:@"responseStartTimestamp"];
    NSLog(@"NANDStats: lastUpgradeTimestamp = %@ responseStartTimestamp = %@", v17, v18);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = [v16 objectForKeyedSubscript:@"queryResultsPerDay"];
    v48 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
    if (v48)
    {
      v19 = 0;
      v20 = 0;
      v49 = *v66;
      v45 = v18;
      v46 = v17;
      do
      {
        v21 = 0;
        do
        {
          if (*v66 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v50 = v21;
          v22 = *(*(&v65 + 1) + 8 * v21);
          v23 = 86400 * v19 + [v18 unsignedIntValue];
          if (v23 < [v17 unsignedIntValue] || v23 >= objc_msgSend(v17, "unsignedIntValue") + 259200)
          {
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v24 = [v22 countByEnumeratingWithState:&v61 objects:v75 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v62;
              while (2)
              {
                for (i = 0; i != v25; i = i + 1)
                {
                  if (*v62 != v26)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v28 = *(*(&v61 + 1) + 8 * i);
                  [v55 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), v28}];
                  v29 = [objc_msgSend(v22 objectForKeyedSubscript:{v28), "unsignedLongLongValue"}];
                  if ([v11 objectForKey:v28] && objc_msgSend(objc_msgSend(v11, "objectForKey:", v28), "unsignedLongLongValue") >= v23)
                  {
                    NSLog(@"NANDStats: INFO!! BundleId : %@ already reported for day %lu with timestamp %llu", v28, v19, v23);
                  }

                  else
                  {
                    v30 = sub_100005158(v19, v28, v29, v23, v52, v11, v53, v51, *(a1 + 48));
                    if (v30 == 2)
                    {
                      v31 = 1;
                      goto LABEL_52;
                    }

                    v20 = (v30 | v20) != 0;
                  }
                }

                v25 = [v22 countByEnumeratingWithState:&v61 objects:v75 count:16];
                if (v25)
                {
                  continue;
                }

                break;
              }
            }
          }

          else
          {
            NSLog(@"NANDStats: ALERT!! OS upgrade occurred. Ignoring current day with number %lu : %llu. Upgrade timestamp : %@", v19, v23, v17);
          }

          ++v19;
          v21 = v50 + 1;
          v18 = v45;
          v17 = v46;
        }

        while ((v50 + 1) != v48);
        v48 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
      }

      while (v48);
    }

    else
    {
      v20 = 0;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v32 = [v55 countByEnumeratingWithState:&v57 objects:v74 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v58;
      while (2)
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v58 != v34)
          {
            objc_enumerationMutation(v55);
          }

          v36 = *(*(&v57 + 1) + 8 * j);
          if (([objc_msgSend(v55 objectForKey:{v36), "BOOLValue"}] & 1) == 0)
          {
            NSLog(@"NANDStats: Deleting app %@ as it may be uninstalled", v36);
            v37 = [v36 UTF8String];
            pStmt = 0;
            v38 = sqlite3_prepare_v2(CRUdb, "DELETE FROM NANDStats WHERE bundleID = ?", -1, &pStmt, 0);
            if (v38)
            {
              v43 = v38;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v44 = sqlite3_errmsg(CRUdb);
                *buf = 67109378;
                *v71 = v43;
                *&v71[4] = 2080;
                *&v71[6] = v44;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats - Exception ::::: SQL delete failure %d %s\n", buf, 0x12u);
              }

              v7 = pStmt;
              goto LABEL_12;
            }

            v39 = strlen(v37);
            sqlite3_bind_text(pStmt, 1, v37, v39, 0);
            v40 = sqlite3_step(pStmt);
            if (v40 != 101)
            {
              v41 = v40;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v42 = sqlite3_errmsg(CRUdb);
                *buf = 136315650;
                *v71 = v37;
                *&v71[8] = 1024;
                *&v71[10] = v41;
                v72 = 2080;
                v73 = v42;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats - Exception ::::: SQL Delete step failure for bundleID: %s [%d %s]\n", buf, 0x1Cu);
              }
            }

            sqlite3_finalize(pStmt);
          }
        }

        v33 = [v55 countByEnumeratingWithState:&v57 objects:v74 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    v31 = 0;
LABEL_52:

    if (v31 && CRUdb)
    {
      sqlite3_file_control(CRUdb, 0, 101, 0);
    }

    CRUCloseSQLDB();
    v2 = &selRef_URLForDirectory_inDomain_appropriateForURL_create_error_;
    if (v20)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v8 = "NANDStats: INFO!! isNANDStatsReporting set to true";
LABEL_15:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      return;
    }

LABEL_19:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats: INFO!! isNANDStatsReporting set to false. Invalidating FBSDisplayLayoutMonitor", buf, 2u);
    }

    v10 = v2[221];
    if (v10)
    {
      [v10 invalidate];
      v2[221] = 0;
    }

    return;
  }

  v5 = v4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sqlite3_errmsg(CRUdb);
    *buf = 67109378;
    *v71 = v5;
    *&v71[4] = 2080;
    *&v71[6] = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NANDStats - Exception ::::: SQL Select failure %d %s\n", buf, 0x12u);
  }

  v7 = ppStmt;
LABEL_12:
  sqlite3_finalize(v7);
  CRUCloseSQLDB();
}

uint64_t sub_100005158(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, void *a5, void *a6, void *a7, void *a8, double a9)
{
  if (a9 * 1073741820.0 >= a3)
  {
    NSLog(@"NANDStats: INFO!! BundleId : %@ with writes: %llu being counted towards NAND dialog reporting for day %lu", a2, a3, a1);
    if ([a5 objectForKey:a2])
    {
      v21 = [objc_msgSend(a5 objectForKey:{a2), "unsignedIntValue"}] + 1;
      [a5 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", v21), a2}];
      [a8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", objc_msgSend(objc_msgSend(a8, "objectForKey:", a2), "unsignedLongLongValue") + a3), a2}];
      if (v21 >= 5)
      {
        if (![a7 objectForKey:a2] || (v22 = objc_msgSend(objc_msgSend(a7, "objectForKey:", a2), "unsignedIntValue"), objc_msgSend(objc_msgSend(a6, "objectForKey:", a2), "unsignedLongLongValue") + 86400 * v22 < a4))
        {
          [objc_msgSend(a8 objectForKey:{a2), "unsignedLongLongValue"}];
          v12 = a2;
          v13 = a3;
          v14 = 1;
          goto LABEL_3;
        }

        NSLog(@"NANDStats: INFO!! Not reporting bundleId : %@ for day %lu. Too frequent since last dialog was reported.", a2, a1);
      }
    }

    else
    {
      [a5 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", 1), a2}];
      [a8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", a3), a2}];
    }

    return 0;
  }

  NSLog(@"NANDStats: INFO!! BundleId : %@ has exceeded the day %lu budget", a2, a1);
  v12 = a2;
  v13 = a3;
  v14 = 0;
LABEL_3:

  return sub_100005370(v12, v13, v14);
}

uint64_t sub_100005370(void *a1, sqlite3_int64 a2, int a3)
{
  ppStmt = 0;
  v6 = sqlite3_prepare_v2(CRUdb, "REPLACE INTO NANDStats(bundleID, presentDialog, logicalWrites) VALUES(?, ?, ?)", -1, &ppStmt, 0);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sqlite3_errmsg(CRUdb);
      *buf = 67109378;
      v20 = v7;
      v21 = 2080;
      v22 = v8;
      v9 = "NANDStats - Exception ::::: sqlite insert prepare failed %d %s\n";
LABEL_10:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, buf, 0x12u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v10 = [a1 UTF8String];
  v11 = strlen(v10);
  v12 = 1;
  sqlite3_bind_text(ppStmt, 1, v10, v11, 0);
  if (a3)
  {
    v13 = 257;
  }

  else
  {
    v13 = 1;
  }

  sqlite3_bind_int64(ppStmt, 2, v13);
  sqlite3_bind_int64(ppStmt, 3, a2);
  v14 = sqlite3_step(ppStmt);
  if (v14 != 101)
  {
    v15 = v14;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sqlite3_errmsg(CRUdb);
      *buf = 67109378;
      v20 = v15;
      v21 = 2080;
      v22 = v16;
      v9 = "NANDStats - Exception ::::: sqlite insert failed %d %s\n";
      goto LABEL_10;
    }

LABEL_11:
    v12 = 2;
  }

  sqlite3_finalize(ppStmt);
  return v12;
}

void sub_10000553C(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {
    v2 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (&_SBSGetScreenLockStatus)
    {
      if (v2)
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "FSTaskScheduler :: Sending data to CA", v4, 2u);
      }

      sub_100003B18();
    }

    else if (v2)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "FSTaskScheduler :: No SpringBoardServices framework. Not sending FS Stats to CA.", buf, 2u);
    }

    Main = CFRunLoopGetMain();
    CFRetain(Main);
    CFRunLoopStop(Main);
    CFRelease(Main);
  }
}

_DWORD *(*iocompressionstats_notification_server_routine(uint64_t a1))(_DWORD *result, uint64_t a2)
{
  if (*(a1 + 20) == 5600)
  {
    return sub_100005630;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_100005630(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    v4 = result[8];
    result = iocompressionstats_notification();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t iocompressionstats_notification_server(_DWORD *a1, uint64_t a2)
{
  v3 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v4 = a1[5] + 100;
  *(a2 + 8) = v3;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v4;
  if (a1[5] == 5600)
  {
    if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = NDR_record;
    }

    else
    {
      v5 = a1[3];
      v6 = a1[8];
      *(a2 + 32) = iocompressionstats_notification();
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t FSDConnect(const char *a1)
{
  *mainPort = 0;
  if (IOMainPort(0, &mainPort[1]))
  {
    warnx("IOMasterPort failed");
  }

  else
  {
    v2 = IOServiceMatching(a1);
    if (v2)
    {
      if (IOServiceGetMatchingServices(mainPort[1], v2, mainPort))
      {
        warnx("IOServiceGetMatchingServices failed");
      }

      else
      {
        fsdService = IOIteratorNext(mainPort[0]);
        IOObjectRelease(mainPort[0]);
        if (fsdService)
        {
          if (!IOServiceOpen(fsdService, mach_task_self_, 0, &fsdConnection))
          {
            return 1;
          }

          warnx("IOServiceOpen failed for class '%s'");
        }

        else
        {
          warnx("No %s instance found");
        }
      }
    }

    else
    {
      warnx("IOServiceMatching failed for %s");
    }
  }

  return 0;
}

void FSDDisconnect()
{
  if (fsdConnection && IOServiceClose(fsdConnection))
  {
    warnx("IOServiceClose failed");
  }

  fsdConnection = 0;
}

uint64_t GetDiskObject(const char *a1)
{
  iterator = 0;
  memset(name, 0, 128);
  v2 = 0;
  if (IORegistryEntryCreateIterator(fsdService, "IOService", 0, &iterator))
  {
    v3 = "IORegistryEntryCreateIterator failed";
  }

  else
  {
    v3 = "IORegistryEntryGetName failed";
    while (1)
    {
      if (v2)
      {
        IOObjectRelease(v2);
      }

      v2 = IOIteratorNext(iterator);
      if (IORegistryEntryGetName(v2, name))
      {
        break;
      }

      if (!strcmp(name, a1))
      {
        goto LABEL_7;
      }
    }
  }

  warnx(v3);
LABEL_7:
  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  return v2;
}

uint64_t FSDGetInfo(const char *a1, int a2)
{
  if (a2)
  {
    result = sub_100005B58(fsdService, "NAND Controller");
    if (!result)
    {
      return result;
    }

    result = GetDiskObject(a1);
    if (!result)
    {
      return result;
    }

    v4 = result;
    if (!sub_100005B58(result, "NAND Devices"))
    {
      IOObjectRelease(v4);
      return 0;
    }
  }

  else
  {
    result = GetDiskObject(a1);
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  v5 = 0;
  if (sub_100005C1C(v4, @"#ce", &gBankCount, 4) && sub_100005C1C(v4, @"ppn-device", &gPpnDevice, 4) && sub_100005C1C(v4, @"device-readid", &v5, 8) && sub_100005C1C(v4, @"#ce-blocks", &gBlocksPerBank, 4) && sub_100005C1C(v4, @"#block-pages", gPagesPerBlock, 4) && sub_100005C1C(v4, @"#page-bytes", gBytesPerPage, 4))
  {
    gBuses = gBankCount;
    gTotalCAUs = 1;
    gBlocksPerCAU = gBlocksPerBank;
    if (sub_100005C1C(v4, @"ppn-spec-version", &gPpnSpecLong, 8))
    {
      snprintf(gPpnSpec, 0xDuLL, "%llx", gPpnSpecLong);
    }

    gDevID = v5;
  }

  else
  {
    warnx("cannot get basic NAND parameters");
  }

  IOObjectRelease(v4);
  return 1;
}

BOOL sub_100005B58(io_registry_entry_t a1, char *a2)
{
  puts(a2);
  if (*a2)
  {
    v4 = 0;
    do
    {
      putchar(61);
      ++v4;
    }

    while (v4 < strlen(a2));
  }

  properties = 0;
  putchar(10);
  v5 = IORegistryEntryCreateCFProperties(a1, &properties, kCFAllocatorDefault, 0);
  if (v5)
  {
    warnx("IORegistryEntryCreateCFProperties failed");
  }

  else
  {
    TAOCFPrettyPrint(properties);
    CFRelease(properties);
    putchar(10);
  }

  return v5 == 0;
}

BOOL sub_100005C1C(io_registry_entry_t a1, const __CFString *a2, UInt8 *a3, CFIndex a4)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    sub_100006C28(a2);
    return 0;
  }

  v8 = CFProperty;
  v9 = CFGetTypeID(CFProperty);
  if (v9 != CFNumberGetTypeID())
  {
    v11 = CFGetTypeID(v8);
    if (v11 == CFBooleanGetTypeID())
    {
      *a3 = CFBooleanGetValue(v8);
      return 1;
    }

    v13 = CFGetTypeID(v8);
    if (v13 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v8);
      if (Length >= a4)
      {
        v15.length = a4;
      }

      else
      {
        v15.length = Length;
      }

      v15.location = 0;
      CFDataGetBytes(v8, v15, a3);
      return 1;
    }

    v16 = CFGetTypeID(v8);
    if (v16 == CFArrayGetTypeID())
    {
      gControllers = v8;
      return 1;
    }

    sub_100006BC4(v8, v17, a2);
    return 0;
  }

  if (a4 < 5)
  {
    v10 = kCFNumberSInt32Type;
  }

  else
  {
    v10 = kCFNumberSInt64Type;
  }

  return CFNumberGetValue(v8, v10, a3) != 0;
}

uint64_t FSDGetAdvancedInfo(const __CFString *a1, int a2)
{
  existing = 0;
  v4 = IOServiceMatching("IOMedia");
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v4, &existing);
  if (MatchingServices)
  {
    warnx("Failed to find matching IOService for IOMedia. status=0x%x\n", MatchingServices);
  }

  if (!existing)
  {
    return 0;
  }

  v6 = IOIteratorNext(existing);
  if (!v6)
  {
LABEL_83:
    v60 = 0;
    goto LABEL_117;
  }

  v7 = v6;
  while (1)
  {
    v8 = IORegistryEntrySearchCFProperty(v7, "IOService", a1, kCFAllocatorDefault, 3u);
    IOObjectRelease(v7);
    if (v8)
    {
      break;
    }

LABEL_69:
    v7 = IOIteratorNext(existing);
    if (!v7)
    {
      goto LABEL_83;
    }
  }

  v95 = 0;
  v96 = 0;
  v9 = CFGetTypeID(v8);
  ValueAtIndex = v8;
  if (v9 != CFDictionaryGetTypeID())
  {
    v11 = CFGetTypeID(v8);
    if (v11 != CFArrayGetTypeID())
    {
LABEL_68:
      CFRelease(v8);
      goto LABEL_69;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
  }

  Value = CFDictionaryGetValue(ValueAtIndex, @"manufacturer-id");
  if (!Value)
  {
    goto LABEL_68;
  }

  v13 = Value;
  v14 = CFGetTypeID(Value);
  if (v14 == CFStringGetTypeID())
  {
    SystemEncoding = CFStringGetSystemEncoding();
    CStringPtr = CFStringGetCStringPtr(v13, SystemEncoding);
    if (CStringPtr)
    {
      strncpy(gManufacturerID, CStringPtr, 0x15uLL)[20] = 0;
    }

    else
    {
      v18 = CFStringGetSystemEncoding();
      if (CFStringGetCString(v13, gManufacturerID, 21, v18))
      {
        byte_1000141FC = 0;
      }
    }
  }

  else
  {
    v17 = CFGetTypeID(v13);
    if (v17 != CFDataGetTypeID())
    {
      sub_100006C70(v13, v98);
      goto LABEL_68;
    }

    if (CFDataGetLength(v13) != 8)
    {
      warnx("Manufacturer ID not 8 bytes as expected\n");
      goto LABEL_68;
    }

    v100.location = 0;
    v100.length = 8;
    CFDataGetBytes(v13, v100, buffer);
    snprintf(gManufacturerID, 0x15uLL, "0x%llx", *buffer);
    gManufacturerIDLong = *buffer;
  }

  v19 = CFDictionaryGetValue(ValueAtIndex, @"firmware-version");
  if (v19)
  {
    v20 = v19;
    v21 = CFGetTypeID(v19);
    if (v21 == CFStringGetTypeID())
    {
      v22 = CFStringGetSystemEncoding();
      v23 = CFStringGetCStringPtr(v20, v22);
      if (v23)
      {
        strncpy(gFirmwareVersion, v23, 0x11uLL);
      }

      else
      {
        v25 = CFStringGetSystemEncoding();
        if (!CFStringGetCString(v20, gFirmwareVersion, 17, v25))
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v24 = CFGetTypeID(v20);
      if (v24 != CFDataGetTypeID())
      {
        sub_100006CB4(v20, v98);
        goto LABEL_68;
      }

      if (CFDataGetLength(v20) != 16)
      {
        warnx("Firmware Version not the expected size\n");
        goto LABEL_68;
      }

      v101.location = 0;
      v101.length = 16;
      CFDataGetBytes(v20, v101, gFirmwareVersion);
    }

    byte_10001422B = 0;
  }

LABEL_28:
  v26 = CFDictionaryGetValue(ValueAtIndex, @"msp-version");
  if (!v26)
  {
    goto LABEL_36;
  }

  v27 = v26;
  v28 = CFGetTypeID(v26);
  if (v28 != CFStringGetTypeID())
  {
    v31 = CFGetTypeID(v27);
    if (v31 != CFDataGetTypeID())
    {
      sub_100006CF8(v27, v98);
      goto LABEL_68;
    }

    if (CFDataGetLength(v27) != 16)
    {
      warnx("MSP Version not the expected size\n");
      goto LABEL_68;
    }

    v102.location = 0;
    v102.length = 16;
    CFDataGetBytes(v27, v102, gMSPVersion);
    byte_10001423C = 0;
    goto LABEL_35;
  }

  v29 = CFStringGetSystemEncoding();
  v30 = CFStringGetCStringPtr(v27, v29);
  if (v30)
  {
    strncpy(gMSPVersion, v30, 0x11uLL)[16] = 0;
LABEL_35:
    gMSPVersionPresent = 1;
    goto LABEL_36;
  }

  v39 = CFStringGetSystemEncoding();
  if (CFStringGetCString(v27, gMSPVersion, 17, v39))
  {
    gMSPVersionPresent = 1;
    byte_10001423C = 0;
  }

LABEL_36:
  v32 = CFDictionaryGetValue(ValueAtIndex, @"nand-marketing-name");
  if (!v32)
  {
    goto LABEL_47;
  }

  v33 = v32;
  v34 = CFGetTypeID(v32);
  if (v34 == CFStringGetTypeID())
  {
    v35 = CFStringGetSystemEncoding();
    v36 = CFStringGetCStringPtr(v33, v35);
    if (v36)
    {
      strncpy(gMarketingName, v36, 0x15uLL);
    }

    else
    {
      v40 = CFStringGetSystemEncoding();
      if (!CFStringGetCString(v33, gMarketingName, 21, v40))
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    v37 = CFGetTypeID(v33);
    if (v37 != CFDataGetTypeID())
    {
      sub_100006D3C(v33, v98);
      goto LABEL_68;
    }

    Length = CFDataGetLength(v33);
    if (Length > 20)
    {
      warnx("Marketing Name not the expected size\n");
      goto LABEL_68;
    }

    v103.length = Length;
    v103.location = 0;
    CFDataGetBytes(v33, v103, gMarketingName);
  }

  byte_100014251 = 0;
LABEL_47:
  v41 = CFDictionaryGetValue(ValueAtIndex, @"vendor-name");
  if (!v41)
  {
    goto LABEL_54;
  }

  v42 = v41;
  v43 = CFGetTypeID(v41);
  if (v43 != CFStringGetTypeID())
  {
    sub_100006D80(v42, v98);
    goto LABEL_68;
  }

  v44 = CFStringGetSystemEncoding();
  v45 = CFStringGetCStringPtr(v42, v44);
  if (v45)
  {
    gManufacturerPresent = 1;
    strncpy(gManufacturer, v45, 0x1EuLL);
  }

  else
  {
    v46 = CFStringGetSystemEncoding();
    if (!CFStringGetCString(v42, gManufacturer, 30, v46))
    {
      goto LABEL_54;
    }

    gManufacturerPresent = 1;
  }

  byte_10001421A = 0;
LABEL_54:
  v47 = CFDictionaryGetValue(ValueAtIndex, @"controller-unique-id");
  if (!v47)
  {
    goto LABEL_65;
  }

  v48 = v47;
  v49 = CFGetTypeID(v47);
  if (v49 == CFStringGetTypeID())
  {
    v50 = CFStringGetSystemEncoding();
    v51 = CFStringGetCStringPtr(v48, v50);
    if (v51)
    {
      strncpy(&gControllerUID, v51, 0x21uLL);
    }

    else
    {
      v56 = CFStringGetSystemEncoding();
      if (!CFStringGetCString(v48, &gControllerUID, 33, v56))
      {
        goto LABEL_65;
      }
    }
  }

  else
  {
    v52 = CFGetTypeID(v48);
    if (v52 != CFDataGetTypeID())
    {
      sub_100006DC4(v48, v98);
      goto LABEL_68;
    }

    if (CFDataGetLength(v48) != 16)
    {
      warnx("Controller UID not the expected size\n");
      goto LABEL_68;
    }

    v104.location = 0;
    v104.length = 16;
    CFDataGetBytes(v48, v104, v99);
    v53 = 0;
    gControllerUID = 0;
    v54 = &byte_100014253;
    do
    {
      v55 = v99[v53];
      *(v54 - 1) = a0123456789abcd[v55 >> 4];
      *v54 = a0123456789abcd[v55 & 0xF];
      v54 += 2;
      ++v53;
    }

    while (v53 != 16);
  }

  byte_100014272 = 0;
LABEL_65:
  v57 = CFDictionaryGetValue(ValueAtIndex, @"chip-id");
  if (!v57)
  {
    goto LABEL_90;
  }

  v58 = v57;
  v59 = CFGetTypeID(v57);
  if (v59 != CFStringGetTypeID())
  {
    sub_100006E08(v58, v98);
    goto LABEL_68;
  }

  v61 = CFStringGetSystemEncoding();
  v62 = CFStringGetCStringPtr(v58, v61);
  if (v62)
  {
    v63 = strncpy(gChipID, v62, 0xDuLL);
    v63[12] = 0;
LABEL_88:
    if (isPpnDevice(v63))
    {
      gPpnDevice = 1;
    }
  }

  else
  {
    v64 = CFStringGetSystemEncoding();
    if (CFStringGetCString(v58, gChipID, 13, v64))
    {
      byte_1000143DC = 0;
      v63 = gChipID;
      goto LABEL_88;
    }
  }

LABEL_90:
  v65 = CFDictionaryGetValue(ValueAtIndex, @"capacity");
  FSDRetrieveValueFromCFNumber(v65, &gCapacity);
  v66 = CFDictionaryGetValue(ValueAtIndex, @"num-bus");
  FSDRetrieveValueFromCFNumber(v66, &gBuses);
  v96 = CFDictionaryGetValue(ValueAtIndex, @"dies-per-bus");
  if (v96)
  {
    v67 = FSDFetchArrayHelper(&v96, 0x10uLL, gDiesPerBus);
    if (v67 != gBuses)
    {
      warnx("diesPerBus elements count (%zu) not as expected (%u)\n", v67, gBuses);
    }
  }

  else
  {
    v94 = 0;
    v68 = CFDictionaryGetValue(ValueAtIndex, @"dies-per-channel");
    FSDRetrieveValueFromCFNumber(v68, &v94);
    if (gBuses)
    {
      v69 = v94;
      v70 = (gBuses + 3) & 0x1FFFFFFFCLL;
      v71 = xmmword_10000A790;
      v72 = vdupq_n_s64(gBuses - 1);
      v73 = xmmword_10000A7A0;
      v74 = &dword_1000143E8;
      v75 = vdupq_n_s64(4uLL);
      do
      {
        v76 = vmovn_s64(vcgeq_u64(v72, v73));
        if (vuzp1_s16(v76, *v71.i8).u8[0])
        {
          *(v74 - 2) = v69;
        }

        if (vuzp1_s16(v76, *&v71).i8[2])
        {
          *(v74 - 1) = v69;
        }

        if (vuzp1_s16(*&v71, vmovn_s64(vcgeq_u64(v72, *&v71))).i32[1])
        {
          *v74 = v69;
          v74[1] = v69;
        }

        v71 = vaddq_s64(v71, v75);
        v73 = vaddq_s64(v73, v75);
        v74 += 4;
        v70 -= 4;
      }

      while (v70);
    }
  }

  v95 = CFDictionaryGetValue(ValueAtIndex, @"bus-to-msp");
  if (v95)
  {
    v77 = FSDFetchArrayHelper(&v95, 0x10uLL, gBusToMsp);
    if (v77 != gBuses)
    {
      warnx("busToMsp elements count (%zu) not as expected (%u)\n", v77, gBuses);
    }
  }

  else if (gBuses)
  {
    v78 = 0;
    v79 = (gBuses + 3) & 0x1FFFFFFFCLL;
    v80 = xmmword_10000A790;
    v81 = vdupq_n_s64(gBuses - 1);
    v82 = xmmword_10000A7A0;
    v83 = &dword_100014428;
    v84 = vdupq_n_s64(4uLL);
    do
    {
      v85 = vmovn_s64(vcgeq_u64(v81, v82));
      if (vuzp1_s16(v85, *v80.i8).u8[0])
      {
        *(v83 - 2) = v78;
      }

      if (vuzp1_s16(v85, *&v80).i8[2])
      {
        *(v83 - 1) = v78;
      }

      if (vuzp1_s16(*&v80, vmovn_s64(vcgeq_u64(v81, *&v80))).i32[1])
      {
        *v83 = v78 + 1;
        v83[1] = v78 + 1;
      }

      v80 = vaddq_s64(v80, v84);
      v82 = vaddq_s64(v82, v84);
      v78 += 2;
      v83 += 4;
      v79 -= 4;
    }

    while (v79);
  }

  v86 = CFDictionaryGetValue(ValueAtIndex, @"num-dip");
  FSDRetrieveValueFromCFNumber(v86, &gTotalCAUs);
  v87 = CFDictionaryGetValue(ValueAtIndex, @"blocks-per-cau");
  FSDRetrieveValueFromCFNumber(v87, &gBlocksPerCAU);
  v88 = CFDictionaryGetValue(ValueAtIndex, @"page-size");
  FSDRetrieveValueFromCFNumber(v88, &gBytesPerPage);
  v89 = CFDictionaryGetValue(ValueAtIndex, @"pages-per-block-mlc");
  FSDRetrieveValueFromCFNumber(v89, &gPagesPerBlock);
  v90 = CFDictionaryGetValue(ValueAtIndex, @"default-bits-per-cell");
  FSDRetrieveValueFromCFNumber(v90, &gBitsPerCell);
  v91 = CFDictionaryGetValue(ValueAtIndex, @"program-scheme");
  FSDRetrieveValueFromCFNumber(v91, &gPrgmScheme);
  if (a2)
  {
    puts("\nDevice Characteristics:\n");
    TAOCFPrettyPrint(v8);
  }

  CFRelease(v8);
  v60 = 1;
LABEL_117:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v60;
}

uint64_t isPpnDevice(const char *a1)
{
  gPpnSpec[0] = 0;
  if (strlen(a1) >= 7)
  {
    v3 = 0;
    while (a1[v3] == ppnChipID[v3])
    {
      if (++v3 == 6)
      {
        if (strlen(a1) < 7)
        {
          v6 = 0;
        }

        else
        {
          v4 = 0;
          do
          {
            v5 = v4;
            gPpnSpec[v4] = a1[v4 + 6];
            ++v4;
          }

          while (strlen(a1) > v5 + 7);
          v6 = v4;
        }

        gPpnSpec[v6] = 0;
        return 1;
      }
    }
  }

  return 0;
}

uint64_t FSDHexDump(uint64_t result, _BYTE *a2, unsigned int a3, unsigned int a4)
{
  *a2 = 0;
  if (a4 > 2 * a3)
  {
    if (a3)
    {
      v4 = 0;
      LOBYTE(v5) = 0;
      do
      {
        v6 = &a2[v5];
        *v6 = a0123456789abcd[*(result + v4) >> 4];
        LOBYTE(v5) = v5 + 2;
        v6[1] = a0123456789abcd[*(result + v4++) & 0xF];
      }

      while (a3 > v4);
      v5 = v5;
    }

    else
    {
      v5 = 0;
    }

    a2[v5] = 0;
  }

  return result;
}

void FSDRetrieveValueFromCFNumber(const void *a1, void *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFNumberGetTypeID())
    {
      Type = CFNumberGetType(a1);
      if (!CFNumberGetValue(a1, Type, a2))
      {

        warnx("value could not be copied\n");
      }
    }

    else
    {
      sub_100006E4C(a1, v6);
    }
  }
}

CFIndex FSDFetchArrayHelper(CFArrayRef *a1, unint64_t a2, char *a3)
{
  Count = CFArrayGetCount(*a1);
  if (Count > a2)
  {
    return 0;
  }

  v7 = Count;
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v8 >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = v8;
  }

  bzero(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15.location = 0;
  v15.length = v7;
  CFArrayGetValues(*a1, v15, v9);
  bzero(a3, 4 * a2);
  if (v7)
  {
    v11 = v7;
    do
    {
      v12 = *v9++;
      FSDRetrieveValueFromCFNumber(v12, a3);
      a3 += 4;
      --v11;
    }

    while (v11);
  }

  return v7;
}

uint64_t sub_100006BA8(const __CFString *a1)
{

  return CFStringGetCString(a1, v1, 64, 0x600u);
}

void sub_100006BC4(const void *a1, char *a2, const __CFString *a3)
{
  v5 = CFGetTypeID(a1);
  v6 = CFCopyTypeIDDescription(v5);
  CFStringGetCString(v6, a2, 64, 0x600u);
  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(a3, SystemEncoding);
  warnx("property '%s' has unexpected type '%s'", CStringPtr, a2);
}

void sub_100006C28(const __CFString *a1)
{
  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(a1, SystemEncoding);
  warnx("error fetching property '%s'", CStringPtr);
}

void sub_100006C70(const void *a1, const char *a2)
{
  v3 = CFGetTypeID(a1);
  v4 = CFCopyTypeIDDescription(v3);
  sub_100006BA8(v4);
  warnx("manufacturerID has unexpected type '%s'\n", a2);
}

void sub_100006CB4(const void *a1, const char *a2)
{
  v3 = CFGetTypeID(a1);
  v4 = CFCopyTypeIDDescription(v3);
  sub_100006BA8(v4);
  warnx("firmware-version has unexpected type '%s'\n", a2);
}

void sub_100006CF8(const void *a1, const char *a2)
{
  v3 = CFGetTypeID(a1);
  v4 = CFCopyTypeIDDescription(v3);
  sub_100006BA8(v4);
  warnx("msp-version has unexpected type '%s'\n", a2);
}

void sub_100006D3C(const void *a1, const char *a2)
{
  v3 = CFGetTypeID(a1);
  v4 = CFCopyTypeIDDescription(v3);
  sub_100006BA8(v4);
  warnx("marketing name has unexpected type '%s'\n", a2);
}

void sub_100006D80(const void *a1, const char *a2)
{
  v3 = CFGetTypeID(a1);
  v4 = CFCopyTypeIDDescription(v3);
  sub_100006BA8(v4);
  warnx("manufacturer name has unexpected type '%s'\n", a2);
}

void sub_100006DC4(const void *a1, const char *a2)
{
  v3 = CFGetTypeID(a1);
  v4 = CFCopyTypeIDDescription(v3);
  sub_100006BA8(v4);
  warnx("Controller UID has unexpected type '%s'\n", a2);
}

void sub_100006E08(const void *a1, const char *a2)
{
  v3 = CFGetTypeID(a1);
  v4 = CFCopyTypeIDDescription(v3);
  sub_100006BA8(v4);
  warnx("Chip ID has unexpected type '%s'\n", a2);
}

void sub_100006E4C(const void *a1, const char *a2)
{
  v3 = CFGetTypeID(a1);
  v4 = CFCopyTypeIDDescription(v3);
  sub_100006BA8(v4);
  warnx("value has unexpected type '%s'\n", a2);
}

void TAOCFPrettyPrint(const __CFDictionary *a1)
{
  v1[0] = 0;
  v1[1] = "\t";
  v1[2] = __stdoutp;
  sub_100006F68(a1, v1);
}

void TAOCFPrettyPrintToFile(const __CFDictionary *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = "\t";
  v2[2] = a2;
  sub_100006F68(a1, v2);
}

void TAOCFPrettyPrintWithIndenter(const __CFDictionary *a1, uint64_t a2)
{
  v2[1] = a2;
  v2[2] = __stdoutp;
  v2[0] = 0;
  sub_100006F68(a1, v2);
}

void TAOCFPrettyPrintToFileWithIndenter(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v3[1] = a3;
  v3[2] = a2;
  v3[0] = 0;
  sub_100006F68(a1, v3);
}

void sub_100006F68(const __CFDictionary *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {

      CFDictionaryApplyFunction(v3, sub_100007144, a2);
      return;
    }

    v5 = CFGetTypeID(v3);
    if (v5 == CFArrayGetTypeID())
    {
      v6.length = CFArrayGetCount(v3);
      v6.location = 0;

      CFArrayApplyFunction(v3, v6, sub_1000071AC, a2);
      return;
    }

    v7 = CFGetTypeID(v3);
    if (v7 == CFTreeGetTypeID())
    {

      sub_100007240(v3, a2);
      return;
    }

    v8 = CFGetTypeID(v3);
    if (v8 == CFBagGetTypeID())
    {

      CFBagApplyFunction(v3, sub_1000072C4, a2);
      return;
    }

    a1 = v3;
  }

  sub_1000070EC(a1, a2);
}

void sub_1000070EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000072D8(a1);
  sub_100007398(v3, 0, a2);
  if (v3)
  {

    free(v3);
  }
}

void sub_100007144(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = sub_1000072D8(a1);
  sub_100007398(v5, a2, a3);
  if (v5)
  {

    free(v5);
  }
}

void sub_1000071AC(const void *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  *(a2 + 4) = v4 + 1;
  snprintf(__str, 0x100uLL, "%d", v4);
  sub_100007398(__str, a1, a2);
}

void sub_100007240(__CFTree *a1, uint64_t a2)
{
  memset(&context, 0, sizeof(context));
  v4 = *a2 + 1;
  v6 = *(a2 + 8);
  v5[0] = v4;
  v5[1] = 0;
  CFTreeGetContext(a1, &context);
  sub_100007398(&unk_10000AD37, context.info, a2);
  CFTreeApplyFunctionToChildren(a1, sub_100007240, v5);
}

void *sub_1000072D8(uint64_t a1)
{
  v2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", a1);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1 == 0;
  }

  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"<error getting string representation>";
  }

  Length = CFStringGetLength(v4);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v7 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xCA5540E5uLL);
  if (v7 && !CFStringGetCString(v4, v7, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    free(v7);
    return 0;
  }

  return v7;
}

void sub_100007398(char *a1, const void *a2, uint64_t a3)
{
  if (*a3 >= 1)
  {
    v6 = 0;
    do
    {
      fputs(*(a3 + 8), *(a3 + 16));
      ++v6;
    }

    while (v6 < *a3);
  }

  fputs(a1, *(a3 + 16));
  if (a2)
  {
    if (a1 && *a1)
    {
      fputc(58, *(a3 + 16));
    }

    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID() || (v8 = CFGetTypeID(a2), v8 == CFArrayGetTypeID()) || (v9 = CFGetTypeID(a2), v9 == CFTreeGetTypeID()) || (v10 = CFGetTypeID(a2), v10 == CFBagGetTypeID()))
    {
      fputc(10, *(a3 + 16));
      v14[0] = *a3 + 1;
      v14[1] = 0;
      v15 = *(a3 + 8);
      sub_100006F68(a2, v14);
    }

    else
    {
      v12 = sub_1000072D8(a2);
      if (a1 && *a1)
      {
        fputc(32, *(a3 + 16));
      }

      v13 = *(a3 + 16);
      if (v12)
      {
        fprintf(v13, "%s\n", v12);

        free(v12);
      }

      else
      {

        fwrite("(NULL)\n", 7uLL, 1uLL, v13);
      }
    }
  }

  else
  {
    v11 = *(a3 + 16);

    fputc(10, v11);
  }
}

CFStringRef buildAggDKey(void *a1)
{
  values[0] = kFSInfoCAPrefix;
  values[1] = a1;
  v1 = CFArrayCreate(kCFAllocatorDefault, values, 2, &kCFTypeArrayCallBacks);
  return CFStringCreateByCombiningStrings(kCFAllocatorDefault, v1, @".");
}

CFNumberRef get_storage_capacity()
{
  v6 = 0;
  values[0] = @"Device Characteristics";
  values[1] = @"Controller Characteristics";
  v0 = CFArrayCreate(kCFAllocatorDefault, values, 2, &kCFTypeArrayCallBacks);
  v1 = 0;
  for (i = 1; ; i = 0)
  {
    v3 = i;
    ValueAtIndex = CFArrayGetValueAtIndex(v0, v1);
    if (FSDGetAdvancedInfo(ValueAtIndex, 0))
    {
      if (gCapacity)
      {
        break;
      }
    }

    v1 = 1;
    if ((v3 & 1) == 0)
    {
      return CFNumberCreate(0, kCFNumberLongLongType, &v6);
    }
  }

  v6 = gCapacity / 0x3B9ACA00uLL;
  return CFNumberCreate(0, kCFNumberLongLongType, &v6);
}

uint64_t FSStats_listenToLockStateChangeNotification(uint64_t result)
{
  if (&_SBSGetScreenLockStatus)
  {
    v1 = result;
    v2 = MGCopyAnswer();
    if (v2)
    {
      v3 = v2;
      v4 = CFEqual(v2, @"AppleTV") != 0;
      CFRelease(v3);
    }

    else
    {
      v4 = 0;
    }

    result = notify_register_dispatch(&aComAppleSpring_0[100 * v4], &dword_1000146F0, v1, &stru_1000109B8);
    if (!result)
    {
      result = SBSGetScreenLockStatus();
      if (!result)
      {
        byte_1000146F4 = 0;
      }
    }
  }

  return result;
}

void sub_1000077C0(id a1, int a2)
{
  v2 = SBSGetScreenLockStatus();
  if ((killRequested & 1) == 0 && !v2)
  {
    killRequested = 1;
    byte_1000146F4 = 0;
    v3 = gtid;
    if (gtid)
    {

      pthread_kill(v3, 30);
    }
  }
}

__CFDictionary *CopyFSInfo()
{
  memset(&v15, 0, sizeof(v15));
  v13 = 0;
  v11 = 0;
  v10 = 0;
  memset(&v14, 0, 512);
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 80, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12[2] = 0;
  v12[0] = 5;
  v12[1] = 2147485184;
  if (!getattrlist("/private/var", v12, &v10, 0xCuLL, 0))
  {
    v9 = sub_100007C24(HIDWORD(v10), 3u);
    v8 = sub_100007C24(v11, 3u);
    if (!statfs("/private/var", &v14))
    {
      v1 = sub_100007C9C(1);
      f_bsize = v14.f_bsize;
      if (!v1)
      {
        HIDWORD(v7) = sub_100007C24((v14.f_bsize * (vaddvq_s32(xmmword_10001447C) + dword_10001448C)) >> 20, 2u);
      }

      v6 = (v14.f_bfree * f_bsize) >> 20;
      LODWORD(v7) = (v14.f_blocks * f_bsize) >> 20;
    }
  }

  v3 = CFDictionaryCreateMutable(kCFAllocatorDefault, 12, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_100007D20(v3, @"FilesCount", &v9, kCFNumberIntType);
  sub_100007D20(v3, @"DirectoriesCount", &v8, kCFNumberIntType);
  sub_100007D20(v3, @"MetadataMB", &v7 + 4, kCFNumberIntType);
  sub_100007D20(v3, @"TotalFreeSize", &v6, kCFNumberIntType);
  sub_100007D20(v3, @"TotalSize", &v7, kCFNumberIntType);
  CFDictionarySetValue(Mutable, @"com.apple.FileSystemInfo.MiscStats", v3);
  xmmword_100014558 = 0u;
  xmmword_100014568 = 0u;
  defrag_stats = 0u;
  if (!fsctl("/private/var", 0xC0304A33uLL, &defrag_stats, 0) || !*__error())
  {
    v4 = CFDictionaryCreateMutable(kCFAllocatorDefault, 8, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    sub_100007D20(v4, @"FxDefragBlocksReallocated", &defrag_stats, kCFNumberLongLongType);
    sub_100007D20(v4, @"FxDefragFextsReallocated", &defrag_stats + 8, kCFNumberLongLongType);
    sub_100007D20(v4, @"FxDefragFextsSkipped", &xmmword_100014558, kCFNumberLongLongType);
    sub_100007D20(v4, @"FxDefragChunksChosen", &xmmword_100014558 + 8, kCFNumberLongLongType);
    sub_100007D20(v4, @"FxDefragRuns", &xmmword_100014568, kCFNumberIntType);
    sub_100007D20(v4, @"FxDefragCompletions", &xmmword_100014568 + 4, kCFNumberIntType);
    sub_100007D20(v4, @"FxDefragDeepRuns", &xmmword_100014568 + 8, kCFNumberIntType);
    sub_100007D20(v4, @"FxDefragDeepCompletions", &xmmword_100014568 + 12, kCFNumberIntType);
    CFDictionarySetValue(Mutable, @"com.apple.FileSystemInfo.NANDDefragStats", v4);
  }

  killRequested = 0;
  gtid = 0;
  pthread_attr_init(&v15);
  pthread_attr_setdetachstate(&v15, 1);
  pthread_create(&gtid, &v15, sub_100007DA0, Mutable);
  pthread_attr_destroy(&v15);
  pthread_join(gtid, &v13);
  gtid = 0;
  return Mutable;
}

uint64_t sub_100007C24(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = log10(a1) + 1.0;
    v5 = v4 - a2;
    if (v4 >= a2)
    {
      if (v5 > 9)
      {
        return 0;
      }

      else
      {
        v6 = dword_10000A7C8[v5];
        v7 = v2 / v6;
        if (v2 % v6 >= v6 >> 1)
        {
          ++v7;
        }

        return v7 * v6;
      }
    }
  }

  return v2;
}

uint64_t sub_100007C9C(int a1)
{
  *&word_100014478 = 0u;
  unk_100014538 = 0u;
  unk_100014528 = 0u;
  unk_100014518 = 0u;
  unk_100014508 = 0u;
  unk_1000144F8 = 0u;
  unk_1000144E8 = 0u;
  unk_1000144D8 = 0u;
  unk_1000144C8 = 0u;
  unk_1000144B8 = 0u;
  *&dword_1000144A8 = 0u;
  unk_100014498 = 0u;
  *(&xmmword_10001447C + 12) = 0u;
  fsinfo = a1;
  word_100014478 = 1;
  result = fsctl("/private/var", 0xC0D4682DuLL, &fsinfo, 0);
  if (result)
  {
    return *__error();
  }

  return result;
}

void sub_100007D20(__CFDictionary *a1, const void *a2, const void *a3, CFNumberType theType)
{
  v6 = CFNumberCreate(kCFAllocatorDefault, theType, a3);
  if (a2)
  {
    v7 = v6;
    if (v6)
    {
      CFDictionarySetValue(a1, a2, v6);

      CFRelease(v7);
    }
  }
}

uint64_t sub_100007DA0(__CFDictionary *a1)
{
  if (a1)
  {
    v96 = 0;
    v95 = 0;
    v94 = 0;
    v93 = 0;
    v92 = 0;
    v91.__sigaction_u.__sa_handler = sub_100008DB0;
    *&v91.sa_mask = 0;
    sigaction(30, &v91, 0);
    v2 = dispatch_queue_create("com.apple.FSInfo", 0);
    if (v2)
    {
      byte_1000146F4 = 1;
      object = v2;
      FSStats_listenToLockStateChangeNotification(v2);
      if (byte_1000146F4 == 1)
      {
        if (!sub_100007C9C(2))
        {
          HIDWORD(v96) = sub_100007C24(xmmword_10001447C, 2u);
          LODWORD(v96) = sub_100007C24(DWORD1(xmmword_10001447C), 2u);
          v95 = sub_100007C24(DWORD2(xmmword_10001447C), 2u);
          v94 = sub_100007C24(HIDWORD(xmmword_10001447C), 2u);
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          sub_100007D20(Mutable, @"dataExtents", &v96 + 4, kCFNumberIntType);
          sub_100007D20(Mutable, @"catalogExtents", &v96, kCFNumberIntType);
          sub_100007D20(Mutable, @"allocationExtents", &v95, kCFNumberIntType);
          sub_100007D20(Mutable, @"attributeExtents", &v94, kCFNumberIntType);
          CFDictionarySetValue(a1, @"com.apple.FileSystemInfo.MetaDataExtents", Mutable);
        }

        if (byte_1000146F4 == 1)
        {
          if (!sub_100007C9C(3))
          {
            v93 = __PAIR64__(xmmword_10001447C, DWORD1(xmmword_10001447C));
            v92 = HIDWORD(xmmword_10001447C);
            v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            sub_100007D20(v5, @"PercentFreeExtents", &v93 + 4, kCFNumberIntType);
            sub_100007D20(v5, @"PercentFreeCatalog", &v93, kCFNumberIntType);
            sub_100007D20(v5, @"PercentFreeAttributes", &v92, kCFNumberIntType);
            CFDictionarySetValue(a1, @"com.apple.FileSystemInfo.MetaDataPercentFree", v5);
          }

          if (byte_1000146F4 == 1)
          {
            if (!sub_100007C9C(11))
            {
              v6 = &bucket;
              LODWORD(bucket) = sub_100007C24(xmmword_10001447C, 2u);
              DWORD1(bucket) = sub_100007C24(DWORD1(xmmword_10001447C), 2u);
              DWORD2(bucket) = sub_100007C24(DWORD2(xmmword_10001447C), 2u);
              HIDWORD(bucket) = sub_100007C24(HIDWORD(xmmword_10001447C), 2u);
              LODWORD(xmmword_100014588) = sub_100007C24(dword_10001448C, 2u);
              DWORD1(xmmword_100014588) = sub_100007C24(dword_100014490, 2u);
              v7 = CFDictionaryCreateMutable(kCFAllocatorDefault, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              v8 = -6;
              do
              {
                snprintf(keyName, 0xFFuLL, "FilesClass%d", v8 + 7);
                sub_100008DE4(v7, v6);
                v6 = (v6 + 4);
                v9 = __CFADD__(v8++, 1);
              }

              while (!v9);
              CFDictionarySetValue(a1, @"com.apple.FileSystemInfo.FilesClass", v7);
            }

            if (byte_1000146F4 == 1)
            {
              if (!sub_100007C9C(4))
              {
                v10 = 0;
                xmmword_1000145A8 = 0u;
                unk_1000145B8 = 0u;
                xmmword_100014588 = 0u;
                *&dword_100014598 = 0u;
                bucket = 0u;
                do
                {
                  if (v10 >= 5)
                  {
                    v11 = 5;
                  }

                  else
                  {
                    v11 = v10;
                  }

                  *(&bucket + v11) += fsinfo[v10++ + 2];
                }

                while (v10 != 42);
                v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                v13 = &bucket;
                v14 = -6;
                do
                {
                  snprintf(keyName, 0xFFuLL, "ExtentsCount%d", v14 + 7);
                  sub_100008DE4(v12, v13);
                  v13 = (v13 + 4);
                  v9 = __CFADD__(v14++, 1);
                }

                while (!v9);
                CFDictionarySetValue(a1, @"com.apple.FileSystemInfo.ExtentsCount", v12);
              }

              if (byte_1000146F4 == 1)
              {
                if (!sub_100007C9C(8))
                {
                  v15 = 0;
                  xmmword_1000145A8 = 0u;
                  unk_1000145B8 = 0u;
                  xmmword_100014588 = 0u;
                  *&dword_100014598 = 0u;
                  bucket = 0u;
                  do
                  {
                    v16 = v15 >> 1;
                    if (v15 >= 0xC)
                    {
                      v16 = 5;
                    }

                    *(&bucket + v16) += fsinfo[v15++ + 2];
                  }

                  while (v15 != 51);
                  v17 = CFDictionaryCreateMutable(kCFAllocatorDefault, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                  v18 = &bucket;
                  v19 = -6;
                  do
                  {
                    snprintf(keyName, 0xFFuLL, "NameSize%d", v19 + 7);
                    sub_100008DE4(v17, v18);
                    v18 = (v18 + 4);
                    v9 = __CFADD__(v19++, 1);
                  }

                  while (!v9);
                  CFDictionarySetValue(a1, @"com.apple.FileSystemInfo.NameSize", v17);
                }

                if (byte_1000146F4 == 1)
                {
                  if (!sub_100007C9C(9))
                  {
                    v20 = 0;
                    xmmword_1000145A8 = 0u;
                    unk_1000145B8 = 0u;
                    xmmword_100014588 = 0u;
                    *&dword_100014598 = 0u;
                    bucket = 0u;
                    do
                    {
                      if (v20 >= 8)
                      {
                        v21 = 8;
                      }

                      else
                      {
                        v21 = v20;
                      }

                      *(&bucket + v21) += fsinfo[v20++ + 2];
                    }

                    while (v20 != 42);
                    v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 9, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    v23 = &bucket;
                    v24 = -9;
                    do
                    {
                      snprintf(keyName, 0xFFuLL, "XattrSize%d", v24 + 10);
                      sub_100008DE4(v22, v23);
                      v23 = (v23 + 4);
                      v9 = __CFADD__(v24++, 1);
                    }

                    while (!v9);
                    CFDictionarySetValue(a1, @"com.apple.FileSystemInfo.XattrSize", v22);
                  }

                  if (byte_1000146F4 == 1)
                  {
                    if (!sub_100007C9C(12))
                    {
                      v25 = 0;
                      v26 = 0;
                      v27 = 0;
                      v28 = 0;
                      v29 = 0;
                      v30 = 0;
                      xmmword_1000145A8 = 0u;
                      unk_1000145B8 = 0u;
                      xmmword_100014588 = 0u;
                      *&dword_100014598 = 0u;
                      bucket = 0u;
                      do
                      {
                        if (v25 > 3)
                        {
                          if (v25 == 4)
                          {
                            v29 += dword_10001448C;
                            DWORD1(bucket) = v29;
                          }

                          else if (v25 > 5)
                          {
                            if (v25 == 6)
                            {
                              v27 += dword_100014494;
                              HIDWORD(bucket) = v27;
                            }

                            else
                            {
                              v26 += fsinfo[v25 + 2];
                              LODWORD(xmmword_100014588) = v26;
                            }
                          }

                          else
                          {
                            v28 += dword_100014490;
                            DWORD2(bucket) = v28;
                          }
                        }

                        else
                        {
                          v30 += fsinfo[v25 + 2];
                          LODWORD(bucket) = v30;
                        }

                        ++v25;
                      }

                      while (v25 != 42);
                      v31 = CFDictionaryCreateMutable(kCFAllocatorDefault, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      v32 = &bucket;
                      v33 = -5;
                      do
                      {
                        snprintf(keyName, 0xFFuLL, "SymLinkSize%d", v33 + 6);
                        sub_100008DE4(v31, v32);
                        v32 = (v32 + 4);
                        v9 = __CFADD__(v33++, 1);
                      }

                      while (!v9);
                      CFDictionarySetValue(a1, @"com.apple.FileSystemInfo.SymLinkSize", v31);
                    }

                    if (byte_1000146F4 == 1)
                    {
                      if (!sub_100007C9C(7))
                      {
                        v34 = 0;
                        xmmword_1000145A8 = 0u;
                        unk_1000145B8 = 0u;
                        xmmword_100014588 = 0u;
                        *&dword_100014598 = 0u;
                        bucket = 0u;
                        do
                        {
                          if (v34 >= 9)
                          {
                            v35 = 9;
                          }

                          else
                          {
                            v35 = v34;
                          }

                          *(&bucket + v35) += fsinfo[v34++ + 2];
                        }

                        while (v34 != 42);
                        v36 = CFDictionaryCreateMutable(kCFAllocatorDefault, 10, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                        v37 = &bucket;
                        v38 = -10;
                        do
                        {
                          snprintf(keyName, 0xFFuLL, "Valence%d", v38 + 11);
                          sub_100008DE4(v36, v37);
                          CFDictionarySetValue(a1, @"com.apple.FileSystemInfo.Valence", v36);
                          v37 = (v37 + 4);
                          v9 = __CFADD__(v38++, 1);
                        }

                        while (!v9);
                      }

                      if (byte_1000146F4 == 1)
                      {
                        if (!sub_100007C9C(5))
                        {
                          v39 = 0;
                          v40 = 0;
                          v41 = 0;
                          v42 = 0;
                          v43 = 0;
                          v44 = 0;
                          v45 = 0;
                          xmmword_1000145A8 = 0u;
                          unk_1000145B8 = 0u;
                          xmmword_100014588 = 0u;
                          *&dword_100014598 = 0u;
                          bucket = 0u;
                          do
                          {
                            v46 = &fsinfo[v39];
                            if (v39 > 0xC)
                            {
                              if (v39 > 0xE)
                              {
                                if (v39 > 0x11)
                                {
                                  if (v39 > 0x14)
                                  {
                                    v47 = v46[2];
                                    if (v39 > 0x1C)
                                    {
                                      v40 += v47;
                                      DWORD1(xmmword_100014588) = v40;
                                    }

                                    else
                                    {
                                      v41 += v47;
                                      LODWORD(xmmword_100014588) = v41;
                                    }
                                  }

                                  else
                                  {
                                    v42 += v46[2];
                                    HIDWORD(bucket) = v42;
                                  }
                                }

                                else
                                {
                                  v43 += v46[2];
                                  DWORD2(bucket) = v43;
                                }
                              }

                              else
                              {
                                v44 += v46[2];
                                DWORD1(bucket) = v44;
                              }
                            }

                            else
                            {
                              v45 += v46[2];
                              LODWORD(bucket) = v45;
                            }

                            ++v39;
                          }

                          while (v39 != 42);
                          v48 = CFDictionaryCreateMutable(kCFAllocatorDefault, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                          v49 = &bucket;
                          v50 = -6;
                          do
                          {
                            snprintf(keyName, 0xFFuLL, "ExtentsSize%d", v50 + 7);
                            sub_100008DE4(v48, v49);
                            v49 = (v49 + 4);
                            v9 = __CFADD__(v50++, 1);
                          }

                          while (!v9);
                          CFDictionarySetValue(a1, @"com.apple.FileSystemInfo.ExtentsSize", v48);
                        }

                        if (byte_1000146F4 == 1)
                        {
                          v51 = sub_100007C9C(6);
                          if (!v51)
                          {
                            v52 = 0;
                            v53 = 0;
                            v54 = 0;
                            v82 = 0;
                            v83 = 0;
                            v84 = 0;
                            v86 = 0;
                            v88 = 0;
                            v55 = 0;
                            v56 = 0;
                            v57 = 0;
                            v58 = 0;
                            v59 = 0;
                            v60 = 0;
                            v61 = 0;
                            xmmword_1000145A8 = 0u;
                            unk_1000145B8 = 0u;
                            xmmword_100014588 = 0u;
                            *&dword_100014598 = 0u;
                            bucket = 0u;
                            do
                            {
                              if (v52 == 1)
                              {
                                v53 += DWORD1(xmmword_10001447C);
                                DWORD1(bucket) = v53;
                              }

                              else if (v52)
                              {
                                if (v52 > 2)
                                {
                                  if (v52 > 4)
                                  {
                                    if (v52 == 5)
                                    {
                                      v59 += dword_100014490;
                                      LODWORD(xmmword_100014588) = v59;
                                    }

                                    else if (v52 > 6)
                                    {
                                      if (v52 == 7)
                                      {
                                        v57 += unk_100014498;
                                        DWORD2(xmmword_100014588) = v57;
                                      }

                                      else if (v52 > 8)
                                      {
                                        if (v52 == 9)
                                        {
                                          v56 += unk_1000144A0;
                                          dword_100014598 = v56;
                                        }

                                        else if (v52 > 0xA)
                                        {
                                          if (v52 == 11)
                                          {
                                            v88 += dword_1000144A8;
                                            dword_1000145A0 = v88;
                                          }

                                          else if (v52 > 0xC)
                                          {
                                            v62 = &fsinfo[v52];
                                            if (v52 > 0xF)
                                            {
                                              v63 = v62[2];
                                              if (v52 > 0x11)
                                              {
                                                v83 += v63;
                                                DWORD2(xmmword_1000145A8) = v83;
                                              }

                                              else
                                              {
                                                v82 += v63;
                                                DWORD1(xmmword_1000145A8) = v82;
                                              }
                                            }

                                            else
                                            {
                                              v84 += v62[2];
                                              LODWORD(xmmword_1000145A8) = v84;
                                            }
                                          }

                                          else
                                          {
                                            v86 += dword_1000144AC;
                                            dword_1000145A4 = v86;
                                          }
                                        }

                                        else
                                        {
                                          v55 += dword_1000144A4;
                                          dword_10001459C = v55;
                                        }
                                      }

                                      else
                                      {
                                        v51 += dword_10001449C;
                                        HIDWORD(xmmword_100014588) = v51;
                                      }
                                    }

                                    else
                                    {
                                      v58 += dword_100014494;
                                      DWORD1(xmmword_100014588) = v58;
                                    }
                                  }

                                  else
                                  {
                                    v60 += fsinfo[v52 + 2];
                                    HIDWORD(bucket) = v60;
                                  }
                                }

                                else
                                {
                                  v61 += DWORD2(xmmword_10001447C);
                                  DWORD2(bucket) = v61;
                                }
                              }

                              else
                              {
                                v54 += xmmword_10001447C;
                                LODWORD(bucket) = v54;
                              }

                              ++v52;
                            }

                            while (v52 != 42);
                            v64 = CFDictionaryCreateMutable(kCFAllocatorDefault, 15, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                            v65 = &bucket;
                            v66 = -15;
                            do
                            {
                              snprintf(keyName, 0xFFuLL, "FileSize%d", v66 + 16);
                              sub_100008DE4(v64, v65);
                              v65 = (v65 + 4);
                              v9 = __CFADD__(v66++, 1);
                            }

                            while (!v9);
                            CFDictionarySetValue(a1, @"com.apple.FileSystemInfo.FileSize", v64);
                          }

                          if (byte_1000146F4 == 1)
                          {
                            v67 = sub_100007C9C(10);
                            if (!v67)
                            {
                              v68 = 0;
                              v69 = 0;
                              v70 = 0;
                              v85 = 0;
                              v87 = 0;
                              v89 = 0;
                              v71 = 0;
                              v72 = 0;
                              v73 = 0;
                              v74 = 0;
                              v75 = 0;
                              v76 = 0;
                              v77 = 0;
                              xmmword_1000145A8 = 0u;
                              unk_1000145B8 = 0u;
                              xmmword_100014588 = 0u;
                              *&dword_100014598 = 0u;
                              bucket = 0u;
                              do
                              {
                                if (v68 == 1)
                                {
                                  v69 += DWORD1(xmmword_10001447C);
                                  DWORD1(bucket) = v69;
                                }

                                else if (v68)
                                {
                                  if (v68 > 2)
                                  {
                                    if (v68 == 3)
                                    {
                                      v76 += HIDWORD(xmmword_10001447C);
                                      HIDWORD(bucket) = v76;
                                    }

                                    else if (v68 > 4)
                                    {
                                      if (v68 == 5)
                                      {
                                        v74 += dword_100014490;
                                        DWORD1(xmmword_100014588) = v74;
                                      }

                                      else if (v68 > 6)
                                      {
                                        if (v68 > 8)
                                        {
                                          if (v68 > 0xA)
                                          {
                                            if (v68 == 11)
                                            {
                                              v71 += dword_1000144A8;
                                              dword_10001459C = v71;
                                            }

                                            else if (v68 > 0xD)
                                            {
                                              if (v68 > 0xF)
                                              {
                                                if (v68 == 16)
                                                {
                                                  LODWORD(v87) = v87 + dword_1000144BC;
                                                  LODWORD(xmmword_1000145A8) = v87;
                                                }

                                                else
                                                {
                                                  v78 = fsinfo[v68 + 2];
                                                  if (v68 > 0x12)
                                                  {
                                                    HIDWORD(v85) += v78;
                                                    DWORD2(xmmword_1000145A8) = HIDWORD(v85);
                                                  }

                                                  else
                                                  {
                                                    LODWORD(v85) = v85 + v78;
                                                    DWORD1(xmmword_1000145A8) = v85;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                HIDWORD(v87) += fsinfo[v68 + 2];
                                                dword_1000145A4 = HIDWORD(v87);
                                              }
                                            }

                                            else
                                            {
                                              v89 += fsinfo[v68 + 2];
                                              dword_1000145A0 = v89;
                                            }
                                          }

                                          else
                                          {
                                            v72 += fsinfo[v68 + 2];
                                            dword_100014598 = v72;
                                          }
                                        }

                                        else
                                        {
                                          v67 += fsinfo[v68 + 2];
                                          HIDWORD(xmmword_100014588) = v67;
                                        }
                                      }

                                      else
                                      {
                                        v73 += dword_100014494;
                                        DWORD2(xmmword_100014588) = v73;
                                      }
                                    }

                                    else
                                    {
                                      v75 += dword_10001448C;
                                      LODWORD(xmmword_100014588) = v75;
                                    }
                                  }

                                  else
                                  {
                                    v77 += DWORD2(xmmword_10001447C);
                                    DWORD2(bucket) = v77;
                                  }
                                }

                                else
                                {
                                  v70 += xmmword_10001447C;
                                  LODWORD(bucket) = v70;
                                }

                                ++v68;
                              }

                              while (v68 != 42);
                              v79 = CFDictionaryCreateMutable(kCFAllocatorDefault, 15, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                              v80 = &bucket;
                              v81 = -15;
                              do
                              {
                                snprintf(keyName, 0xFFuLL, "FreeExtentSize%d", v81 + 16);
                                sub_100008DE4(v79, v80);
                                v80 = (v80 + 4);
                                v9 = __CFADD__(v81++, 1);
                              }

                              while (!v9);
                              CFDictionarySetValue(a1, @"com.apple.FileSystemInfo.FreeExtentSize", v79);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      notify_cancel(dword_1000146F0);
      dispatch_release(object);
      pthread_exit(0);
    }
  }

  return 0;
}

void sub_100008DE4(__CFDictionary *a1, const void *a2)
{
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, keyName, 0x8000100u);
  if (v4)
  {
    v5 = v4;
    sub_100007D20(a1, v4, a2, kCFNumberIntType);

    CFRelease(v5);
  }
}

void sub_100008E84()
{
  sub_10000183C();
  if (sub_100001854())
  {
    sub_100001830();
    sub_100001810(&_mh_execute_header, v0, v1, "IOCS: failed to allocate a mach port. Error = %d", v2, v3, v4, v5, v6);
  }
}

void sub_100008F10()
{
  sub_10000183C();
  if (sub_100001854())
  {
    sub_100001830();
    sub_100001810(&_mh_execute_header, v0, v1, "IOCS: failed to insert send right. Error = %d", v2, v3, v4, v5, v6);
  }
}

void sub_100008F9C()
{
  sub_10000183C();
  if (sub_100001854())
  {
    sub_100001830();
    sub_100001810(&_mh_execute_header, v0, v1, "IOCS: failed to bind host special port. Error = %d", v2, v3, v4, v5, v6);
  }
}

void sub_100009028()
{
  sub_10000183C();
  if (sub_100001854())
  {
    sub_100001830();
    sub_100001810(&_mh_execute_header, v0, v1, "IOCS: failed to set context for inbound notifications on the mach port. Error = %d", v2, v3, v4, v5, v6);
  }
}

void sub_1000090B4(uint64_t *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2080;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "IOCS: Failed to enable WAL for IOCSdb - %d %s\n", v4, 0x12u);
}

void sub_100009210(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "IOCSdb: error reading blockCompressedSizeDist\n", buf, 2u);
}

void sub_100009250(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "IOCSdb: error reading bufferSizeCompressionDist\n", buf, 2u);
}

void sub_100009290()
{
  sqlite3_errmsg(qword_1000146E0);
  sub_100003480();
  sub_1000034C0(&_mh_execute_header, v0, v1, "IOCS: SQL table failed to read: %d %s\n", v2, v3, v4, v5, v6);
}

void sub_1000093E4()
{
  sqlite3_errmsg(qword_1000146E0);
  sub_100003480();
  sub_1000034C0(&_mh_execute_header, v0, v1, "IOCS: SQL table Insert failure: %d %s\n", v2, v3, v4, v5, v6);
}

void sub_100009468()
{
  sqlite3_errmsg(qword_1000146E0);
  sub_100003480();
  sub_1000034C0(&_mh_execute_header, v0, v1, "IOCS: table insert failure: %d %s\n", v2, v3, v4, v5, v6);
}