id sub_100001194()
{
  if (qword_10002F0F0 != -1)
  {
    dispatch_once(&qword_10002F0F0, &stru_1000286A8);
  }

  v1 = off_10002ED80;

  return v1;
}

void sub_1000011F8(id a1)
{
  off_10002ED80 = os_log_create("com.apple.streamingzip", "unzip_service");

  _objc_release_x1();
}

id sub_10000123C()
{
  if (qword_10002F0F8 != -1)
  {
    dispatch_once(&qword_10002F0F8, &stru_1000286C8);
  }

  v1 = off_10002ED88;

  return v1;
}

void sub_100001290(id a1)
{
  off_10002ED88 = os_log_create("com.apple.streamingzip.signposts", "unzip_service");

  _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"EnableDebugLogging"];

  if (v4)
  {
    v5 = sub_100001194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Debug logging is enabled", &v12, 2u);
    }
  }

  v6 = sub_100001194();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "Oct 10 2025";
    v14 = 2080;
    v15 = "21:32:17";
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Streaming unzip service built at %s %s started", &v12, 0x16u);
  }

  signal(15, 1);
  v7 = dispatch_get_global_queue(21, 0);
  v8 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v7);
  dispatch_source_set_event_handler(v8, &stru_100028708);
  dispatch_activate(v8);
  v9 = +[NSXPCListener serviceListener];
  v10 = objc_opt_new();
  [v9 setDelegate:v10];
  [v9 resume];

  return 0;
}

void sub_1000014AC(id a1)
{
  v1 = sub_100001194();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Got SIGTERM; Exiting when clean", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

id sub_10000151C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v17)
  {
    v19 = [v17 mutableCopy];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  if (v18)
  {
    v21 = [[NSString alloc] initWithFormat:v18 arguments:&a9];
    [v20 setObject:v21 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v22 = [NSString stringWithUTF8String:a1];
  [v20 setObject:v22 forKeyedSubscript:@"SZExtractorFunctionNameErrorKey"];

  v23 = [NSNumber numberWithInt:a2];
  [v20 setObject:v23 forKeyedSubscript:@"SZExtractorSourceFileLineErrorKey"];

  v24 = [NSError errorWithDomain:v15 code:a4 userInfo:v20];

  return v24;
}

uint64_t sub_1000016BC(uint64_t result, int a2)
{
  *(result + 212) = 0;
  *(result + 196) = 0u;
  *(result + 180) = 0u;
  *(result + 164) = 0u;
  *(result + 148) = 0u;
  *(result + 132) = 0u;
  *(result + 116) = 0u;
  *(result + 100) = 0u;
  *(result + 84) = 0u;
  *(result + 68) = 0u;
  *(result + 52) = 0u;
  *(result + 36) = 0u;
  *(result + 20) = 0u;
  *(result + 4) = 0u;
  *result = a2;
  if (a2 > 4)
  {
    switch(a2)
    {
      case 5:
        return CC_SHA256_Init((result + 8));
      case 6:
        return CC_SHA384_Init((result + 8));
      case 7:
        return CC_SHA512_Init((result + 8));
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return CC_SHA1_Init((result + 8));
    }

    else if (a2 == 4)
    {
      return CC_SHA224_Init((result + 8));
    }
  }

  else
  {
    return CC_MD5_Init((result + 8));
  }

  return result;
}

unsigned __int8 *sub_100001764(unsigned __int8 *result, uint64_t a2)
{
  v2 = *a2;
  if (*a2 > 4)
  {
    switch(v2)
    {
      case 5:
        return CC_SHA256_Final(result, (a2 + 8));
      case 6:
        return CC_SHA384_Final(result, (a2 + 8));
      case 7:
        return CC_SHA512_Final(result, (a2 + 8));
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      return CC_SHA1_Final(result, (a2 + 8));
    }

    else if (v2 == 4)
    {
      return CC_SHA224_Final(result, (a2 + 8));
    }
  }

  else
  {
    return CC_MD5_Final(result, (a2 + 8));
  }

  return result;
}

uint64_t sub_1000017D0(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  v3 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v4 = 0;
    v5 = 0;
    v6 = a1 + *(a1 + 26) + 30;
    do
    {
      v7 = v4 + 4;
      if (v4 + 4 > v3)
      {
        break;
      }

      result = v6 + v4;
      v9 = *(v6 + v4);
      v10 = *(v6 + v4 + 2);
      if (v9 == *a2)
      {
        if (v7 + v10 <= v3 && v10 >= a3)
        {
          return result;
        }

        return 0;
      }

      v5 += v10 + 4;
      v4 = v5;
    }

    while (v3 > v5);
  }

  return 0;
}

uint64_t sub_100001844(uint64_t a1)
{
  if ((*(a1 + 18) == -1 || *(a1 + 22) == -1) && (v2 = sub_1000017D0(a1, &word_10001A5F2, 0x10u)) != 0 && *(v2 + 2) == 16)
  {
    return *(v2 + 4);
  }

  else
  {
    return *(a1 + 22);
  }
}

time_t sub_1000018AC(unsigned int a1)
{
  v6 = time(0);
  v3 = qword_10002F120;
  if (!qword_10002F120)
  {
    v3 = localtime_r(&v6, &stru_10002F128);
    qword_10002F120 = v3;
  }

  v3->tm_isdst = -1;
  v2.i32[0] = a1;
  v4 = vshlq_u32(vdupq_n_s32(a1), xmmword_10001A5D0);
  v4.i32[0] = vshlq_u32(v2, xmmword_10001A5C0).u32[0];
  *&v3->tm_sec = vandq_s8(v4, xmmword_10001A5E0);
  v3->tm_mon = ((a1 >> 21) & 0xF) - 1;
  v3->tm_year = (a1 >> 25) + 80;
  return mktime(v3);
}

uint64_t sub_100001D10(uint64_t a1)
{
  sub_100001F44(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100001D58(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (qword_10002F180 != -1)
    {
      dispatch_once(&qword_10002F180, &stru_1000288C0);
    }

    if ([a1 teardownInitiated])
    {
      __assert_rtn("[StreamingUnzipper _runTeardownCompletionWhenAsyncWorkFinishes:]", "StreamingUnzipper.m", 1820, "NO == self.teardownInitiated");
    }

    [a1 setTeardownInitiated:1];
    v4 = a1[12];
    v5 = qword_10002F178;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100001E6C;
    v6[3] = &unk_1000288E8;
    v6[4] = a1;
    v7 = v3;
    dispatch_group_notify(v4, v5, v6);
  }
}

void sub_100001E6C(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 112));
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  os_unfair_lock_unlock((v2 + 112));
  (*(*(a1 + 40) + 16))();
}

void sub_100001EE0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.StreamingZip.AsyncWorkNotifyQueue", v3);
  v2 = qword_10002F178;
  qword_10002F178 = v1;
}

void sub_100001F44(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 64) setStreamState:8];
    v2 = [*(a1 + 64) unzipPath];
    if (v2)
    {
      v3 = +[NSFileManager defaultManager];
      v7 = 0;
      v4 = [v3 removeItemAtPath:v2 error:&v7];
      v5 = v7;

      if ((v4 & 1) == 0)
      {
        v6 = sub_100001194();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v9 = v2;
          v10 = 2112;
          v11 = v5;
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to remove unzip path at %@ : %@", buf, 0x16u);
        }
      }
    }
  }
}

void sub_1000022BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100001194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning async file error %@", buf, 0xCu);
    }

    sub_100001F44(*(a1 + 32));
    (*(*(a1 + 40) + 16))();
    goto LABEL_97;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (!v5)
  {
    goto LABEL_96;
  }

  v7 = *(v5 + 64);
  v8 = [v7 finishStream];
  if (v8)
  {
    v9 = v8;
    sub_100001F44(v5);
    goto LABEL_95;
  }

  v101 = v6;
  v10 = [*(v5 + 64) unzipPath];
  v11 = [*(v5 + 64) applyAppleDoubleFiles];
  v12 = +[NSFileManager defaultManager];
  v13 = [*(v5 + 64) appleDoublePaths];
  v14 = [v13 count];
  v102 = v13;
  v103 = v7;
  v100 = v5;
  if (v14)
  {
    v15 = v14;
    v16 = sub_100001194();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = v15;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Applying %lu AppleDouble files...", buf, 0xCu);
    }

    v119 = 0u;
    v120 = 0u;
    memset(v118, 0, sizeof(v118));
    obj = v13;
    v17 = [obj countByEnumeratingWithState:v118 objects:buf count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v111 = **&v118[16];
      v105 = v12;
      v106 = v10;
      v104 = v11;
      while (2)
      {
        v20 = 0;
        v107 = v18;
        do
        {
          if (**&v118[16] != v111)
          {
            objc_enumerationMutation(obj);
          }

          v21 = [v10 stringByAppendingPathComponent:*(*&v118[8] + 8 * v20)];
          v22 = v21;
          if (v11)
          {
            v23 = v21;
            v24 = [v23 stringByDeletingLastPathComponent];
            v110 = [v23 lastPathComponent];
            v109 = [v110 substringFromIndex:2];
            v25 = [v24 stringByAppendingPathComponent:?];
            v26 = sub_100001194();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *v122 = 138412802;
              *&v122[4] = v23;
              *&v122[12] = 2112;
              *&v122[14] = v25;
              v123 = 1024;
              LODWORD(v124) = 9175045;
              _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Applying AppleDouble at %@ to %@ with flags 0x%x", v122, 0x1Cu);
            }

            v27 = [v23 fileSystemRepresentation];
            v28 = copyfile(v27, [v25 fileSystemRepresentation], 0, 0x8C0005u);
            if (v28)
            {
              v29 = __error();
              v31 = sub_10000151C("[StreamingUnzipper _applyAppleDoubleAtPath:error:]", 1900, NSPOSIXErrorDomain, *v29, 0, 0, @"copyfile failed when called with source %s dest %s flags 0x%x", v30, v27);
              v32 = sub_100001194();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *v122 = 138412802;
                *&v122[4] = v23;
                *&v122[12] = 2112;
                *&v122[14] = v25;
                v123 = 2112;
                v124 = v31;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to apply AppleDouble file at %@ to %@ : %@", v122, 0x20u);
              }

              v121 = NSFilePathErrorKey;
              *v122 = v23;
              v33 = [NSDictionary dictionaryWithObjects:v122 forKeys:&v121 count:1];
              v35 = sub_10000151C("[StreamingUnzipper _applyAppleDoubleAtPath:error:]", 1901, @"SZExtractorErrorDomain", 1, v31, v33, @"Failed to apply AppleDouble file at %@ to %@", v34, v23);

              v36 = v35;
              v37 = v35;
            }

            else
            {
              v37 = 0;
              v35 = v19;
            }

            v38 = v35;
            v12 = v105;
            v10 = v106;
            v11 = v104;
            v18 = v107;
            if (v28)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v38 = v19;
          }

          v39 = sub_100001194();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *v122 = 138412290;
            *&v122[4] = v22;
            _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Removing AppleDouble file %@", v122, 0xCu);
          }

          v113 = v38;
          v40 = [v12 removeItemAtPath:v22 error:&v113];
          v19 = v113;

          if ((v40 & 1) == 0)
          {
            v42 = sub_100001194();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *v122 = 138412546;
              *&v122[4] = v22;
              *&v122[12] = 2112;
              *&v122[14] = v19;
              _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to remove AppleDouble file at path %@ : %@", v122, 0x16u);
            }

            v121 = NSFilePathErrorKey;
            *v122 = v22;
            v43 = [NSDictionary dictionaryWithObjects:v122 forKeys:&v121 count:1];
            v38 = sub_10000151C("[StreamingUnzipper _processAppleDoublePathsWithError:]", 1937, @"SZExtractorErrorDomain", 1, v19, v43, @"Failed to remove AppleDouble file at path %@", v44, v22);

            v23 = v22;
LABEL_36:

            v45 = v38;
            v41 = 0;
            v19 = v38;
            goto LABEL_39;
          }

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:v118 objects:buf count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

    [obj removeAllObjects];
    v38 = 0;
    v41 = 1;
LABEL_39:
    v3 = 0;
  }

  else
  {
    v38 = 0;
    v19 = 0;
    v41 = 1;
  }

  v114 = v41;

  v46 = v114;
  v9 = v38;
  if ((v46 & 1) == 0)
  {
    sub_100001F44(v100);
LABEL_60:
    v6 = v101;
    v7 = v103;
    goto LABEL_95;
  }

  v7 = v103;
  v47 = [v103 unzipPath];
  v48 = removexattr([v47 fileSystemRepresentation], "com.apple.streamingzip.incomplete_extraction", 1);

  if (v48)
  {
    v49 = *__error();
    if (v49 != 93)
    {
      v50 = sub_100001194();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [v103 unzipPath];
        v52 = strerror(v49);
        *buf = 136315650;
        *&buf[4] = "com.apple.streamingzip.incomplete_extraction";
        *&buf[12] = 2112;
        *&buf[14] = v51;
        *&buf[22] = 2080;
        v116 = v52;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Failed to remove xattr named %s on %@ : %s", buf, 0x20u);
      }
    }
  }

  if (![v103 denyInvalidSymlinks])
  {
    v6 = v101;
    goto LABEL_94;
  }

  v53 = [v103 unzipPath];
  if (!v53)
  {
    v70 = sub_100001194();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = 0;
      _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "base directory path cannot be nil : %@", buf, 0xCu);
    }

    v72 = @"base directory path cannot be nil";
    v73 = 1743;
    goto LABEL_68;
  }

  v54 = [NSURL fileURLWithPath:v53 isDirectory:1];
  if (!v54)
  {
    v74 = sub_100001194();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v53;
      *&buf[12] = 2112;
      *&buf[14] = 0;
      _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "base directory URL cannot be nil (created from path: %@) : %@", buf, 0x16u);
    }

    v98 = v53;
    v72 = @"base directory URL cannot be nil (created from path: %@)";
    v73 = 1750;
LABEL_68:
    v75 = sub_10000151C("_ValidateAllSymlinksUnderPath", v73, @"SZExtractorErrorDomain", 2, 0, 0, v72, v71, v98);
    v55 = 0;
    goto LABEL_91;
  }

  v99 = v3;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100003078;
  v116 = &unk_100028938;
  v117 = v54;
  v55 = v117;
  v56 = buf;
  *v122 = 0;
  *&v122[8] = 0;
  v57 = [v55 fileSystemRepresentation];
  if (!v57)
  {
    v76 = sub_100001194();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *v118 = 138412290;
      *&v118[4] = 0;
      _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "directory url fileSystemRepresentation cannot be NULL : %@", v118, 0xCu);
    }

    v78 = @"directory url fileSystemRepresentation cannot be NULL";
    v79 = 1687;
    goto LABEL_75;
  }

  v58 = v57;
  *v122 = v57;
  *&v122[8] = 0;
  v59 = fts_open(v122, 84, 0);
  if (!v59)
  {
    v80 = sub_100001194();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v95 = __error();
      v96 = strerror(*v95);
      *v118 = 136315650;
      *&v118[4] = v58;
      *&v118[12] = 2080;
      *&v118[14] = v96;
      *&v118[22] = 2112;
      *&v118[24] = 0;
      _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "fts_open failed for %s with error %s : %@", v118, 0x20u);
    }

    v81 = __error();
    v98 = v58;
    strerror(*v81);
    v78 = @"fts_open failed for %s with error %s";
    v79 = 1697;
LABEL_75:
    v69 = sub_10000151C("_TraverseDirectory", v79, @"SZExtractorErrorDomain", 2, 0, 0, v78, v77, v98);
    goto LABEL_87;
  }

  v60 = v59;
  v112 = v58;
  v61 = 0;
  v62 = 0;
  while (1)
  {
    v63 = fts_read(v60);
    if (!v63)
    {
      v69 = v61;
      goto LABEL_80;
    }

    v64 = v63;
    fts_info = v63->fts_info;
    if (fts_info == 10 || fts_info == 7)
    {
      break;
    }

    v67 = objc_autoreleasePoolPush();
    v121 = v61;
    v68 = (*&buf[16])(v56, v64, &v121);
    v69 = v121;

    objc_autoreleasePoolPop(v67);
    v62 = 1;
    v61 = v69;
    if ((v68 & 1) == 0)
    {
      v62 = 0;
LABEL_80:
      v83 = v112;
      goto LABEL_81;
    }
  }

  v82 = sub_100001194();
  v83 = v112;
  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
  {
    v97 = strerror(v64->fts_errno);
    *v118 = 136315650;
    *&v118[4] = v112;
    *&v118[12] = 2080;
    *&v118[14] = v97;
    *&v118[22] = 2112;
    *&v118[24] = 0;
    _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Error for path %s: %s : %@", v118, 0x20u);
  }

  strerror(v64->fts_errno);
  v69 = sub_10000151C("_TraverseDirectory", 1706, @"SZExtractorErrorDomain", 2, 0, 0, @"Error for path %s: %s", v84, v112);

  v62 = 0;
LABEL_81:
  if (fts_close(v60))
  {
    v85 = *__error();
    v86 = sub_100001194();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v94 = strerror(v85);
      *v118 = 136315394;
      *&v118[4] = v83;
      *&v118[12] = 2080;
      *&v118[14] = v94;
      _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "fts_close on FTS for %s returned %s", v118, 0x16u);
    }
  }

  if (v62)
  {
    v87 = 0;
    v88 = 1;
    goto LABEL_88;
  }

LABEL_87:
  v89 = v69;
  v88 = 0;
  v87 = v69;
LABEL_88:

  v75 = v87;
  if (v88)
  {
    v90 = 1;
    v91 = v9;
    v3 = v99;
    goto LABEL_92;
  }

  v3 = v99;
LABEL_91:
  v92 = v75;
  v90 = 0;
  v91 = v75;
LABEL_92:

  v93 = v91;
  if ((v90 & 1) == 0)
  {
    sub_100001F44(v100);
    v9 = v93;
    goto LABEL_60;
  }

  v9 = v93;
  v6 = v101;
  v7 = v103;
LABEL_94:

  v9 = 0;
LABEL_95:
  v6[2](v6, v9);

LABEL_96:
LABEL_97:
}

uint64_t sub_100003078(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return 1;
  }

  if ((*(*(a2 + 96) + 4) & 0xF000) != 0xA000)
  {
    return 1;
  }

  v5 = [NSURL fileURLWithFileSystemRepresentation:*(a2 + 48) isDirectory:0 relativeToURL:0];
  v6 = [v5 path];
  v7 = [*(a1 + 32) path];
  LODWORD(a3) = sub_100003124(v6, v7, a3);

  result = 0;
  if (a3)
  {
    return 1;
  }

  return result;
}

uint64_t sub_100003124(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  bzero(__s, 0x400uLL);
  if (realpath_DARWIN_EXTSN([v5 fileSystemRepresentation], __s) || *__error() == 2)
  {
    v41 = a3;
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 stringWithFileSystemRepresentation:__s length:strlen(__s)];

    v9 = [v8 pathComponents];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = [v6 pathComponents];
    v11 = [v10 countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v43;
      v40 = v5;
      while (2)
      {
        v15 = v8;
        v16 = v6;
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          if (v13 >= [v9 count] || (objc_msgSend(v9, "objectAtIndexedSubscript:", v13), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToString:", v19), v19, (v20 & 1) == 0))
          {
            v23 = sub_100001194();
            v6 = v16;
            v8 = v15;
            v5 = v40;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v34 = [v40 fileSystemRepresentation];
              *buf = 136315906;
              v49 = v34;
              v50 = 2112;
              v51 = v8;
              v52 = 2112;
              v53 = v6;
              v54 = 2112;
              v55 = 0;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Rejecting %s because its resolved path %@ points outside or to the unzip dir %@ : %@", buf, 0x2Au);
            }

            v46 = NSFilePathErrorKey;
            v47 = v40;
            v24 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
            v25 = [v40 fileSystemRepresentation];
            v21 = sub_10000151C("_CheckRealpathHasBasePrefix", 466, @"SZExtractorErrorDomain", 5, 0, v24, @"Rejecting %s because its resolved path %@ points outside or to the unzip dir %@", v26, v25);

            v22 = 0;
            goto LABEL_17;
          }

          ++v13;
        }

        v12 = [v10 countByEnumeratingWithState:&v42 objects:v56 count:16];
        v21 = 0;
        v22 = 1;
        v6 = v16;
        v8 = v15;
        v5 = v40;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v21 = 0;
      v22 = 1;
    }

LABEL_17:

    a3 = v41;
  }

  else
  {
    v29 = *__error();
    v30 = sub_100001194();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v35 = [v5 fileSystemRepresentation];
      v36 = v6;
      v37 = a3;
      v38 = strerror(v29);
      v31 = NSPOSIXErrorDomain;
      v39 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v29 userInfo:0];
      *buf = 136315650;
      v49 = v35;
      v50 = 2080;
      v51 = v38;
      a3 = v37;
      v6 = v36;
      v52 = 2112;
      v53 = v39;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Call to realpath failed for suspicious path %s: %s : %@", buf, 0x20u);
    }

    else
    {
      v31 = NSPOSIXErrorDomain;
    }

    v8 = [NSError errorWithDomain:v31 code:v29 userInfo:0];
    v57 = NSFilePathErrorKey;
    v58 = v5;
    v9 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v32 = [v5 fileSystemRepresentation];
    strerror(v29);
    v21 = sub_10000151C("_CheckRealpathHasBasePrefix", 454, @"SZExtractorErrorDomain", 5, v8, v9, @"Call to realpath failed for suspicious path %s: %s", v33, v32);
    v22 = 0;
  }

  if (a3 && (v22 & 1) == 0)
  {
    v27 = v21;
    *a3 = v21;
  }

  return v22;
}

void sub_100003864(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100001194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning async file error %@", &v7, 0xCu);
    }

    sub_100001F44(*(a1 + 32));
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [*(*(a1 + 32) + 64) serializeState];
    v6 = *(a1 + 32);
    if (v5)
    {
      sub_100001F44(v6);
    }

    else
    {
      [*(v6 + 64) currentOffset];
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100003C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t sub_100003CB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003CC8(uint64_t a1, const Bytef *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = sub_100001194();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 56);
    *buf = 134218240;
    v16 = v12;
    v17 = 2048;
    v18 = a3;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Got block of length %lu at offset %lu", buf, 0x16u);
  }

  v11 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003E2C;
  v13[3] = &unk_100028858;
  v14 = *(a1 + 40);
  sub_100003E8C(v11, a2, a4, v13);
  if (*(*(*(a1 + 40) + 8) + 40) || *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a5 = 1;
  }
}

