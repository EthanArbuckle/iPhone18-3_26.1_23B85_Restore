uint64_t sub_100001D04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001D1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v33 = *(a1 + 32);
      *buf = 138412802;
      v42 = v33;
      v43 = 2112;
      v44 = v3;
      v45 = 2112;
      v46 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, 0x90u, "[ERROR] couldn't adopt persona - skipping account %@: %@%@", buf, 0x20u);
    }

    goto LABEL_26;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  __brc_create_section();
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(a1 + 32);
    *buf = 134218498;
    v42 = v38;
    v43 = 2112;
    v44 = v34;
    v45 = 2112;
    v46 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx dumping account %@%@", buf, 0x20u);
  }

  v8 = [*(a1 + 40) computeHomeDirPathForAccount:*(a1 + 32)];
  v9 = [v8 stringByAppendingPathComponent:@"Library/Application Support/CloudDocs/session/db"];
  v36 = [NSURL fileURLWithPath:v9];

  v10 = +[NSFileManager defaultManager];
  v11 = *(a1 + 48);
  v12 = [*(a1 + 32) accountIdentifier];
  v13 = [NSString stringWithFormat:@"db-%@", v12];
  v14 = [v11 stringByAppendingPathComponent:v13];

  v37 = 0;
  LODWORD(v12) = [v10 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v37];
  v35 = v37;
  if (v12)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[INFO] Backing up databases%@", buf, 0xCu);
    }

    v17 = [BRCAccountSession sessionForBackingUpDatabasesAtURL:v36];
    if (![*(a1 + 40) _backupDatabaseWithSession:v17 toOutputPath:v14])
    {
      goto LABEL_15;
    }

    v18 = [DEAttachmentItem attachmentWithPath:v14];
    [v18 setShouldCompress:&__kCFBooleanTrue];
    [v18 setDeleteOnAttach:&__kCFBooleanTrue];
    [v18 setDisplayName:@"database backup for File Sync"];
    [*(*(*(a1 + 56) + 8) + 40) addObject:v18];
  }

  else
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      sub_1000037FC();
    }
  }

LABEL_15:
  v19 = *(a1 + 48);
  v20 = [*(a1 + 32) accountIdentifier];
  v21 = [NSString stringWithFormat:@"brctl-dump-%@.txt", v20];
  v22 = [v19 stringByAppendingPathComponent:v21];

  v23 = brc_bread_crumbs();
  v24 = brc_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[INFO] Dumping databases%@", buf, 0xCu);
  }

  if ([*(a1 + 40) _dumpDatabaseToOutputPath:v22])
  {
    v25 = [DEAttachmentItem attachmentWithPath:v22];
    [v25 setShouldCompress:&__kCFBooleanTrue];
    [v25 setDeleteOnAttach:&__kCFBooleanTrue];
    [v25 setDisplayName:@"database dump for File Sync"];
    [*(*(*(a1 + 56) + 8) + 40) addObject:v25];
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v26 = *(a1 + 48);
    v27 = [*(a1 + 32) accountIdentifier];
    v28 = [NSString stringWithFormat:@"CloudDocsDiagnosticLogs-%@-%llu.txt", v27, CFAbsoluteTimeGetCurrent()];
    v29 = [v26 stringByAppendingPathComponent:v28];

    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = v30;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[INFO] Dumping CloudDocs system logs%@", buf, 0xCu);
    }

    if ([*(a1 + 40) _dumpSystemLogsToOutputPath:v29])
    {
      v32 = [DEAttachmentItem attachmentWithPath:v29];
      [v32 setShouldCompress:&__kCFBooleanTrue];
      [v32 setDeleteOnAttach:&__kCFBooleanTrue];
      [v32 setDisplayName:@"System Logs for File Sync"];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v32];
    }
  }

  __brc_leave_section();
LABEL_26:
}

void sub_100002668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002680(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = [a3 description];
    syslog(3, "unable to dump database; %s", [v5 UTF8String]);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_1000031BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      sub_100003A2C(v6, v7, v8);
    }
  }

  else
  {
    v9 = [[OSLogEventStream alloc] initWithSource:v5];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_100003284(uint64_t a1, void *a2)
{
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v23 = [v3 date];
  v5 = [v4 stringFromDate:v23];
  v6 = [v3 threadIdentifier];
  v22 = a1;
  v7 = [*(a1 + 40) _displayStringForLogType:{objc_msgSend(v3, "logType")}];
  v8 = [v3 processIdentifier];
  v9 = [v3 process];
  v10 = [v3 sender];
  v11 = [v3 subsystem];
  v12 = [v3 category];
  v13 = [v3 composedMessage];
  v14 = [NSString stringWithFormat:@"%@ 0x%05llx %@ %d %@(%@):%@ [%@] %@\n", v5, v6, v7, v8, v9, v10, v11, v12, v13];

  if (v14)
  {
    v15 = *(v22 + 48);
    v16 = [v14 dataUsingEncoding:4];
    v25 = 0;
    LOBYTE(v15) = [v15 writeData:v16 error:&v25];
    v17 = v25;

    if ((v15 & 1) == 0)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        v20 = [*(v22 + 56) fp_prettyPath];
        v21 = [v17 fp_prettyDescription];
        *buf = 138413058;
        v27 = v14;
        v28 = 2112;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        v32 = 2112;
        v33 = v18;
        _os_log_error_impl(&_mh_execute_header, v19, 0x90u, "[ERROR] Failed writing log line '%@' to file %@: %@%@", buf, 0x2Au);
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

void sub_100003538(uint64_t a1, uint64_t a2)
{
  if (a2 != 5)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      sub_100003AD0(v4, a2, v5);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000035DC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, 0x90u, a4, va, 0x16u);
}

void sub_1000035FC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100003688(char a1, uint64_t a2, NSObject *a3)
{
  v3 = "YES";
  if ((a1 & 1) == 0)
  {
    v3 = "NO";
  }

  *v4 = 136315394;
  *&v4[4] = v3;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  sub_1000035FC(&_mh_execute_header, a2, a3, "[DEBUG] Enable com.apple.fileprovider.log-sensitive-data [%s]%@", *v4, *&v4[8], *&v4[16]);
}

void sub_100003784(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Only setup parameters at this step. Return 0 attachments%@", &v2, 0xCu);
}

void sub_100003868(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, 0x90u, "[ERROR] Failed to create empty file: %@%@", buf, 0x16u);
}

void sub_1000038D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] Timeout on getting oslog stream%@", &v2, 0xCu);
}

void sub_1000039B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] Failed to prepare oslog stream%@", &v2, 0xCu);
}

void sub_100003A2C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 localizedDescription];
  sub_1000035C8();
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, 0x90u, "[ERROR] Could not open: %@%@", v6, 0x16u);
}

void sub_100003AD0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  sub_1000035DC(&_mh_execute_header, a2, a3, "[ERROR] Invalid oslog stream: reason = %lu%@", *v3, *&v3[8], *&v3[16]);
}