void sub_100003E2C(uint64_t a1, void *a2, char a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

void sub_100003E8C(uint64_t a1, const Bytef *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (!a1)
  {
    goto LABEL_543;
  }

  v546 = a2;
  v545 = a3;
  v9 = (a1 + 64);
  v8 = *(a1 + 64);
  if (!v8)
  {
    v301 = sub_100001194();
    if (os_log_type_enabled(v301, OS_LOG_TYPE_ERROR))
    {
      v591.st_dev = 138412290;
      *&v591.st_mode = 0;
      _os_log_error_impl(&_mh_execute_header, v301, OS_LOG_TYPE_ERROR, "Unzipper did not have any state! Client should suspend stream and resume from the given offset. : %@", &v591, 0xCu);
    }

    v10 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 494, @"SZExtractorErrorDomain", 3, 0, 0, @"Unzipper did not have any state! Client should suspend stream and resume from the given offset.", v302, v474);
    v498 = 0;
LABEL_424:
    v257 = 0;
    if (v10)
    {
      goto LABEL_537;
    }

    goto LABEL_542;
  }

  v498 = [v8 unzipPath];
  v10 = 0;
  p_st_uid = &v591.st_uid;
  v496 = NSFilePathErrorKey;
  v492 = NSPOSIXErrorDomain;
  *&v11 = 138412546;
  v489 = v11;
  *&v11 = 136315138;
  v485 = v11;
  *&v11 = 136315394;
  v488 = v11;
  *&v11 = 136316162;
  v486 = v11;
  *&v11 = 138412802;
  v483 = v11;
  *&v11 = 138412290;
  v491 = v11;
  *&v11 = 134218754;
  v480 = v11;
  *&v11 = 138413058;
  v490 = v11;
  *&v11 = 134217984;
  v493 = v11;
  *&v11 = 67109632;
  v487 = v11;
  *&v11 = 134218240;
  v477 = v11;
  *&v11 = 67109376;
  v478 = v11;
  *&v11 = 136315650;
  v482 = v11;
  *&v11 = 136316418;
  v479 = v11;
  *&v11 = 136315906;
  v481 = v11;
  v497 = v7;
  v502 = (a1 + 64);
  while (1)
  {
    v12 = v545;
    if (!v545)
    {
      goto LABEL_424;
    }

    v501 = objc_autoreleasePoolPush();
    v13 = [*v9 streamState];
    if (v13 >= 3)
    {
      if (v13 > 3)
      {
        if (v13 >= 5)
        {
          if (v13 > 6)
          {
            if (v13 == 7)
            {
              goto LABEL_534;
            }

            if (v13 != 8)
            {
LABEL_613:
              v466 = sub_100001194();
              if (os_log_type_enabled(v466, OS_LOG_TYPE_ERROR))
              {
                v467 = [*v502 streamState];
                v591.st_dev = 67109120;
                *&v591.st_mode = v467;
                _os_log_error_impl(&_mh_execute_header, v466, OS_LOG_TYPE_ERROR, "Invalid unzip state encountered: %hhu", &v591, 8u);
              }

              __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1651, "false");
            }

LABEL_448:
            v257 = 1;
            goto LABEL_535;
          }

          if (v13 == 5)
          {
            v328 = [*v9 fileWriter];
            if (!v328)
            {
              __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1605, "_currentState.fileWriter");
            }

            [*v9 setCurrentOffset:{objc_msgSend(*v9, "currentOffset") + v12}];
            v329 = *v9;
            v330 = [*v9 currentOffset];
            v27 = [v329 updateHashFromOffset:&v330[-v12] withBytes:v546 length:v12];

            if (v27)
            {
              goto LABEL_520;
            }

            v331 = [*v9 fileWriter];
            v504 = 0;
            v332 = [v331 writeBuffer:v546 length:v545 error:&v504];
            v10 = v504;

            if (v332)
            {
              [*v9 markResumptionPoint];
            }

LABEL_534:
            v257 = 0;
            goto LABEL_535;
          }

          if ([*v9 hashedChunkSize])
          {
            v314 = [*v9 hashedChunkSize];
            v315 = [*v9 bytesHashedInChunk];
            if (v314 - v315 < v12)
            {
              v12 = v314 - v315;
            }
          }

          v316 = *v9;
          v317 = [*v9 currentOffset];
          v27 = [v316 updateHashFromOffset:v317 withBytes:v546 length:v12 onlyFinishCurrentChunk:1];

          [*v9 setCurrentOffset:{objc_msgSend(*v9, "currentOffset") + v12}];
          if (v27)
          {
            goto LABEL_520;
          }

          if ([*v9 bytesHashedInChunk])
          {
            if (v12 != v545)
            {
              __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1638, "lengthToRead == length");
            }

            v17 = *v9;
LABEL_445:
            [v17 markResumptionPoint];
            v10 = 0;
            goto LABEL_534;
          }

LABEL_576:
          [*v9 setStreamState:7];
          v10 = 0;
          goto LABEL_448;
        }

LABEL_78:
        v62 = [*v9 uncompressedBytesOutput];
        v63 = sub_100009AA0(*v9);
        v64 = *v9;
        if (v62 == v63)
        {
          v65 = [v64 currentCRC32];
          v66 = sub_10000A284(*v9);
          v67 = [*v9 currentLFRecord];
          if (v65 == v66)
          {
            v68 = sub_1000017D0(v67, &word_10001A5F0, 8u);
            v69 = sub_100009CBC([*v9 currentLFRecord]);
            v70 = [v69 fileSystemRepresentation];
            v71 = *v9;
            if (!v69 || !v70)
            {
              v75 = [v71 unsureData];

              if (v75)
              {
                v76 = v10;
                v77 = sub_100001194();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v591.st_dev) = 0;
                  _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Couldn't get filename for stream metadata file; entering passthrough mode", &v591, 2u);
                }

                v10 = sub_100009330(a1, v546, v12);

                v55 = 2;
              }

              else
              {
                v78 = v10;
                v79 = [*v9 currentLFRecord];
                v80 = v79[13];
                v81 = malloc_type_calloc(v80 + 1, 1uLL, 0x100004077774924uLL);
                memcpy(v81, v79 + 15, v80);
                v82 = sub_100001194();
                if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                {
                  v591.st_dev = v488;
                  *&v591.st_mode = v81;
                  WORD2(v591.st_ino) = 2112;
                  *(&v591.st_ino + 6) = 0;
                  _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Couldn't get filename for current file %s : %@", &v591, 0x16u);
                }

                v557 = @"SZExtractorFileOffsetErrorKey";
                v83 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
                v558 = v83;
                v84 = [NSDictionary dictionaryWithObjects:&v558 forKeys:&v557 count:1];
                v55 = 2;
                v10 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1302, @"SZExtractorErrorDomain", 2, 0, v84, @"Couldn't get filename for current file %s", v85, v81);

                free(v81);
              }

              goto LABEL_406;
            }

            if ([v71 recordsProcessed] > 2 || strcmp(v70, "META-INF/com.apple.ZipMetadata.plist"))
            {
              if ([*v9 recordsProcessed] > 3 || strcmp(v70, "META-INF/com.apple.FixedZipMetadata.bin"))
              {
                if (([*v9 currentLFMode] & 0xF000) == 0xA000)
                {
                  v72 = [v498 stringByAppendingPathComponent:v69];
                  if ([*v9 storeCurrentFileInMemory])
                  {
                    v73 = [*v9 inMemoryFileData];
                    if (!v73)
                    {
                      __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1438, "_currentState.inMemoryFileData");
                    }

                    v503 = v10;

                    v74 = [*v9 inMemoryFileData];
                  }

                  else
                  {
                    v509 = 0;
                    v74 = [NSMutableData dataWithContentsOfFile:v72 options:3 error:&v509];
                    v101 = v509;
                    if (!v74)
                    {
                      v132 = v10;
                      v133 = sub_100001194();
                      if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
                      {
                        v591.st_dev = v489;
                        *&v591.st_mode = v72;
                        WORD2(v591.st_ino) = 2112;
                        *(&v591.st_ino + 6) = v101;
                        _os_log_error_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "Failed to read symlink path from %@ : %@", &v591, 0x16u);
                      }

                      v555 = v496;
                      v556 = v72;
                      v134 = [NSDictionary dictionaryWithObjects:&v556 forKeys:&v555 count:1];
                      v10 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1444, @"SZExtractorErrorDomain", 5, v101, v134, @"Failed to read symlink path from %@", v135, v72);

                      goto LABEL_280;
                    }

                    v503 = v10;
                    v102 = +[NSFileManager defaultManager];
                    [v102 removeItemAtPath:v72 error:0];
                  }

                  v508 = 0;
                  [v74 appendBytes:&v508 length:1];
                  v103 = [v74 bytes];
                  v104 = [v72 fileSystemRepresentation];
                  if ([*v9 denyInvalidSymlinks])
                  {
                    if (*v103 == 47)
                    {
                      v105 = sub_100001194();
                      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                      {
                        v591.st_dev = v482;
                        *&v591.st_mode = v104;
                        WORD2(v591.st_ino) = 2080;
                        *(&v591.st_ino + 6) = v103;
                        HIWORD(v591.st_gid) = 2112;
                        *&v591.st_rdev = 0;
                        _os_log_error_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "Invalid symlink: %s -> %s (absolute symlinks are forbidden) : %@", &v591, 0x20u);
                      }

                      v553 = v496;
                      v554 = v72;
                      v106 = [NSDictionary dictionaryWithObjects:&v554 forKeys:&v553 count:1];
                      sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1462, @"SZExtractorErrorDomain", 5, 0, v106, @"Invalid symlink: %s -> %s (absolute symlinks are forbidden)", v107, v104);
                      v10 = LABEL_201:;

LABEL_202:
                      goto LABEL_203;
                    }

                    v585 = 0;
                    v544 = 0;
                    if (!sub_10000A3D8([v69 fileSystemRepresentation], 0, &v544) || !sub_10000A3D8(v103, v544, &v585))
                    {
                      v146 = sub_100001194();
                      if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
                      {
                        v591.st_dev = v482;
                        *&v591.st_mode = v104;
                        WORD2(v591.st_ino) = 2080;
                        *(&v591.st_ino + 6) = v103;
                        HIWORD(v591.st_gid) = 2112;
                        *&v591.st_rdev = 0;
                        _os_log_error_impl(&_mh_execute_header, v146, OS_LOG_TYPE_ERROR, "Invalid symlink: %s -> %s : %@", &v591, 0x20u);
                      }

                      v551 = v496;
                      v552 = v72;
                      v106 = [NSDictionary dictionaryWithObjects:&v552 forKeys:&v551 count:1];
                      sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1475, @"SZExtractorErrorDomain", 5, 0, v106, @"Invalid symlink: %s -> %s", v147, v104);
                      goto LABEL_201;
                    }
                  }

                  if (symlink(v103, v104))
                  {
                    v126 = *__error();
                    v127 = sub_100001194();
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                    {
                      v272 = strerror(v126);
                      v591.st_dev = v481;
                      *&v591.st_mode = v104;
                      WORD2(v591.st_ino) = 2080;
                      *(&v591.st_ino + 6) = v103;
                      HIWORD(v591.st_gid) = 2080;
                      *&v591.st_rdev = v272;
                      LOWORD(v591.st_atimespec.tv_sec) = 2112;
                      *(&v591.st_atimespec.tv_sec + 2) = 0;
                      _os_log_error_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Failed to create symlink at %s to %s: %s : %@", &v591, 0x2Au);
                    }

                    v549 = v496;
                    v550 = v72;
                    v128 = [NSDictionary dictionaryWithObjects:&v550 forKeys:&v549 count:1];
                    strerror(v126);
                    v10 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1483, v492, v126, 0, v128, @"Failed to create symlink at %s to %s: %s", v129, v104);

                    goto LABEL_202;
                  }

                  lchmod(v104, [*v9 currentLFMode]);
                  v585 = -1;
                  v544 = -1;
                  if ([*v9 resolveOwnershipWithExtraField:v68 outUID:&v585 outGID:&v544] && lchown(v104, v585, v544))
                  {
                    v500 = a1;
                    v142 = *__error();
                    v143 = sub_100001194();
                    if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                    {
                      v298 = v585;
                      v299 = v544;
                      v300 = strerror(v142);
                      v591.st_dev = v479;
                      *&v591.st_mode = v104;
                      WORD2(v591.st_ino) = 1024;
                      *(&v591.st_ino + 6) = v298;
                      HIWORD(v591.st_uid) = 1024;
                      v591.st_gid = v299;
                      LOWORD(v591.st_rdev) = 1024;
                      *(&v591.st_rdev + 2) = v142;
                      *(&v591.st_rdev + 3) = 2080;
                      v591.st_atimespec.tv_sec = v300;
                      LOWORD(v591.st_atimespec.tv_nsec) = 2112;
                      *(&v591.st_atimespec.tv_nsec + 2) = 0;
                      _os_log_error_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "Failed to lchown %s to (%d:%d) : %d (%s) : %@", &v591, 0x32u);
                    }

                    v547 = v496;
                    v548 = v72;
                    v144 = [NSDictionary dictionaryWithObjects:&v548 forKeys:&v547 count:1];
                    strerror(v142);
                    v10 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1494, v492, v142, 0, v144, @"Failed to lchown %s to (%d:%d) : %d (%s)", v145, v104);

                    a1 = v500;
                    goto LABEL_203;
                  }

                  if ([*v9 denyInvalidSymlinks])
                  {
                    v206 = a1;
                    v207 = v503;
                    v507 = v503;
                    v208 = sub_100003124(v72, v498, &v507);
                    v10 = v507;

                    a1 = v206;
                    v9 = v502;
                    v503 = v10;
                    if (!v208)
                    {
LABEL_203:

LABEL_280:
                      v55 = 2;
LABEL_281:
                      v7 = v497;
LABEL_406:

                      v56 = v501;
                      goto LABEL_407;
                    }
                  }

                  if (v68)
                  {
                    *&v591.st_dev = *(v68 + 4);
                    LODWORD(v591.st_ino) = 0;
                    *&v591.st_uid = *(v68 + 8);
                  }

                  else
                  {
                    *&v591.st_dev = sub_1000018AC(*([*v9 currentLFRecord] + 10));
                    LODWORD(v591.st_ino) = 0;
                    *&v591.st_uid = *&v591.st_dev;
                  }

                  v591.st_rdev = 0;
                  lutimes(v104, &v591);
                  v10 = v503;
                }

                else if ([*v9 storeCurrentFileInMemory])
                {
                  v72 = sub_100001194();
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                  {
                    v591.st_dev = v491;
                    *&v591.st_mode = v69;
                    _os_log_debug_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "Not doing anything with data for file %@", &v591, 0xCu);
                  }
                }

                else
                {
                  if (v68)
                  {
                    v109 = *(v68 + 4);
                    v108 = *(v68 + 8);
                  }

                  else
                  {
                    v108 = sub_1000018AC(*([*v9 currentLFRecord] + 10));
                    v109 = v108;
                  }

                  v136 = [*v9 currentLFRecord];
                  if (v136[*(v136 + 13) + 29] == 47)
                  {
                    v72 = [v498 stringByAppendingPathComponent:v69];
                    *&v591.st_dev = v109;
                    v591.st_ino = 0;
                    *&v591.st_uid = v108;
                    *&v591.st_rdev = 0;
                    lutimes([v72 fileSystemRepresentation], &v591);
                  }

                  else
                  {
                    v137 = [*v9 fileWriter];
                    if (!v137)
                    {
                      __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1538, "fileWriter");
                    }

                    v72 = v137;
                    v138 = [*v9 currentLFMode];
                    if ([*v9 expectAppleDoubleFiles])
                    {
                      v139 = [v69 lastPathComponent];
                      v503 = v10;
                      v140 = v139;
                      v141 = [v139 hasPrefix:@"._"];

                      v10 = v503;
                      if (v141)
                      {
                        v138 = v138 | 0x100;
                      }

                      else
                      {
                        v138 = v138;
                      }
                    }

                    else
                    {
                      v141 = 0;
                    }

                    v506 = v10;
                    v148 = [v72 finalizeFileWithAccessTime:v109 modTime:0 mode:v108 error:0, v138, &v506];
                    v149 = v506;
                    v150 = v10;
                    v10 = v149;

                    if ((v148 & 1) == 0)
                    {
                      goto LABEL_280;
                    }

                    [*v9 setFileWriter:0];
                    v505 = v10;
                    v151 = [v72 closeOutputFDWithError:&v505];
                    v152 = v505;

                    if ((v141 & v151) != 1)
                    {

                      if ((v151 & 1) == 0)
                      {
                        v55 = 2;
                        v10 = v152;
                        goto LABEL_281;
                      }

                      v10 = v152;
LABEL_396:
                      v7 = v497;
                      v284 = sub_10000123C();
                      if (os_signpost_enabled(v284))
                      {
                        v591.st_dev = v491;
                        *&v591.st_mode = v69;
                        _os_signpost_emit_with_name_impl(&_mh_execute_header, v284, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EXTRACTION", "Extraction completed successfully for file %@", &v591, 0xCu);
                      }

                      [*(a1 + 64) setPerformingExtraction:0];
                      v285 = v69;
                      if ((*(a1 + 80) & 2) != 0)
                      {
                        v286 = [a1 xpcConnection];
                        v287 = v286;
                        if (v286)
                        {
                          v288 = [v286 remoteObjectProxy];
                          [v288 extractionCompleteAtArchivePath:v285];
                        }

                        else
                        {
                          v288 = [a1 inProcessExtractorDelegate];
                          if (v288)
                          {
                            v290 = [a1 inProcessDelegateQueue];

                            if (v290)
                            {
                              v291 = [a1 inProcessDelegateQueue];
                              *&v591.st_dev = _NSConcreteStackBlock;
                              v591.st_ino = 3221225472;
                              *&v591.st_uid = sub_10000A4B4;
                              *&v591.st_rdev = &unk_100028808;
                              v288 = v288;
                              v591.st_atimespec.tv_sec = v288;
                              v591.st_atimespec.tv_nsec = v285;
                              dispatch_async(v291, &v591);
                            }
                          }
                        }
                      }

                      [*v9 setStreamState:0];
                      if (![*v9 totalUncompressedBytes] && objc_msgSend(*v9, "totalRecordCount"))
                      {
                        sub_10000A144(a1, [*(a1 + 64) recordsProcessed] / objc_msgSend(*(a1 + 64), "totalRecordCount"));
                      }

                      v55 = 3;
                      goto LABEL_406;
                    }

                    v153 = [*v9 appleDoublePaths];
                    [v153 addObject:v69];

                    v10 = v152;
                  }
                }

LABEL_395:

                goto LABEL_396;
              }

              if ([*v9 storeCurrentFileInMemory])
              {
                v110 = [*v9 inMemoryFileData];
                if (!v110)
                {
                  __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1383, "_currentState.inMemoryFileData");
                }

                v72 = [*v9 inMemoryFileData];
              }

              else
              {
                v117 = [v498 stringByAppendingPathComponent:v69];
                v538 = 0;
                v72 = [NSData dataWithContentsOfFile:v117 options:3 error:&v538];
                v118 = v538;
                if (!v72)
                {
                  v119 = sub_100001194();
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                  {
                    v591.st_dev = v489;
                    *&v591.st_mode = v117;
                    WORD2(v591.st_ino) = 2112;
                    *(&v591.st_ino + 6) = v118;
                    _os_log_error_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "Failed to read fixed stream metadata from %@: %@", &v591, 0x16u);
                  }
                }
              }

              if (!v72)
              {
                goto LABEL_395;
              }

              v120 = [v72 bytes];
              v124 = [v72 length];
              if (v124 < 7 || *v120 != 2017879117)
              {
                v125 = sub_100001194();
                if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                {
                  v591.st_dev = v493;
                  *&v591.st_mode = v124;
                  _os_log_error_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "Got a fixed metadata file that did not match expected content (length %lu). Ignoring.", &v591, 0xCu);
                }

                goto LABEL_395;
              }

              v215 = a1;
              v216 = *v9;
              if (*v9)
              {
                [v216 hashContext];
                v216 = *v9;
                v217 = v524 + 1;
                if (*v9)
                {
                  v216 = [v216 hashContext];
                  v218 = v510;
                  goto LABEL_386;
                }

                v271 = 0uLL;
              }

              else
              {
                v537 = 0;
                v271 = 0uLL;
                v535 = 0u;
                v536 = 0u;
                v533 = 0u;
                v534 = 0u;
                v531 = 0u;
                v532 = 0u;
                v529 = 0u;
                v530 = 0u;
                v527 = 0u;
                v528 = 0u;
                v525 = 0u;
                v526 = 0u;
                v217 = 1;
                v524 = 0u;
              }

              v218 = 0;
              v523 = 0;
              v521 = v271;
              v522 = v271;
              v519 = v271;
              v520 = v271;
              v517 = v271;
              v518 = v271;
              v515 = v271;
              v516 = v271;
              v513 = v271;
              v514 = v271;
              v511 = v271;
              v512 = v271;
              v510 = v271;
LABEL_386:
              v274 = v120[4];
              if (v217 == v274)
              {
                v275 = qword_10001A638[v218];
                v276 = *(v120 + 5);
                v277 = v275;
                if (v275 == v276)
                {
                  v278 = v275;
                  v279 = v275 + 7;
                  if (v124 >= v279)
                  {
                    __chkstk_darwin(v216, v121, v122, v123);
                    v294 = &v474 - v293;
                    bzero(&v474 - v293, v278);
                    if (!memcmp(v294, v120 + 7, v278))
                    {
                      v296 = sub_100001194();
                      a1 = v215;
                      if (os_log_type_enabled(v296, OS_LOG_TYPE_DEBUG))
                      {
                        LOWORD(v591.st_dev) = 0;
                        _os_log_debug_impl(&_mh_execute_header, v296, OS_LOG_TYPE_DEBUG, "Found last chunk partial hash data but the hash was not computed.", &v591, 2u);
                      }
                    }

                    else
                    {
                      v295 = sub_10000A350(v120 + 7, v278);
                      [*v502 setLastChunkPartialHash:v295];

                      v296 = sub_100001194();
                      a1 = v215;
                      if (os_log_type_enabled(v296, OS_LOG_TYPE_DEBUG))
                      {
                        v297 = [*v502 lastChunkPartialHash];
                        v591.st_dev = v491;
                        *&v591.st_mode = v297;
                        _os_log_debug_impl(&_mh_execute_header, v296, OS_LOG_TYPE_DEBUG, "Got last chunk partial hash %@", &v591, 0xCu);
                      }
                    }

                    v9 = v502;
                    goto LABEL_395;
                  }

                  v280 = sub_100001194();
                  if (!os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_394;
                  }

                  v591.st_dev = v477;
                  *&v591.st_mode = v124;
                  WORD2(v591.st_ino) = 2048;
                  *(&v591.st_ino + 6) = v279;
                  v281 = v280;
                  v282 = "Got incomplete data length %lu but need at least length %lu to hold full hash. Ignoring.";
                  v283 = 22;
                  goto LABEL_420;
                }

                v280 = sub_100001194();
                if (!os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
                {
LABEL_394:

                  a1 = v215;
                  goto LABEL_395;
                }

                v591.st_dev = v478;
                *&v591.st_mode = v276;
                LOWORD(v591.st_ino) = 1024;
                *(&v591.st_ino + 2) = v277;
                v281 = v280;
                v282 = "Got hash length %hu in archive metadata but expected hash length %hu based on options. Ignoring.";
              }

              else
              {
                v280 = sub_100001194();
                if (!os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_394;
                }

                v591.st_dev = v478;
                *&v591.st_mode = v274;
                LOWORD(v591.st_ino) = 1024;
                *(&v591.st_ino + 2) = v217;
                v281 = v280;
                v282 = "Got hash type %hhu in archive metadata but expected hash type %hhu based on options. Ignoring.";
              }

              v283 = 14;
LABEL_420:
              _os_log_error_impl(&_mh_execute_header, v281, OS_LOG_TYPE_ERROR, v282, &v591, v283);
              goto LABEL_394;
            }

            [*v9 setStreamInfoDict:0];
            if ([*v9 storeCurrentFileInMemory])
            {
              v86 = [*v9 inMemoryFileData];
              if (!v86)
              {
                __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1316, "_currentState.inMemoryFileData");
              }

              v87 = [*v9 inMemoryFileData];
              v540 = 0;
              v72 = [NSPropertyListSerialization propertyListWithData:v87 options:0 format:0 error:&v540];
              v88 = v540;
              if (v72)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v89 = v88;
LABEL_146:

                  [*v9 setStreamInfoDict:v72];
                  v112 = sub_100001194();
                  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
                  {
                    v591.st_dev = v491;
                    *&v591.st_mode = v72;
                    _os_log_debug_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEBUG, "Got stream metadata: %@", &v591, 0xCu);
                  }

                  v87 = [v72 objectForKey:@"Version"];
                  if (v87)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v87 intValue] == 2)
                    {
                      [*v9 setUnsureData:0];
                      v113 = [v72 objectForKey:@"RecordCount"];
                      if (v113)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [*v9 setTotalRecordCount:{objc_msgSend(v113, "unsignedLongLongValue")}];
                        }
                      }

                      v114 = [v72 objectForKey:@"TotalUncompressedBytes"];
                      if (v114)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [*v9 setTotalUncompressedBytes:{objc_msgSend(v114, "unsignedLongLongValue")}];
                        }
                      }

                      v115 = [v72 objectForKey:@"IncludesAppleDouble"];
                      v503 = v10;
                      if (v115 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v116 = [v115 BOOLValue];
                        v499 = sub_100001194();
                        if (os_log_type_enabled(v499, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(v591.st_dev) = 0;
                          _os_log_impl(&_mh_execute_header, v499, OS_LOG_TYPE_DEFAULT, "Archive configured to include AppleDouble content", &v591, 2u);
                        }
                      }

                      else
                      {
                        v116 = 0;
                      }

                      [*v9 setExpectAppleDoubleFiles:v116];

                      v10 = v503;
                      goto LABEL_395;
                    }
                  }

                  v156 = v10;
                  v157 = sub_100001194();
                  if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v591.st_dev) = 0;
                    _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "Stream metadata was incompatible version or not present; entering passthrough mode", &v591, 2u);
                  }

                  v10 = sub_100009330(a1, v546, v12);

LABEL_279:
                  goto LABEL_280;
                }
              }

              v130 = v10;
              v131 = sub_100001194();
              if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v591.st_dev) = 0;
                _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "Failed to decode stream metadata; entering passthrough mode", &v591, 2u);
              }

              v10 = sub_100009330(a1, v546, v12);
            }

            else
            {
              v87 = [v498 stringByAppendingPathComponent:v69];
              v111 = [NSInputStream inputStreamWithFileAtPath:v87];
              if (v111)
              {
                v88 = v111;
                v539 = 0;
                v72 = [NSPropertyListSerialization propertyListWithStream:v111 options:0 format:0 error:&v539];
                v89 = v539;
                if (v72)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {

                    goto LABEL_146;
                  }
                }

                v154 = v10;
                v155 = sub_100001194();
                if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v591.st_dev) = 0;
                  _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "Failed to decode stream metadata; entering passthrough mode", &v591, 2u);
                }

                v10 = sub_100009330(a1, v546, v12);

                v130 = v89;
              }

              else
              {
                v130 = v10;
                v209 = sub_100001194();
                if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
                {
                  v591.st_dev = v491;
                  *&v591.st_mode = v87;
                  _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_DEFAULT, "Failed to read stream metadata from %@; entering passthrough mode", &v591, 0xCu);
                }

                v10 = sub_100009330(a1, v546, v12);
                v88 = 0;
                v72 = 0;
              }
            }

            goto LABEL_279;
          }

          v319 = sub_100009CBC(v67);
          v559[0] = @"SZExtractorFileOffsetErrorKey";
          v324 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
          v559[1] = v496;
          v560[0] = v324;
          v560[1] = v319;
          v321 = [NSDictionary dictionaryWithObjects:v560 forKeys:v559 count:2];

          v325 = sub_100001194();
          if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
          {
            v428 = [*v9 currentCRC32];
            v429 = sub_10000A284(*v9);
            v591.st_dev = v480;
            *&v591.st_mode = v428;
            WORD2(v591.st_ino) = 1024;
            *(&v591.st_ino + 6) = v429;
            HIWORD(v591.st_uid) = 2112;
            *&v591.st_gid = v319;
            *(&v591.st_rdev + 2) = 2112;
            *(&v591.st_rdev + 6) = 0;
            _os_log_error_impl(&_mh_execute_header, v325, OS_LOG_TYPE_ERROR, "CRC mismatch; got: 0x%lx expected: 0x%x for file %@ : %@", &v591, 0x26u);
          }

          v326 = [*v9 currentCRC32];
          sub_10000A284(*v9);
          sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1287, @"SZExtractorErrorDomain", 2, 0, v321, @"CRC mismatch; got: 0x%lx expected: 0x%x for file %@", v327, v326);
        }

        else
        {
          v319 = sub_100009CBC([v64 currentLFRecord]);
          v561[0] = @"SZExtractorFileOffsetErrorKey";
          v320 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
          v561[1] = v496;
          v562[0] = v320;
          v562[1] = v319;
          v321 = [NSDictionary dictionaryWithObjects:v562 forKeys:v561 count:2];

          v322 = sub_100001194();
          if (os_log_type_enabled(v322, OS_LOG_TYPE_ERROR))
          {
            v426 = [*v9 uncompressedBytesOutput];
            v427 = sub_100009AA0(*v9);
            v591.st_dev = v490;
            *&v591.st_mode = v319;
            WORD2(v591.st_ino) = 2048;
            *(&v591.st_ino + 6) = v426;
            HIWORD(v591.st_gid) = 2048;
            *&v591.st_rdev = v427;
            LOWORD(v591.st_atimespec.tv_sec) = 2112;
            *(&v591.st_atimespec.tv_sec + 2) = 0;
            _os_log_error_impl(&_mh_execute_header, v322, OS_LOG_TYPE_ERROR, "Decompression failed to produce all expected output data for file %@; produced %llu bytes, expected %llu : %@", &v591, 0x2Au);
          }

          [*v9 uncompressedBytesOutput];
          sub_100009AA0(*v9);
          sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1279, @"SZExtractorErrorDomain", 2, 0, v321, @"Decompression failed to produce all expected output data for file %@; produced %llu bytes, expected %llu", v323, v319);
        }
        v16 = ;

        goto LABEL_457;
      }

      if (![*v9 dataDescriptor])
      {
        [*v9 setDataDescriptor:{malloc_type_calloc(1uLL, 0x18uLL, 0x1000040504FFAC1uLL)}];
      }

      v14 = sub_1000017D0([*v9 currentLFRecord], &word_10001A5F2, 0x10u);
      if (v14)
      {
        v15 = 24;
      }

      else
      {
        v15 = 16;
      }

      v16 = sub_100009220([*v9 dataDescriptor], v15, *v9, &v546, &v545);

      if (v16)
      {
        goto LABEL_457;
      }

      v12 = v545;
      v17 = *v9;
      if (!v545)
      {
        goto LABEL_445;
      }

      if ([v17 thisStageBytesComplete] != v15)
      {
        __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1249, "_currentState.thisStageBytesComplete == expected_size");
      }

      if (*[*v9 dataDescriptor] != 134695760)
      {
        v333 = [*v9 unsureData];

        v334 = sub_100001194();
        v335 = v334;
        if (!v333)
        {
          v388 = a1;
          if (os_log_type_enabled(v334, OS_LOG_TYPE_ERROR))
          {
            v438 = *[*v9 dataDescriptor];
            v439 = *([*v9 dataDescriptor] + 1);
            v440 = *([*v9 dataDescriptor] + 2);
            v441 = *([*v9 dataDescriptor] + 3);
            v591.st_dev = 67110146;
            *&v591.st_mode = v438;
            LOWORD(v591.st_ino) = 1024;
            *(&v591.st_ino + 2) = v439;
            HIWORD(v591.st_ino) = 1024;
            v591.st_uid = v440;
            LOWORD(v591.st_gid) = 1024;
            *(&v591.st_gid + 2) = v441;
            HIWORD(v591.st_rdev) = 2112;
            *(&v591.st_rdev + 1) = 0;
            _os_log_error_impl(&_mh_execute_header, v335, OS_LOG_TYPE_ERROR, "Data descriptor did not match expected signature (found 0x%02hhx%02hhx%02hhx%02hhx). : %@", &v591, 0x24u);
          }

          v563 = @"SZExtractorFileOffsetErrorKey";
          v389 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
          v564 = v389;
          v390 = [NSDictionary dictionaryWithObjects:&v564 forKeys:&v563 count:1];
          v391 = *[*v9 dataDescriptor];
          v392 = *([*v9 dataDescriptor] + 1);
          v469 = *([*v9 dataDescriptor] + 2);
          v472 = *([*v502 dataDescriptor] + 3);
          v9 = v502;
          v10 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1258, @"SZExtractorErrorDomain", 2, 0, v390, @"Data descriptor did not match expected signature (found 0x%02hhx%02hhx%02hhx%02hhx).", v393, v391);

          v257 = 0;
          a1 = v388;
          goto LABEL_535;
        }

        if (os_log_type_enabled(v334, OS_LOG_TYPE_DEFAULT))
        {
          v336 = [*v9 dataDescriptor];
          v337 = a1;
          v338 = *v336;
          v339 = *([*v502 dataDescriptor] + 1);
          v340 = *([*v502 dataDescriptor] + 2);
          v341 = *([*v502 dataDescriptor] + 3);
          v591.st_dev = 67109888;
          *&v591.st_mode = v338;
          a1 = v337;
          v9 = v502;
          LOWORD(v591.st_ino) = 1024;
          *(&v591.st_ino + 2) = v339;
          HIWORD(v591.st_ino) = 1024;
          v591.st_uid = v340;
          LOWORD(v591.st_gid) = 1024;
          *(&v591.st_gid + 2) = v341;
          _os_log_impl(&_mh_execute_header, v335, OS_LOG_TYPE_DEFAULT, "Data descriptor did not match expected signature (found 0x%02hhx%02hhx%02hhx%02hhx); entering passthrough mode", &v591, 0x1Au);
        }

        v342 = v546;
        v343 = a1;
        v344 = v12;
LABEL_484:
        v10 = sub_100009330(v343, v342, v344);
        goto LABEL_534;
      }

      v18 = sub_100001194();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        if (v19)
        {
          v20 = a1;
          v21 = *([*v9 dataDescriptor] + 1);
          v22 = *([*v9 dataDescriptor] + 2);
          v23 = *([*v9 dataDescriptor] + 1);
          v591.st_dev = v487;
          *&v591.st_mode = v21;
          a1 = v20;
          LOWORD(v591.st_ino) = 2048;
          *(&v591.st_ino + 2) = v22;
          HIWORD(v591.st_uid) = 2048;
          *&v591.st_gid = v23;
          v24 = v18;
          v25 = "Got data descriptor with CRC 0x%x, uncompressed size %llu, compressed size %llu";
          v26 = 28;
LABEL_283:
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, v25, &v591, v26);
        }
      }

      else if (v19)
      {
        v211 = a1;
        v212 = *([*v9 dataDescriptor] + 1);
        v213 = *([*v9 dataDescriptor] + 3);
        v214 = *([*v9 dataDescriptor] + 2);
        v591.st_dev = v487;
        *&v591.st_mode = v212;
        a1 = v211;
        LOWORD(v591.st_ino) = 1024;
        *(&v591.st_ino + 2) = v213;
        HIWORD(v591.st_ino) = 1024;
        v591.st_uid = v214;
        v24 = v18;
        v25 = "Got data descriptor with CRC 0x%x, uncompressed size %u, compressed size %u";
        v26 = 20;
        goto LABEL_283;
      }

      [*v9 setStreamState:4];
      v10 = 0;
      goto LABEL_78;
    }

    if (!v13)
    {
      if (![*v9 currentLFRecord])
      {
        __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 509, "_currentState.currentLFRecord");
      }

      v27 = sub_100009220([*v9 currentLFRecord], 4, *v9, &v546, &v545);

      if (v27)
      {
        goto LABEL_520;
      }

      if ([*v9 thisStageBytesComplete] >= 5)
      {
        __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 517, "_currentState.thisStageBytesComplete <= peekSignatureSize");
      }

      v51 = [*v9 thisStageBytesComplete];
      v52 = *v9;
      if (v51 != 4)
      {
        [v52 markResumptionPoint];
        goto LABEL_61;
      }

      v53 = *[v52 currentLFRecord];
      v54 = *v9;
      if (v53 == 67324752)
      {
        [v54 setStreamState:1];
LABEL_61:
        v10 = 0;
        goto LABEL_62;
      }

      v360 = [v54 unsureData];

      if (v360)
      {
        v361 = sub_100001194();
        if (os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
        {
          v362 = [*v9 currentLFRecord];
          v363 = a1;
          v364 = *v362;
          v365 = *([*v502 currentLFRecord] + 1);
          v366 = *([*v502 currentLFRecord] + 2);
          v367 = *([*v502 currentLFRecord] + 3);
          v591.st_dev = 67109888;
          *&v591.st_mode = v364;
          a1 = v363;
          v9 = v502;
          LOWORD(v591.st_ino) = 1024;
          *(&v591.st_ino + 2) = v365;
          HIWORD(v591.st_ino) = 1024;
          v591.st_uid = v366;
          LOWORD(v591.st_gid) = 1024;
          *(&v591.st_gid + 2) = v367;
          _os_log_impl(&_mh_execute_header, v361, OS_LOG_TYPE_DEFAULT, "Got unexpected local file signature %c%c%c%c ; entering passthrough mode", &v591, 0x1Au);
        }

        v342 = v546;
        v344 = v545;
        v343 = a1;
        goto LABEL_484;
      }

      if (*[*v9 currentLFRecord] != 33639248)
      {
        v402 = sub_100001194();
        if (os_log_type_enabled(v402, OS_LOG_TYPE_ERROR))
        {
          v591.st_dev = v491;
          *&v591.st_mode = 0;
          _os_log_error_impl(&_mh_execute_header, v402, OS_LOG_TYPE_ERROR, "Encountered unexpectedly non-stream-compliant data in stream! : %@", &v591, 0xCu);
        }

        v604 = @"SZExtractorFileOffsetErrorKey";
        v382 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
        v605 = v382;
        v384 = [NSDictionary dictionaryWithObjects:&v605 forKeys:&v604 count:1];
        v10 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 576, @"SZExtractorErrorDomain", 2, 0, v384, @"Encountered unexpectedly non-stream-compliant data in stream!", v403, v474);
        goto LABEL_533;
      }

      if ([*v9 bytesHashedInChunk])
      {
        v431 = [*v9 lastChunkPartialHash];

        if (!v431)
        {
          v434 = sub_100001194();
          if (os_log_type_enabled(v434, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v591.st_dev) = 0;
            _os_log_debug_impl(&_mh_execute_header, v434, OS_LOG_TYPE_DEBUG, "No last chunk partial hash; will need full chunk to validate.", &v591, 2u);
          }

          v433 = 0;
LABEL_582:
          v443 = a1;

          v444 = sub_100001194();
          if (os_log_type_enabled(v444, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v591.st_dev) = 0;
            _os_log_debug_impl(&_mh_execute_header, v444, OS_LOG_TYPE_DEBUG, "Finished central directory signature; updating hash with remainder of stream data", &v591, 2u);
          }

          v445 = v545;
          v446 = v502;
          if ([*v502 hashedChunkSize])
          {
            v447 = [*v446 hashedChunkSize];
            v448 = [*v446 bytesHashedInChunk];
            if (v447 - v448 >= v445)
            {
              v449 = v445;
            }

            else
            {
              v449 = v447 - v448;
            }
          }

          else
          {
            v449 = v445;
          }

          v450 = *v446;
          v451 = [*v446 currentOffset];
          v10 = [v450 updateHashFromOffset:v451 withBytes:v546 length:v449 onlyFinishCurrentChunk:1];

          [*v446 setCurrentOffset:{objc_msgSend(*v446, "currentOffset") + v449}];
          if (v10)
          {
            v257 = 0;
            a1 = v443;
LABEL_435:
            v9 = v502;
          }

          else
          {
            if ([*v502 bytesHashedInChunk])
            {
              if (v449 != v445)
              {
                __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 567, "lengthToRead == length");
              }

              v452 = sub_100001194();
              if (os_log_type_enabled(v452, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(v591.st_dev) = 0;
                _os_log_debug_impl(&_mh_execute_header, v452, OS_LOG_TYPE_DEBUG, "After hitting Central Directory, we need more data to finish the chunk", &v591, 2u);
              }

              v453 = v502;
              [*v502 setStreamState:6];
              v10 = 0;
              v257 = 0;
            }

            else
            {
              v463 = sub_100001194();
              if (os_log_type_enabled(v463, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(v591.st_dev) = 0;
                _os_log_debug_impl(&_mh_execute_header, v463, OS_LOG_TYPE_DEBUG, "After hitting Central Directory, we had enough data already to finish the chunk", &v591, 2u);
              }

              v453 = v502;
              [*v502 setStreamState:7];
              v10 = 0;
              v257 = 1;
            }

            v7 = v497;
            a1 = v443;
            v9 = v453;
          }

          goto LABEL_535;
        }

        v432 = [*v9 checkLastChunkPartialHash];
        if (v432)
        {
          v433 = v432;
          v434 = sub_100001194();
          if (os_log_type_enabled(v434, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v591.st_dev) = 0;
            _os_log_error_impl(&_mh_execute_header, v434, OS_LOG_TYPE_ERROR, "Last chunk's partial hash did not validate (store hashed chunk size mismatch?); consuming more data to check full chunk.", &v591, 2u);
          }

          goto LABEL_582;
        }
      }

      else
      {
        v436 = sub_100001194();
        if (os_log_type_enabled(v436, OS_LOG_TYPE_DEBUG))
        {
          v465 = [*v9 currentOffset];
          v591.st_dev = v493;
          *&v591.st_mode = v465;
          _os_log_debug_impl(&_mh_execute_header, v436, OS_LOG_TYPE_DEBUG, "Finished central directory signature at offset %llu and we are also at a chunk boundary.", &v591, 0xCu);
        }
      }

      goto LABEL_576;
    }

    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_613;
      }

      goto LABEL_301;
    }

    if (![*v9 currentLFRecord])
    {
      __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 591, "_currentState.currentLFRecord");
    }

    if ([*v9 thisStageBytesComplete] <= 0x1D)
    {
      v27 = sub_100009220([*v9 currentLFRecord], 30, *v9, &v546, &v545);

      if (v27)
      {
        goto LABEL_520;
      }

      v10 = 0;
    }

    if ([*v9 thisStageBytesComplete] == 30)
    {
      [*v9 setCurrentLFRequiresDataDescriptor:{(*(objc_msgSend(*v9, "currentLFRecord") + 3) >> 3) & 1}];
      v28 = *([*v9 currentLFRecord] + 13);
      v29 = *v9;
      if (v28)
      {
        v30 = *([v29 currentLFRecord] + 4);
        if (v30 <= 0xE && ((1 << v30) & 0x4101) != 0 || v30 == 99)
        {
          goto LABEL_34;
        }

        v424 = [*v9 unsureData];

        v425 = sub_100001194();
        v356 = v425;
        if (v424)
        {
          if (!os_log_type_enabled(v425, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_479;
          }

          v591.st_dev = 67109120;
          *&v591.st_mode = v30;
          v357 = "Got unexpected compression method: %hu; entering passthrough mode";
          v358 = v356;
          v359 = 8;
          goto LABEL_478;
        }

        if (os_log_type_enabled(v425, OS_LOG_TYPE_ERROR))
        {
          v464 = [*v9 currentOffset];
          v591.st_dev = 67109634;
          *&v591.st_mode = v30;
          LOWORD(v591.st_ino) = 2048;
          *(&v591.st_ino + 2) = v464;
          HIWORD(v591.st_uid) = 2112;
          *&v591.st_gid = 0;
          _os_log_error_impl(&_mh_execute_header, v356, OS_LOG_TYPE_ERROR, "Encountered unsupported compression method %hu in stream at offset %llu : %@", &v591, 0x1Cu);
        }

        v600 = @"SZExtractorFileOffsetErrorKey";
        v399 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
        v601 = v399;
        v400 = [NSDictionary dictionaryWithObjects:&v601 forKeys:&v600 count:1];
        [*v9 currentOffset];
        sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 625, @"SZExtractorErrorDomain", 2, 0, v400, @"Encountered unsupported compression method %hu in stream at offset %llu", v435, v30);
      }

      else
      {
        v354 = [v29 unsureData];

        v355 = sub_100001194();
        v356 = v355;
        if (v354)
        {
          if (!os_log_type_enabled(v355, OS_LOG_TYPE_DEFAULT))
          {
LABEL_479:

            v27 = sub_100009330(a1, v546, v545);

            goto LABEL_520;
          }

          LOWORD(v591.st_dev) = 0;
          v357 = "Got zero-length filename; entering passthrough mode";
          v358 = v356;
          v359 = 2;
LABEL_478:
          _os_log_impl(&_mh_execute_header, v358, OS_LOG_TYPE_DEFAULT, v357, &v591, v359);
          goto LABEL_479;
        }

        if (os_log_type_enabled(v355, OS_LOG_TYPE_ERROR))
        {
          v454 = [*v9 currentOffset];
          v591.st_dev = 134218242;
          *&v591.st_mode = v454;
          WORD2(v591.st_ino) = 2112;
          *(&v591.st_ino + 6) = 0;
          _os_log_error_impl(&_mh_execute_header, v356, OS_LOG_TYPE_ERROR, "Encountered zero-length filename for local file record at offset %llu : %@", &v591, 0x16u);
        }

        v602 = @"SZExtractorFileOffsetErrorKey";
        v399 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
        v603 = v399;
        v400 = [NSDictionary dictionaryWithObjects:&v603 forKeys:&v602 count:1];
        v471 = [*v9 currentOffset];
        sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 613, @"SZExtractorErrorDomain", 2, 0, v400, @"Encountered zero-length filename for local file record at offset %llu", v401, v471);
      }
      v16 = ;

LABEL_457:
      v257 = 0;
      v10 = v16;
      goto LABEL_535;
    }

LABEL_34:
    v31 = v545;
    v32 = *v9;
    if (!v545)
    {
      [v32 markResumptionPoint];
      goto LABEL_493;
    }

    if ([v32 thisStageBytesComplete] <= 0x1D)
    {
      __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 641, "_currentState.thisStageBytesComplete >= sizeof(LocalFileRecord)");
    }

    v33 = [*v9 currentLFRecord];
    v34 = (v33[13] + v33[14] + 30);
    if (v34 > [*v9 currentLFRecordAllocationSize])
    {
      [*v9 setCurrentLFRecord:{reallocf(objc_msgSend(*v9, "currentLFRecord"), v34)}];
      if (![*v9 currentLFRecord])
      {
        v368 = sub_100001194();
        if (os_log_type_enabled(v368, OS_LOG_TYPE_ERROR))
        {
          v591.st_dev = v491;
          *&v591.st_mode = 0;
          _os_log_error_impl(&_mh_execute_header, v368, OS_LOG_TYPE_ERROR, "Could not allocate memory for local file record : %@", &v591, 0xCu);
        }

        v370 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 648, v492, 12, 0, 0, @"Could not allocate memory for local file record", v369, v474);
        goto LABEL_499;
      }

      [*v9 setCurrentLFRecordAllocationSize:v34];
    }

    if ([*v9 thisStageBytesComplete] < v34)
    {
      v35 = sub_100009220([*v9 currentLFRecord], v34, *v9, &v546, &v545);

      if (v35)
      {
        goto LABEL_501;
      }

      v31 = v545;
      if (!v545)
      {
        [*v9 markResumptionPoint];
        v10 = 0;
LABEL_493:
        v257 = 0;
LABEL_502:
        v7 = v497;
        goto LABEL_535;
      }

      v10 = 0;
    }

    if ([*v9 thisStageBytesComplete] != v34)
    {
      __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 667, "_currentState.thisStageBytesComplete == fullLFRSize");
    }

    if (([*v9 currentLFRequiresDataDescriptor] & 1) == 0)
    {
      v36 = sub_100009AA0(*v9);
      v37 = sub_100009B90(*v9);
      v38 = *v9;
      if (!v37 && v36)
      {
        v371 = [v38 unsureData];

        v372 = sub_100001194();
        v373 = v372;
        if (!v371)
        {
          if (os_log_type_enabled(v372, OS_LOG_TYPE_ERROR))
          {
            v455 = [*v9 currentOffset];
            v591.st_dev = 134218242;
            *&v591.st_mode = v455;
            WORD2(v591.st_ino) = 2112;
            *(&v591.st_ino + 6) = 0;
            _os_log_error_impl(&_mh_execute_header, v373, OS_LOG_TYPE_ERROR, "Encountered inconsistency in stream data: file at offset %llu has a 0-length compressed size but a non-zero uncompressed size : %@", &v591, 0x16u);
          }

          v598 = @"SZExtractorFileOffsetErrorKey";
          v405 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
          v599 = v405;
          v406 = [NSDictionary dictionaryWithObjects:&v599 forKeys:&v598 count:1];
          v407 = [*v9 currentOffset];
          v409 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 682, @"SZExtractorErrorDomain", 2, 0, v406, @"Encountered inconsistency in stream data: file at offset %llu has a 0-length compressed size but a non-zero uncompressed size", v408, v407);
LABEL_557:

          v257 = 0;
          v10 = v409;
          goto LABEL_502;
        }

        if (os_log_type_enabled(v372, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v591.st_dev) = 0;
          _os_log_impl(&_mh_execute_header, v373, OS_LOG_TYPE_DEFAULT, "File has 0-length compressed size but non-zero uncompressed size; entering passthrough mode", &v591, 2u);
        }
      }

      else
      {
        if (*([v38 currentLFRecord] + 4) || v36 == v37)
        {
          goto LABEL_49;
        }

        v374 = [*v9 unsureData];

        v375 = sub_100001194();
        v376 = v375;
        if (!v374)
        {
          if (os_log_type_enabled(v375, OS_LOG_TYPE_ERROR))
          {
            v456 = [*v9 currentOffset];
            v591.st_dev = v480;
            *&v591.st_mode = v456;
            WORD2(v591.st_ino) = 2048;
            *(&v591.st_ino + 6) = v36;
            HIWORD(v591.st_gid) = 2048;
            *&v591.st_rdev = v37;
            LOWORD(v591.st_atimespec.tv_sec) = 2112;
            *(&v591.st_atimespec.tv_sec + 2) = 0;
            _os_log_error_impl(&_mh_execute_header, v376, OS_LOG_TYPE_ERROR, "Encountered inconsistency in stream data: file at offset %llu is stored without compression but the uncompressed and compressed sizes are not equal (%llu != %llu) : %@", &v591, 0x2Au);
          }

          v596 = @"SZExtractorFileOffsetErrorKey";
          v410 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
          v597 = v410;
          v411 = [NSDictionary dictionaryWithObjects:&v597 forKeys:&v596 count:1];
          v412 = [*v9 currentOffset];
          v35 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 695, @"SZExtractorErrorDomain", 2, 0, v411, @"Encountered inconsistency in stream data: file at offset %llu is stored without compression but the uncompressed and compressed sizes are not equal (%llu != %llu)", v413, v412);

LABEL_500:
LABEL_501:
          v257 = 0;
          v10 = v35;
          goto LABEL_502;
        }

        if (os_log_type_enabled(v375, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v591.st_dev) = 0;
          _os_log_impl(&_mh_execute_header, v376, OS_LOG_TYPE_DEFAULT, "Stored file has compressed size != uncompressed size; entering passthrough mode", &v591, 2u);
        }
      }

      v370 = sub_100009330(a1, v546, v31);
LABEL_499:
      v35 = v370;
      goto LABEL_500;
    }

LABEL_49:
    v39 = sub_100009CBC([*v9 currentLFRecord]);
    v40 = [v39 fileSystemRepresentation];
    v41 = *v9;
    if (!v39 || !v40)
    {
      v345 = [v41 unsureData];

      v346 = sub_100001194();
      v347 = v346;
      v495 = v39;
      if (v345)
      {
        if (!os_log_type_enabled(v346, OS_LOG_TYPE_DEFAULT))
        {
LABEL_471:

          v27 = sub_100009330(a1, v546, v31);
LABEL_518:
          v7 = v497;
          goto LABEL_519;
        }

        LOWORD(v591.st_dev) = 0;
        v348 = "Failed to get filename for file; entering passthrough mode";
        v349 = v347;
        v350 = 2;
LABEL_470:
        _os_log_impl(&_mh_execute_header, v349, OS_LOG_TYPE_DEFAULT, v348, &v591, v350);
        goto LABEL_471;
      }

      if (os_log_type_enabled(v346, OS_LOG_TYPE_ERROR))
      {
        v442 = [*v9 currentOffset];
        v591.st_dev = 134218242;
        *&v591.st_mode = v442;
        WORD2(v591.st_ino) = 2112;
        *(&v591.st_ino + 6) = 0;
        _os_log_error_impl(&_mh_execute_header, v347, OS_LOG_TYPE_ERROR, "Failed to get filename for file at offset %llu. : %@", &v591, 0x16u);
      }

      v594 = @"SZExtractorFileOffsetErrorKey";
      v394 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
      v595 = v394;
      v395 = [NSDictionary dictionaryWithObjects:&v595 forKeys:&v594 count:1];
      v470 = [*v9 currentOffset];
      sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 710, @"SZExtractorErrorDomain", 2, 0, v395, @"Failed to get filename for file at offset %llu.", v396, v470);
      v27 = LABEL_517:;

      goto LABEL_518;
    }

    v503 = v10;
    v42 = [v41 currentLFRecord];
    v43 = v42[*(v42 + 13) + 29];
    [*v9 setPerformingExtraction:1];
    v44 = *([*v9 currentLFRecord] + 4);
    v45 = [*v9 currentLFRequiresDataDescriptor];
    v46 = sub_10000123C();
    v47 = os_signpost_enabled(v46);
    if (v45)
    {
      if (v47)
      {
        v591.st_dev = v489;
        *&v591.st_mode = v39;
        WORD2(v591.st_ino) = 1024;
        *(&v591.st_ino + 6) = v44;
        v48 = v46;
        v49 = "Processing file %@ (csize: ??; usize: ??; cmethod: %hu)";
        v50 = 18;
LABEL_66:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "EXTRACTION", v49, &v591, v50);
      }
    }

    else if (v47)
    {
      v57 = sub_100009B90(*v9);
      v58 = sub_100009AA0(*v9);
      v591.st_dev = v490;
      *&v591.st_mode = v39;
      WORD2(v591.st_ino) = 2048;
      *(&v591.st_ino + 6) = v57;
      HIWORD(v591.st_gid) = 2048;
      *&v591.st_rdev = v58;
      LOWORD(v591.st_atimespec.tv_sec) = 1024;
      *(&v591.st_atimespec.tv_sec + 2) = v44;
      v48 = v46;
      v49 = "Processing file %@ (csize: %llu; usize: %llu; cmethod: %hu)";
      v50 = 38;
      goto LABEL_66;
    }

    if (v43 == 47 && ([*v9 currentLFRequiresDataDescriptor] & 1) == 0 && sub_100009B90(*v9))
    {
      v397 = [*v9 unsureData];

      v398 = sub_100001194();
      v347 = v398;
      v10 = v503;
      v495 = v39;
      if (v397)
      {
        if (!os_log_type_enabled(v398, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_471;
        }

        v591.st_dev = v485;
        *&v591.st_mode = v40;
        v348 = "Got directory %s with non-zero compressed data size; entering passthrough mode";
        v349 = v347;
        v350 = 12;
        goto LABEL_470;
      }

      if (os_log_type_enabled(v398, OS_LOG_TYPE_ERROR))
      {
        v591.st_dev = v488;
        *&v591.st_mode = v40;
        WORD2(v591.st_ino) = 2112;
        *(&v591.st_ino + 6) = 0;
        _os_log_error_impl(&_mh_execute_header, v347, OS_LOG_TYPE_ERROR, "Directory %s has a non-zero compressed size; directories aren't supposed to have data. : %@", &v591, 0x16u);
      }

      v592 = @"SZExtractorFileOffsetErrorKey";
      v394 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
      v593 = v394;
      v395 = [NSDictionary dictionaryWithObjects:&v593 forKeys:&v592 count:1];
      sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 732, @"SZExtractorErrorDomain", 2, 0, v395, @"Directory %s has a non-zero compressed size; directories aren't supposed to have data.", v430, v40);
      goto LABEL_517;
    }

    v59 = [*v9 unsureData];

    if (!v59)
    {
      goto LABEL_114;
    }

    if ([*v9 recordsProcessed] >= 3)
    {
      __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 738, "_currentState.recordsProcessed <= 2");
    }

    if (![*v9 recordsProcessed])
    {
      if (!strcmp(v40, "META-INF/"))
      {
        goto LABEL_114;
      }

      v60 = v40;
      v61 = "mimetype";
      goto LABEL_102;
    }

    if ([*v9 recordsProcessed] != 1)
    {
      if ([*v9 recordsProcessed] == 2 && !strcmp(v40, "META-INF/com.apple.ZipMetadata.plist"))
      {
LABEL_111:
        v90 = sub_100001194();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          v591.st_dev = v485;
          *&v591.st_mode = v40;
          _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "File %s is metadata file, so keeping in memory", &v591, 0xCu);
        }

        [*v9 setStoreCurrentFileInMemory:1];
        goto LABEL_114;
      }

LABEL_472:
      v495 = v39;
      v351 = sub_100001194();
      if (os_log_type_enabled(v351, OS_LOG_TYPE_DEFAULT))
      {
        v352 = [*v9 recordsProcessed];
        v591.st_dev = 134218498;
        *&v591.st_mode = v352;
        WORD2(v591.st_ino) = 2080;
        *(&v591.st_ino + 6) = v40;
        HIWORD(v591.st_gid) = 2080;
        *&v591.st_rdev = "META-INF/";
        _os_log_impl(&_mh_execute_header, v351, OS_LOG_TYPE_DEFAULT, "Item %lld (%s) in archive was not 'mimetype' or %s; entering passthrough mode", &v591, 0x20u);
      }

      v27 = sub_100009330(a1, v546, v31);
      v7 = v497;
      v10 = v503;
LABEL_519:

      goto LABEL_520;
    }

    if (!strcmp(v40, "META-INF/com.apple.ZipMetadata.plist"))
    {
      goto LABEL_111;
    }

    v60 = v40;
    v61 = "META-INF/";
LABEL_102:
    if (strcmp(v60, v61))
    {
      goto LABEL_472;
    }

LABEL_114:
    if (!strcmp(v40, "META-INF/com.apple.FixedZipMetadata.bin"))
    {
      v91 = sub_100001194();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        v591.st_dev = v485;
        *&v591.st_mode = v40;
        _os_log_debug_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEBUG, "File %s is fixed metadata file, so keeping in memory", &v591, 0xCu);
      }

      [*v9 setStoreCurrentFileInMemory:1];
    }

    v92 = [v498 stringByAppendingPathComponent:v39];
    v499 = [v92 fileSystemRepresentation];
    v93 = [*v9 streamInfoDict];

    v94 = *v9;
    if (!v93)
    {
      if (v43 == 47)
      {
        v96 = 16877;
      }

      else
      {
        v96 = 33188;
      }

      goto LABEL_127;
    }

    v95 = sub_1000017D0([v94 currentLFRecord], word_10001A5F4, 2u);
    if (v95)
    {
      v96 = *(v95 + 4);
      v94 = *v9;
LABEL_127:
      [v94 setCurrentLFMode:v96];
      goto LABEL_216;
    }

    v97 = [*v9 streamInfoDict];
    v98 = v97;
    if (v43 != 47)
    {
      v99 = [v97 objectForKeyedSubscript:@"StandardFilePerms"];

      if (!v99)
      {
        v100 = 33188;
        goto LABEL_215;
      }

LABEL_141:
      v100 = [v99 unsignedShortValue];
      goto LABEL_215;
    }

    v99 = [v97 objectForKeyedSubscript:@"StandardDirectoryPerms"];

    if (v99)
    {
      goto LABEL_141;
    }

    v100 = 16877;
LABEL_215:
    [*v9 setCurrentLFMode:v100];

LABEL_216:
    [*v9 setCurrentLFMode:{objc_msgSend(*v9, "currentLFMode") & 0xFFFFF1FF}];
    if (([*v9 currentLFMode] & 0xF000) == 0xA000)
    {
      v158 = sub_100001194();
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
      {
        v210 = [*v9 currentLFMode];
        v591.st_dev = v488;
        *&v591.st_mode = v40;
        WORD2(v591.st_ino) = 1024;
        *(&v591.st_ino + 6) = v210;
        _os_log_debug_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEBUG, "File %s is a symlink (mode = 0%o), so keeping in memory", &v591, 0x12u);
      }

      [*v9 setStoreCurrentFileInMemory:1];
    }

    v159 = sub_100001844([*v9 currentLFRecord]);
    if (v159 > 0x500000)
    {
      v160 = v159;
      v161 = sub_100001194();
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
      {
        v591.st_dev = v488;
        *&v591.st_mode = v40;
        WORD2(v591.st_ino) = 2048;
        *(&v591.st_ino + 6) = v160;
        _os_log_debug_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEBUG, "File %s is larger than 5 MB (%llu) so not keeping in memory", &v591, 0x16u);
      }

      [*v9 setStoreCurrentFileInMemory:0];
    }

    v162 = [v92 stringByDeletingLastPathComponent];
    if (([v162 isEqualToString:v498] & 1) == 0)
    {
      v163 = [v162 fileSystemRepresentation];
      memset(&v591, 0, sizeof(v591));
      if (stat(v163, &v591))
      {
        if (*__error() != 2)
        {
          v189 = *__error();
          v190 = sub_100001194();
          if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
          {
            v269 = strerror(v189);
            v585 = v483;
            v586 = v162;
            v587 = 2080;
            v588 = v269;
            v589 = 2112;
            v590 = 0;
            _os_log_error_impl(&_mh_execute_header, v190, OS_LOG_TYPE_ERROR, "Can't determine if parent path exists %@: %s : %@", &v585, 0x20u);
          }

          v581 = v496;
          v582 = v162;
          v191 = [NSDictionary dictionaryWithObjects:&v582 forKeys:&v581 count:1];
          strerror(v189);
          v193 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 905, v492, v189, 0, v191, @"Can't determine if parent path exists %@: %s", v192, v162);

          goto LABEL_260;
        }

        v164 = sub_100001194();
        if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
        {
          v585 = v491;
          v586 = v162;
          _os_log_debug_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEBUG, "Parent path %@ did not exist", &v585, 0xCu);
        }

        v165 = mkpath_np(v163, 0x1EDu);
        v166 = v165;
        v55 = 0;
        v167 = 1;
        if (v165 && v165 != 17)
        {
          LODWORD(v494) = v44;
          v168 = sub_100001194();
          if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
          {
            v292 = strerror(v166);
            v585 = v483;
            v586 = v162;
            v587 = 2080;
            v588 = v292;
            v589 = 2112;
            v590 = 0;
            _os_log_error_impl(&_mh_execute_header, v168, OS_LOG_TYPE_ERROR, "Failed to create parent directory %@: %s : %@", &v585, 0x20u);
          }

          v583 = v496;
          v584 = v162;
          v169 = [NSDictionary dictionaryWithObjects:&v584 forKeys:&v583 count:1];
          strerror(v166);
          v171 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 858, v492, v166, 0, v169, @"Failed to create parent directory %@: %s", v170, v162);

          v167 = 0;
          v55 = 2;
          v503 = v171;
          v44 = v494;
        }

        if (v166 && v166 != 17 && !v167)
        {
          goto LABEL_298;
        }
      }
    }

    v172 = v502;
    v173 = sub_1000017D0([*v502 currentLFRecord], &word_10001A5F0, 8u);
    v174 = *v172;
    if (v43 != 47)
    {
      if ([v174 storeCurrentFileInMemory])
      {
        v178 = v503;
        goto LABEL_295;
      }

      v499 = v173;
      v186 = v44;
      [*v172 fileWriter];
      if (objc_claimAutoreleasedReturnValue())
      {
        __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 951, "!_currentState.fileWriter");
      }

      v187 = [*v172 useFilesystemCompression];
      if ([*v172 currentLFRequiresDataDescriptor])
      {
        v188 = -1;
LABEL_293:
        v219 = [*(a1 + 64) performCachedWrites];
        v220 = *(a1 + 96);
        v221 = v503;
        v543 = v503;
        v222 = [StreamingFileWriter fileWriterForPath:v92 withOpenFlags:1538 mode:384 quarantineInfo:0 useFSCompression:v187 performCachedWrites:v219 expectedSize:v188 asyncTrackingGroup:v220 errorDelegate:a1 error:&v543];
        v223 = v543;

        if (!v222)
        {
          v266 = sub_100001194();
          if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
          {
            v591.st_dev = v489;
            *&v591.st_mode = v92;
            WORD2(v591.st_ino) = 2112;
            *(&v591.st_ino + 6) = v223;
            _os_log_error_impl(&_mh_execute_header, v266, OS_LOG_TYPE_ERROR, "Failed to open output file at path %@ : %@", &v591, 0x16u);
          }

          v577 = v496;
          v578 = v92;
          v267 = [NSDictionary dictionaryWithObjects:&v578 forKeys:&v577 count:1];
          v503 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 988, @"SZExtractorErrorDomain", 1, v223, v267, @"Failed to open output file at path %@", v268, v92);

          v55 = 2;
          goto LABEL_298;
        }

        v591.st_dev = -1;
        v585 = -1;
        v224 = [*v172 resolveOwnershipWithExtraField:v499 outUID:&v591 outGID:&v585];
        [v222 configureFileAndSetOwnership:v224 toUID:v591.st_dev GID:v585];
        [*v172 setFileWriter:v222];

        v178 = v223;
        goto LABEL_295;
      }

      v198 = sub_100009AA0(*v172);
      v188 = v198;
      if (v198 > 0)
      {
        v199 = v187;
      }

      else
      {
        v199 = 0;
      }

      if (v199 != 1)
      {
        goto LABEL_293;
      }

      if (v186)
      {
        v200 = a1;
        v201 = 93 * v198;
        if ((v198 * 93) >> 64 != (93 * v198) >> 63 || (v202 = sub_100009B90(*v502), v203 = ((v201 >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64, v202 <= (93 * v188 / 0x64)))
        {
          v187 = 1;
          a1 = v200;
          v172 = v502;
          goto LABEL_293;
        }

        v204 = v202;
        v205 = sub_100001194();
        if (os_log_type_enabled(v205, OS_LOG_TYPE_DEBUG))
        {
          v591.st_dev = v480;
          *&v591.st_mode = v204;
          WORD2(v591.st_ino) = 2048;
          *(&v591.st_ino + 6) = v188;
          HIWORD(v591.st_gid) = 2048;
          *&v591.st_rdev = v203 >> 2;
          LOWORD(v591.st_atimespec.tv_sec) = 2112;
          *(&v591.st_atimespec.tv_sec + 2) = v92;
          _os_log_debug_impl(&_mh_execute_header, v205, OS_LOG_TYPE_DEBUG, "Skipping FS compression because archive compression ratio was insufficient: c:%llu u:%llu maxC:%llu : %@", &v591, 0x2Au);
        }

        a1 = v200;
        v172 = v502;
      }

      else
      {
        v205 = sub_100001194();
        if (os_log_type_enabled(v205, OS_LOG_TYPE_DEBUG))
        {
          v591.st_dev = v491;
          *&v591.st_mode = v92;
          _os_log_debug_impl(&_mh_execute_header, v205, OS_LOG_TYPE_DEBUG, "Skipping FS compression because file was uncompressed in archive: %@", &v591, 0xCu);
        }
      }

      v187 = 0;
      goto LABEL_293;
    }

    v175 = [v174 currentLFMode];
    v176 = v499;
    v177 = mkdir(v499, v175 | 0xC0);
    v178 = v503;
    if (!v177)
    {
      goto LABEL_244;
    }

    if (*__error() == 17)
    {
      if (lchmod(v176, v175 | 0xC0))
      {
        v179 = *__error();
        v180 = sub_100001194();
        if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
        {
          v273 = strerror(v179);
          v591.st_dev = v489;
          *&v591.st_mode = v92;
          WORD2(v591.st_ino) = 2080;
          *(&v591.st_ino + 6) = v273;
          _os_log_error_impl(&_mh_execute_header, v180, OS_LOG_TYPE_ERROR, "Failed to set proper mode on directory %@: %s", &v591, 0x16u);
        }

        v176 = v499;
      }

LABEL_244:
      v585 = -1;
      v544 = -1;
      if ([*v172 resolveOwnershipWithExtraField:v173 outUID:&v585 outGID:&v544] && lchown(v176, v585, v544))
      {
        v181 = *__error();
        v182 = sub_100001194();
        if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
        {
          v183 = a1;
          v184 = v585;
          LODWORD(v499) = v544;
          v185 = strerror(v181);
          v591.st_dev = v486;
          *&v591.st_mode = v176;
          WORD2(v591.st_ino) = 1024;
          *(&v591.st_ino + 6) = v184;
          a1 = v183;
          v172 = v502;
          HIWORD(v591.st_uid) = 1024;
          v591.st_gid = v499;
          LOWORD(v591.st_rdev) = 1024;
          *(&v591.st_rdev + 2) = v181;
          *(&v591.st_rdev + 3) = 2080;
          v591.st_atimespec.tv_sec = v185;
          _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "Failed to lchown %s to (%d:%d) : %d (%s)", &v591, 0x28u);
        }
      }

LABEL_295:
      v503 = v178;
      if (([*v172 currentLFRequiresDataDescriptor] & 1) != 0 || sub_100009B90(*v172))
      {
        [*v172 setStreamState:2];
        v55 = 0;
      }

      else
      {
        [*v172 setStreamState:4];
        v55 = 3;
      }

      goto LABEL_298;
    }

    v194 = *__error();
    v195 = sub_100001194();
    if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
    {
      v270 = strerror(v194);
      v591.st_dev = v483;
      *&v591.st_mode = v92;
      WORD2(v591.st_ino) = 2080;
      *(&v591.st_ino + 6) = v270;
      HIWORD(v591.st_gid) = 2112;
      *&v591.st_rdev = 0;
      _os_log_error_impl(&_mh_execute_header, v195, OS_LOG_TYPE_ERROR, "Failed to create directory at path %@: %s : %@", &v591, 0x20u);
    }

    v579 = v496;
    v580 = v92;
    v196 = [NSDictionary dictionaryWithObjects:&v580 forKeys:&v579 count:1];
    strerror(v194);
    v193 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 920, v492, v194, 0, v196, @"Failed to create directory at path %@: %s", v197, v92);

LABEL_260:
    v55 = 2;
    v503 = v193;
LABEL_298:

    if (v55)
    {
      v7 = v497;
      v56 = v501;
      v10 = v503;
      goto LABEL_407;
    }

    v12 = v545;
    v7 = v497;
    v9 = v502;
    v10 = v503;
LABEL_301:
    v225 = [*v9 currentLFRequiresDataDescriptor];
    v226 = *([*v9 currentLFRecord] + 4);
    LODWORD(v495) = v225;
    if (!v225 || (v227 = v12, !v226))
    {
      v228 = sub_100009B90(*v9);
      v229 = [*v9 thisStageBytesComplete];
      if (v12 >= v228 - v229)
      {
        v227 = v228 - v229;
      }

      else
      {
        v227 = v12;
      }
    }

    if ([*v9 thisStageBytesComplete])
    {
      break;
    }

    [*v9 setCurrentCRC32:{crc32(0, 0, 0)}];
    if (v227)
    {
      goto LABEL_310;
    }

LABEL_366:
    if (v495 && *([*v9 currentLFRecord] + 4))
    {
      if (v227)
      {
        v264 = *v9;
LABEL_372:
        v55 = 3;
        [v264 setStreamState:3];
        goto LABEL_63;
      }
    }

    else
    {
      v265 = [*v9 thisStageBytesComplete];
      if (v265 != sub_100009B90(*v9))
      {
        if (v12)
        {
          __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1210, "0 == length");
        }

        goto LABEL_534;
      }

      v264 = *v9;
      if (v495)
      {
        goto LABEL_372;
      }

      [v264 setStreamState:4];
    }

LABEL_62:
    v55 = 3;
LABEL_63:
    v56 = v501;
LABEL_407:
    objc_autoreleasePoolPop(v56);
    v289 = v55 == 3;
    v9 = v502;
    if (!v289)
    {
      goto LABEL_424;
    }
  }

  if (!v227)
  {
    goto LABEL_366;
  }

LABEL_310:
  v503 = v10;
  v475 = 0;
  v476 = v226;
  v500 = a1;
  while (2)
  {
    if (v227 >= 0x7FFFFFFF)
    {
      v230 = 0x7FFFFFFFLL;
    }

    else
    {
      v230 = v227;
    }

    v494 = v227 - v230;
    if (v226 > 13)
    {
      if (v226 != 14 && v226 != 99)
      {
LABEL_506:
        v382 = sub_100009CBC([*v9 currentLFRecord]);
        v565[0] = @"SZExtractorFileOffsetErrorKey";
        v383 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
        v565[1] = v496;
        v566[0] = v383;
        v566[1] = v382;
        v384 = [NSDictionary dictionaryWithObjects:v566 forKeys:v565 count:2];

        v385 = sub_100001194();
        if (os_log_type_enabled(v385, OS_LOG_TYPE_ERROR))
        {
          v437 = *([*v9 currentLFRecord] + 4);
          v591.st_dev = 67109634;
          *&v591.st_mode = v437;
          LOWORD(v591.st_ino) = 2112;
          *(&v591.st_ino + 2) = v382;
          HIWORD(v591.st_uid) = 2112;
          *&v591.st_gid = 0;
          _os_log_error_impl(&_mh_execute_header, v385, OS_LOG_TYPE_ERROR, "Unknown compression method %hu for file %@ : %@", &v591, 0x1Cu);
        }

        v386 = [*v9 currentLFRecord];
        v10 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1198, @"SZExtractorErrorDomain", 2, 0, v384, @"Unknown compression method %hu for file %@", v387, v386[4]);

LABEL_533:
        goto LABEL_534;
      }

LABEL_320:
      if (!*(a1 + 56))
      {
        *(a1 + 56) = malloc_type_malloc(0x10000uLL, 0xFC8B5E06uLL);
      }

      v231 = [*v9 cmpState];
      if (![*v9 thisStageBytesComplete])
      {
        v232 = compression_stream_reinit();
        if (v232)
        {
          v377 = v232;
          v378 = sub_100001194();
          if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
          {
            v591.st_dev = 67109378;
            *&v591.st_mode = v377;
            LOWORD(v591.st_ino) = 2112;
            *(&v591.st_ino + 2) = 0;
            _os_log_error_impl(&_mh_execute_header, v378, OS_LOG_TYPE_ERROR, "Failed to initialize compression: %d : %@", &v591, 0x12u);
          }

          v575 = @"SZExtractorCompressionLibErrorKey";
          v379 = [NSNumber numberWithInt:v377];
          v576 = v379;
          v380 = [NSDictionary dictionaryWithObjects:&v576 forKeys:&v575 count:1];
          v10 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1091, @"SZExtractorErrorDomain", 1, 0, v380, @"Failed to initialize compression: %d", v381, v377);

          goto LABEL_534;
        }
      }

      LODWORD(v499) = 0;
      src_ptr = v546;
      v231->src_ptr = v546;
      v231->src_size = v230;
      while (1)
      {
        v231->dst_ptr = *(a1 + 56);
        v231->dst_size = 0x10000;
        v234 = compression_stream_process(v231, 0);
        src_size = v231->src_size;
        v236 = v230 - src_size;
        v237 = sub_100001194();
        if (os_log_type_enabled(v237, OS_LOG_TYPE_DEBUG))
        {
          v591.st_dev = v493;
          *&v591.st_mode = v230 - src_size;
          _os_log_debug_impl(&_mh_execute_header, v237, OS_LOG_TYPE_DEBUG, "compression_stream_process consumed %zu bytes", &v591, 0xCu);
        }

        [*v9 setCurrentOffset:{objc_msgSend(*v9, "currentOffset") + v236}];
        [*v9 setThisStageBytesComplete:{objc_msgSend(*v9, "thisStageBytesComplete") + v236}];
        dst_size = v231->dst_size;
        if (dst_size > 0x10000)
        {
          __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1130, "outputSize >= cmpState->dst_size");
        }

        if (!v234 && v230 && v230 == src_size && dst_size == 0x10000)
        {
          v573[0] = @"SZExtractorFileOffsetErrorKey";
          v9 = v502;
          v303 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v502 currentOffset]);
          v574[0] = v303;
          v573[1] = v496;
          v304 = sub_100009CBC([*v9 currentLFRecord]);
          v574[1] = v304;
          v305 = [NSDictionary dictionaryWithObjects:v574 forKeys:v573 count:2];

          v306 = sub_100001194();
          if (os_log_type_enabled(v306, OS_LOG_TYPE_ERROR))
          {
            v353 = sub_100009CBC([*v9 currentLFRecord]);
            v591.st_dev = v490;
            *&v591.st_mode = v353;
            WORD2(v591.st_ino) = 2048;
            *(&v591.st_ino + 6) = v230;
            HIWORD(v591.st_gid) = 2048;
            *&v591.st_rdev = 0x10000;
            LOWORD(v591.st_atimespec.tv_sec) = 2112;
            *(&v591.st_atimespec.tv_sec + 2) = 0;
            _os_log_error_impl(&_mh_execute_header, v306, OS_LOG_TYPE_ERROR, "compression_stream_process did not consume data for output file %@; input buffer size: %zu, output buffer size: %zu : %@", &v591, 0x2Au);
          }

          v307 = sub_100009CBC([*v9 currentLFRecord]);
          v10 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1136, @"SZExtractorErrorDomain", 1, 0, v305, @"compression_stream_process did not consume data for output file %@ input buffer size: %zu, output buffer size: %zu", v308, v307);;

          goto LABEL_432;
        }

        if (v234 >= 2)
        {
          v571[0] = @"SZExtractorCompressionLibErrorKey";
          v309 = [NSNumber numberWithInt:v234];
          v572[0] = v309;
          v571[1] = @"SZExtractorFileOffsetErrorKey";
          v9 = v502;
          v310 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v502 currentOffset]);
          v572[1] = v310;
          v571[2] = v496;
          v311 = sub_100009CBC([*v9 currentLFRecord]);
          v572[2] = v311;
          v305 = [NSDictionary dictionaryWithObjects:v572 forKeys:v571 count:3];

          v312 = sub_100001194();
          if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
          {
            v591.st_dev = 67109378;
            *&v591.st_mode = v234;
            LOWORD(v591.st_ino) = 2112;
            *(&v591.st_ino + 2) = 0;
            _os_log_error_impl(&_mh_execute_header, v312, OS_LOG_TYPE_ERROR, "compression_stream_process returned unexpected result %d : %@", &v591, 0x12u);
          }

          v10 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1144, @"SZExtractorErrorDomain", 2, 0, v305, @"compression_stream_process returned unexpected result %d", v313, v234);
LABEL_432:

          v257 = 0;
LABEL_433:
          v7 = v497;
          a1 = v500;
          goto LABEL_535;
        }

        if (v230 == src_size)
        {
          a1 = v500;
          v10 = v503;
        }

        else
        {
          v10 = [*v502 updateHashFromOffset:objc_msgSend(*v502 withBytes:"currentOffset") - v236 length:{src_ptr, v230 - src_size}];

          a1 = v500;
          if (v10)
          {
            v257 = 0;
            v7 = v497;
            goto LABEL_435;
          }

          LODWORD(v499) = v499 + v236;
        }

        if (dst_size == 0x10000)
        {
          v9 = v502;
        }

        else
        {
          v239 = 0x10000 - dst_size;
          [*(a1 + 64) setUncompressedBytesOutput:{objc_msgSend(*(a1 + 64), "uncompressedBytesOutput") + 0x10000 - dst_size}];
          [*(a1 + 64) setCurrentCRC32:{crc32(objc_msgSend(*(a1 + 64), "currentCRC32"), *(a1 + 56), 0x10000 - dst_size)}];
          v240 = [*(a1 + 64) storeCurrentFileInMemory];
          v241 = *(a1 + 64);
          if (v240)
          {
            v242 = [v241 inMemoryFileData];
            [v242 appendBytes:*(a1 + 56) length:0x10000 - dst_size];

            v9 = v502;
          }

          else
          {
            v243 = [v241 fileWriter];
            v244 = v502;
            if (!v243)
            {
              __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1165, "_currentState.fileWriter");
            }

            v245 = [*(a1 + 64) fileWriter];
            v246 = *(a1 + 56);
            v541 = v10;
            v247 = [v245 writeBuffer:v246 length:v239 error:&v541];
            v248 = v541;

            if (!v247)
            {
              v257 = 0;
              v10 = v248;
              v7 = v497;
              v318 = v501;
              v9 = v244;
              goto LABEL_536;
            }

            v10 = v248;
            v9 = v244;
          }

          [*v9 setTotalFileSizeWritten:{objc_msgSend(*v9, "totalFileSizeWritten") + v239}];
          if ([*v9 totalUncompressedBytes])
          {
            sub_10000A144(a1, [*(a1 + 64) totalFileSizeWritten] / objc_msgSend(*(a1 + 64), "totalUncompressedBytes"));
          }
        }

        v503 = v10;
        if (v234)
        {
          break;
        }

        v230 = v231->src_size;
        if (!v230 && v231->dst_size)
        {
          goto LABEL_363;
        }

        src_ptr = v231->src_ptr;
      }

      if (v495)
      {
        v494 = 0;
        v475 = 1;
        goto LABEL_363;
      }

      v260 = sub_100009B90(*v9);
      if (v260 != [*v9 thisStageBytesComplete])
      {
        v414 = sub_100001194();
        if (os_log_type_enabled(v414, OS_LOG_TYPE_ERROR))
        {
          v457 = sub_100009B90(*v9);
          v458 = v457 - [*v9 thisStageBytesComplete];
          v459 = sub_100009CBC([*v9 currentLFRecord]);
          v591.st_dev = 134218498;
          *&v591.st_mode = v458;
          WORD2(v591.st_ino) = 2112;
          *(&v591.st_ino + 6) = v459;
          HIWORD(v591.st_gid) = 2112;
          *&v591.st_rdev = 0;
          _os_log_error_impl(&_mh_execute_header, v414, OS_LOG_TYPE_ERROR, "Hit compression stream end with %llu compressed bytes remaining for file %@ : %@", &v591, 0x20u);
        }

        v569 = @"SZExtractorFileOffsetErrorKey";
        v415 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
        v570 = v415;
        v416 = [NSDictionary dictionaryWithObjects:&v570 forKeys:&v569 count:1];
        v417 = sub_100009B90(*v9);
        v418 = v417 - [*v9 thisStageBytesComplete];
        v473 = sub_100009CBC([*v9 currentLFRecord]);
        v420 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1187, @"SZExtractorErrorDomain", 2, 0, v416, @"Hit compression stream end with %llu compressed bytes remaining for file %@", v419, v418);

        v257 = 0;
        v10 = v420;
        goto LABEL_433;
      }

      v261 = sub_100009AA0(*v9);
      if (v261 != [*v9 uncompressedBytesOutput])
      {
        v421 = sub_100001194();
        if (os_log_type_enabled(v421, OS_LOG_TYPE_ERROR))
        {
          v460 = [*v9 uncompressedBytesOutput];
          v461 = sub_100009CBC([*v9 currentLFRecord]);
          v462 = sub_100009AA0(*v9);
          v591.st_dev = v480;
          *&v591.st_mode = v460;
          WORD2(v591.st_ino) = 2112;
          *(&v591.st_ino + 6) = v461;
          HIWORD(v591.st_gid) = 2048;
          *&v591.st_rdev = v462;
          LOWORD(v591.st_atimespec.tv_sec) = 2112;
          *(&v591.st_atimespec.tv_sec + 2) = 0;
          _os_log_error_impl(&_mh_execute_header, v421, OS_LOG_TYPE_ERROR, "Hit compression stream end at %llu bytes output for file %@, but expected uncompressed file size of %llu bytes : %@", &v591, 0x2Au);
        }

        v567 = @"SZExtractorFileOffsetErrorKey";
        v405 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v9 currentOffset]);
        v568 = v405;
        v406 = [NSDictionary dictionaryWithObjects:&v568 forKeys:&v567 count:1];
        v422 = [*v9 uncompressedBytesOutput];
        v468 = sub_100009CBC([*v9 currentLFRecord]);
        sub_100009AA0(*v9);
        v409 = sub_10000151C("[StreamingUnzipper _supplyBytes:length:withReply:]", 1190, @"SZExtractorErrorDomain", 2, 0, v406, @"Hit compression stream end at %llu bytes output for file %@, but expected uncompressed file size of %llu bytes", v423, v422);

        goto LABEL_557;
      }

LABEL_363:
      LODWORD(v230) = v499;
      v7 = v497;
LABEL_364:
      v262 = [*v9 unsureData];
      v263 = v546;
      [v262 appendBytes:v546 length:v230];

      v12 = v545 - v230;
      v545 = v12;
      v546 = &v263[v230];
      v226 = v476;
      v227 = v494;
      if (!v494)
      {
        v10 = v503;
        LOBYTE(v227) = v475;
        goto LABEL_366;
      }

      continue;
    }

    break;
  }

  if (v226)
  {
    if (v226 != 8)
    {
      goto LABEL_506;
    }

    goto LABEL_320;
  }

  v249 = [*v9 currentCRC32];
  v250 = v546;
  [*v9 setCurrentCRC32:{crc32(v249, v546, v230)}];
  v251 = [*v9 storeCurrentFileInMemory];
  v252 = *v9;
  if (v251)
  {
    v253 = [v252 inMemoryFileData];
    [v253 appendBytes:v250 length:v230];

LABEL_357:
    [*v9 setCurrentOffset:{objc_msgSend(*v9, "currentOffset") + v230}];
    [*v9 setThisStageBytesComplete:{objc_msgSend(*v9, "thisStageBytesComplete") + v230}];
    [*v9 setUncompressedBytesOutput:{objc_msgSend(*v9, "uncompressedBytesOutput") + v230}];
    [*v9 setTotalFileSizeWritten:{objc_msgSend(*v9, "totalFileSizeWritten") + v230}];
    if ([*v9 totalUncompressedBytes])
    {
      sub_10000A144(a1, [*(a1 + 64) totalFileSizeWritten] / objc_msgSend(*(a1 + 64), "totalUncompressedBytes"));
    }

    v258 = *v9;
    v259 = [*v9 currentOffset];
    v27 = [v258 updateHashFromOffset:&v259[-v230] withBytes:v546 length:v230];

    if (!v27)
    {
      [*v9 markResumptionPoint];
      v503 = 0;
      goto LABEL_364;
    }

LABEL_520:
    v257 = 0;
  }

  else
  {
    v254 = [v252 fileWriter];
    if (!v254)
    {
      __assert_rtn("[StreamingUnzipper _supplyBytes:length:withReply:]", "StreamingUnzipper.m", 1041, "_currentState.fileWriter");
    }

    v255 = [*v9 fileWriter];
    v256 = v503;
    v542 = v503;
    v257 = [v255 writeBuffer:v250 length:v230 error:&v542];
    v27 = v542;

    if (v257)
    {
      v503 = v27;
      goto LABEL_357;
    }
  }

  v10 = v27;
LABEL_535:
  v318 = v501;
LABEL_536:
  objc_autoreleasePoolPop(v318);
  if (v10)
  {
LABEL_537:
    if ([*v9 performingExtraction])
    {
      v404 = sub_10000123C();
      if (os_signpost_enabled(v404))
      {
        LOWORD(v591.st_dev) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v404, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EXTRACTION", "Extraction failed", &v591, 2u);
      }

      [*v9 setPerformingExtraction:0];
    }

    sub_100001F44(a1);
  }

LABEL_542:
  v7[2](v7, v10, v257);

LABEL_543:
}

id sub_100009220(uint64_t a1, uint64_t a2, void *a3, const void **a4, size_t *a5)
{
  v9 = *a5;
  v10 = a3;
  v11 = [v10 thisStageBytesComplete];
  if (v9 >= a2 - v11)
  {
    v12 = a2 - v11;
  }

  else
  {
    v12 = v9;
  }

  memcpy([v10 thisStageBytesComplete] + a1, *a4, v12);
  [v10 setThisStageBytesComplete:{objc_msgSend(v10, "thisStageBytesComplete") + v12}];
  v13 = [v10 unsureData];
  [v13 appendBytes:*a4 length:v12];

  [v10 setCurrentOffset:{objc_msgSend(v10, "currentOffset") + v12}];
  v14 = [v10 updateHashFromOffset:objc_msgSend(v10 withBytes:"currentOffset") - v12 length:{*a4, v12}];

  if (!v14)
  {
    *a4 = *a4 + v12;
    *a5 -= v12;
  }

  return v14;
}

id sub_100009330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 64) unzipPath];
  if ((*(a1 + 116) & 1) == 0)
  {
    v25 = sub_100001194();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = 0;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Byte stream does not represent a valid streamable archive : %@", buf, 0xCu);
    }

    v49 = NSFilePathErrorKey;
    v50 = v6;
    v26 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v21 = sub_10000151C("[StreamingUnzipper _beginNonStreamablePassthroughWithRemainingBytes:length:]", 196, @"SZExtractorErrorDomain", 2, 0, v26, @"Byte stream does not represent a valid streamable archive", v27, v40);

LABEL_28:
    v12 = 0;
    if (!v21)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  dispatch_group_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL);
  if ([*(a1 + 64) performingExtraction])
  {
    v7 = sub_10000123C();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EXTRACTION", "Extraction entered passthrough mode", buf, 2u);
    }

    [*(a1 + 64) setPerformingExtraction:0];
  }

  v8 = sub_100001194();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Beginning passthrough of non-streamable zip file to %@", buf, 0xCu);
  }

  v9 = sub_10000123C();
  if (os_signpost_enabled(v9))
  {
    *buf = 138412290;
    *&buf[4] = v6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PASSTHROUGH_MODE", "Beginning passthrough of non-streamable zip file to %@", buf, 0xCu);
  }

  v10 = +[NSFileManager defaultManager];
  [v10 removeItemAtPath:v6 error:0];

  v11 = [*(a1 + 64) performCachedWrites];
  v42[1] = 0;
  LOBYTE(v40) = v11;
  v12 = [StreamingFileWriter synchronousFileWriterForPath:"synchronousFileWriterForPath:withOpenFlags:mode:quarantineInfo:resumptionState:useFSCompression:performCachedWrites:expectedSize:error:" withOpenFlags:v6 mode:1537 quarantineInfo:384 resumptionState:0 useFSCompression:0 performCachedWrites:0 expectedSize:? error:?];
  v13 = 0;
  if (!v12)
  {
    v28 = sub_100001194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to open passthrough output file at %@ : %@", buf, 0x16u);
    }

    v47 = NSFilePathErrorKey;
    v48 = v6;
    v29 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v21 = sub_10000151C("[StreamingUnzipper _beginNonStreamablePassthroughWithRemainingBytes:length:]", 221, @"SZExtractorErrorDomain", 1, v13, v29, @"Failed to open passthrough output file at %@", v30, v6);

    goto LABEL_28;
  }

  [v12 setIncompleteExtractionAttribute];
  v14 = [*(a1 + 64) unsureData];
  v15 = [v14 length];

  v16 = [*(a1 + 64) unsureData];
  v42[0] = v13;
  v17 = [v12 writeBuffer:objc_msgSend(v16 length:"bytes") error:{v15, v42}];
  v18 = v42[0];

  if (v17)
  {
    if (!a3)
    {
LABEL_15:
      [*(a1 + 64) setFileWriter:v12];
      [*(a1 + 64) setCurrentOffset:&v15[a3]];
      v21 = [*(a1 + 64) updateHashFromOffset:v15 withBytes:a2 length:a3];

      if (!v21)
      {
        [*(a1 + 64) setStreamState:5];
        if ((*(a1 + 80) & 4) != 0)
        {
          v22 = [a1 xpcConnection];
          v23 = v22;
          if (v22)
          {
            v24 = [v22 remoteObjectProxy];
            [v24 extractionEnteredPassThroughMode];
          }

          else
          {
            v24 = [a1 inProcessExtractorDelegate];
            if (v24)
            {
              v38 = [a1 inProcessDelegateQueue];

              if (v38)
              {
                v39 = [a1 inProcessDelegateQueue];
                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_100010E0C;
                v52 = &unk_100028830;
                v24 = v24;
                v53 = v24;
                dispatch_async(v39, buf);
              }
            }
          }
        }

        v21 = [*(a1 + 64) serializeState];
        if (!v21)
        {
          goto LABEL_30;
        }
      }

LABEL_29:
      sub_100001F44(a1);
      goto LABEL_30;
    }

    v41 = v18;
    v19 = [v12 writeBuffer:a2 length:a3 error:&v41];
    v20 = v41;

    if (v19)
    {
      v18 = v20;
      goto LABEL_15;
    }

    v35 = sub_100001194();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v20;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to write remaining initial data to passthrough output file : %@", buf, 0xCu);
    }

    v43 = NSFilePathErrorKey;
    v44 = v6;
    v36 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v21 = sub_10000151C("[StreamingUnzipper _beginNonStreamablePassthroughWithRemainingBytes:length:]", 236, @"SZExtractorErrorDomain", 1, v20, v36, @"Failed to write remaining initial data to passthrough output file", v37, v40);

    if (v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v32 = sub_100001194();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to write initial data to passthrough output file : %@", buf, 0xCu);
    }

    v45 = NSFilePathErrorKey;
    v46 = v6;
    v33 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v21 = sub_10000151C("[StreamingUnzipper _beginNonStreamablePassthroughWithRemainingBytes:length:]", 230, @"SZExtractorErrorDomain", 1, v18, v33, @"Failed to write initial data to passthrough output file", v34, v40);

    if (v21)
    {
      goto LABEL_29;
    }
  }

LABEL_30:

  return v21;
}

uint64_t sub_100009AA0(void *a1)
{
  v1 = a1;
  v2 = [v1 currentLFRecord];
  if (*([v1 currentLFRecord] + 4) && objc_msgSend(v1, "currentLFRequiresDataDescriptor"))
  {
    if ([v1 streamState] <= 3)
    {
      __assert_rtn("_GetUncompressedSize", "StreamingUnzipper.m", 363, "currentState.streamState > kStreamStateIncompleteDataDescriptor");
    }

    if (![v1 dataDescriptor])
    {
      __assert_rtn("_GetUncompressedSize", "StreamingUnzipper.m", 364, "NULL != currentState.dataDescriptor");
    }

    v3 = sub_1000017D0([v1 currentLFRecord], &word_10001A5F2, 0x10u);
    v4 = [v1 dataDescriptor];
    if (v3)
    {
      v5 = v4[2];
    }

    else
    {
      v5 = *(v4 + 3);
    }
  }

  else
  {
    v5 = sub_100001844(v2);
  }

  return v5;
}

uint64_t sub_100009B90(void *a1)
{
  v1 = a1;
  v2 = [v1 currentLFRecord];
  if (*([v1 currentLFRecord] + 4) && objc_msgSend(v1, "currentLFRequiresDataDescriptor"))
  {
    if ([v1 streamState] <= 3)
    {
      __assert_rtn("_GetCompressedSize", "StreamingUnzipper.m", 380, "currentState.streamState > kStreamStateIncompleteDataDescriptor");
    }

    if (![v1 dataDescriptor])
    {
      __assert_rtn("_GetCompressedSize", "StreamingUnzipper.m", 381, "NULL != currentState.dataDescriptor");
    }

    v3 = sub_1000017D0([v1 currentLFRecord], &word_10001A5F2, 0x10u);
    v4 = [v1 dataDescriptor];
    if (v3)
    {
      v5 = v4[1];
    }

    else
    {
      v5 = *(v4 + 2);
    }
  }

  else
  {
    v5 = *(v2 + 18);
    if (v5 == -1 || *(v2 + 22) == -1)
    {
      v6 = sub_1000017D0(v2, &word_10001A5F2, 0x10u);
      if (v6)
      {
        if (*(v6 + 2) == 16)
        {
          v5 = *(v6 + 12);
        }
      }
    }
  }

  return v5;
}

id sub_100009CBC(_WORD *a1)
{
  v2 = a1[13];
  v3 = malloc_type_calloc(v2 + 1, 1uLL, 0x100004077774924uLL);
  memcpy(v3, a1 + 15, v2);
  if (!v3)
  {
    v17 = sub_100001194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to get name from local file record.", buf, 2u);
    }

    v16 = 0;
    goto LABEL_73;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = v3[v4];
    if (v3[v4] < 0)
    {
      v5 = 1;
    }

    else if (v2 != v4 && !v3[v4])
    {
      v18 = sub_100001194();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v34 = v3;
        v35 = 2048;
        v36 = v2;
        v37 = 2048;
        v38 = v4;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Found NUL in path %s length %zu at %zu", buf, 0x20u);
      }

LABEL_49:
      v16 = 0;
      goto LABEL_72;
    }

    if (v8 == 47)
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }

    if (v8 == 47)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6;
    }

    if (!v3[v4])
    {
      v9 = 0;
      v10 = 1;
    }

    if (v8 == 47)
    {
      v11 = 0;
    }

    else
    {
      v11 = 3;
    }

    if (v7 != 2)
    {
      v9 = v11;
      v10 = v6;
    }

    if (v8 == 47)
    {
      v12 = 0;
    }

    else
    {
      v12 = 3;
    }

    if (v8 == 46)
    {
      v12 = 1;
    }

    if (v8 == 47)
    {
      v13 = 0;
    }

    else
    {
      v13 = 3;
    }

    if (v8 == 46)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13;
    }

    if (!v7)
    {
      v14 = v12;
    }

    v15 = v7 <= 1;
    if (v7 <= 1)
    {
      v7 = v14;
    }

    else
    {
      v7 = v9;
    }

    if (!v15)
    {
      v6 = v10;
    }

    ++v4;
  }

  while (v2 + 1 != v4);
  if (v5)
  {
    if (!(((a1[3] & 0x800) == 0) | v6 & 1))
    {
LABEL_42:
      v16 = [[NSString alloc] initWithBytes:v3 length:v2 encoding:4];
      goto LABEL_72;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_42;
  }

  v20 = [[NSString alloc] initWithBytes:v3 length:v2 encoding:4];
  if (!v20)
  {
    v20 = [[NSString alloc] initWithBytes:v3 length:v2 encoding:{+[NSString defaultCStringEncoding](NSString, "defaultCStringEncoding")}];
    if (!v20)
    {
      v20 = [[NSString alloc] initWithBytes:v3 length:v2 encoding:CFStringConvertEncodingToNSStringEncoding(0x600u)];
      if (!v20)
      {
        v20 = [[NSString alloc] initWithBytes:v3 length:v2 encoding:CFStringConvertEncodingToNSStringEncoding(0x400u)];
        if (!v20)
        {
          v30 = sub_100001194();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v34 = v3;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to convert path to string: %s", buf, 0xCu);
          }

          goto LABEL_49;
        }
      }
    }
  }

  v16 = v20;
  if (v6)
  {
    v32 = v20;
    v31 = [v20 componentsSeparatedByString:@"/"];
    v21 = [v31 mutableCopy];
    v22 = [v21 count];
    if (v22)
    {
      v23 = v22;
      for (i = 0; i != v23; ++i)
      {
        v25 = [v21 count];
        if (v25)
        {
          v26 = v25;
          v27 = 0;
          while (1)
          {
            v28 = [v21 objectAtIndex:v27];
            if ([v28 isEqualToString:@".."])
            {
              break;
            }

            if (v27 && (([v28 isEqualToString:@"."] & 1) != 0 || objc_msgSend(v28, "isEqualToString:", &stru_10002A298)))
            {
              goto LABEL_68;
            }

            if (v26 == ++v27)
            {
              goto LABEL_70;
            }
          }

          [v21 removeObjectAtIndex:v27];
          if (!v27)
          {
            goto LABEL_69;
          }

          --v27;
LABEL_68:
          [v21 removeObjectAtIndex:v27];
LABEL_69:
        }

LABEL_70:
        ;
      }
    }

    v16 = [v21 componentsJoinedByString:@"/"];
  }

LABEL_72:
  free(v3);
LABEL_73:

  return v16;
}

void sub_10000A144(uint64_t a1, double a2)
{
  if ((*(a1 + 80) & 1) != 0 && a2 - *(a1 + 88) >= 0.00999999978)
  {
    *(a1 + 88) = a2;
    v4 = [a1 xpcConnection];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 remoteObjectProxy];
      [v6 setExtractionProgress:a2];
    }

    else
    {
      v6 = [a1 inProcessExtractorDelegate];
      if (v6)
      {
        v7 = [a1 inProcessDelegateQueue];

        if (v7)
        {
          v8 = [a1 inProcessDelegateQueue];
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 3221225472;
          v9[2] = sub_10000A4C0;
          v9[3] = &unk_1000287E0;
          v10 = v6;
          v11 = a2;
          dispatch_async(v8, v9);
        }
      }
    }
  }
}

uint64_t sub_10000A284(void *a1)
{
  v1 = a1;
  v2 = [v1 currentLFRecord];
  if ([v1 currentLFRequiresDataDescriptor])
  {
    if ([v1 streamState] <= 3)
    {
      __assert_rtn("_GetCRC32", "StreamingUnzipper.m", 346, "currentState.streamState > kStreamStateIncompleteDataDescriptor");
    }

    if (![v1 dataDescriptor])
    {
      __assert_rtn("_GetCRC32", "StreamingUnzipper.m", 347, "NULL != currentState.dataDescriptor");
    }

    sub_1000017D0([v1 currentLFRecord], &word_10001A5F2, 0x10u);
    v3 = ([v1 dataDescriptor] + 4);
  }

  else
  {
    v3 = (v2 + 14);
  }

  v4 = *v3;

  return v4;
}

id sub_10000A350(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  for (i = [NSMutableString stringWithCapacity:a2];
  {
    v5 = *a1++;
    [i appendFormat:@"%02x", v5];
  }

  return i;
}

uint64_t sub_10000A3D8(const char *a1, int a2, int *a3)
{
  v6 = strndup(a1, 0x400uLL);
  __stringp = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (*v6 == 47 || !*a1)
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  while (1)
  {
    v8 = strsep(&__stringp, "/");
    if (!v8)
    {
      break;
    }

    if (*v8)
    {
      if (*v8 != 46)
      {
        goto LABEL_10;
      }

      if (v8[1])
      {
        if (v8[1] == 46 && !v8[2])
        {
          --a2;
          goto LABEL_11;
        }

LABEL_10:
        ++a2;
      }
    }

LABEL_11:
    if (a2 < 1)
    {
      goto LABEL_14;
    }
  }

  *a3 = a2;
  v9 = 1;
LABEL_15:
  free(v7);
  return v9;
}

BOOL sub_10000B7E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
  }

  else
  {
    v7 = [[NSMutableData alloc] initWithLength:0];
  }

  v8 = *(a1 + 32);
  *(a1 + 32) = v7;

  *(a1 + 8) = 257;
  *(a1 + 24) = 0;
  v9 = AACustomByteStreamOpen();
  if (v9)
  {
    v10 = v9;
    AACustomByteStreamSetData(v9, a1);
    AACustomByteStreamSetCloseProc(v10, sub_10000BF44);
    AACustomByteStreamSetReadProc(v10, sub_10000BEB4);
    AACustomByteStreamSetPReadProc(v10, sub_10000BE00);
    AACustomByteStreamSetWriteProc(v10, sub_10000BD70);
    AACustomByteStreamSetPWriteProc(v10, sub_10000BCC0);
    AACustomByteStreamSetSeekProc(v10, sub_10000BA04);
    AACustomByteStreamSetCancelProc(v10, sub_10000B9F4);
  }

  else
  {
    v11 = sub_100001194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v15 = 138412290;
      *&v15[4] = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "AACustomByteStreamOpen returned NULL : %@", v15, 0xCu);
    }

    v13 = sub_10000151C("[MemoryBufferStream _createStreamWithError:]", 267, @"SZExtractorErrorDomain", 1, 0, 0, @"AACustomByteStreamOpen returned NULL", v12, *v15);
    if (a3)
    {
      v13 = v13;
      *a3 = v13;
    }

    v10 = 0;
  }

  *(a1 + 16) = v10;

  return v10 != 0;
}

id sub_10000B9F4(id result)
{
  if (result)
  {
    return [result setAllowReadWriteSeek:0];
  }

  return result;
}

uint64_t sub_10000BA04(void *a1, unint64_t a2, int a3)
{
  if (a1)
  {
    v5 = a1;
    if (![v5 allowReadWriteSeek])
    {
      v8 = -1;
LABEL_24:

      return v8;
    }

    v6 = [v5 buffer];
    v7 = v6;
    if (a3 == 2)
    {
      v9 = [v6 length];
    }

    else
    {
      if (a3 != 1)
      {
        if (a3)
        {
          v10 = sub_100001194();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
LABEL_21:

            goto LABEL_22;
          }

          v15[0] = 67109120;
          v15[1] = a3;
          v11 = "Unknown whence argument to seek: %d";
          v12 = v10;
          v13 = 8;
        }

        else
        {
          if ((a2 & 0x8000000000000000) == 0)
          {
            if ([v6 length] < a2)
            {
              [v7 setLength:a2];
            }

            [v5 setOffset:a2];
            goto LABEL_15;
          }

          v10 = sub_100001194();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          LOWORD(v15[0]) = 0;
          v11 = "Supplied offset was negative";
          v12 = v10;
          v13 = 2;
        }

        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, v15, v13);
        goto LABEL_21;
      }

      v9 = [v5 offset];
    }

    if (sub_10000BBB4(v5, v9, a2))
    {
LABEL_15:
      v8 = [v5 offset];
LABEL_23:

      goto LABEL_24;
    }

LABEL_22:
    v8 = -1;
    goto LABEL_23;
  }

  return -1;
}

uint64_t sub_10000BBB4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 buffer];
  v7 = v6;
  v8 = __OFADD__(a2, a3);
  v9 = a2 + a3;
  if (v8)
  {
    v10 = sub_100001194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v11 = "Proposed offset overflowed";
      v12 = &v16;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    }

LABEL_12:

    v13 = 0;
    goto LABEL_13;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = sub_100001194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v11 = "Proposed offset was negative";
      v12 = &v15;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v9 > [v6 length])
  {
    [v7 setLength:v9];
  }

  [v5 setOffset:v9];
  v13 = 1;
LABEL_13:

  return v13;
}

uint64_t sub_10000BCC0(void *a1, const void *a2, size_t a3, uint64_t a4)
{
  if (!a1)
  {
    return -1;
  }

  v7 = a1;
  if ([v7 allowReadWriteSeek])
  {
    v8 = [v7 buffer];
    if ([v8 length] < a4 + a3)
    {
      [v8 setLength:a4 + a3];
    }

    memcpy([v8 mutableBytes] + a4, a2, a3);
  }

  else
  {
    a3 = -1;
  }

  return a3;
}

uint64_t sub_10000BD70(void *a1, const void *a2, size_t a3)
{
  if (!a1)
  {
    return -1;
  }

  v5 = a1;
  if ([v5 allowReadWriteSeek])
  {
    v6 = sub_10000BCC0(v5, a2, a3, [v5 offset]);
    if ((v6 & 0x8000000000000000) == 0)
    {
      [v5 setOffset:{objc_msgSend(v5, "offset") + v6}];
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

uint64_t sub_10000BE00(void *a1, void *a2, size_t a3, uint64_t a4)
{
  if (!a1)
  {
    return -1;
  }

  v7 = a1;
  if ([v7 allowReadWriteSeek])
  {
    v8 = [v7 buffer];
    if ([v8 length] - a4 < a3)
    {
      a3 = [v8 length] - a4;
    }

    if (a3)
    {
      memcpy(a2, [v8 bytes] + a4, a3);
    }
  }

  else
  {
    a3 = -1;
  }

  return a3;
}

uint64_t sub_10000BEB4(void *a1, void *a2, size_t a3)
{
  if (!a1)
  {
    return -1;
  }

  v5 = a1;
  if ([v5 allowReadWriteSeek])
  {
    v6 = sub_10000BE00(v5, a2, a3, [v5 offset]);
    if ((v6 & 0x8000000000000000) == 0)
    {
      [v5 setOffset:{objc_msgSend(v5, "offset") + v6}];
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

uint64_t sub_10000BF44(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = a1;
  if ([v1 isOpen])
  {
    [v1 setIsOpen:0];
    v2 = 0;
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  return v2;
}

BOOL sub_10000C28C(AAByteStream_impl *a1, void *a2)
{
  AAThreadErrorContextEnter();
  *__error() = 0;
  v4 = AAByteStreamClose(a1);
  v5 = *__error();
  v6 = AAThreadErrorContextLeave();
  if (v4)
  {
    v7 = v6;
    if (v5)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_100001194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v14 = v4;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "AAByteStreamClose failed, returning %d : %@", buf, 0x12u);
    }

    v11 = sub_10000151C("_StreamClose", 87, @"SZAppleArchiveError", v7, v8, 0, @"AAByteStreamClose failed, returning %d", v10, v4);
    if (a2)
    {
      v11 = v11;
      *a2 = v11;
    }
  }

  return v4 == 0;
}

void sub_10000C408(int a1, uint64_t a2, __darwin_time_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v19.tv_sec = a3;
  *&v19.tv_usec = a4;
  v20 = a5;
  v21 = a6;
  if (futimes(a1, &v19))
  {
    v10 = *__error();
    v11 = sub_100001194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = a2;
      v17 = 2080;
      v18[0] = strerror(v10);
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to set times on %s : %s", &v15, 0x16u);
    }
  }

  if (fchmod(a1, a7))
  {
    v12 = *__error();
    v13 = sub_100001194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = strerror(v12);
      v15 = 136315650;
      v16 = a2;
      v17 = 1024;
      LODWORD(v18[0]) = a7;
      WORD2(v18[0]) = 2080;
      *(v18 + 6) = v14;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to set mode of %s to 0%o: %s", &v15, 0x1Cu);
    }
  }
}

void sub_10000C628(int a1, uint64_t a2, uint64_t a3, int a4, uid_t a5, gid_t a6)
{
  if (a3 > 0x4000)
  {
    *&buf[16] = a3;
    v22 = 0;
    *buf = 0x300000002;
    *&buf[8] = 0;
    if (fcntl(a1, 42, buf) == -1)
    {
      v12 = *__error();
      v13 = sub_100001194();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = strerror(v12);
        *v24 = 134218498;
        v25 = a3;
        v26 = 2080;
        v27 = a2;
        v28 = 2080;
        v29 = v20;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Advisory preallocation of %lld bytes for %s failed: %s", v24, 0x20u);
      }
    }
  }

  if (fchmod(a1, 0x180u))
  {
    v14 = *__error();
    v15 = sub_100001194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = strerror(v14);
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 2080;
      *&buf[14] = v18;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Setting initial mode on %s failed: %s", buf, 0x16u);
    }
  }

  if (a4 && fchown(a1, a5, a6))
  {
    v16 = *__error();
    v17 = sub_100001194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = strerror(v16);
      *buf = 136316162;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = a5;
      *&buf[18] = 1024;
      *&buf[20] = a6;
      LOWORD(v22) = 1024;
      *(&v22 + 2) = v16;
      HIWORD(v22) = 2080;
      v23 = v19;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to fchown %s to (%d:%d) : %d (%s)", buf, 0x28u);
    }
  }
}

void sub_10000C8E8(int a1, uint64_t a2)
{
  if (fsetxattr(a1, "com.apple.streamingzip.incomplete_extraction", "y", 1uLL, 0, 0))
  {
    v3 = *__error();
    v4 = sub_100001194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = a2;
      v7 = 2080;
      v8 = strerror(v3);
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to set incomplete extraction xattr on %s : %s", &v5, 0x16u);
    }
  }
}

uint64_t sub_10000D810(char *a1, __int16 a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  if ((a2 & 0x200) != 0)
  {
    v25 = a3;
  }

  v10 = open(a1, a2, v25);
  v11 = v10;
  if ((v10 & 0x80000000) == 0)
  {
    if (fcntl(v10, 68, 1) < 0)
    {
      v16 = *__error();
      v17 = sub_100001194();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v27 = a1;
        v28 = 1024;
        v29 = v16;
        v30 = 2080;
        v31 = strerror(v16);
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not mark %s static: %d (%s)", buf, 0x1Cu);
      }

      if (a4)
      {
        goto LABEL_21;
      }
    }

    else if (a4)
    {
LABEL_21:
      if (fcntl(v11, 76, 1) < 0)
      {
        v20 = *__error();
        v21 = sub_100001194();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = strerror(v20);
          *buf = 136315650;
          v27 = a1;
          v28 = 1024;
          v29 = v20;
          v30 = 2080;
          v31 = v23;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unable to set F_SINGLE_WRITER on %s : %d (%s)", buf, 0x1Cu);
        }
      }

      v15 = 0;
      goto LABEL_26;
    }

    if ((a5 >= 0x8000 || a5 == -1) && fcntl(v11, 48, 1) < 0)
    {
      v18 = *__error();
      v19 = sub_100001194();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v24 = strerror(v18);
        *buf = 136315650;
        v27 = a1;
        v28 = 1024;
        v29 = v18;
        v30 = 2080;
        v31 = v24;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to set F_NOCACHE accessing file %s : %d (%s)", buf, 0x1Cu);
      }
    }

    goto LABEL_21;
  }

  v12 = *__error();
  v13 = sub_100001194();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v27 = a1;
    v28 = 1024;
    v29 = v12;
    v30 = 2080;
    v31 = strerror(v12);
    v32 = 2112;
    v33 = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to open %s : %d (%s) : %@", buf, 0x26u);
  }

  strerror(v12);
  v15 = sub_10000151C("SZFileOpen", 34, NSPOSIXErrorDomain, v12, 0, 0, @"Failed to open %s : %d (%s)", v14, a1);
  if (a6)
  {
    v15 = v15;
    *a6 = v15;
  }

  v11 = 0xFFFFFFFFLL;
LABEL_26:

  return v11;
}

void sub_100010DB4(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_10002F168 = [v1 BOOLForKey:@"PerformAllWritesSynchronously"];
}

id sub_100011C60(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v4 = a1 + 128;
    v5 = qword_10001A638[*(a1 + 128)];
    sub_100001764(&buf[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1 + 128);
    v6 = sub_10000A350(&buf[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
    v7 = *(v4 - 72);
    if (v7)
    {
      v8 = a2 / v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8 >= [*(a1 + 96) count])
    {
      v33[0] = @"SZExtractorFileOffsetErrorKey";
      v16 = [NSNumber numberWithUnsignedLongLong:a2];
      v34[0] = v16;
      v34[1] = v6;
      v33[1] = @"SZExtractorActualHashValueErrorKey";
      v33[2] = @"SZExtractorHashChunkIndexErrorKey";
      v17 = [NSNumber numberWithUnsignedLongLong:v8];
      v34[2] = v17;
      v9 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];

      v18 = sub_100001194();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = [*(a1 + 96) count];
        *buf = 134218498;
        v24 = v8;
        v25 = 2048;
        v26 = v22;
        v27 = 2112;
        v28 = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Cannot validate hash; this chunk is index %llu, but we only have %lu hashes. : %@", buf, 0x20u);
      }

      [*(a1 + 96) count];
      v15 = sub_10000151C("[StreamingUnzipState _checkHashForOffset:]", 426, @"SZExtractorErrorDomain", 4, 0, v9, @"Cannot validate hash this chunk is index %llu, but we only have %lu hashes.", v19, v8);;
    }

    else
    {
      v9 = [*(a1 + 96) objectAtIndex:v8];
      if ([v9 caseInsensitiveCompare:v6])
      {
        v31[0] = @"SZExtractorFileOffsetErrorKey";
        v10 = [NSNumber numberWithUnsignedLongLong:a2];
        v32[0] = v10;
        v32[1] = v6;
        v31[1] = @"SZExtractorActualHashValueErrorKey";
        v31[2] = @"SZExtractorHashChunkIndexErrorKey";
        v11 = [NSNumber numberWithUnsignedLongLong:v8];
        v32[2] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];

        v13 = sub_100001194();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218754;
          v24 = a2;
          v25 = 2112;
          v26 = v9;
          v27 = 2112;
          v28 = v6;
          v29 = 2112;
          v30 = 0;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Hash mismatch for chunk containing offset %llu: expected %@, got %@ : %@", buf, 0x2Au);
        }

        v15 = sub_10000151C("[StreamingUnzipState _checkHashForOffset:]", 435, @"SZExtractorErrorDomain", 4, 0, v12, @"Hash mismatch for chunk containing offset %llu: expected %@, got %@", v14, a2);
      }

      else
      {
        v20 = sub_100001194();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v24 = a2;
          v25 = 2048;
          v26 = v8;
          v27 = 2112;
          v28 = v9;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Verified that hashed data offset %llu matches index %llu: %@", buf, 0x20u);
        }

        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

char *sub_1000136E0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v52 = 0;
    goto LABEL_44;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v267.receiver = a1;
  v267.super_class = StreamingUnzipState;
  v9 = objc_msgSendSuper2(&v267, "init");

  if (!v9)
  {
    v48 = sub_100001194();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v278 = 0;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to init : %@", buf, 0xCu);
    }

    v50 = sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", 827, NSPOSIXErrorDomain, 12, 0, 0, @"Failed to init", v49, v225);
    v46 = v50;
    if (a4)
    {
      v51 = v50;
      v9 = 0;
      goto LABEL_40;
    }

    v9 = 0;
LABEL_42:
    v52 = 0;
    goto LABEL_43;
  }

  v10 = v8;
  v11 = objc_opt_class();
  if (!sub_1000164AC(v10, @"SZExtractorOptionsHashType", v11))
  {
    goto LABEL_31;
  }

  v12 = objc_opt_class();
  if (!sub_1000164AC(v10, @"SZExtractorOptionsHashesArray", v12))
  {
    goto LABEL_31;
  }

  v13 = objc_opt_class();
  if (sub_1000164AC(v10, @"SZExtractorOptionsHashedChunkSize", v13) && (v14 = objc_opt_class(), sub_1000164AC(v10, @"SZExtractorOptionsDenyInvalidSymlinks", v14)) && (v15 = objc_opt_class(), sub_1000164AC(v10, @"SZExtractorOptionsPerformCachedWrites", v15)) && (v16 = objc_opt_class(), sub_1000164AC(v10, @"SZExtractorOptionsQuarantineInfo", v16)) && (v17 = objc_opt_class(), sub_1000164AC(v10, @"SZExtractorOptionsOwnerUserID", v17)) && (v18 = objc_opt_class(), sub_1000164AC(v10, @"SZExtractorOptionsOwnerGroupID", v18)) && (v19 = objc_opt_class(), (sub_1000164AC(v10, @"SZExtractorOptionsUseFilesystemCompression", v19) & 1) != 0))
  {
    v20 = objc_opt_class();
    v21 = sub_1000164AC(v10, @"SZExtractorOptionsApplyAppleDoubleFiles", v20);

    if (v21)
    {
      v22 = [v7 SZ_stringByDeletingTrailingSlashes];
      v23 = *(v9 + 11);
      *(v9 + 11) = v22;

      v24 = *(v9 + 50);
      *(v9 + 50) = 0;

      *(v9 + 15) = 30;
      v25 = malloc_type_calloc(1uLL, 0x1EuLL, 0x23979041uLL);
      *(v9 + 48) = v25;
      if (!v25)
      {
        v54 = sub_100001194();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v278 = 0;
          _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Could not allocate memory for local file record : %@", buf, 0xCu);
        }

        v56 = NSPOSIXErrorDomain;
        v57 = @"Could not allocate memory for local file record";
        v58 = 850;
        v59 = 12;
        goto LABEL_56;
      }

      v26 = objc_opt_new();
      v27 = *(v9 + 45);
      *(v9 + 45) = v26;

      v28 = objc_opt_new();
      v29 = *(v9 + 46);
      *(v9 + 46) = v28;

      v30 = objc_opt_new();
      v31 = *(v9 + 47);
      *(v9 + 47) = v30;

      v32 = [v10 objectForKey:@"SZExtractorOptionsHashedChunkSize"];
      *(v9 + 7) = [v32 unsignedLongLongValue];

      v33 = [v10 objectForKey:@"SZExtractorOptionsHashesArray"];
      v34 = *(v9 + 12);
      *(v9 + 12) = v33;

      if ([*(v9 + 12) count] >= 2 && !*(v9 + 7))
      {
        v61 = sub_100001194();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v278 = 0;
          _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Ambiguous chunk size (hashes > 1 but chunkSize == 0) : %@", buf, 0xCu);
        }

        v56 = NSPOSIXErrorDomain;
        v57 = @"Ambiguous chunk size (hashes > 1 but chunkSize == 0)";
        v58 = 862;
        goto LABEL_55;
      }

      if (![*(v9 + 12) count] && *(v9 + 7))
      {
        v60 = sub_100001194();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v278 = 0;
          _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Hash chunk size given as > 0, but no hashes : %@", buf, 0xCu);
        }

        v56 = NSPOSIXErrorDomain;
        v57 = @"Hash chunk size given as > 0, but no hashes";
        v58 = 867;
LABEL_55:
        v59 = 22;
LABEL_56:
        v46 = sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", v58, v56, v59, 0, 0, v57, v55, v225);
        v62 = 0;
        v63 = 0;
LABEL_229:
        [v63 finishDecoding];
        if (v46)
        {
          if (a4)
          {
            v186 = v46;
            *a4 = v46;
          }

          v9 = 0;
        }

        v9 = v9;

        v52 = v9;
        goto LABEL_43;
      }

      v35 = [v10 objectForKey:@"SZExtractorOptionsDenyInvalidSymlinks"];
      v9[461] = [v35 BOOLValue];

      v36 = [v10 objectForKey:@"SZExtractorOptionsPerformCachedWrites"];
      v9[462] = [v36 BOOLValue];

      if (v9[462] == 1)
      {
        v37 = sub_100001194();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v278 = v7;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Performing cached writes to extraction under %@", buf, 0xCu);
        }
      }

      v266 = 0;
      v38 = sub_1000165F0(&v266);
      obj = v266;
      if (!v38)
      {
        v39 = sub_100001194();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v278 = obj;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to fetch current group access list, falling back to always calling chown: %@", buf, 0xCu);
        }

        obj = 0;
        v38 = 0;
      }

      v237 = v38;
      objc_storeStrong(v9 + 59, v38);
      v40 = [v10 objectForKeyedSubscript:@"SZExtractorOptionsOwnerUserID"];
      if (v40)
      {
        if (getuid())
        {
          v41 = sub_100001194();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = getuid();
            *buf = 67109120;
            *v278 = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Use of SZExtractorOptionsOwnerUserID requires the caller to be running as root, but it was running as uid %d; ignoring.", buf, 8u);
          }
        }

        else
        {
          v64 = [[NSNumber alloc] initWithUnsignedInt:{objc_msgSend(v40, "unsignedIntValue")}];
          v41 = *(v9 + 13);
          *(v9 + 13) = v64;
        }
      }

      v65 = [v10 objectForKeyedSubscript:@"SZExtractorOptionsOwnerGroupID"];
      if (v65)
      {
        v66 = [[NSNumber alloc] initWithUnsignedInt:{objc_msgSend(v65, "unsignedIntValue")}];
        v67 = *(v9 + 14);
        *(v9 + 14) = v66;
      }

      v68 = [v10 objectForKey:@"SZExtractorOptionsUseFilesystemCompression"];
      v9[463] = [v68 BOOLValue];

      if (v9[463] == 1)
      {
        v69 = sub_100001194();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v278 = v7;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Using filesystem compression for content in %@", buf, 0xCu);
        }
      }

      v70 = [v10 objectForKey:@"SZExtractorOptionsApplyAppleDoubleFiles"];
      v9[465] = [v70 BOOLValue];

      if (v9[465] == 1)
      {
        v71 = sub_100001194();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v278 = v7;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Applying AppleDouble content, if present, to items in %@", buf, 0xCu);
        }
      }

      v72 = [v10 objectForKey:@"SZExtractorOptionsHashType"];
      v73 = v72;
      if (!v72 || ([v72 isEqualToString:@"SZExtractorHashTypeMD5"] & 1) != 0)
      {
        goto LABEL_71;
      }

      if ([v73 isEqualToString:@"SZExtractorHashTypeSHA1"])
      {
        v74 = 1;
      }

      else if ([v73 isEqualToString:@"SZExtractorHashTypeSHA224"])
      {
        v74 = 4;
      }

      else if ([v73 isEqualToString:@"SZExtractorHashTypeSHA256"])
      {
        v74 = 5;
      }

      else if ([v73 isEqualToString:@"SZExtractorHashTypeSHA384"])
      {
        v74 = 6;
      }

      else
      {
        if (([v73 isEqualToString:@"SZExtractorHashTypeSHA512"] & 1) == 0)
        {
          v133 = sub_100001194();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v278 = v73;
            _os_log_error_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "Unsupported hash type: %@. Defaulting to MD5", buf, 0xCu);
          }

LABEL_71:
          v74 = 0;
          goto LABEL_72;
        }

        v74 = 7;
      }

LABEL_72:

      sub_1000016BC((v9 + 128), v74);
      *(v9 + 5) = 0;
      *(v9 + 24) = 0u;
      *(v9 + 8) = 0u;
      memset(&v265, 0, sizeof(v265));
      if (stat([v7 fileSystemRepresentation], &v265))
      {
        v75 = *__error();
        v76 = sub_100001194();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v117 = strerror(v75);
          *buf = 138412802;
          *v278 = v7;
          *&v278[8] = 2080;
          *v279 = v117;
          *&v279[8] = 2112;
          *&v279[10] = 0;
          _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Failed to stat path %@: %s : %@", buf, 0x20u);
        }

        v283 = NSFilePathErrorKey;
        v284 = v7;
        v77 = [NSDictionary dictionaryWithObjects:&v284 forKeys:&v283 count:1];
        strerror(v75);
        v46 = sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", 904, NSPOSIXErrorDomain, v75, 0, v77, @"Failed to stat path %@: %s", v78, v7);

LABEL_76:
        v63 = 0;
        v62 = v237;
        goto LABEL_229;
      }

      v79 = v265.st_mode & 0xF000;
      if (v79 != 0x4000 && v79 != 0x8000)
      {
        v102 = sub_100001194();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          *v278 = v7;
          *&v278[8] = 1024;
          *v279 = v265.st_mode;
          *&v279[4] = 2112;
          *&v279[6] = 0;
          _os_log_error_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "Extraction path at %@ should be a file or directory, but was not (had mode 0x%ho) : %@", buf, 0x1Cu);
        }

        v281 = NSFilePathErrorKey;
        v282 = v7;
        v103 = [NSDictionary dictionaryWithObjects:&v282 forKeys:&v281 count:1];
        v46 = sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", 910, @"SZExtractorErrorDomain", 3, 0, v103, @"Extraction path at %@ should be a file or directory, but was not (had mode 0x%ho)", v104, v7);

        goto LABEL_76;
      }

      v264 = -1;
      v263 = -1;
      if ([v9 resolveOwnershipWithExtraField:0 outUID:&v264 outGID:&v263])
      {
        v80 = [v7 fileSystemRepresentation];
        if (lchown(v80, v264, v263))
        {
          v81 = *__error();
          v82 = sub_100001194();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            v177 = [v7 fileSystemRepresentation];
            v234 = v264;
            v236 = v263;
            v178 = strerror(v81);
            *buf = 136316162;
            *v278 = v177;
            *&v278[8] = 1024;
            *v279 = v234;
            *&v279[4] = 1024;
            *&v279[6] = v236;
            *&v279[10] = 1024;
            *&v279[12] = v81;
            *&v279[16] = 2080;
            v280[0] = v178;
            _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Failed to lchown %s to (%d:%d) : %d (%s)", buf, 0x28u);
          }
        }
      }

      if ((v265.st_mode & 0xF000) == 0x4000)
      {
        __n = 0;
        [v7 stringByAppendingPathComponent:@"com.apple.StreamingUnzipResumptionData"];
        v232 = v253[1] = 0;
        v83 = [NSData dataWithContentsOfFile:"dataWithContentsOfFile:options:error:" options:? error:?];
        v230 = 0;
        v231 = v83;
        if (v83)
        {
          v84 = +[NSFileManager defaultManager];
          v251 = 0;
          v85 = [v84 removeItemAtPath:v232 error:&v251];
          v229 = v251;

          if ((v85 & 1) == 0)
          {
            v86 = sub_100001194();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v278 = v232;
              *&v278[8] = 2112;
              *v279 = v229;
              _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
            }
          }

          v250 = obj;
          v87 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v231 error:&v250];
          v233 = v250;

          [v87 setDecodingFailurePolicy:0];
          v235 = v87;
          if (v87)
          {
            v88 = [v87 decodeIntForKey:@"SerializationVersion"];
            if (v88 == 8)
            {
              v89 = [v87 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentOffset"];
              v227 = [v89 unsignedLongLongValue];

              if (![*(v9 + 12) count])
              {
                goto LABEL_163;
              }

              v90 = *(v9 + 7);
              if (v90)
              {
                v91 = v227 / v90;
              }

              else
              {
                v91 = 0;
              }

              if (v91 >= [*(v9 + 12) count])
              {
                v173 = sub_100001194();
                if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
                {
                  v215 = [*(v9 + 12) count];
                  *buf = 134218240;
                  *v278 = v91;
                  *&v278[8] = 2048;
                  *v279 = v215;
                  _os_log_error_impl(&_mh_execute_header, v173, OS_LOG_TYPE_ERROR, "Computed index of current hash chunk (%llu) is not within supplied hashes array of %lu elements; resuming from offset 0", buf, 0x16u);
                }

                v247 = v233;
                v119 = &v247;
              }

              else
              {
                v134 = [v235 decodeBytesForKey:@"HashContext" returnedLength:&__n];
                if (!v134 || !__n)
                {
                  goto LABEL_163;
                }

                if (__n == qword_10001A5F8[*(v9 + 32)])
                {
                  memcpy(v9 + 136, v134, __n);
                  v135 = *(v9 + 7);
                  v136 = v227;
                  if (v135)
                  {
                    v136 = v227 % v135;
                  }

                  *(v9 + 8) = v136;
LABEL_163:
                  v137 = [v235 decodePropertyListForKey:@"StreamInfoDict"];
                  v138 = *(v9 + 43);
                  *(v9 + 43) = v137;

                  v139 = *(v9 + 43);
                  if (v139)
                  {
                    v140 = [v139 objectForKeyedSubscript:@"RecordCount"];
                    *(v9 + 54) = [v140 unsignedLongLongValue];

                    v141 = [*(v9 + 43) objectForKeyedSubscript:@"TotalUncompressedBytes"];
                    *(v9 + 55) = [v141 unsignedLongLongValue];
                  }

                  v142 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"LastChunkPartialHash"];
                  v143 = *(v9 + 44);
                  *(v9 + 44) = v142;

                  v144 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"UnsureData"];
                  v145 = [v144 mutableCopy];
                  v146 = *(v9 + 45);
                  *(v9 + 45) = v145;

                  v147 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"InMemoryFileData"];
                  v148 = [v147 mutableCopy];
                  v149 = *(v9 + 46);
                  *(v9 + 46) = v148;

                  v226 = [v235 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AppleDoublePaths"];
                  if (v226)
                  {
                    v244 = 0u;
                    v245 = 0u;
                    v242 = 0u;
                    v243 = 0u;
                    obja = v226;
                    v150 = [obja countByEnumeratingWithState:&v242 objects:v272 count:16];
                    if (v150)
                    {
                      v151 = v150;
                      v152 = *v243;
                      do
                      {
                        for (i = 0; i != v151; i = i + 1)
                        {
                          if (*v243 != v152)
                          {
                            objc_enumerationMutation(obja);
                          }

                          v154 = *(*(&v242 + 1) + 8 * i);
                          if (([v154 hasPrefix:@"/"] & 1) == 0 && (objc_msgSend(v154, "hasPrefix:", @"../") & 1) == 0 && (objc_msgSend(v154, "containsString:", @"/../") & 1) == 0)
                          {
                            [*(v9 + 47) addObject:v154];
                          }
                        }

                        v151 = [obja countByEnumeratingWithState:&v242 objects:v272 count:16];
                      }

                      while (v151);
                    }
                  }

                  __n = 0;
                  v155 = [v235 decodeBytesForKey:@"LocalFileRecord" returnedLength:&__n];
                  if (v155)
                  {
                    v156 = __n;
                    if (__n)
                    {
                      v157 = v155;
                      v158 = *(v9 + 48);
                      if (*(v9 + 15) < __n)
                      {
                        v158 = reallocf(v158, __n);
                        *(v9 + 48) = v158;
                        if (!v158)
                        {
                          v191 = sub_100001194();
                          if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            *v278 = 0;
                            _os_log_error_impl(&_mh_execute_header, v191, OS_LOG_TYPE_ERROR, "Could not allocate memory for local file record : %@", buf, 0xCu);
                          }

                          sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", 1134, NSPOSIXErrorDomain, 12, 0, 0, @"Could not allocate memory for local file record", v192, v225);
                          goto LABEL_240;
                        }

                        v156 = __n;
                        *(v9 + 15) = __n;
                      }

                      memcpy(v158, v157, v156);
                    }
                  }

                  v9[460] = (*(*(v9 + 48) + 6) & 8) != 0;
                  __n = 0;
                  if ([v235 decodeBytesForKey:@"DataDescriptorUnion" returnedLength:&__n] && __n)
                  {
                    *(v9 + 49) = malloc_type_calloc(1uLL, 0x18uLL, 0x1000040504FFAC1uLL);
                    __memcpy_chk();
                  }

                  v159 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"StageBytesComplete"];
                  *(v9 + 51) = [v159 unsignedLongLongValue];

                  *(v9 + 52) = v227;
                  v160 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"StreamState"];
                  v9[458] = [v160 unsignedCharValue];

                  v161 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentCRC32"];
                  *(v9 + 56) = [v161 unsignedLongValue];

                  v162 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"RecordsProcessed"];
                  *(v9 + 53) = [v162 unsignedShortValue];

                  v163 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"LocalFileMode"];
                  *(v9 + 228) = [v163 unsignedShortValue] & 0xF1FF;

                  v9[459] = [v235 decodeBoolForKey:@"StoreCurrentFileInMemory"];
                  v9[464] = [v235 decodeBoolForKey:@"ExpectAppleDoubleFiles"];
                  *(v9 + 6) = *(v9 + 52);
                  if (v9[458] < 2u)
                  {
                    goto LABEL_271;
                  }

                  v164 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentOutputFileOffset"];
                  *(v9 + 9) = [v164 unsignedLongLongValue];

                  v165 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"TotalFileSizeWritten"];
                  *(v9 + 10) = [v165 unsignedLongLongValue];

                  v166 = *(v9 + 48);
                  if (v166)
                  {
                    v167 = sub_100009CBC(v166);
                    if (!v167)
                    {
                      v187 = sub_100001194();
                      if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *v278 = 0;
                        _os_log_error_impl(&_mh_execute_header, v187, OS_LOG_TYPE_ERROR, "Failed to get path from current local file record. : %@", buf, 0xCu);
                      }

                      v270 = NSFilePathErrorKey;
                      v271 = v7;
                      v188 = [NSDictionary dictionaryWithObjects:&v271 forKeys:&v270 count:1];
                      v190 = sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", 1172, @"SZExtractorErrorDomain", 1, 0, v188, @"Failed to get path from current local file record.", v189, v225);

                      v168 = v233;
                      v233 = v190;
                      goto LABEL_270;
                    }

                    v168 = v167;
                    objb = [v7 stringByAppendingPathComponent:v167];
                    v169 = sub_100001194();
                    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
                    {
                      v217 = *(v9 + 9);
                      *buf = 138412546;
                      *v278 = objb;
                      *&v278[8] = 2048;
                      *v279 = v217;
                      _os_log_debug_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEBUG, "Resuming %@ at offset %lld", buf, 0x16u);
                    }

                    if ([v235 decodeBoolForKey:@"OpenCurrentOutputFile"])
                    {
                      v170 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"FileWriterData"];
                      v171 = [v235 decodeBoolForKey:@"WasUsingFSCompression"];
                      if ([v9 currentLFRequiresDataDescriptor])
                      {
                        v172 = -1;
                      }

                      else
                      {
                        v172 = sub_100001844(*(v9 + 48));
                      }

                      v194 = v9[462];
                      v241 = v233;
                      LOBYTE(v225) = v194;
                      v195 = [StreamingFileWriter synchronousFileWriterForPath:objb withOpenFlags:2 mode:0 quarantineInfo:0 resumptionState:v170 useFSCompression:v171 performCachedWrites:v225 expectedSize:v172 error:&v241];
                      v228 = v241;

                      v196 = *(v9 + 50);
                      *(v9 + 50) = v195;

                      if (!*(v9 + 50))
                      {
                        v212 = sub_100001194();
                        if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          *v278 = objb;
                          *&v278[8] = 2112;
                          *v279 = v228;
                          _os_log_error_impl(&_mh_execute_header, v212, OS_LOG_TYPE_ERROR, "Failed to open output file at path %@ : %@", buf, 0x16u);
                        }

                        v268 = NSFilePathErrorKey;
                        v269 = objb;
                        v213 = [NSDictionary dictionaryWithObjects:&v269 forKeys:&v268 count:1];
                        v233 = sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", 1191, @"SZExtractorErrorDomain", 1, v228, v213, @"Failed to open output file at path %@", v214, objb);

                        goto LABEL_268;
                      }
                    }

                    else
                    {
                      v228 = v233;
                    }

                    v197 = *(*(v9 + 48) + 8);
                    if (v197 != 8 && v197 != 99 && v197 != 14)
                    {
LABEL_251:
                      if (!*(v9 + 9) || (v201 = *(v9 + 50)) == 0 || (v202 = [v201 setCurrentOffset:? error:?], v203 = v228, v228, v233 = v203, v228 = v203, (v202 & 1) != 0))
                      {

                        v233 = v228;
                        goto LABEL_270;
                      }

LABEL_269:

                      goto LABEL_270;
                    }

                    v198 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"SerializedCompressionState"];
                    v170 = v198;
                    if (v198)
                    {
                      v199 = [v198 length];
                      v200 = malloc_type_malloc(v199, 0xA716D9D9uLL);
                      [v170 getBytes:v200 length:v199];
                      if (compression_stream_is_state_valid())
                      {
                        *(v9 + 5) = v200;

                        goto LABEL_251;
                      }

                      v216 = sub_100001194();
                      if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *v278 = 0;
                        _os_log_error_impl(&_mh_execute_header, v216, OS_LOG_TYPE_ERROR, "Compression save state was not valid. : %@", buf, 0xCu);
                      }

                      v206 = @"Compression save state was not valid.";
                      v207 = 1208;
                    }

                    else
                    {
                      v204 = sub_100001194();
                      if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *v278 = 0;
                        _os_log_error_impl(&_mh_execute_header, v204, OS_LOG_TYPE_ERROR, "Failed to get serialized compression state from save data : %@", buf, 0xCu);
                      }

                      v206 = @"Failed to get serialized compression state from save data";
                      v207 = 1199;
                    }

                    v233 = sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", v207, @"SZExtractorErrorDomain", 1, 0, 0, v206, v205, v225);
LABEL_268:

                    goto LABEL_269;
                  }

                  v179 = sub_100001194();
                  if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    *v278 = v7;
                    *&v278[8] = 2112;
                    *v279 = 0;
                    _os_log_error_impl(&_mh_execute_header, v179, OS_LOG_TYPE_ERROR, "Invalid state in resumption data at path %@ : %@", buf, 0x16u);
                  }

                  sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", 1223, @"SZExtractorErrorDomain", 1, 0, 0, @"Invalid state in resumption data at path %@", v180, v7);
LABEL_240:
                  v233 = v168 = v233;
LABEL_270:

LABEL_271:
                  v46 = v233;
                  goto LABEL_228;
                }

                v181 = sub_100001194();
                if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
                {
                  v219 = *(v9 + 32);
                  v220 = off_100028748[v219];
                  v221 = qword_10001A5F8[v219];
                  *buf = 136315650;
                  *v278 = v220;
                  *&v278[8] = 2048;
                  *v279 = __n;
                  *&v279[8] = 2048;
                  *&v279[10] = v221;
                  _os_log_error_impl(&_mh_execute_header, v181, OS_LOG_TYPE_ERROR, "Serialized %s context (%lu bytes) did not match size of struct (%lu bytes); resuming from offset 0", buf, 0x20u);
                }

                v246 = v233;
                v119 = &v246;
              }
            }

            else
            {
              v120 = v88;
              v121 = sub_100001194();
              if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109634;
                *v278 = v120;
                *&v278[4] = 1024;
                *&v278[6] = 8;
                *v279 = 2112;
                *&v279[2] = v7;
                _os_log_error_impl(&_mh_execute_header, v121, OS_LOG_TYPE_ERROR, "Found resumption data version %d, but expected %d at %@; resuming from offset 0", buf, 0x18u);
              }

              v249 = v233;
              v119 = &v249;
            }
          }

          else
          {
            v118 = sub_100001194();
            if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v278 = v233;
              _os_log_error_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "Failed to deserialize resumption data (%@); resuming from offset 0", buf, 0xCu);
            }

            v235 = 0;
            v248 = v233;
            v119 = &v248;
          }

          goto LABEL_143;
        }

        v115 = [v230 domain];
        v116 = v115;
        if (NSCocoaErrorDomain == v115)
        {
          v122 = [v230 code];

          if (v122 == 260)
          {
LABEL_140:
            v124 = +[NSFileManager defaultManager];
            v253[0] = obj;
            v125 = [v124 contentsOfDirectoryAtPath:v7 error:v253];
            v233 = v253[0];

            v229 = v125;
            if (v125 && ![v125 count])
            {
              v46 = 0;
              v235 = 0;
              goto LABEL_144;
            }

            v235 = 0;
            v252 = v233;
            v119 = &v252;
LABEL_143:
            sub_100015D64(v7, v119);
            v46 = *v119;
LABEL_144:

LABEL_228:
            v63 = v235;
            v62 = v237;
            goto LABEL_229;
          }
        }

        else
        {
        }

        v123 = sub_100001194();
        if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v278 = v232;
          *&v278[8] = 2112;
          *v279 = v230;
          _os_log_error_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "Failed to read resumption data from path %@: %@; starting from offset 0", buf, 0x16u);
        }

        goto LABEL_140;
      }

      st_size = v265.st_size;
      v93 = getxattr([v7 fileSystemRepresentation], "com.apple.StreamingPassthroughResumptionData", 0, 0, 0, 1);
      if (v93 == -1)
      {
        if (*__error() == 2 || *__error() == 93)
        {
          v46 = obj;
          v262 = obj;
          sub_100015D64(v7, &v262);
          v114 = v262;
          v105 = 0;
          v235 = 0;
        }

        else
        {
          v129 = *__error();
          v130 = sub_100001194();
          if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
          {
            v193 = strerror(v129);
            *buf = 136315906;
            *v278 = "com.apple.StreamingPassthroughResumptionData";
            *&v278[8] = 2112;
            *v279 = v7;
            *&v279[8] = 2080;
            *&v279[10] = v193;
            LOWORD(v280[0]) = 2112;
            *(v280 + 2) = 0;
            _os_log_error_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "Failed to get size of xattr %s from path %@: %s : %@", buf, 0x2Au);
          }

          v275 = NSFilePathErrorKey;
          v276 = v7;
          v131 = [NSDictionary dictionaryWithObjects:&v276 forKeys:&v275 count:1];
          strerror(v129);
          v114 = sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", 943, NSPOSIXErrorDomain, v129, 0, v131, @"Failed to get size of xattr %s from path %@: %s", v132, "com.apple.StreamingPassthroughResumptionData");

          v105 = 0;
          v235 = 0;
          v46 = obj;
        }

        goto LABEL_226;
      }

      v94 = v93;
      if (v93 < 1 || ![*(v9 + 12) count])
      {
        v105 = 0;
        v235 = 0;
        v98 = obj;
LABEL_117:
        v9[458] = 5;
        *(v9 + 6) = st_size;
        v106 = *(v9 + 45);
        *(v9 + 45) = 0;

        v107 = *(v9 + 46);
        *(v9 + 46) = 0;

        *(v9 + 52) = st_size;
        v108 = v9[462];
        v254 = v98;
        LOBYTE(v225) = v108;
        v109 = [StreamingFileWriter synchronousFileWriterForPath:v7 withOpenFlags:9 mode:0 quarantineInfo:0 resumptionState:v105 useFSCompression:0 performCachedWrites:v225 expectedSize:-1 error:&v254];
        v46 = v254;

        v110 = *(v9 + 50);
        *(v9 + 50) = v109;

        if (*(v9 + 50))
        {
LABEL_227:

          goto LABEL_228;
        }

        v111 = sub_100001194();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v278 = v7;
          *&v278[8] = 2112;
          *v279 = v46;
          _os_log_error_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "Failed to open output file at path %@ : %@", buf, 0x16u);
        }

        v273 = NSFilePathErrorKey;
        v274 = v7;
        v112 = [NSDictionary dictionaryWithObjects:&v274 forKeys:&v273 count:1];
        v114 = sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", 1027, @"SZExtractorErrorDomain", 1, v46, v112, @"Failed to open output file at path %@", v113, v7);

LABEL_226:
        v46 = v114;
        goto LABEL_227;
      }

      v46 = [NSMutableData dataWithCapacity:v94];
      [v46 setLength:v94];
      v95 = getxattr([v7 fileSystemRepresentation], "com.apple.StreamingPassthroughResumptionData", objc_msgSend(v46, "mutableBytes"), v94, 0, 1);
      if (v95 == v94)
      {
        if (removexattr([v7 fileSystemRepresentation], "com.apple.StreamingPassthroughResumptionData", 1))
        {
          v96 = sub_100001194();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            v209 = [v7 fileSystemRepresentation];
            v210 = __error();
            v211 = strerror(*v210);
            *buf = 136315650;
            *v278 = "com.apple.StreamingPassthroughResumptionData";
            *&v278[8] = 2080;
            *v279 = v209;
            *&v279[8] = 2080;
            *&v279[10] = v211;
            _os_log_error_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "Failed to remove EA %s from %s: %s", buf, 0x20u);
          }
        }

        v260 = obj;
        v97 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v46 error:&v260];
        v98 = v260;

        [v97 setDecodingFailurePolicy:0];
        v235 = v97;
        if (v97)
        {
          v99 = [v97 decodeIntForKey:@"SerializationVersion"];
          if (v99 == 8)
          {
            v100 = *(v9 + 7);
            if (v100)
            {
              v101 = (st_size - (st_size > 0)) / v100;
            }

            else
            {
              v101 = 0;
            }

            if (v101 < [*(v9 + 12) count])
            {
              __n = 0;
              v182 = [v97 decodeBytesForKey:@"HashContext" returnedLength:&__n];
              if (!v182 || !__n)
              {
LABEL_219:
                v105 = [v97 decodeObjectOfClass:objc_opt_class() forKey:@"FileWriterData"];

                goto LABEL_117;
              }

              if (__n == qword_10001A5F8[*(v9 + 32)])
              {
                memcpy(v9 + 136, v182, __n);
                v183 = *(v9 + 7);
                v184 = st_size;
                if (v183)
                {
                  v184 = st_size % v183;
                }

                *(v9 + 8) = v184;
                goto LABEL_219;
              }

              v208 = sub_100001194();
              if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
              {
                v222 = *(v9 + 32);
                v223 = off_100028748[v222];
                v224 = qword_10001A5F8[v222];
                *buf = 136315650;
                *v278 = v223;
                *&v278[8] = 2048;
                *v279 = __n;
                *&v279[8] = 2048;
                *&v279[10] = v224;
                _os_log_error_impl(&_mh_execute_header, v208, OS_LOG_TYPE_ERROR, "Serialized %s context (%lu bytes) did not match size of struct (%lu bytes); resuming from offset 0", buf, 0x20u);
              }

              v255 = v98;
              sub_100015D64(v7, &v255);
              v114 = v255;

LABEL_225:
              v105 = 0;
              goto LABEL_226;
            }

            v185 = sub_100001194();
            if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
            {
              v218 = [*(v9 + 12) count];
              *buf = 134218240;
              *v278 = v101;
              *&v278[8] = 2048;
              *v279 = v218;
              _os_log_error_impl(&_mh_execute_header, v185, OS_LOG_TYPE_ERROR, "Computed index of current hash chunk (%llu) is not within supplied hashes array of %lu elements; resuming from offset 0", buf, 0x16u);
            }

            v257 = v98;
            v128 = &v257;
          }

          else
          {
            v175 = v99;
            v176 = sub_100001194();
            if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109634;
              *v278 = v175;
              *&v278[4] = 1024;
              *&v278[6] = 8;
              *v279 = 2112;
              *&v279[2] = v7;
              _os_log_error_impl(&_mh_execute_header, v176, OS_LOG_TYPE_ERROR, "Found resumption data version %d, but expected %d at %@; resuming from offset 0", buf, 0x18u);
            }

            v259 = v98;
            v128 = &v259;
          }
        }

        else
        {
          v174 = sub_100001194();
          if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v278 = v98;
            _os_log_error_impl(&_mh_execute_header, v174, OS_LOG_TYPE_ERROR, "Unable to deserialize resumption data (%@); resuming from offset 0", buf, 0xCu);
          }

          v235 = 0;
          v258 = v98;
          v128 = &v258;
        }

        obj = v98;
      }

      else
      {
        v126 = v95;
        v127 = sub_100001194();
        if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218754;
          *v278 = v94;
          *&v278[8] = 2048;
          *v279 = v126;
          *&v279[8] = 2080;
          *&v279[10] = "com.apple.StreamingPassthroughResumptionData";
          LOWORD(v280[0]) = 2112;
          *(v280 + 2) = v7;
          _os_log_error_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Expected to read %ld bytes but got %ld for EA %s on %@; resuming from offset 0", buf, 0x2Au);
        }

        v235 = 0;
        v261 = obj;
        v128 = &v261;
      }

      sub_100015D64(v7, v128);
      v114 = *v128;

      goto LABEL_225;
    }
  }

  else
  {
LABEL_31:
  }

  v43 = sub_100001194();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *v278 = v10;
    *&v278[8] = 2112;
    *v279 = 0;
    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Options dictionary supplied has one or more options with an incorrect type: %@ : %@", buf, 0x16u);
  }

  v45 = sub_10000151C("[StreamingUnzipState initWithPath:options:error:]", 835, @"SZExtractorErrorDomain", 2, 0, 0, @"Options dictionary supplied has one or more options with an incorrect type: %@", v44, v10);
  v46 = v45;
  if (!a4)
  {
    goto LABEL_42;
  }

  v47 = v45;
LABEL_40:
  v52 = 0;
  *a4 = v46;
LABEL_43:

LABEL_44:
  return v52;
}

uint64_t sub_100015D64(void *a1, void *a2)
{
  v3 = a1;
  v63 = NSFilePosixPermissions;
  v4 = [NSNumber numberWithUnsignedShort:16877];
  v64 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];

  v6 = v3;
  v7 = open([v6 fileSystemRepresentation], 256);
  if (v7 < 0)
  {
    v12 = *__error();
    v13 = sub_100001194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v51 = [v6 fileSystemRepresentation];
      v52 = strerror(v12);
      *buf = 136315650;
      v66 = v51;
      v67 = 2080;
      *v68 = v52;
      *&v68[8] = 2112;
      *&v68[10] = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to open %s : %s : %@", buf, 0x20u);
    }

    v14 = NSPOSIXErrorDomain;
    v15 = [v6 fileSystemRepresentation];
    strerror(v12);
    v17 = sub_10000151C("_GetDataProtectionClassForPath", 555, NSPOSIXErrorDomain, v12, 0, 0, @"Failed to open %s : %s", v16, v15);
  }

  else
  {
    v8 = v7;
    v9 = fcntl(v7, 63);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = v9;
      close(v8);

      v11 = 1;
      goto LABEL_13;
    }

    v18 = *__error();
    v19 = sub_100001194();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v55 = [v6 fileSystemRepresentation];
      v56 = strerror(v18);
      *buf = 136315650;
      v66 = v55;
      v67 = 2080;
      *v68 = v56;
      *&v68[8] = 2112;
      *&v68[10] = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to get protection class on %s : %s : %@", buf, 0x20u);
    }

    v14 = NSPOSIXErrorDomain;
    v20 = [v6 fileSystemRepresentation];
    strerror(v18);
    v17 = sub_10000151C("_GetDataProtectionClassForPath", 562, NSPOSIXErrorDomain, v18, 0, 0, @"Failed to get protection class on %s : %s", v21, v20);
    close(v8);
  }

  v22 = v17;

  v23 = v17;
  v24 = [v23 domain];
  if (v14 != v24)
  {
    goto LABEL_28;
  }

  v25 = [v23 code];

  if (v25 != 2)
  {
    goto LABEL_29;
  }

  v11 = 0;
  v10 = 0xFFFFFFFFLL;
LABEL_13:
  v26 = +[NSFileManager defaultManager];
  v62 = 0;
  v27 = [v26 removeItemAtPath:v6 error:&v62];
  v23 = v62;

  if (v27)
  {
LABEL_14:
    v28 = v23;
    v29 = +[NSFileManager defaultManager];
    v61 = v23;
    v30 = [v29 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v5 error:&v61];
    v23 = v61;

    if (v30)
    {
      if (!v11)
      {
        v44 = 1;
        goto LABEL_41;
      }

      v31 = v6;
      v32 = open([v31 fileSystemRepresentation], 256);
      if (v32 < 0)
      {
        v45 = *__error();
        v46 = sub_100001194();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v59 = [v31 fileSystemRepresentation];
          v60 = strerror(v45);
          *buf = 136315650;
          v66 = v59;
          v67 = 2080;
          *v68 = v60;
          *&v68[8] = 2112;
          *&v68[10] = 0;
          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to open %s : %s : %@", buf, 0x20u);
        }

        v47 = [v31 fileSystemRepresentation];
        strerror(v45);
        v38 = sub_10000151C("_SetDataProtectionClassOnPath", 584, NSPOSIXErrorDomain, v45, 0, 0, @"Failed to open %s : %s", v48, v47);
      }

      else
      {
        v33 = v32;
        if (!fcntl(v32, 64, v10))
        {
          close(v33);
          v50 = 1;
          v38 = v23;
LABEL_37:

          v53 = v38;
          if (v50)
          {
            v44 = 1;
            v23 = v53;
            goto LABEL_41;
          }

          v23 = v53;
          if (!a2)
          {
LABEL_40:
            v44 = 0;
            goto LABEL_41;
          }

          goto LABEL_30;
        }

        v34 = *__error();
        v35 = sub_100001194();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v57 = [v31 fileSystemRepresentation];
          v58 = strerror(v34);
          *buf = 136315906;
          v66 = v57;
          v67 = 1024;
          *v68 = v10;
          *&v68[4] = 2080;
          *&v68[6] = v58;
          *&v68[14] = 2112;
          *&v68[16] = 0;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to set protection class on %s to %d: %s : %@", buf, 0x26u);
        }

        v36 = [v31 fileSystemRepresentation];
        strerror(v34);
        v38 = sub_10000151C("_SetDataProtectionClassOnPath", 590, NSPOSIXErrorDomain, v34, 0, 0, @"Failed to set protection class on %s to %d: %s", v37, v36);
        close(v33);
      }

      v49 = v38;

      v50 = 0;
      goto LABEL_37;
    }

    v24 = sub_100001194();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 138412546;
    v66 = v6;
    v67 = 2112;
    *v68 = v23;
    v41 = "Failed to create extraction directory at path %@: %@";
    goto LABEL_43;
  }

  v39 = [v23 domain];
  v40 = v39;
  if (NSCocoaErrorDomain == v39)
  {
    v42 = [v23 code];

    if (v42 == 4)
    {

      v23 = 0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v24 = sub_100001194();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v66 = v6;
    v67 = 2112;
    *v68 = v23;
    v41 = "Failed to remove bad extraction path at %@: %@";
LABEL_43:
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);
  }

LABEL_28:

LABEL_29:
  if (!a2)
  {
    goto LABEL_40;
  }

LABEL_30:
  v43 = v23;
  v44 = 0;
  *a2 = v23;
LABEL_41:

  return v44;
}

uint64_t sub_1000164AC(void *a1, void *a2, objc_class *a3)
{
  v5 = a2;
  v6 = [a1 objectForKey:v5];
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = sub_100001194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromClass(a3);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Value of key %@ in options dictionary was not an object of type %@. Was %@", &v13, 0x20u);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id sub_1000165F0(void *a1)
{
  v2 = getgroups(16, v21);
  if (v2 != -1)
  {
    v3 = v2;
    v4 = objc_opt_new();
    if (v3 >= 1)
    {
      v5 = v3;
      v6 = v21;
      do
      {
        v7 = *v6++;
        v8 = [NSNumber numberWithUnsignedInt:v7];
        [v4 addObject:v8];

        --v5;
      }

      while (v5);
    }

    v9 = [v4 copy];
    v10 = 0;
    if (!a1)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (!v9)
    {
      v15 = v10;
      *a1 = v10;
    }

    goto LABEL_12;
  }

  v11 = *__error();
  v12 = sub_100001194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = strerror(v11);
    v19 = 2112;
    v20 = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to get current group access list: %s : %@", buf, 0x16u);
  }

  v13 = strerror(v11);
  v10 = sub_10000151C("FetchGroupIDs", 219, NSPOSIXErrorDomain, v11, 0, 0, @"Failed to get current group access list: %s", v14, v13);
  v4 = 0;
  v9 = 0;
  if (a1)
  {
    goto LABEL_10;
  }

LABEL_12:

  return v9;
}