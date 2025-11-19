id sub_100001508(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  container_query_create();
  container_query_set_class();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000017E4;
  v20 = sub_1000017F4;
  v21 = 0;
  if (a2 == 13 || a2 == 7)
  {
    v9 = xpc_string_create(a1);
    container_query_set_group_identifiers();
  }

  else
  {
    v9 = xpc_string_create(a1);
    container_query_set_identifiers();
  }

  container_query_set_transient();
  container_query_operation_set_flags();
  container_query_operation_set_platform();
  container_query_set_persona_unique_string();
  if (a6)
  {
    if (container_query_iterate_results_with_subquery_sync())
    {
      goto LABEL_16;
    }

    container_query_get_last_error();
    v10 = container_error_copy_unlocalized_description();
    v11 = SALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100039DD0();
    }

    goto LABEL_14;
  }

  if (container_query_get_single_result())
  {
    v12 = [NSURL fileURLWithFileSystemRepresentation:container_get_path() isDirectory:1 relativeToURL:0];
    v13 = v17[5];
    v17[5] = v12;

    goto LABEL_16;
  }

  container_query_get_last_error();
  v10 = container_error_copy_unlocalized_description();
  if (v10)
  {
    v11 = SALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100039E40();
    }

LABEL_14:
  }

  free(v10);
LABEL_16:
  container_query_free();
  v14 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v14;
}

void sub_1000017A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000017E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000017FC(uint64_t a1)
{
  v2 = [NSURL fileURLWithFileSystemRepresentation:container_get_path() isDirectory:1 relativeToURL:0];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

id sub_10000185C(void *a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = a1;
  v1 = [v15 applicationExtensionRecords];
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v17;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = objc_opt_new();
        v9 = [v7 executableURL];
        v10 = sub_100001A5C([v9 fileSystemRepresentation]);

        if (v10)
        {
          [v8 setObject:v10 forKeyedSubscript:@"CONTAINER_CLASS_APPLICATION"];
        }

        v11 = [v7 dataContainerURL];

        if (v11)
        {
          v12 = [v7 dataContainerURL];
          [v8 setObject:v12 forKeyedSubscript:@"CONTAINER_CLASS_APPLICATION_DATA"];
        }

        if ([v8 count])
        {
          if (!v4)
          {
            v4 = objc_opt_new();
          }

          v13 = [v7 bundleIdentifier];
          [v4 setObject:v8 forKeyedSubscript:v13];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100001A5C(const char *a1)
{
  if (a1 && (v1 = strdup(a1)) != 0)
  {
    v2 = v1;
    v3 = rindex(v1, 47);
    if (v3)
    {
      *v3 = 0;
      v4 = [NSURL fileURLWithFileSystemRepresentation:v2 isDirectory:1 relativeToURL:0];
    }

    else
    {
      v4 = 0;
    }

    free(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100001AE4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = [v2 objectForKeyedSubscript:@"CACHE_DELETE_NAME_MAP"];
    v18 = v2;
    v19 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          v13 = v10;
          if (*v21 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v10 = [v4 objectForKey:v14, v18];

          if (v10)
          {
            v15 = [v10 objectForKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];

            if (v15)
            {
              v16 = [v6 objectForKeyedSubscript:v14];
              [v19 setObject:v16 forKeyedSubscript:v15];

              v9 = v15;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v5 = v19;
    v2 = v18;
  }

  else
  {
    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100039EB0(v2 == 0, v2);
    }

    v5 = 0;
  }

  return v5;
}

id sub_100001D28()
{
  v0 = [NSString stringWithFormat:@"%@/%@", @"/System/Library/SpaceAttribution", @"SpaceAttributionFramework_PathList.plist"];
  v11 = 0;
  v1 = [NSData dataWithContentsOfFile:v0 options:2 error:&v11];
  v2 = v11;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3)
  {
    v4 = v2;
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100039FD4();
    }
  }

  else
  {
    v10 = 0;
    v5 = [NSPropertyListSerialization propertyListWithData:v1 options:0 format:0 error:&v10];
    v6 = v10;
    v4 = v6;
    if (!v6 && v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"SPACE_ATTRIBUTION_DAEMON_MAP"];
      goto LABEL_15;
    }

    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100039F64();
    }
  }

  v7 = 0;
LABEL_15:

  return v7;
}

void sub_100002C28(id a1)
{
  v1 = MGCopyAnswer();
  byte_100073638 = [v1 intValue] == 3;
}

void sub_100002CB8(id a1)
{
  v1 = MGCopyAnswer();
  byte_100073648 = [v1 isEqualToString:@"HomePod"];
}

void sub_100003480(id a1)
{
  v1 = MGCopyAnswer();
  byte_100073658 = [v1 intValue] == 6;
}

void sub_100003F64(id a1)
{
  v10 = 0;
  v1 = getmntinfo_r_np(&v10, 2);
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_new();
    v4 = qword_100073668;
    qword_100073668 = v3;

    if (v2 >= 1)
    {
      v5 = v2;
      v6 = 88;
      do
      {
        v7 = qword_100073668;
        v8 = [NSString stringWithUTF8String:v10 + v6];
        [v7 addObject:v8];

        v6 += 2168;
        --v5;
      }

      while (v5);
    }

    free(v10);
  }

  else
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003AC2C();
    }
  }
}

void sub_100004398(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100073680;
  qword_100073680 = v1;

  v3 = +[SASupport getVolumesPaths];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v10 = 0;
        if (fsctl([v8 fileSystemRepresentation], 0x40024A6CuLL, &v10, 0))
        {
          v9 = SALog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            sub_10003ACC0(&v15, &v16);
          }
        }

        else if (v10 == 2 || v10 == 576 || v10 == 64)
        {
          [qword_100073680 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }
}

void sub_10000457C(id a1)
{
  qword_100073690 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_100004804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100004828(id a1, BPSCompletion *a2)
{
  v2 = a2;
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BPSCompletion *)v2 state];
    v5 = [(BPSCompletion *)v2 error];
    v6 = 134218242;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "subscribeToAppInFocusStreamBeginning completion: %ld %@", &v6, 0x16u);
  }
}

void sub_100004908(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 eventBody];
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = [v19 eventBody];
    v6 = [v5 starting];

    v7 = *(*(a1 + 40) + 8);
    if (v6)
    {
      objc_storeStrong((v7 + 40), v4);
      [v19 timestamp];
      v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    else
    {
      if (*(v7 + 40))
      {
        if (![v4 isEqualToString:?])
        {
          goto LABEL_12;
        }

        v7 = *(*(a1 + 40) + 8);
      }

      objc_storeStrong((v7 + 40), v4);
      [v19 timestamp];
      v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v10 timeIntervalSinceDate:*(*(*(a1 + 48) + 8) + 40)];
      v12 = v11;
      v13 = *(a1 + 32);
      v14 = [v19 eventBody];
      v15 = [v14 bundleID];
      v16 = [v13 objectForKey:v15];

      if (v16)
      {
        [v16 doubleValue];
        v18 = [NSNumber numberWithDouble:v12 + v17];
      }

      else
      {
        v18 = [NSNumber numberWithDouble:v12];
      }

      [*(a1 + 32) setObject:v18 forKey:v4];
    }
  }

LABEL_12:
}

void sub_1000050A8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void sub_100005400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005430(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005448(uint64_t a1)
{
  v2 = [SAQuery getFSPurgeableInfo:*(a1 + 32) options:*(a1 + 64)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003B300(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  dispatch_group_leave(*(a1 + 40));
}

id sub_1000057D0(uint64_t a1)
{
  if (*(a1 + 48))
  {
    goto LABEL_2;
  }

  result = [*(a1 + 32) nonCachedPurgeableDataCallInProgress];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    return result;
  }

  if (*(a1 + 48))
  {
LABEL_2:
    v2 = [*(a1 + 32) nonCachedPurgeableDataCallInProgress];
  }

  else
  {
    v2 = 1;
  }

  [*(a1 + 32) setNonCachedPurgeableDataCallInProgress:v2];
  v3 = dispatch_group_create();
  [*(a1 + 32) setDataGroup:v3];

  [*(a1 + 32) setAsyncPurgeableInfo:0];
  v4 = *(a1 + 32);

  return [v4 setAsyncPurgeableInfoError:0];
}

uint64_t sub_10000587C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void sub_1000058A0(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = 0;
  }

  else
  {
    v2 = 4;
  }

  v3 = [SAQuery getFSPurgeableInfo:*(a1 + 32) options:v2];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003B338(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
  }

  v13 = [*(a1 + 40) purgeableInfoQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005B04;
  block[3] = &unk_100064908;
  block[4] = *(a1 + 40);
  v14 = v3;
  v28 = v14;
  v15 = v4;
  v29 = v15;
  dispatch_sync(v13, block);

  v16 = [*(a1 + 40) dataGroup];
  dispatch_group_leave(v16);

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100005B44;
  v23[3] = &unk_100064930;
  v17 = *(a1 + 48);
  v25 = v15;
  v26 = v17;
  v24 = v14;
  v18 = v15;
  v19 = v14;
  dispatch_async(&_dispatch_main_q, v23);
  v20 = [*(a1 + 40) purgeableInfoQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100005B64;
  v21[3] = &unk_100064958;
  v22 = *(a1 + 56);
  v21[4] = *(a1 + 40);
  dispatch_sync(v20, v21);
}

id sub_100005B04(uint64_t a1)
{
  [*(a1 + 32) setAsyncPurgeableInfo:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setAsyncPurgeableInfoError:v2];
}

uint64_t sub_100005B44(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

id *sub_100005B64(id *result)
{
  if ((result[5] & 1) == 0)
  {
    return [result[4] setNonCachedPurgeableDataCallInProgress:0];
  }

  return result;
}

void sub_100005ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005F10(uint64_t a1)
{
  v2 = [*(a1 + 32) dataGroup];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_100005F5C(uint64_t a1)
{
  v2 = [*(a1 + 32) asyncPurgeableInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) asyncPurgeableInfoError];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return _objc_release_x1();
}

void sub_100006084(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100006318(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [SAUtilities breakCommaSeparatedStringToComponents:v5];
  if ([v8 count] == 1)
  {
    v9 = [v8 anyObject];
    if ([MXSourceUtilities isMetricKitClient:v9])
    {
      v36 = v7;
      v10 = [NSMeasurement alloc];
      v11 = [v6 fixedSize];
      v12 = +[NSUnitInformationStorage bytes];
      v40 = [v10 initWithDoubleValue:v12 unit:v11];

      v38 = [*(a1 + 32) getValueForAppInfoEntry:28 forBundleIDs:v5];
      LODWORD(v12) = [v6 cacheIsPurgeable];
      v13 = [v6 dataSize];
      if (v12)
      {
        v13 = &v13[[v6 appCacheSize]];
      }

      v14 = [NSMeasurement alloc];
      v15 = v13;
      v16 = +[NSUnitInformationStorage bytes];
      v39 = [v14 initWithDoubleValue:v16 unit:v15];

      v17 = [*(a1 + 32) getValueForAppInfoEntry:27 forBundleIDs:v5];
      v18 = [NSMeasurement alloc];
      v19 = [v6 appCacheSize];
      v20 = +[NSUnitInformationStorage bytes];
      v21 = [v18 initWithDoubleValue:v20 unit:v19];

      v22 = [NSMeasurement alloc];
      v23 = [v6 cloneSize];
      v24 = +[NSUnitInformationStorage bytes];
      v25 = [v22 initWithDoubleValue:v24 unit:v23];

      v33 = v17;
      v37 = v21;
      v26 = [[MXDiskSpaceUsageMetric alloc] initWithTotalBinaryFileSize:v40 totalBinaryFileCount:v38 totalDataFileSize:v39 totalDataFileCount:v17 totalCacheFolderSize:v21 totalCloneSize:v25 totalDiskSpaceUsedSize:*(a1 + 40) totalDiskSpaceCapacity:*(a1 + 48)];
      v7 = v36;
      if (v26)
      {
        v35 = v9;
        v27 = [MXSpaceAttributionData alloc];
        v28 = +[NSDate date];
        +[NSDate date];
        v29 = v34 = v25;
        v55 = @"diskSpaceUsageMetrics";
        v56 = v26;
        v30 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v31 = [v27 initPayloadDataWithMutipleAppVersions:0 withTimeStampBegin:v28 withTimeStampEnd:v29 withMetrics:v30];

        v25 = v34;
        if (v31)
        {
          v32 = SALog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138413826;
            v42 = v35;
            v43 = 2112;
            v44 = v40;
            v45 = 2048;
            v46 = v38;
            v47 = 2112;
            v48 = v39;
            v49 = 2048;
            v50 = v33;
            v51 = 2112;
            v52 = v37;
            v53 = 2112;
            v54 = v34;
            _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Sending diskSpaceUsageMetric for app: %@ binarySize: %@ binaryFileCount: %llu dataSize: %@ dataFileCount: %llu cacheFolderSize: %@ cloneSize: %@", buf, 0x48u);
          }

          [*(a1 + 56) setObject:v31 forKey:v35];
        }

        v9 = v35;
      }
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100006898(id a1)
{
  v1 = qword_1000736A0;
  qword_1000736A0 = &off_100068988;
}

void sub_100007C68(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) url];
      v10 = @"shared";
      v11 = 138412802;
      v12 = v9;
      v13 = 2112;
      if (a3)
      {
        v10 = @"exclusive";
      }

      v14 = v5;
      v15 = 2112;
      v16 = v10;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "New url %@ is already registered to bundle %@ as %@", &v11, 0x20u);
    }

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) url];
    [v7 addObject:v8];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

uint64_t sub_100008660(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008678(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 getAppCacheSize];
  [v3 tempSize];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 groupContainerIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = *(*(*(a1 + 40) + 8) + 40);
        objc_sync_enter(v9);
        v10 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v8];
        v11 = v10 == 0;

        if (v11)
        {
          v12 = objc_opt_new();
          [*(*(*(a1 + 40) + 8) + 40) setObject:v12 forKeyedSubscript:v8];
        }

        v13 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v8];
        [v13 addObject:v3];

        objc_sync_exit(v9);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = *(a1 + 32);
  objc_sync_enter(v14);
  [*(a1 + 32) addObject:v3];
  objc_sync_exit(v14);

  return 1;
}

uint64_t sub_10000887C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 path];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v5];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        objc_sync_enter(v12);
        [v12 addSharedPath:v7];
        objc_sync_exit(v12);

        [v12 isPlugin];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v13 = [SAAppPath appPathWithRecord:0 identifier:v5 dataContainerPath:v7 personaUniqueString:0 isPlugin:0 isGroup:1];
  v14 = v13;
  if (v13)
  {
    [v13 getAppCacheSize];
    [v14 tempSize];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:{v5, 0}];
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [*(*(&v22 + 1) + 8 * v18) identifier];
          [v14 addWriterID:v19];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    v20 = *(a1 + 32);
    objc_sync_enter(v20);
    [*(a1 + 32) addObject:v14];
    objc_sync_exit(v20);
  }

  return 1;
}

void sub_100009074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000090C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (*(a1 + 40) == 1)
    {
      v6 = SALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003C01C();
      }
    }
  }

  else
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "+[SAHelper getOVPFileAndVolumeSize]_block_invoke";
      v10 = 2112;
      v11 = @"/private/var/.overprovisioning_file";
      v12 = 2048;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: File %@ size %llu", &v8, 0x20u);
    }

    *(*(*(a1 + 32) + 8) + 24) += a2;
  }
}

void sub_1000094EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_100009538(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  if (v8)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a4);
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003C1B8(a1);
    }
  }

  else
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v13 = 136315650;
      v14 = "[SAHelper computeSizeOfSystemVolume:]_block_invoke";
      v15 = 2112;
      v16 = v11;
      v17 = 2048;
      v18 = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Volume %@ used size %llu", &v13, 0x20u);
    }

    *(*(a1[5] + 8) + 24) += a2;
    v12 = *(a1[6] + 8);
    if (!*(v12 + 24))
    {
      *(v12 + 24) = a3;
    }
  }
}

void sub_100009A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_100009A80(void *a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_100009EE4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100009F40(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t urgencyForDate(void *a1)
{
  v1 = a1;
  v2 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
  v3 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  v4 = [NSDate dateWithTimeIntervalSinceNow:-43200.0];
  if (v1)
  {
    if ([v1 compare:v4] == 1)
    {
      v5 = 4;
    }

    else if ([v1 compare:v3] == 1)
    {
      v5 = 3;
    }

    else if ([v1 compare:v2] == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id sub_10000CA38(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10000CB64(id a1)
{
  v5[0] = @"com.apple.Passbook";
  if (+[SASupport targetDeviceIsIpad])
  {
    v1 = &__kCFBooleanTrue;
  }

  else
  {
    v1 = &__kCFBooleanFalse;
  }

  v6[0] = v1;
  v5[1] = @"com.apple.compass";
  if (+[SASupport targetDeviceIsIpad])
  {
    v2 = &__kCFBooleanTrue;
  }

  else
  {
    v2 = &__kCFBooleanFalse;
  }

  v5[2] = @"com.apple.NanoPassbook";
  v6[1] = v2;
  v6[2] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = qword_1000736B0;
  qword_1000736B0 = v3;
}

void sub_10000CD08(id a1)
{
  v10[0] = @"com.apple.MobileSMS";
  v10[1] = @"com.apple.TapToRadar";
  v11[0] = &__kCFBooleanTrue;
  v11[1] = &__kCFBooleanTrue;
  v10[2] = @"com.apple.mobilesafari";
  v10[3] = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  v11[2] = &__kCFBooleanTrue;
  v11[3] = &__kCFBooleanTrue;
  v11[4] = &__kCFBooleanTrue;
  v10[4] = @"com.apple.FileProvider.LocalStorage";
  v10[5] = @"com.apple.mobilephone";
  if (+[SASupport targetDeviceIsIpad])
  {
    v1 = &__kCFBooleanFalse;
  }

  else
  {
    v1 = &__kCFBooleanTrue;
  }

  v11[5] = v1;
  v11[6] = &__kCFBooleanTrue;
  v10[6] = @"com.apple.Health";
  v10[7] = @"com.apple.Maps";
  v11[7] = &__kCFBooleanTrue;
  v11[8] = &__kCFBooleanTrue;
  v10[8] = @"com.apple.mobileslideshow";
  v10[9] = @"com.apple.journal";
  v10[10] = @"com.apple.managedassets";
  if (+[SASupport targetDeviceIsIpad])
  {
    v2 = &__kCFBooleanFalse;
  }

  else
  {
    v2 = &__kCFBooleanTrue;
  }

  v11[9] = v2;
  v11[10] = &__kCFBooleanTrue;
  v3 = [@"com.apple.fakeapp.System" description];
  v10[11] = v3;
  v11[11] = &__kCFBooleanTrue;
  v4 = [@"com.apple.fakeapp.SystemData" description];
  v10[12] = v4;
  v11[12] = &__kCFBooleanTrue;
  v5 = [@"com.apple.fakeapp.SoftwareUpdate" description];
  v10[13] = v5;
  v11[13] = &__kCFBooleanTrue;
  v6 = [@"com.apple.fakeapp.SyncedContent" description];
  v10[14] = v6;
  v11[14] = &__kCFBooleanTrue;
  v7 = [@"com.apple.MobileAsset.SystemEnvironmentAsset" description];
  v10[15] = v7;
  v11[15] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:16];
  v9 = qword_1000736C0;
  qword_1000736C0 = v8;
}

void sub_10000D0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000D0C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000D0DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003CD48(a1);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
}

void sub_10000DEF0(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = a3;
  v5 = [v26 uniquePaths];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [NSURL fileURLWithPath:v10 isDirectory:1, v25];
        v13 = *(*(a1 + 32) + 8);
        v14 = [v12 path];
        [v13 insertPath:v14];

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [v26 sharedPaths];
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        v22 = [NSURL fileURLWithPath:v20 isDirectory:1];
        v23 = *(*(a1 + 32) + 8);
        v24 = [v22 path];
        [v23 insertPath:v24];

        objc_autoreleasePoolPop(v21);
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }
}

void sub_10000E384(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (([v6 isGroup] & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v6 writersIDs];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (([v13 isEqualToString:v5] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isAppVisible:", v13) & 1) == 0)
          {
            [*(*(a1 + 32) + 16) setObject:v5 forKeyedSubscript:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_10000E7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EB74(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v69 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 identifier];
    if (!v8 || (v9 = v8, [v7 identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, !v11))
    {
      v12 = SALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10003D1FC();
      }

      [v7 setIdentifier:v69];
    }

    v13 = [v7 writersIDs];
    if (v13)
    {
      v14 = v13;
      v15 = [v7 writersIDs];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v17 = SALog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10003D278();
        }

        v18 = [v7 writersIDs];
        v19 = [NSMutableSet setWithArray:v18];

        [v7 setWritersIDs:v19];
      }
    }

    v20 = [v7 uniquePaths];
    if (v20)
    {
      v21 = v20;
      v22 = [v7 uniquePaths];
      objc_opt_class();
      v23 = objc_opt_isKindOfClass();

      if (v23)
      {
        v24 = SALog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10003D2F4();
        }

        v25 = [v7 uniquePaths];
        v26 = [NSMutableSet setWithArray:v25];

        [v7 setUniquePaths:v26];
      }
    }

    v27 = [v7 sharedPaths];
    if (v27)
    {
      v28 = v27;
      v29 = [v7 sharedPaths];
      objc_opt_class();
      v30 = objc_opt_isKindOfClass();

      if (v30)
      {
        v31 = SALog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10003D370();
        }

        v32 = [v7 sharedPaths];
        v33 = [NSMutableSet setWithArray:v32];

        [v7 setSharedPaths:v33];
      }
    }

    v34 = [v7 binaryPaths];
    if (v34)
    {
      v35 = v34;
      v36 = [v7 binaryPaths];
      objc_opt_class();
      v37 = objc_opt_isKindOfClass();

      if (v37)
      {
        v38 = SALog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_10003D3EC();
        }

        v39 = [v7 binaryPaths];
        v40 = [NSMutableSet setWithArray:v39];

        [v7 setBinaryPaths:v40];
      }
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v41 = [v7 uniquePaths];
    v42 = [v41 copy];

    v43 = [v42 countByEnumeratingWithState:&v78 objects:v88 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v79;
      do
      {
        v46 = 0;
        do
        {
          if (*v79 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v78 + 1) + 8 * v46);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = SALog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v85 = "[SAAppPathList handleOldAppPathListVersions:]_block_invoke";
              v86 = 2112;
              v87 = v69;
              _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s: incorrect unique path type for bundle ID %@", buf, 0x16u);
            }

            [v7 removeUniquePath:v47];
            v49 = [v47 path];
            [v7 addUniquePath:v49];
          }

          v46 = v46 + 1;
        }

        while (v44 != v46);
        v44 = [v42 countByEnumeratingWithState:&v78 objects:v88 count:16];
      }

      while (v44);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v50 = [v7 sharedPaths];
    v51 = [v50 copy];

    v52 = [v51 countByEnumeratingWithState:&v74 objects:v83 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v75;
      do
      {
        v55 = 0;
        do
        {
          if (*v75 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v74 + 1) + 8 * v55);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v57 = SALog();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v85 = "[SAAppPathList handleOldAppPathListVersions:]_block_invoke";
              v86 = 2112;
              v87 = v69;
              _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%s: incorrect shared path type for bundle ID %@", buf, 0x16u);
            }

            [v7 removeSharedPath:v56];
            v58 = [v56 path];
            [v7 addSharedPath:v58];
          }

          v55 = v55 + 1;
        }

        while (v53 != v55);
        v53 = [v51 countByEnumeratingWithState:&v74 objects:v83 count:16];
      }

      while (v53);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v59 = [v7 binaryPaths];
    v60 = [v59 copy];

    v61 = [v60 countByEnumeratingWithState:&v70 objects:v82 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v71;
      do
      {
        v64 = 0;
        do
        {
          if (*v71 != v63)
          {
            objc_enumerationMutation(v60);
          }

          v65 = *(*(&v70 + 1) + 8 * v64);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v66 = SALog();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v85 = "[SAAppPathList handleOldAppPathListVersions:]_block_invoke";
              v86 = 2112;
              v87 = v69;
              _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%s: incorrect binary path type for bundle ID %@", buf, 0x16u);
            }

            [v7 removeBinaryPath:v65];
            v67 = [v65 path];
            [v7 addBinaryPath:v67];
          }

          v64 = v64 + 1;
        }

        while (v62 != v64);
        v62 = [v60 countByEnumeratingWithState:&v70 objects:v82 count:16];
      }

      while (v62);
    }
  }

  else
  {
    v68 = SALog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      sub_10003D1C0();
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_10000F56C(uint64_t a1, void *a2, void *a3)
{
  v40 = a2;
  v5 = a3;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = [v5 uniquePaths];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        if (([*(a1 + 32) fileExistsAtPath:v12] & 1) == 0)
        {
          v13 = SALog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v5 identifier];
            *buf = 138412546;
            v56 = v12;
            v57 = 2112;
            v58 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing unique path %@ for %@ from app path list on disk", buf, 0x16u);
          }

          [v5 removeUniquePath:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v9);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = [v5 sharedPaths];
  v16 = [v15 copy];

  v17 = [v16 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v46;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v45 + 1) + 8 * j);
        if (([*(a1 + 32) fileExistsAtPath:v21] & 1) == 0)
        {
          v22 = SALog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v5 identifier];
            *buf = 138412546;
            v56 = v21;
            v57 = 2112;
            v58 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removing shared path %@ for %@ from app path list on disk", buf, 0x16u);
          }

          [v5 removeSharedPath:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v18);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v24 = [v5 binaryPaths];
  v25 = [v24 copy];

  v26 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v42;
    do
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v41 + 1) + 8 * k);
        if (([*(a1 + 32) fileExistsAtPath:v30] & 1) == 0)
        {
          v31 = SALog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v5 identifier];
            *buf = 138412546;
            v56 = v30;
            v57 = 2112;
            v58 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Removing binary path %@ for %@ from app path list on disk", buf, 0x16u);
          }

          [v5 removeBinaryPath:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v27);
  }

  v33 = [v5 uniquePaths];
  if ([v33 count])
  {

    v34 = v40;
  }

  else
  {
    v35 = [v5 sharedPaths];
    v34 = v40;
    if ([v35 count])
    {
    }

    else
    {
      v36 = [v5 binaryPaths];
      v37 = [v36 count];

      if (!v37)
      {
        v38 = SALog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [v5 identifier];
          *buf = 138412290;
          v56 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Removing AppPath for %@ from app path list on disk", buf, 0xCu);
        }

        [*(*(a1 + 40) + 48) removeObjectForKey:v40];
      }
    }
  }
}

void sub_10000FE38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 groupContainerIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [*(a1 + 32) objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = objc_opt_new();
          [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
        }

        v13 = [*(a1 + 32) objectForKeyedSubscript:v10];
        [v13 addObject:v4];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

void sub_10001021C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001024C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = +[NSDate date];
  [v5 timeIntervalSinceDate:*(*(*(a1 + 64) + 8) + 40)];
  *(*(*(a1 + 56) + 8) + 24) = v6;

  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  if (v7 && *(*(v8 + 8) + 24) > 2.0)
  {
    if ([v7 shouldDefer])
    {
      v9 = 0;
      *(*(*(a1 + 72) + 8) + 24) = 1;
      goto LABEL_9;
    }

    v8 = *(a1 + 56);
  }

  if (*(*(v8 + 8) + 24) > 2.0)
  {
    v10 = +[NSDate date];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v9 = 1;
LABEL_9:
  objc_sync_exit(v4);

  if (v3 && v9)
  {
    v13 = [*(a1 + 48) recentlyUsedApps];
    [v3 updateLastUsedDate:v13];

    [*(a1 + 48) updateWithAppPath:v3];
  }

  return v9;
}

uint64_t sub_1000103A0(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v32 = a3;
  v5 = +[NSDate date];
  [v5 timeIntervalSinceDate:*(*(*(a1 + 64) + 8) + 40)];
  *(*(*(a1 + 56) + 8) + 24) = v6;

  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  if (v7 && *(*(v8 + 8) + 24) > 2.0)
  {
    if ([v7 shouldDefer])
    {
      v9 = 0;
      *(*(*(a1 + 72) + 8) + 24) = 1;
      goto LABEL_29;
    }

    v8 = *(a1 + 56);
  }

  if (*(*(v8 + 8) + 24) > 2.0)
  {
    v10 = +[NSDate date];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = [v32 path];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = [*(a1 + 40) objectForKeyedSubscript:v33];
  v15 = 0;
  v16 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v16)
  {
    v17 = *v39;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        v20 = [v19 lastUsed];
        v21 = v20;
        if (v15)
        {
          v22 = [v15 compare:v20] == -1;

          if (v22)
          {
            v23 = [v19 lastUsed];

            v15 = v23;
          }
        }

        else
        {
          v15 = v20;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v16);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = [*(a1 + 40) objectForKeyedSubscript:v33];
  v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v25)
  {
    v26 = *v35;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v34 + 1) + 8 * j);
        objc_sync_enter(v28);
        [v28 addSharedPath:v13];
        objc_sync_exit(v28);
      }

      v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v25);
  }

  v29 = [SAAppPath appPathWithRecord:0 identifier:v33 dataContainerPath:v13 personaUniqueString:0 isPlugin:0 isGroup:1];
  v30 = v29;
  if (v29)
  {
    [v29 setLastUsed:v15];
    [*(a1 + 48) updateWithAppPath:v30];
  }

  v9 = 1;
LABEL_29:

  return v9;
}

void sub_100010944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100010968(uint64_t a1, void *a2, char a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

void sub_100011194(id a1)
{
  v10[0] = @"com.apple.MobileAddressBook";
  v1 = [NSSet setWithObjects:@"/private/var/mobile/Library/Contacts", 0];
  v10[1] = @"com.apple.mobilenotes";
  v11[0] = v1;
  v2 = [NSSet setWithObjects:@"/private/var/mobile/Library/Notes", 0];
  v11[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v4 = qword_1000736D0;
  qword_1000736D0 = v3;

  v8 = @"com.apple.fakeapp.SyncedContent";
  v5 = [NSSet setWithObject:@"/private/var/mobile/Media/iTunes_Control/Music"];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = qword_1000736D8;
  qword_1000736D8 = v6;
}

void sub_1000112CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 40) objectForKey:v5];
  if (!v7)
  {
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10003D558();
    }

    v7 = objc_opt_new();
    [v7 setIdentifier:v5];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100011404;
  v11[3] = &unk_100064D78;
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v9 = v7;
  v10 = v5;
  [v6 enumerateObjectsUsingBlock:v11];
  [*(a1 + 32) updateWithAppPath:v9];
}

void sub_100011404(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SASupport getResolvedPath:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011628;
  v14[3] = &unk_100064D50;
  v15 = v8;
  v10 = v7;
  v16 = v10;
  v11 = v3;
  v17 = v11;
  v18 = &v24;
  v19 = &v20;
  [v9 enumerateKeysAndObjectsUsingBlock:v14];
  if ((v25[3] & 1) == 0)
  {
    if (*(v21 + 24) != 1)
    {
      goto LABEL_9;
    }

    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10003D5D8(v11, (a1 + 40));
    }

    [*(a1 + 48) addSharedPath:v10];
    if ((v21[3] & 1) == 0)
    {
LABEL_9:
      v13 = SALog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_10003D650(v11, (a1 + 40));
      }

      [*(a1 + 48) addUniquePath:v10];
    }
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void sub_1000115FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100011628(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:a1[4]];

  if ((v10 & 1) == 0)
  {
    v11 = [v8 uniquePaths];
    v12 = [v11 containsObject:a1[5]];

    if (v12)
    {
      v13 = SALog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = a1[4];
        v19 = a1[6];
        v22 = 136315906;
        v23 = "[SAAppPathList importDefaultApps]_block_invoke_2";
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        v28 = 2112;
        v29 = v7;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: bundle (%@) path (%@) is used as unique path for app (%@), can't add this path to our bundle.", &v22, 0x2Au);
      }

      *a4 = 1;
      v14 = 7;
LABEL_10:
      *(*(a1[v14] + 8) + 24) = 1;
      goto LABEL_11;
    }

    v15 = [v8 sharedPaths];
    v16 = [v15 containsObject:a1[5]];

    if (v16)
    {
      v17 = SALog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v20 = a1[4];
        v21 = a1[6];
        v22 = 136315906;
        v23 = "[SAAppPathList importDefaultApps]_block_invoke";
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        v28 = 2112;
        v29 = v7;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: bundle (%@) path (%@) is used as shared path for app (%@), add this path to our bundle as shared path.", &v22, 0x2Au);
      }

      v14 = 8;
      goto LABEL_10;
    }
  }

LABEL_11:
}

void sub_100011838(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100011A70;
  v19[3] = &unk_100064DF0;
  v19[4] = *(a1 + 32);
  v7 = v5;
  v20 = v7;
  [v6 enumerateObjectsUsingBlock:v19];
  v8 = [*(*(a1 + 32) + 40) objectForKey:v7];
  if (!v8)
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10003D6C8();
    }

    v8 = objc_opt_new();
    [v8 setIdentifier:v7];
  }

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100011D88;
  v16 = &unk_100064DF0;
  v10 = v7;
  v17 = v10;
  v11 = v8;
  v18 = v11;
  [v6 enumerateObjectsUsingBlock:&v13];
  v12 = SALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "[SAAppPathList importDefaultApps]_block_invoke";
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: adding (%@) to bundle (%@)", buf, 0x20u);
  }

  [*(a1 + 32) updateWithAppPath:{v11, v13, v14, v15, v16}];
}

void sub_100011A70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SASupport getResolvedPath:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  v8 = *(*(a1 + 32) + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100011B6C;
  v11[3] = &unk_100064DC8;
  v12 = *(a1 + 40);
  v13 = v7;
  v14 = v3;
  v9 = v3;
  v10 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
}

void sub_100011B6C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:a1[4]];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 uniquePaths];
    v8 = [v7 containsObject:a1[5]];

    if (v8)
    {
      v9 = SALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = a1[6];
        v14 = a1[4];
        v15 = [v4 identifier];
        v19 = 136315906;
        v20 = "[SAAppPathList importDefaultApps]_block_invoke_3";
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        v25 = 2112;
        v26 = v15;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: path (%@) is forcedly assigned to bundle (%@), therefore removed from the uniqueURLs of bundle (%@).", &v19, 0x2Au);
      }

      [v4 removeUniquePath:a1[5]];
    }

    else
    {
      v10 = [v4 sharedPaths];
      v11 = [v10 containsObject:a1[5]];

      if (v11)
      {
        v12 = SALog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v16 = a1[6];
          v17 = a1[4];
          v18 = [v4 identifier];
          v19 = 136315906;
          v20 = "[SAAppPathList importDefaultApps]_block_invoke";
          v21 = 2112;
          v22 = v16;
          v23 = 2112;
          v24 = v17;
          v25 = 2112;
          v26 = v18;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: path (%@) is forcedly assigned to bundle (%@), therefore removed from the sharedURLs of bundle (%@).", &v19, 0x2Au);
        }

        [v4 removeSharedPath:a1[5]];
      }
    }
  }
}

void sub_100011D88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SASupport getResolvedPath:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  v8 = SALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 136315650;
    v11 = "[SAAppPathList importDefaultApps]_block_invoke";
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: adding (%@) to bundle (%@)", &v10, 0x20u);
  }

  [*(a1 + 40) addUniquePath:v7];
}

void sub_100011FF0(id a1, NSString *a2, SAAppPath *a3, BOOL *a4)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [(SAAppPath *)v5 writersIDs];
  v8 = [v7 containsObject:@"com.apple.bird"];

  if (v8)
  {
    [(SAAppPath *)v5 removeWriterID:@"com.apple.bird"];
  }

  objc_autoreleasePoolPop(v6);
}

void sub_100012090(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (([v6 isGroup] & 1) == 0)
  {
    v17 = v7;
    v8 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v6;
    v9 = [v6 writersIDs];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([*(a1 + 32) isAppVisible:{v14, v17}])
          {
            v15 = SALog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v24 = v5;
              v25 = 2112;
              v26 = v14;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "App (%@) declares a UI visible app (%@) as its writer", buf, 0x16u);
            }

            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v11);
    }

    v16 = [v8 allObjects];
    v6 = v18;
    [v18 removeWriterIDs:v16];

    v7 = v17;
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100012298(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (([v6 isGroup] & 1) == 0 && (objc_msgSend(v6, "isUserVisible") & 1) == 0)
  {
    v8 = [*(a1 + 32) getGreaterAncestorOfBundle:v5];
    v9 = v8;
    if (v8 && ([v8 isEqualToString:v5] & 1) == 0)
    {
      v10 = SALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = "[SAAppPathList mergeWritersAppPaths]_block_invoke";
        v16 = 2112;
        v17 = v5;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: merging writer %@ appPath with it's greater ancestor %@", &v14, 0x20u);
      }

      v11 = [*(a1 + 32) appPathForBundleID:v9];
      v12 = [v6 identifier];
      [v11 addWriterID:v12];

      [v11 extendWithPropertiesFromAppPath:v6];
      v13 = [*(a1 + 32) writersMap];
      [v13 setObject:v9 forKeyedSubscript:v5];
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100012444(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (([v6 isGroup] & 1) == 0)
  {
    v15 = v7;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v6 writersIDs];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (([v13 isEqualToString:v5] & 1) == 0)
          {
            v14 = SALog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v21 = "[SAAppPathList mergeWritersAppPaths]_block_invoke";
              v22 = 2112;
              v23 = v13;
              v24 = 2112;
              v25 = v5;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: removing writer %@ of %@ from appPathList", buf, 0x20u);
            }

            [*(a1 + 32) removeAppPath:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v10);
    }

    v7 = v15;
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100013124(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100013160(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_100013B3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (*(a1 + 64))
    {
      v5 = -a3;
    }

    else
    {
      v5 = a3;
    }

    if (*(a1 + 64))
    {
      v6 = -a4;
    }

    else
    {
      v6 = a4;
    }

    v7 = *(a1 + 32);
    v8 = a2;
    v9 = [v7 objectForKey:v8];
    if (!v9)
    {
      v9 = objc_opt_new();
    }

    v11 = v9;
    [v9 setDataSize:{objc_msgSend(v9, "dataSize") + v5}];
    [v11 setCloneFixUpSize:{objc_msgSend(v11, "cloneFixUpSize") + v5}];
    [v11 setCacheFixUp:{objc_msgSend(v11, "cacheFixUp") + v6}];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v8];

    v10 = *(a1 + 40);
    if (v10)
    {
      [*(a1 + 48) updateAppSizeBreakdownForClone:*(a1 + 56) appSizeBreakdownList:v10 dataSize:v5];
    }
  }
}

void sub_100013D2C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = objc_opt_new();
    }

    v9 = v7;
    [v7 setDataSize:{objc_msgSend(v7, "dataSize") + a3}];
    [v9 setCloneSize:{objc_msgSend(v9, "cloneSize") + a3}];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v6];

    if (*(a1 + 64) == 1)
    {
      [*(a1 + 40) addPathOfClone:*(a1 + 48) cloneData:*(a1 + 32)];
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      [*(a1 + 40) updateAppSizeBreakdownForClone:*(a1 + 48) appSizeBreakdownList:v8 dataSize:a3];
    }
  }
}

void sub_1000163A4(id a1)
{
  qword_1000736E8 = objc_opt_new();

  _objc_release_x1();
}

void sub_100016AC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 writersIDs];
  if ([v7 count])
  {
    v8 = [v6 isGroup];

    if ((v8 & 1) == 0)
    {
      v13 = @"writersBundles";
      v9 = [v6 writersIDs];
      v10 = [v9 allObjects];
      v14 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

      v12 = [*(*(a1 + 32) + 32) appsList];
      [v12 setObject:v11 forKey:v5];
    }
  }

  else
  {
  }
}

uint64_t sub_100016E28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100017264;
  v38 = sub_100017274;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100017264;
  v32 = sub_100017274;
  v33 = 0;
  v5 = [*(*(a1 + 32) + 56) getBundleIDsForPath:v3];
  if (v5)
  {
    v6 = *(a1 + 32);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10001727C;
    v27[3] = &unk_100064EF0;
    v27[4] = &v34;
    v27[5] = &v28;
    [v6 resolvePathAndGetSize:v3 forBundleIDs:v5 reply:v27];
    v7 = v29[5];
    if (v7)
    {
      v8 = *(*(a1 + 32) + 32);
      v9 = [v7 dataSize];
      v10 = [v29[5] purgeableSize];
      [v8 updateBundleIDs:v5 fixedSize:0 dataSize:v9 cloneSize:0 purgeableSize:v10 cloneFixUpSize:0 physicalSize:objc_msgSend(v29[5] appCacheSize:"physicalSize") CDPluginSize:{0, 0}];
      [v29[5] checkDirStatSizeInconsistency:v5 path:v35[5] diskCapacity:*(a1 + 40)];
      v11 = *(*(a1 + 32) + 48);
      v12 = [v29[5] usedDirStat];
      v13 = [v29[5] dataSize];
      v14 = [v29[5] purgeableSize];
      [v11 updateBundleIDs:v5 usedDirStat:v12 fixedSize:0 dataSize:v13 cloneSize:0 purgeableSize:v14 fileCount:{objc_msgSend(v29[5], "fileCount")}];
      [*(*(a1 + 32) + 48) updateDirStatInfo:v29[5]];
      if ([v29[5] dirStatsID])
      {
        v15 = [*(a1 + 32) relevantVolumesInfo];
        v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v29[5] dirStatsID]);
        v17 = [v29[5] volumePath];
        [v15 insertDirKey:v16 bundleIDs:v5 purgeable:0 cache:0 volumePath:v17];
      }

      if ((*(a1 + 48) & 0x20) != 0)
      {
        v18 = *(*(a1 + 32) + 32);
        v19 = v35[5];
        v20 = [v29[5] generateDictionary:v5];
        [v18 collectPathSizeInfo:v19 info:v20];
      }

      v21 = [*(*(a1 + 32) + 32) appSizeBreakdownList];

      if (v21)
      {
        v22 = [*(*(a1 + 32) + 32) appSizeBreakdownList];
        objc_sync_enter(v22);
        v23 = [*(*(a1 + 32) + 32) appSizeBreakdownList];
        [v23 addPath:v35[5] fixedPath:0 size:objc_msgSend(v29[5] bundleIDs:{"dataSize"), v5}];

        objc_sync_exit(v22);
      }
    }

    v24 = *(*(a1 + 32) + 8);
  }

  else
  {
    v25 = SALog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10003DF74();
    }

    v24 = 1;
  }

  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  objc_autoreleasePoolPop(v4);

  return v24;
}

void sub_10001722C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100017264(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001727C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t sub_100017424(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000174DC;
  v7[3] = &unk_100064F40;
  v7[4] = *(a1 + 32);
  v5 = v3;
  v8 = v5;
  [v5 getAppCacheInfo:v7];

  objc_autoreleasePoolPop(v4);
  return 1;
}

void sub_1000174DC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v18 = a2;
  v9 = a3;
  if (v18 && v9)
  {
    v10 = *(*(a1 + 32) + 56);
    v11 = [*(a1 + 40) dataContainerPath];
    v12 = [v10 getBundleIDsForPath:v11];

    if (v12)
    {
      if ([*(a1 + 40) isPlugin])
      {
        v13 = 0;
      }

      else
      {
        v14 = [*(a1 + 40) identifier];
        v13 = !+[SASupport shouldExcludeCacheSizeForBundle:](SASupport, "shouldExcludeCacheSizeForBundle:", v14) && [*(a1 + 40) urgency] < 4;
      }

      v15 = [*(a1 + 32) relevantVolumesInfo];
      [v15 insertDirKey:v9 bundleIDs:v12 purgeable:v13 cache:1 volumePath:v18];

      v16 = [*(a1 + 32) appSizerResults];
      [v16 updateCacheSize:a4 cacheIsPurgeable:v13 bundleIDs:v12];

      v17 = [*(a1 + 32) telemetryManager];
      [v17 updateCacheFileCount:a5 forBundleIDs:v12];
    }
  }
}

void sub_100017A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100018020(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.SADaemon.SUQueue", v3);
  v2 = qword_1000736F8;
  qword_1000736F8 = v1;
}

void sub_100018258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100018278(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = SALog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003E118();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (a2)
      {
        v8 = @"YES";
      }

      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "isSoftwareUpdateInProgress: %@", &v9, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  [*(a1 + 32) leave];
}

void sub_100018548(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) relevantVolumesInfo];
  v9 = [v8 getDirCacheElementForDirKey:v5 volumePath:*(a1 + 40)];
  v10 = [v9 bundleIDs];

  if (v10)
  {
    v11 = [*(a1 + 32) relevantVolumesInfo];
    v12 = [v11 getSUPurgeableCloneSize:objc_msgSend(v5 volumePath:{"unsignedLongLongValue"), *(a1 + 40)}];

    v13 = [v6 unsignedLongLongValue];
    v14 = v13 - [v12 unsignedLongLongValue];
    v15 = SALog();
    v16 = v15;
    if (v14 < 0)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 134218754;
        v19 = v14;
        v20 = 2112;
        v21 = v10;
        v22 = 2048;
        v23 = [v6 unsignedLongLongValue];
        v24 = 2048;
        v25 = [v12 unsignedLongLongValue];
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "SU Size %llu for bundleIDs %@ overflowed (record size %llu clone groups size %llu)", &v18, 0x2Au);
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134218242;
        v19 = v14;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Adding %llu to %@", &v18, 0x16u);
      }

      v17 = [*(a1 + 32) appSizerResults];
      [v17 accountSUPurgeableFor:v10 purgeableSize:v14];

      v16 = [*(a1 + 32) telemetryManager];
      [v16 updateBundleIDs:v10 withSUPurgeableSize:v14];
    }
  }

  else
  {
    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003E180(v5);
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100018AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100018B0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if ([v5 isEqual:@"com.apple.fakeapp.SystemData"] & 1) != 0 || (objc_msgSend(v5, "isEqual:", @"com.apple.fakeapp.System") & 1) != 0 || (objc_msgSend(v5, "isEqual:", @"com.apple.fakeapp.SoftwareUpdate"))
  {
    goto LABEL_27;
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  v8 = [v6 dataSize];
  v9 = [v6 fixedSize];
  v10 = [*(a1 + 32) totalVisibleAppSize];
  *(*(*(a1 + 48) + 8) + 24) = &v10[[*(a1 + 32) totalHiddenAppSize] - *(*(*(a1 + 56) + 8) + 24)];
  v11 = SALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(*(*(a1 + 48) + 8) + 24);
    v27 = 138413058;
    v28 = v5;
    v29 = 2048;
    v30 = v8;
    v31 = 2048;
    v32 = v9;
    v33 = 2048;
    v34 = v22;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "processing %@ with dataSize %llu and fixedSize %llu, totalAppSize %llu", &v27, 0x2Au);
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    v18 = SALog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10003E268();
    }

    [v6 setDataSize:0];
    ++*(*(*(a1 + 64) + 8) + 24);
    [*(a1 + 32) dataVolumeSizeUsed];
    v8 = 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v19 = SALog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10003E2D4();
    }

    [v6 setFixedSize:0];
    ++*(*(*(a1 + 64) + 8) + 24);
    [*(a1 + 32) dataVolumeSizeUsed];
    v9 = 0;
    goto LABEL_22;
  }

  if (v8 > [*(a1 + 32) dataVolumeSizeUsed])
  {
    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v25 = [*(a1 + 32) dataVolumeSizeUsed];
      v27 = 138412802;
      v28 = v5;
      v29 = 2048;
      v30 = v8;
      v31 = 2048;
      v32 = v25;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "bundleIDs %@ dataSize (%llu) > dataVolumeSizeUsed (%llu)", &v27, 0x20u);
    }

    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 24) + v8;
    v8 = 0;
    *(v13 + 24) = v14;
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (v9 > [*(a1 + 32) dataVolumeSizeUsed])
  {
    v15 = SALog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v26 = [*(a1 + 32) dataVolumeSizeUsed];
      v27 = 138412802;
      v28 = v5;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v26;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "bundleIDs %@ fixedSize (%llu) > dataVolumeSizeUsed (%llu)", &v27, 0x20u);
    }

    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 24) + v9;
    v9 = 0;
    *(v16 + 24) = v17;
    ++*(*(*(a1 + 64) + 8) + 24);
  }

LABEL_22:
  v20 = v9 + v8 + *(*(*(a1 + 48) + 8) + 24);
  if (v20 > [*(a1 + 32) dataVolumeSizeUsed])
  {
    v21 = SALog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = *(*(*(a1 + 48) + 8) + 24);
      v24 = [*(a1 + 32) dataVolumeSizeUsed];
      v27 = 138413314;
      v28 = v5;
      v29 = 2048;
      v30 = v23;
      v31 = 2048;
      v32 = v8;
      v33 = 2048;
      v34 = v9;
      v35 = 2048;
      v36 = v24;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "bundleIDs %@ Total App Size (%llu) + dataSize (%llu) + fixedSize (%llu) is larger than usedDataVolumes (%llu)", &v27, 0x34u);
    }

    *(*(*(a1 + 56) + 8) + 24) += v9 + v8;
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  [*(a1 + 32) setTotalVisibleAppSize:{objc_msgSend(v6, "dataSize") + objc_msgSend(v6, "fixedSize") + objc_msgSend(*(a1 + 32), "totalVisibleAppSize")}];
LABEL_27:
  objc_autoreleasePoolPop(v7);
}

void sub_100019A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100019A80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003E5C8(v6);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

void sub_10001A41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_10001A464(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(*(a1[4] + 8) + 24) = a3;
  *(*(a1[5] + 8) + 24) = a4;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
}

void sub_10001A48C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) relevantVolumesInfo];
  v9 = [v8 getBundleIDForTagHash:v5 volumePath:*(a1 + 40)];

  v10 = [*(a1 + 32) appPathList];
  v11 = [v10 getParentOfBundle:v9];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13;

  v15 = [*(a1 + 32) relevantVolumesInfo];
  v16 = [v15 getPurgeableTaggedCloneSize:objc_msgSend(v5 volumePath:{"unsignedLongLongValue"), *(a1 + 40)}];

  v17 = [v6 unsignedLongLongValue];
  v18 = [v16 unsignedLongLongValue];
  if (v14)
  {
    v19 = v17 - v18;
    v20 = [*(a1 + 32) appSizerResults];
    [v20 accountPurgeableTagsFor:v14 purgeableTagsSize:v19];

    v21 = [*(a1 + 32) telemetryManager];
    [v21 updateBundleIDs:v14 withPurgeableTagSize:v19];

    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) updateAttributonTagInfoForBundle:v9 purgeableTagSize:v19 volumePath:*(a1 + 40)];
    }

    v22 = SALog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_10003E654();
    }
  }

  else
  {
    v22 = SALog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10003E6C8();
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_10001AAD8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isEqual:@"com.apple.fakeapp.SystemData"] & 1) == 0 && (objc_msgSend(v5, "isEqual:", @"com.apple.fakeapp.System") & 1) == 0 && (objc_msgSend(v5, "isEqual:", @"com.apple.fakeapp.SoftwareUpdate") & 1) == 0)
  {
    v3 = [*(a1 + 32) appSizerResults];
    v4 = [SAQuery getVendorNameForBundleIDs:v5];
    [v3 setBundleIDs:v5 vendorName:v4];
  }
}

void sub_10001B320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10001B374(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_10001B88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_10001B8C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SALog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003E8DC(a1, v6, v8);
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = v6;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v55 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Done processing clone groups on volume %@", buf, 0xCu);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v5;
    v38 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v38)
    {
      v34 = v5;
      v37 = *v49;
      v13 = obj;
      v35 = a1;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v49 != v37)
          {
            objc_enumerationMutation(v13);
          }

          v15 = *(*(&v48 + 1) + 8 * i);
          v16 = [SAUtilities breakCommaSeparatedStringToComponents:v15];
          v17 = objc_opt_new();
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_10001BD28;
          v45[3] = &unk_1000650F0;
          v18 = *(a1 + 40);
          v47 = *(a1 + 56);
          v45[4] = v18;
          v19 = v17;
          v46 = v19;
          v40 = v16;
          [v16 enumerateObjectsUsingBlock:v45];
          v39 = v19;
          v20 = [SAUtilities createCommaSeparatedString:v19];
          v21 = [v13 objectForKeyedSubscript:v15];
          v22 = [*(a1 + 40) appSizerResults];
          [v22 updateBundleIDs:v20 fixedSize:0 dataSize:objc_msgSend(v21 cloneSize:"dataSize") purgeableSize:objc_msgSend(v21 cloneFixUpSize:"cloneSize") physicalSize:0 appCacheSize:objc_msgSend(v21 CDPluginSize:{"cloneFixUpSize"), 0, objc_msgSend(v21, "cacheFixUp"), 0}];

          v23 = [*(a1 + 40) telemetryManager];
          [v23 updateCloneInfoWithBundleIDs:v20 withItemSize:v21];

          if (*(a1 + 64) == 1)
          {
            v24 = objc_opt_new();
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v25 = [v13 objectForKeyedSubscript:v15];
            v26 = [v25 clonesInfo];

            v27 = [v26 countByEnumeratingWithState:&v41 objects:v52 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v42;
              do
              {
                for (j = 0; j != v28; j = j + 1)
                {
                  if (*v42 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = [*(*(&v41 + 1) + 8 * j) generateDictionary];
                  [v24 addObject:v31];
                }

                v28 = [v26 countByEnumeratingWithState:&v41 objects:v52 count:16];
              }

              while (v28);
            }

            a1 = v35;
            v32 = [*(v35 + 40) appSizerResults];
            v33 = [v32 clonesInfo];
            [v33 setObject:v24 forKeyedSubscript:v15];

            v13 = obj;
          }
        }

        v38 = [v13 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v38);
      v11 = v13;
      v6 = 0;
      v5 = v34;
    }

    else
    {
      v11 = obj;
    }
  }
}

void sub_10001BD28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 appPathList];
  v5 = [v4 getParentOfBundle:v7];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);

  [*(a1 + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
}

void sub_10001C1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_10001C1F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v41 = v6;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003E958(v7, a1);
    }
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v43 = [v5 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v43)
    {
      v42 = *v52;
      do
      {
        v9 = 0;
        do
        {
          if (*v52 != v42)
          {
            objc_enumerationMutation(v5);
          }

          v46 = v9;
          v10 = *(*(&v51 + 1) + 8 * v9);
          v11 = [*(a1 + 40) appPathList];
          v12 = [v11 getParentOfBundle:v10];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = v10;
          }

          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v14);

          v15 = [v5 objectForKeyedSubscript:v10];
          *(*(*(a1 + 64) + 8) + 24) += [v15 dataSize];

          v16 = [*(a1 + 40) appSizerResults];
          v45 = *(*(*(a1 + 56) + 8) + 40);
          v17 = [v5 objectForKeyedSubscript:v10];
          v44 = [v17 dataSize];
          v18 = [v5 objectForKeyedSubscript:v10];
          v19 = [v18 cloneSize];
          v20 = [v5 objectForKeyedSubscript:v10];
          v21 = [v20 purgeableSize];
          v22 = [v5 objectForKeyedSubscript:v10];
          [v16 updateBundleIDs:v45 fixedSize:0 dataSize:v44 cloneSize:v19 purgeableSize:v21 cloneFixUpSize:0 physicalSize:0 appCacheSize:objc_msgSend(v22 CDPluginSize:{"cacheFixUp"), 0, v41}];

          v23 = [v5 objectForKeyedSubscript:v10];
          v24 = [v23 dataSize];

          if ((v24 & 0x8000000000000000) != 0)
          {
            v25 = SALog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v39 = [v5 objectForKeyedSubscript:v10];
              v40 = [v39 dataSize];
              *buf = 134218242;
              v57 = v40;
              v58 = 2112;
              v59 = v10;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Clone Map data size: %lld < 0 for bundles set %@", buf, 0x16u);
            }
          }

          v26 = [*(a1 + 40) telemetryManager];
          v27 = *(*(*(a1 + 56) + 8) + 40);
          v28 = [v5 objectForKeyedSubscript:v10];
          [v26 updateCloneInfoWithBundleIDs:v27 withItemSize:v28];

          if (*(a1 + 72) == 1)
          {
            v29 = objc_opt_new();
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v30 = [v5 objectForKeyedSubscript:v10];
            v31 = [v30 clonesInfo];

            v32 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v48;
              do
              {
                for (i = 0; i != v33; i = i + 1)
                {
                  if (*v48 != v34)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v36 = [*(*(&v47 + 1) + 8 * i) generateDictionary];
                  [v29 addObject:v36];
                }

                v33 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
              }

              while (v33);
            }

            v37 = [*(a1 + 40) appSizerResults];
            v38 = [v37 clonesInfo];
            [v38 setObject:v29 forKeyedSubscript:v10];
          }

          v9 = v46 + 1;
        }

        while ((v46 + 1) != v43);
        v43 = [v5 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v43);
    }
  }
}

void sub_10001C8F8(void *a1)
{
  if (atomic_fetch_add(&dword_100073708, 0xFFFFFFFF) == 1)
  {
    v2 = +[SACallbackManager activeHandlers];
    if ([v2 intersectsSet:a1[4]])
    {
      v3 = a1[6] & 0xFFFFFFFFFFFFFFFDLL;
      v4 = SALog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = a1[4];
        *buf = 138412546;
        v9 = v2;
        v10 = 2112;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "App Sizer is rescheduled (Currently active: %@, Active at dispatch: %@)", buf, 0x16u);
      }

      v6 = a1[5];
      v7 = 0;
      [v6 runAppSizerWithRunMode:2 BGTask:0 scanOptions:v3 | 0x10 error:&v7];
    }
  }
}

uint64_t sub_10001CBC0(uint64_t a1, void *a2)
{
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v30 = [SAUtilities breakCommaSeparatedStringToComponents:v3];
  v4 = v30;
  if ([v30 count] == 1)
  {
    v31 = [v30 anyObject];
    v5 = [*(a1 + 32) appPathList];
    v28 = [v5 appPathForBundleID:v31];

    v6 = [v28 binaryPaths];
    v7 = [v6 count];

    if (v7)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [v28 binaryPaths];
      v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v34)
      {
        v33 = *v36;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v36 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v35 + 1) + 8 * i);
            if (![SASupport isItemMountedOnSystemVolume:v9])
            {
              v10 = objc_autoreleasePoolPush();
              v11 = [*(a1 + 40) getFolderSizeAtPath:v9 options:6];
              v12 = [*(a1 + 32) appSizerResults];
              [v12 updateBundleIDs:v3 fixedSize:objc_msgSend(v11 dataSize:"dataSize") cloneSize:0 purgeableSize:0 cloneFixUpSize:objc_msgSend(v11 physicalSize:"purgeableSize") appCacheSize:0 CDPluginSize:{objc_msgSend(v11, "physicalSize"), 0, 0}];

              [v11 checkDirStatSizeInconsistency:v31 path:v9 diskCapacity:*(a1 + 48)];
              v13 = [*(a1 + 32) telemetryManager];
              [v13 updateDirStatInfo:v11];

              v14 = [*(a1 + 32) telemetryManager];
              [v14 updateBundleIDs:v3 usedDirStat:objc_msgSend(v11 fixedSize:"usedDirStat") dataSize:objc_msgSend(v11 cloneSize:"dataSize") purgeableSize:0 fileCount:{0, objc_msgSend(v11, "purgeableSize"), objc_msgSend(v11, "fileCount")}];

              if ([v11 dirStatsID])
              {
                v15 = [*(a1 + 32) relevantVolumesInfo];
                v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 dirStatsID]);
                v17 = [v11 volumePath];
                [v15 insertDirKey:v16 bundleIDs:v3 purgeable:0 cache:0 volumePath:v17];
              }

              if (*(a1 + 56) == 1)
              {
                v18 = *(*(a1 + 32) + 64);
                v19 = [v11 generateDictionary:v3];
                [v18 collectPathSizeInfo:v9 info:v19];
              }

              v20 = [*(*(a1 + 32) + 64) appSizeBreakdownList];

              if (v20)
              {
                v21 = [*(a1 + 32) appSizerResults];
                v22 = [v21 appSizeBreakdownList];

                objc_sync_enter(v22);
                v23 = [*(a1 + 32) appSizerResults];
                v24 = [v23 appSizeBreakdownList];
                [v24 addPath:v9 fixedPath:1 size:objc_msgSend(v11 bundleIDs:{"dataSize"), v3}];

                objc_sync_exit(v22);
              }

              objc_autoreleasePoolPop(v10);
            }
          }

          v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v34);
      }

      v25 = obj;
    }

    else
    {
      v26 = SALog();
      v25 = v26;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10003E9D0();
        v25 = v26;
      }
    }

    v4 = v30;
  }

  objc_autoreleasePoolPop(context);
  return 1;
}

void sub_10001D130(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 dataSize];
  v9 = [v6 appCacheSize];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 32) telemetryManager];
    [v11 updateBundleIDs:v5 appCacheSize:v10];

    if ([v6 cacheIsPurgeable])
    {
      v12 = [*(a1 + 32) telemetryManager];
      [v12 addValue:v10 forAppInfoEntry:24 forBundleIDs:v5];

      if (v10 <= v8)
      {
        [v6 setDataSize:{objc_msgSend(v6, "dataSize") - v10}];
        [v6 setPurgeableSize:{&v10[objc_msgSend(v6, "purgeableSize")]}];
        v14 = [*(a1 + 32) telemetryManager];
        [v14 setValue:objc_msgSend(v6 forAppInfoEntry:"dataSize") forBundleIDs:{23, v5}];
      }

      else
      {
        v13 = SALog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v16 = 138412802;
          v17 = v5;
          v18 = 2048;
          v19 = v10;
          v20 = 2048;
          v21 = v8;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error: bundleIDs %@ cache size: %llu is greater than existing data size: %llu", &v16, 0x20u);
        }
      }

      v15 = [*(a1 + 32) appSizerResults];
      [v15 setTotalSAFAppsCacheSize:{&v10[objc_msgSend(v15, "totalSAFAppsCacheSize")]}];
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_10001D7D0(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = [*(a1 + 32) appSizerResults];
    [v6 updateBundleIDs:v5 fixedSize:0 dataSize:0 cloneSize:0 purgeableSize:a3 cloneFixUpSize:0 physicalSize:0 appCacheSize:0 CDPluginSize:0];

    v7 = [*(a1 + 32) telemetryManager];
    [v7 updateBundleIDs:v5 usedDirStat:0 fixedSize:0 dataSize:0 cloneSize:0 purgeableSize:a3 fileCount:0];

    v8 = [*(a1 + 32) appSizerResults];
    v9 = [v8 appsDataInternal];
    v10 = [v9 objectForKey:v5];

    if (v10)
    {
      if ([v10 dataSize] >= a3)
      {
        [v10 setDataSize:{objc_msgSend(v10, "dataSize") - a3}];
        v12 = [*(a1 + 32) telemetryManager];
        [v12 setValue:objc_msgSend(v10 forAppInfoEntry:"dataSize") forBundleIDs:{23, v5}];
      }

      else
      {
        v11 = SALog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          v14 = a3;
          v15 = 2048;
          v16 = [v10 dataSize];
          v17 = 2112;
          v18 = v5;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "purgeable assets size: %llu is greater than existing data size: %llu for bundleSet %@", buf, 0x20u);
        }
      }
    }
  }
}

void sub_10001DA8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003EA38(v6);
    }
  }

  else
  {
    v8 = [v5 used];
    v9 = [*(a1 + 32) appSizerResults];
    v10 = [v9 systemApp];
    [v10 setDataSize:v8];

    v7 = [*(a1 + 32) telemetryManager];
    -[NSObject updateBundleIDs:usedDirStat:fixedSize:dataSize:cloneSize:purgeableSize:fileCount:](v7, "updateBundleIDs:usedDirStat:fixedSize:dataSize:cloneSize:purgeableSize:fileCount:", @"com.apple.fakeapp.System", 0, 0, [v5 used], 0, 0, 0);
  }
}

void sub_10001DC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = SALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003EAC4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v11 = (a1 + 32);
    [*(a1 + 32) setDataVolumeSizeUsed:{objc_msgSend(*(a1 + 32), "dataVolumeSizeUsed") - a2}];
    v3 = SALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10003EB3C(v11);
    }
  }
}

void sub_10001DED0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003EC6C(a1, v5);
    }
  }

  else
  {
    [*(a1 + 32) setDataVolumeSizeUsed:{objc_msgSend(a2, "rawUsed") + objc_msgSend(*(a1 + 32), "dataVolumeSizeUsed")}];
    v7 = *(a1 + 32);
    v6 = [v7 appSizerResults];
    [v7 setDataVolumeSizeUsed:{objc_msgSend(v7, "dataVolumeSizeUsed") - -[NSObject totalCDAvailable](v6, "totalCDAvailable")}];
  }
}

void sub_10001E388(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3 - a4;
  if (a3 < a4)
  {
    v13 = SALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      *buf = 134219266;
      v33 = a6;
      v34 = 2112;
      v35 = v11;
      v36 = 2048;
      v37 = a3;
      v38 = 2048;
      v39 = a4;
      v40 = 2048;
      v41 = a5;
      v42 = 2112;
      v43 = v31;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Attribution tag %llu for bundleID %@ phySize %llu is less than cloneSize %llu. totalCount %llu, volumePath %@", buf, 0x3Eu);
    }

    v12 = 0;
  }

  if (v11)
  {
    v14 = [*(a1 + 40) appPathList];
    v15 = [v14 getParentOfBundle:v11];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v11;
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v17);

    v18 = SALog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10003ED58(v11, a1 + 48);
    }

    v19 = [*(a1 + 40) appSizerResults];
    [v19 updateBundleIDs:*(*(*(a1 + 48) + 8) + 40) withDataSize:v12];

    v20 = [*(a1 + 40) telemetryManager];
    [v20 updateBundleIDs:*(*(*(a1 + 48) + 8) + 40) attributionSize:v12 attributionCloneSize:a4 attributionTagCount:a5];

    if (*(a1 + 64) == 1)
    {
      v21 = [NSNumber numberWithUnsignedLongLong:a3];
      v22 = [NSNumber numberWithUnsignedLongLong:a4];
      v23 = [NSNumber numberWithUnsignedLongLong:v12];
      v24 = [NSNumber numberWithUnsignedLongLong:a5];
      v25 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v11, @"bundleID", v21, @"physicalSize", v22, @"cloneSize", v23, @"attributionSize", v24, @"totalCount", 0];

      [*(*(*(a1 + 56) + 8) + 40) addObject:v25];
    }

    v26 = [*(a1 + 40) relevantVolumesInfo];
    v27 = [NSNumber numberWithUnsignedLongLong:a6];
    [v26 insertTagHash:v27 bundleID:v11 volumePath:*(a1 + 32)];

    v28 = [*(*(a1 + 40) + 64) appSizeBreakdownList];

    if (v28)
    {
      v29 = [*(a1 + 40) appSizerResults];
      v30 = [v29 appSizeBreakdownList];
      [v30 addTagSize:v12 bundleIDs:*(*(*(a1 + 48) + 8) + 40)];
    }
  }
}

void sub_10001F6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F76C(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 setAppSizerResults:a3];
  [*(a1 + 32) setTelemetryManager:v7];
}

void sub_10001FD3C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100020424(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003EFE8(v3, v4);
  }

  [SACallbackManager removeAppSizerHandler:*(a1 + 32)];
}

void *sub_100020494(void *result, int a2)
{
  if (a2)
  {
    return [SACallbackManager removeAppSizerHandler:result[4]];
  }

  return result;
}

void sub_1000204B0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_100021958(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!v8)
  {
    if (a3 != 1)
    {
      v9 = SALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134217984;
        v22 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unexpected options 0x%lx", &v21, 0xCu);
      }

      goto LABEL_4;
    }

    v11 = [SASupport getInodeIDForPath:v7];
    v12 = [SASupport getCloneDstreamIDForPath:v7];
    v13 = *(*(a1 + 32) + 128);
    v14 = [NSNumber numberWithUnsignedLongLong:v12];
    if (([v13 containsObject:v14] & 1) == 0)
    {
      v15 = *(*(a1 + 32) + 136);
      v16 = [NSNumber numberWithUnsignedLongLong:v11];
      LOBYTE(v15) = [v15 containsObject:v16];

      if (v15)
      {
LABEL_14:
        v19 = *(*(a1 + 32) + 136);
        v20 = [NSNumber numberWithUnsignedLongLong:v11];
        [v19 addObject:v20];

        goto LABEL_5;
      }

      v14 = [SATraverse getFileSize:v7];
      if ([v14 isFileCloned] && objc_msgSend(*(a1 + 32), "isNodeID:oldestForDStreamID:path:", v11, v12, v7))
      {
        v17 = *(*(a1 + 32) + 128);
        v18 = [NSNumber numberWithUnsignedLongLong:v12];
        [v17 addObject:v18];

        [v14 setDataSize:{objc_msgSend(v14, "cloneSize")}];
      }

      [*(a1 + 40) updateWithSizeInfo:v14];
    }

    goto LABEL_14;
  }

  v9 = SALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10003F5D8();
  }

LABEL_4:

LABEL_5:
  return 0;
}

void sub_100022278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000222E4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F5D8();
    }
  }

  else if (a3 == 1)
  {
    v9 = [SATraverse getFileSize:v7];
    *(*(a1[4] + 8) + 24) += [v9 dataSize];
    *(*(a1[5] + 8) + 24) += [v9 cloneSize];
    *(*(a1[6] + 8) + 24) += [v9 purgeableSize];
    *(*(a1[7] + 8) + 24) += [v9 physicalSize];
    ++*(*(a1[8] + 8) + 24);
  }

  else
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10003F790(a3, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  return 0;
}

void sub_100022BCC(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) sizerID];
    [SAURlSizersManager removeURLSizerHandler:v2];
  }
}

void sub_100023598(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003FB64(v3, v4);
  }

  [SAURlSizersManager removeURLSizerHandler:*(a1 + 32)];
}

id sub_100023608(uint64_t a1, int a2)
{
  if (a2)
  {
    return [SAURlSizersManager removeURLSizerHandler:*(a1 + 32)];
  }

  else
  {
    return [*(a1 + 40) setResults:*(a1 + 48)];
  }
}

void sub_1000247C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [v6 copy];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100024920;
    v11[3] = &unk_100065398;
    v8 = v5;
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v11];
  }

  else
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fading bundleID %@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 96) removeObjectForKey:v5];
  }
}

void sub_100024920(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [v6 copy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100024AA8;
    v13[3] = &unk_100065370;
    v14 = *(a1 + 32);
    v8 = v5;
    v9 = *(a1 + 40);
    v15 = v8;
    v16 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];

    v10 = v14;
  }

  else
  {
    v11 = SALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fading bundleID %@ volType %@", buf, 0x16u);
    }

    v10 = [*(*(a1 + 40) + 96) objectForKey:*(a1 + 32)];
    [v10 removeObjectForKey:v5];
  }
}

void sub_100024AA8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKey:&off_1000689D0];
  v7 = [v6 objectForKey:&off_1000689D0];
  v8 = [v7 numOfPristineFiles];
  if ([v8 unsignedIntegerValue])
  {
    goto LABEL_10;
  }

  v9 = [v7 numOfPristineToday];
  if ([v9 unsignedIntegerValue] >= 0x64)
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v10 = [v7 numOfEvents30d];
  if ([v10 unsignedIntegerValue] >= 0x64)
  {

    goto LABEL_9;
  }

  v11 = [v7 numOfPristine30d];
  v12 = [v11 unsignedIntegerValue];

  if (v12 <= 0x63)
  {
    v13 = SALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[4];
      v15 = a1[5];
      v17 = 138413058;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Fading bundleID %@ volType %@, residency %@, elem %@", &v17, 0x2Au);
    }

    v8 = [*(a1[6] + 96) objectForKey:a1[4]];
    v16 = [v8 objectForKey:a1[5]];
    [v16 removeObjectForKey:v5];

    goto LABEL_10;
  }

LABEL_11:
}

void sub_100024F74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [NSNumber numberWithUnsignedLong:v6];
  v9 = [v7 objectForKey:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100025078;
  v12[3] = &unk_1000653E8;
  v10 = *(a1 + 32);
  v13 = v5;
  v14 = v10;
  v11 = v5;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];
}

void sub_100025078(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = [a3 objectForKey:&off_1000689D0];
  v6 = [v11 objectForKey:&off_1000689D0];
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v5 unsignedLongLongValue];

  (*(v8 + 16))(v8, v7, v10, v6);
}

void sub_100025288(id a1, NSString *a2, unsigned int a3, SDADataBaseAveElement *a4)
{
  v4 = a4;
  [(SDADataBaseAveElement *)v4 setUpdated:0];
  [(SDADataBaseAveElement *)v4 setSent:0];
}

void sub_1000252D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100025398;
  v10[3] = &unk_100065478;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v14 = *(a1 + 56);
  v7 = v6;
  v8 = *(a1 + 48);
  v12 = v7;
  v13 = v8;
  v9 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v10];
}

id sub_100025398(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v7 unsignedLongLongValue];

  v9 = [v5 objectAtIndexedSubscript:1];

  v10 = [v9 unsignedLongLongValue];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 64);
  v14 = *(a1 + 48);
  v15 = [v6 unsignedLongValue];

  return [v11 adjAveragesForBundleId:v12 volType:v13 volPath:v14 residency:v15 WithNumOfPristine:v8 sizeOfPristine:v10 numOfDays:*(a1 + 56)];
}

void sub_100025480(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (([v8 updated] & 1) == 0)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = [*(a1 + 32) histogramPerVol];
    v10 = [v9 objectForKey:*(a1 + 40)];

    v11 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100025670;
    v12[3] = &unk_1000654C8;
    v12[4] = &v25;
    v12[5] = &v21;
    v12[6] = &v17;
    v12[7] = &v13;
    [v10 getNumAndSizeOfEventsForBundleId:v7 volType:v11 residency:a3 reply:v12];
    [v8 adjElemWithNumOfPristine:0 sizeOfPristine:0 numOfClearedPristine:v18[3] sizeOfClearedPristine:v14[3] numOfEvents:v26[3] sizeOfEvents:v22[3] numOfDays:*(a1 + 48)];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }
}

void sub_100025634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void *sub_100025670(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  *(*(result[6] + 8) + 24) = a4;
  *(*(result[7] + 8) + 24) = a5;
  return result;
}

void sub_100025860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 120), 8);
  _Unwind_Resume(a1);
}

void *sub_1000258A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  *(*(result[6] + 8) + 24) = a4;
  *(*(result[7] + 8) + 24) = a5;
  return result;
}

void sub_100025C84(id a1, NSString *a2, NSDate *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "date for %@ is %@", &v8, 0x16u);
  }
}

void sub_100025D54(id a1, NSString *a2, NSNumber *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Event-ID for %@ is %@", &v8, 0x16u);
  }
}

void sub_100025E24(id a1, NSString *a2, NSMutableDictionary *a3, BOOL *a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100025EB8;
  v6[3] = &unk_100065600;
  v7 = a2;
  v5 = v7;
  [(NSMutableDictionary *)a3 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_100025EB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100025F6C;
  v7[3] = &unk_100065398;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_100025F6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026034;
  v7[3] = &unk_100065370;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_100026034(id *a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000260EC;
  v5[3] = &unk_1000655D8;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1000260EC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    v9 = [v4 numOfEvents30d];
    v10 = [v4 numOfPristineFiles];
    v11 = [v4 numOfPristine30d];
    v12 = [v4 numOfAveragedDays];
    v13 = 138413826;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "For bundleID %@, volRol %@, residency %@, numOfEvents30d is %@, numOfPristineFiles %@, numOfPristine30d %@, numOfAveragedDays %@", &v13, 0x48u);
  }
}

void sub_10002656C(id a1)
{
  v1 = qword_100073730;
  qword_100073730 = &off_1000690C8;

  v2 = qword_100073738;
  qword_100073738 = &off_1000690E0;
}

void sub_100026E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_100026E90(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100026F08;
  v5[3] = &unk_100065648;
  v3 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = v3;
  return [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_100026F08(void *a1, uint64_t a2, void *a3)
{
  v11 = a3;
  for (i = 0; i != 8; ++i)
  {
    v5 = [v11 ageGroupCount];
    v6 = [v5 objectAtIndexedSubscript:i];
    *(*(a1[4] + 8) + 24) += [v6 unsignedLongLongValue];

    v7 = [v11 sizeOfAgeGroupCount];
    v8 = [v7 objectAtIndexedSubscript:i];
    *(*(a1[5] + 8) + 24) += [v8 unsignedLongLongValue];
  }

  v9 = [v11 pristineClearedCount];
  *(*(a1[6] + 8) + 24) += [v9 unsignedLongLongValue];

  v10 = [v11 pristineClearedSize];
  *(*(a1[7] + 8) + 24) += [v10 unsignedLongLongValue];
}

void sub_100027168(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 perBundle];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100027230;
  v9[3] = &unk_1000653E8;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
}

void sub_100027230(uint64_t a1, void *a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000272FC;
  v6[3] = &unk_1000656E8;
  v7 = a2;
  v9 = *(a1 + 40);
  v8 = *(a1 + 32);
  v5 = v7;
  [a3 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_1000272FC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000273D8;
  v7[3] = &unk_1000656C0;
  v8 = a1[4];
  v9 = v5;
  v11 = a1[6];
  v10 = a1[5];
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_1000273D8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000274C8;
  v7[3] = &unk_100065698;
  v8 = a1[4];
  v9 = a1[5];
  v10 = v5;
  v12 = a1[7];
  v11 = a1[6];
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_1000274C8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v8 = a3;
  v6 = a2;
  [v5 unsignedLongLongValue];
  [*(a1 + 40) unsignedLongLongValue];
  [*(a1 + 48) unsignedLongLongValue];
  [v6 unsignedLongLongValue];

  v7 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();
}

void sub_1000276FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100027720(uint64_t a1, void *a2, int a3, int a4, int a5, int a6, void *a7)
{
  v69 = a2;
  v13 = a7;
  ++*(*(*(a1 + 32) + 8) + 24);
  v14 = SALog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v71 = v69;
    v72 = 1024;
    *v73 = a3;
    *&v73[4] = 1024;
    *&v73[6] = a4;
    LOWORD(v74) = 1024;
    *(&v74 + 2) = a5;
    HIWORD(v74) = 1024;
    *v75 = a6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BundleID: %@, volType %u, residency %u, urgency: %u, state %u", buf, 0x24u);
  }

  v15 = SALog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v60 = [v13 ageGroupCount];
    v66 = [v60 objectAtIndexedSubscript:0];
    v57 = [v13 ageGroupCount];
    v63 = [v57 objectAtIndexedSubscript:1];
    v54 = [v13 ageGroupCount];
    v16 = [v54 objectAtIndexedSubscript:2];
    v51 = [v13 ageGroupCount];
    v17 = [v51 objectAtIndexedSubscript:3];
    v48 = [v13 ageGroupCount];
    v18 = [v48 objectAtIndexedSubscript:4];
    v45 = [v13 ageGroupCount];
    v19 = [v45 objectAtIndexedSubscript:5];
    v20 = [v13 ageGroupCount];
    v21 = [v20 objectAtIndexedSubscript:6];
    v22 = [v13 ageGroupCount];
    v23 = [v22 objectAtIndexedSubscript:7];
    *buf = 138414082;
    v71 = v66;
    v72 = 2112;
    *v73 = v63;
    *&v73[8] = 2112;
    v74 = v16;
    *v75 = 2112;
    *&v75[2] = v17;
    v76 = 2112;
    v77 = v18;
    v78 = 2112;
    v79 = v19;
    v80 = 2112;
    v81 = v21;
    v82 = 2112;
    v83 = v23;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "age:  %@ %@ %@ %@ %@ %@ %@ %@", buf, 0x52u);
  }

  v24 = SALog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v61 = [v13 sizeGroupCount];
    v67 = [v61 objectAtIndexedSubscript:0];
    v58 = [v13 sizeGroupCount];
    v64 = [v58 objectAtIndexedSubscript:1];
    v55 = [v13 sizeGroupCount];
    v25 = [v55 objectAtIndexedSubscript:2];
    v52 = [v13 sizeGroupCount];
    v26 = [v52 objectAtIndexedSubscript:3];
    v49 = [v13 sizeGroupCount];
    v27 = [v49 objectAtIndexedSubscript:4];
    v46 = [v13 sizeGroupCount];
    v28 = [v46 objectAtIndexedSubscript:5];
    v29 = [v13 sizeGroupCount];
    v30 = [v29 objectAtIndexedSubscript:6];
    v31 = [v13 sizeGroupCount];
    v32 = [v31 objectAtIndexedSubscript:7];
    *buf = 138414082;
    v71 = v67;
    v72 = 2112;
    *v73 = v64;
    *&v73[8] = 2112;
    v74 = v25;
    *v75 = 2112;
    *&v75[2] = v26;
    v76 = 2112;
    v77 = v27;
    v78 = 2112;
    v79 = v28;
    v80 = 2112;
    v81 = v30;
    v82 = 2112;
    v83 = v32;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "size: %@ %@ %@ %@ %@ %@ %@ %@", buf, 0x52u);
  }

  v33 = SALog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v62 = [v13 sizeOfAgeGroupCount];
    v68 = [v62 objectAtIndexedSubscript:0];
    v59 = [v13 sizeOfAgeGroupCount];
    v65 = [v59 objectAtIndexedSubscript:1];
    v56 = [v13 sizeOfAgeGroupCount];
    v34 = [v56 objectAtIndexedSubscript:2];
    v53 = [v13 sizeOfAgeGroupCount];
    v35 = [v53 objectAtIndexedSubscript:3];
    v50 = [v13 sizeOfAgeGroupCount];
    v36 = [v50 objectAtIndexedSubscript:4];
    v47 = [v13 sizeOfAgeGroupCount];
    v37 = [v47 objectAtIndexedSubscript:5];
    v38 = [v13 sizeOfAgeGroupCount];
    v39 = [v38 objectAtIndexedSubscript:6];
    v40 = [v13 sizeOfAgeGroupCount];
    v41 = [v40 objectAtIndexedSubscript:7];
    *buf = 138414082;
    v71 = v68;
    v72 = 2112;
    *v73 = v65;
    *&v73[8] = 2112;
    v74 = v34;
    *v75 = 2112;
    *&v75[2] = v35;
    v76 = 2112;
    v77 = v36;
    v78 = 2112;
    v79 = v37;
    v80 = 2112;
    v81 = v39;
    v82 = 2112;
    v83 = v41;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "sofa: %@ %@ %@ %@ %@ %@ %@ %@", buf, 0x52u);
  }

  v42 = SALog();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [v13 pristineClearedCount];
    v44 = [v13 pristineClearedSize];
    *buf = 138412546;
    v71 = v43;
    v72 = 2112;
    *v73 = v44;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Cleared Pristine num: %@ size: %@", buf, 0x16u);
  }
}

void sub_100028048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = SALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v61 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Inside processEvents with %lu events", buf, 0xCu);
  }

  v47 = *(a2 + 72);
  if (*(a2 + 16))
  {
    v7 = +[NSDate now];
    [v7 timeIntervalSinceDate:*(a2 + 16)];
    v9 = v8;

    v10 = v9 * 1000000000.0;
  }

  else
  {
    v11 = SALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003FF80();
    }

    v10 = 0.0;
  }

  v12 = a2;
  if (a3)
  {
    v13 = 0;
    v46 = vcvtad_u64_f64(v10);
    do
    {
      if (*(v12 + 2232) == 1)
      {
        v43 = SALog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_1000400A0();
        }

        return;
      }

      v14 = *(v12 + 8);
      if (v14)
      {
        *v14 = *(a6 + 8 * v13);
      }

      if ((*(a5 + 4 * v13) & 0x10) != 0)
      {
        v44 = SALog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_10003FFB4();
        }

        [*(a2 + 2224) unlockWithCondition:1];
        return;
      }

      v15 = *(a4 + 8 * v13);
      if (!v15)
      {
        v16 = SALog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *v61 = v13;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "null event string for event number %llu", buf, 0xCu);
        }

        goto LABEL_50;
      }

      v16 = [NSString stringWithCString:v15 encoding:4];
      v17 = [SAFSEEvent initWithFSEventString:v16];
      v18 = v17;
      if (!v17)
      {
        v19 = SALog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100040060(&v58, v59, v19);
        }

        goto LABEL_49;
      }

      if ([v17 dev] != v47)
      {
        v19 = SALog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v21 = [v18 dev];
          *buf = 134218240;
          *v61 = v21;
          *&v61[8] = 2048;
          *&v61[10] = v47;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "evennt.dev (%llu) is not equal to fsid (%llu", buf, 0x16u);
        }

        goto LABEL_49;
      }

      if ([v18 useState] == 7)
      {
        v19 = +[SAAttributionTag getAccessBundleIdForTag:onVolumeName:](SAAttributionTag, "getAccessBundleIdForTag:onVolumeName:", [v18 originID], objc_msgSend(*(a2 + 2208), "fileSystemRepresentation"));
        v20 = SALog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v38 = [v18 originID];
          v39 = [v18 inode];
          *buf = 67109890;
          *v61 = 7;
          *&v61[4] = 2048;
          *&v61[6] = v38;
          *&v61[14] = 2048;
          *&v61[16] = v39;
          *&v61[24] = 2112;
          *&v61[26] = v19;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "State %ul for hash number %llu, inode %llu, bundleID %@", buf, 0x26u);
        }

        if (v19)
        {
          [*a2 upsertBundleID:v19 volType:*(a2 + 2192) urgency:objc_msgSend(v18 state:"urgency") residency:objc_msgSend(v18 age:"useState") size:objc_msgSend(v18 nanoSecSinceUpdate:{"residency"), objc_msgSend(v18, "purgeableATime"), objc_msgSend(v18, "size"), v46}];
        }

        goto LABEL_49;
      }

      v22 = +[SASupport getDirStatKeyForOriginID:ofMount:](SASupport, "getDirStatKeyForOriginID:ofMount:", [v18 originID], a2 + 112);
      if (!v22)
      {
        v19 = SALog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10003FFF4(v62, v18, &v63, v19);
        }

        goto LABEL_49;
      }

      v23 = [SACloneTreeWalker getDirInfoByDirKey:v22 inVolume:a2 + 24 volumesInfo:*(a2 + 2200) volumePath:*(a2 + 2208)];
      v19 = v23;
      if (!v23 || ([v23 bundleIDs], v24 = objc_claimAutoreleasedReturnValue(), v25 = v24 == 0, v24, v25))
      {
        v33 = SALog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v36 = [v18 originID];
          *buf = 134218240;
          *v61 = v22;
          *&v61[8] = 2048;
          *&v61[10] = v36;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "can't find dir for dir-key %llu and origin-id %llu", buf, 0x16u);
        }

        goto LABEL_48;
      }

      v26 = [v19 bundleIDs];
      v27 = [SAUtilities breakCommaSeparatedStringToComponents:v26];

      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v57 = 0;
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100028998;
      v53[3] = &unk_100065760;
      v53[4] = &v54;
      v45 = v27;
      [v27 enumerateObjectsUsingBlock:v53];
      if (v55[3])
      {
        if ([v27 count]!= 1)
        {
          v28 = SALog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v18 originID];
            v30 = [v19 bundleIDs];
            *buf = 138412802;
            *v61 = v45;
            *&v61[8] = 2048;
            *&v61[10] = v29;
            *&v61[18] = 2112;
            *&v61[20] = v30;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "bundle set %@ for dir-stat key %llu contains multiple bundle ids. Taking %@", buf, 0x20u);
          }
        }

        v31 = *a2;
        v32 = [v19 bundleIDs];
        [v31 upsertBundleID:v32 volType:*(a2 + 2192) urgency:objc_msgSend(v18 state:"urgency") residency:objc_msgSend(v18 age:"useState") size:objc_msgSend(v18 nanoSecSinceUpdate:{"residency"), objc_msgSend(v18, "purgeableATime"), objc_msgSend(v18, "size"), v46}];

        v33 = v45;
        if ([v18 purgeableATime])
        {
          goto LABEL_47;
        }

        v34 = SALog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v40 = [v18 purgeableATime];
          v41 = [v18 originID];
          v42 = [v18 inode];
          *buf = 134218754;
          *v61 = v40;
          *&v61[8] = 2048;
          *&v61[10] = v41;
          *&v61[18] = 2048;
          *&v61[20] = v42;
          *&v61[28] = 2112;
          *&v61[30] = v45;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Age %llu for dirKey number %llu, inode %llu, bundleID %@", buf, 0x2Au);
        }

        v35 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Age %llu for dirKey number %llu, inode %llu, bundleID %@", [v18 purgeableATime], objc_msgSend(v18, "originID"), objc_msgSend(v18, "inode"), v45);
        [SATapToRadar sendTapToRadarNotificationWithDescription:v35 highPriorityProblem:1];
      }

      else
      {
        v35 = SALog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v19 bundleIDs];
          *buf = 138412290;
          *v61 = v37;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "no telemetry for bundleID %@", buf, 0xCu);
        }
      }

      v33 = v45;
LABEL_47:
      _Block_object_dispose(&v54, 8);
LABEL_48:

LABEL_49:
LABEL_50:

      ++v13;
      v12 = a2;
    }

    while (a3 != v13);
  }
}

BOOL sub_100028998(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [SASpeculativeDownloadAnalytics isBundleIdInHierarchy:a2];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_100028B0C(id a1)
{
  v1 = [NSMutableArray arrayWithArray:&off_1000690F8];
  v2 = qword_100073740;
  qword_100073740 = v1;

  if (os_variant_has_internal_ui())
  {
    v3 = qword_100073740;

    [v3 addObject:@"com.apple.FruitBasket.Provider"];
  }
}

void sub_1000298E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a2;
  v14 = a7;
  context = objc_autoreleasePoolPush();
  v15 = objc_opt_new();
  [v15 setObject:v13 forKeyedSubscript:@"bundle_id"];
  [v15 setObject:&off_100068B38 forKeyedSubscript:@"age_bin_version"];
  v16 = *(a1 + 32);
  v64 = a3;
  v17 = [NSNumber numberWithUnsignedInt:a3];
  v18 = [v16 objectForKeyedSubscript:v17];
  [v15 setObject:v18 forKeyedSubscript:@"volume_role"];

  v19 = *(a1 + 40);
  v20 = [NSNumber numberWithUnsignedInt:a6];
  v21 = [v19 objectForKeyedSubscript:v20];
  [v15 setObject:v21 forKeyedSubscript:@"state"];

  v22 = *(a1 + 48);
  v23 = [NSNumber numberWithUnsignedInt:a5];
  v24 = [v22 objectForKeyedSubscript:v23];
  [v15 setObject:v24 forKeyedSubscript:@"urgency"];

  v25 = *(a1 + 56);
  v26 = [NSNumber numberWithUnsignedInt:a4];
  v27 = [v25 objectForKeyedSubscript:v26];
  [v15 setObject:v27 forKeyedSubscript:@"residency_reason"];

  v28 = [*(a1 + 64) numOfTraversal];
  [v15 setObject:v28 forKeyedSubscript:@"number_of_traversal"];

  v29 = [*(a1 + 64) freeDiskSpaceAtStart];
  [v15 setObject:v29 forKeyedSubscript:@"free_disk_space_start"];

  v63 = a1;
  v66 = v13;
  [SASpeculativeDownloadAnalytics loadTelemetry:v15 fromResults:*(a1 + 72) forBundleId:v13];
  v30 = [v14 ageGroupCount];
  v31 = [v30 count];

  if (v31)
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = [NSString stringWithFormat:@"%@%d", @"age_", v32];
      v35 = [v14 ageGroupCount];
      v36 = [v35 objectAtIndexedSubscript:v32];
      [v15 setObject:v36 forKeyedSubscript:v34];

      v37 = [v14 ageGroupCount];
      v38 = [v37 objectAtIndexedSubscript:v32];
      v33 += [v38 unsignedLongLongValue];

      ++v32;
      v39 = [v14 ageGroupCount];
      v40 = [v39 count];
    }

    while (v40 > v32);
  }

  else
  {
    v33 = 0;
  }

  v41 = [v14 sizeGroupCount];
  v42 = [v41 count];

  if (v42)
  {
    v43 = 0;
    do
    {
      v44 = [NSString stringWithFormat:@"%@%d", @"size_", v43];
      v45 = [v14 sizeGroupCount];
      v46 = [v45 objectAtIndexedSubscript:v43];
      [v15 setObject:v46 forKeyedSubscript:v44];

      ++v43;
      v47 = [v14 sizeGroupCount];
      v48 = [v47 count];
    }

    while (v48 > v43);
  }

  v49 = [v14 sizeOfAgeGroupCount];
  v50 = [v49 count];

  if (v50)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = [NSString stringWithFormat:@"%@%d", @"size_of_age_", v51];
      v54 = [v14 sizeOfAgeGroupCount];
      v55 = [v54 objectAtIndexedSubscript:v51];
      [v15 setObject:v55 forKeyedSubscript:v53];

      v56 = [v14 sizeOfAgeGroupCount];
      v57 = [v56 objectAtIndexedSubscript:v51];
      v52 += [v57 unsignedLongLongValue];

      ++v51;
      v58 = [v14 sizeOfAgeGroupCount];
      v59 = [v58 count];
    }

    while (v59 > v51);
  }

  else
  {
    v52 = 0;
  }

  v60 = [*(v63 + 64) getElemForBundleId:v66 volType:v64 residency:a4 urgency:0 state:0 create:0];
  if (!v60)
  {
    v60 = objc_opt_new();
    [v60 adjElemWithNumOfPristine:0 sizeOfPristine:0 numOfClearedPristine:v33 sizeOfClearedPristine:v52 numOfEvents:v33 sizeOfEvents:v52 numOfDays:1];
  }

  [SASpeculativeDownloadAnalytics loadTelemetry:v15 withSdaElem:v60];
  [v60 setSent:1];
  v61 = v15;
  if ((AnalyticsSendEventLazy() & 1) == 0)
  {
    v62 = SALog();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_100040234();
    }
  }

  objc_autoreleasePoolPop(context);
}

void sub_100029EF0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (([v8 sent] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = objc_opt_new();
    [v10 setObject:v7 forKeyedSubscript:@"bundle_id"];
    [v10 setObject:&off_100068B38 forKeyedSubscript:@"age_bin_version"];
    v11 = *(a1 + 32);
    v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 40) volType]);
    v13 = [v11 objectForKeyedSubscript:v12];
    [v10 setObject:v13 forKeyedSubscript:@"volume_role"];

    v14 = *(a1 + 48);
    v15 = [NSNumber numberWithUnsignedInt:a3];
    v16 = [v14 objectForKeyedSubscript:v15];
    [v10 setObject:v16 forKeyedSubscript:@"residency_reason"];

    v17 = [*(a1 + 40) numOfTraversal];
    [v10 setObject:v17 forKeyedSubscript:@"number_of_traversal"];

    v18 = [*(a1 + 40) freeDiskSpaceAtStart];
    [v10 setObject:v18 forKeyedSubscript:@"free_disk_space_start"];

    [SASpeculativeDownloadAnalytics loadTelemetry:v10 fromResults:*(a1 + 56) forBundleId:v7];
    [SASpeculativeDownloadAnalytics loadTelemetry:v10 withSdaElem:v8];
    [v8 setSent:1];
    v19 = v10;
    if ((AnalyticsSendEventLazy() & 1) == 0)
    {
      v20 = SALog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100040268();
      }
    }

    objc_autoreleasePoolPop(v9);
  }
}

void sub_10002B054(uint64_t a1)
{
  FSEventStreamInvalidate(*(a1 + 40));
  FSEventStreamRelease(*(a1 + 40));
  [*(a1 + 32) unlockWithCondition:1];
  v2 = SALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SDA: Release FS events stream", v3, 2u);
  }
}

void sub_10002B0DC(uint64_t a1)
{
  v2 = *(a1 + 2224);
}

void sub_10002B17C(id a1)
{
  v3[0] = &off_1000689D0;
  v3[1] = &off_100068B50;
  v4[0] = @"TYPE_UNKNOWN";
  v4[1] = @"TYPE_USER";
  v3[2] = &off_100068B38;
  v3[3] = &off_100068B80;
  v4[2] = @"TYPE_DATA";
  v4[3] = @"TYPE_ENTERPRISE";
  v3[4] = &off_100068B98;
  v4[4] = @"TYPE_LAST";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_100073750;
  qword_100073750 = v1;
}

void sub_10002B29C(id a1)
{
  v3[0] = &off_1000689D0;
  v3[1] = &off_100068B50;
  v4[0] = @"ACCESS";
  v4[1] = @"SYSTEM_DISCARDED";
  v3[2] = &off_100068B38;
  v3[3] = &off_100068B80;
  v4[2] = @"USER_DISCARDED";
  v4[3] = @"FOUNDATION_API_DISCARDED";
  v3[4] = &off_100068B98;
  v3[5] = &off_100068BB0;
  v4[4] = @"FP_API_DISCARDED";
  v4[5] = @"REMOTE_UPDATE_POLICY_DISCARDED";
  v3[6] = &off_1000689B8;
  v3[7] = &off_100068BC8;
  v4[6] = @"CLEAR_PURGEABILITY";
  v4[7] = @"MAX";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:8];
  v2 = qword_100073760;
  qword_100073760 = v1;
}

void sub_10002B3F4(id a1)
{
  v3[0] = &off_1000689D0;
  v3[1] = &off_100068B50;
  v4[0] = @"NONE";
  v4[1] = @"LOW";
  v3[2] = &off_100068B38;
  v3[3] = &off_100068B80;
  v4[2] = @"MED";
  v4[3] = @"HIGH";
  v3[4] = &off_100068B98;
  v3[5] = &off_100068BB0;
  v4[4] = @"SOFTWARE_UPDATE";
  v4[5] = @"LAST";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_100073770;
  qword_100073770 = v1;
}

void sub_10002B524(id a1)
{
  v6 = [NSMutableDictionary dictionaryWithCapacity:8];
  [v6 setObject:@"RESIDENCY_NONE" forKey:&off_1000689D0];
  v1 = 1;
  do
  {
    v2 = [NSString stringWithFormat:@"RESIDENCY_%u", v1];
    v3 = [NSNumber numberWithUnsignedInt:v1];
    [v6 setObject:v2 forKey:v3];

    v1 = (v1 + 1);
  }

  while (v1 != 7);
  [v6 setObject:@"RESIDENCY_LAST" forKey:&off_100068BC8];
  v4 = [v6 copy];
  v5 = qword_100073780;
  qword_100073780 = v4;
}

void sub_10002C6B8(uint64_t a1)
{
  v2 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [*(a1 + 32) volumesPaths];
  v36 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (!v36)
  {
LABEL_43:

    [*(a1 + 40) setSUPurgeableUrgencyData:v2];
    goto LABEL_47;
  }

  v35 = *v44;
  *&v3 = 136315394;
  v31 = v3;
  v4 = &selRef_shouldContinueScanning;
  v40 = a1;
  v32 = v2;
LABEL_3:
  v5 = 0;
  while (1)
  {
    if (*v44 != v35)
    {
      objc_enumerationMutation(obj);
    }

    v37 = v5;
    v6 = *(*(&v43 + 1) + 8 * v5);
    v41 = [SASupport volumeSupportsCloneMapping:v6, v31];
    v7 = [SASupport getFSPurgeableOnVolume:v6 purgeableUrgency:0x8000 respectZeroSizeFiles:1];
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 138412546;
      *&buf.f_iosize = v6;
      WORD2(buf.f_blocks) = 2048;
      *(&buf.f_blocks + 6) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Total SU purgeable urgency size for %@ is %llu", &buf, 0x16u);
    }

    if (v7 >> 29)
    {
      break;
    }

LABEL_41:
    v5 = v37 + 1;
    if ((v37 + 1) == v36)
    {
      v36 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
      if (!v36)
      {
        goto LABEL_43;
      }

      goto LABEL_3;
    }
  }

  v9 = SALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    buf.f_bsize = v31;
    *&buf.f_iosize = "[SAPurgeableRecords asyncStartProcessingSUPurgeableUrgencyFiles:]_block_invoke";
    WORD2(buf.f_blocks) = 2112;
    *(&buf.f_blocks + 6) = v6;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s for %@", &buf, 0x16u);
  }

  bzero(&buf, 0x878uLL);
  statfs([v6 fileSystemRepresentation], &buf);
  v39 = [v6 fileSystemRepresentation];
  v42 = objc_opt_new();
  v10 = malloc_type_malloc(0x8000uLL, 0x1000040FA0F61DDuLL);
  if (v10)
  {
    v51 = 0;
    *&v52[8] = 0u;
    v53 = 0u;
    v54 = 0;
    v55 = v10;
    *v52 = xmmword_10004CDB0;
    v34 = v10;
    v38 = (v10 + 48);
    *&v52[16] = 1;
    while (1)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [*(a1 + 40) task];
      v13 = [v12 shouldDefer];

      if (v13)
      {
        break;
      }

      if (fsctl(v39, 0xC0404A83uLL, &v51, 0))
      {
        v27 = SALog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = __error();
          v29 = strerror(*v28);
          *v47 = 138412546;
          v48 = v6;
          v49 = 2080;
          v50 = v29;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to get the purgeable records for volume %@ with error %s", v47, 0x16u);
        }

        goto LABEL_39;
      }

      v14 = v54;
      if (v54)
      {
        v15 = 0;
        v16 = v38;
        while (2)
        {
          v17 = *(v16 - 5);
          if ((v17 & 0x800000) != 0)
          {
            goto LABEL_32;
          }

          v18 = v16[1];
          if (!v18)
          {
            goto LABEL_32;
          }

          v19 = [v4 + 362 getDirInfoByDirKey:v16[1] inVolume:&buf volumesInfo:*(a1 + 32) volumePath:v6];
          v20 = v19;
          if (v19 && ([v19 bundleIDs], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
          {
            if ((![v20 cacheFolder] || (objc_msgSend(v20, "purgeable") & 1) == 0) && ((v41 & 1) != 0 || (v17 & 0x204000) == 0))
            {
              v22 = *v16;
              v23 = [NSNumber numberWithUnsignedLongLong:v18];
              v24 = [v42 objectForKeyedSubscript:v23];

              if (v24)
              {
                v22 += [v24 unsignedLongLongValue];
              }

              v25 = [NSNumber numberWithUnsignedLongLong:v22];
              v26 = [NSNumber numberWithUnsignedLongLong:v18];
              [v42 setObject:v25 forKeyedSubscript:v26];

              v4 = &selRef_shouldContinueScanning;
              a1 = v40;
              goto LABEL_30;
            }
          }

          else
          {
            v24 = SALog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *v47 = 134217984;
              v48 = v18;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "can't find saf dir for dir-key %llu", v47, 0xCu);
            }

LABEL_30:
          }

          v14 = v54;
LABEL_32:
          ++v15;
          v16 += 8;
          if (v14 <= v15)
          {
            break;
          }

          continue;
        }
      }

      objc_autoreleasePoolPop(v11);
      if (!*(&v53 + 1))
      {
        goto LABEL_40;
      }
    }

    v27 = SALog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "App Sizer Deferred", v47, 2u);
    }

LABEL_39:

    objc_autoreleasePoolPop(v11);
LABEL_40:
    free(v34);
    v2 = v32;
    [v32 setObject:v42 forKeyedSubscript:v6];

    goto LABEL_41;
  }

  v30 = SALog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_1000406A8(v30);
  }

LABEL_47:
}

void sub_10002EA5C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t start()
{
  if (+[SAHelper isSAFSupported])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = SALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SpaceAttributionDaemon: start (default)", buf, 2u);
    }

    v4 = +[BGSystemTaskScheduler sharedScheduler];
    [v4 registerForTaskWithIdentifier:@"com.apple.SpaceAttributiond.daily" usingQueue:0 launchHandler:&stru_100065908];

    v5 = +[BGSystemTaskScheduler sharedScheduler];
    [v5 registerForTaskWithIdentifier:@"com.apple.SpaceAttributiond.postInstall" usingQueue:0 launchHandler:&stru_100065970];

    v6 = objc_opt_new();
    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.spaceattributiond"];
    [v7 setDelegate:v6];
    [v7 resume];
    dispatch_main();
  }

  v0 = SALog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Space Attribution Framework is NOT supported", v8, 2u);
  }

  return 0;
}

void sub_10002EE5C(id a1, BGRepeatingSystemTask *a2)
{
  v2 = a2;
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start: Space Attribution daily BG task", buf, 2u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002F050;
  v11[3] = &unk_100065930;
  v4 = [SABGSystemTask newWithBGTask:v2];
  v12 = v4;
  [(BGRepeatingSystemTask *)v2 setExpirationHandler:v11];
  v5 = [SAHelper runAppSizerWithBGTask:v4];
  v6 = SALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Space Attribution daily BG task ret code %lu", buf, 0xCu);
  }

  if (v5 == 5)
  {
    [(BGRepeatingSystemTask *)v2 setTaskCompleted];
  }

  else
  {
    v10 = 0;
    v7 = [(BGRepeatingSystemTask *)v2 setTaskExpiredWithRetryAfter:&v10 error:0.0];
    v8 = v10;
    if ((v7 & 1) == 0)
    {
      v9 = SALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10004108C(v8, v9);
      }
    }
  }
}

void sub_10002F058(id a1, BGSystemTask *a2)
{
  v2 = a2;
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100041114(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  [(BGSystemTask *)v2 setTaskCompleted];
}

void sub_10002F0B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10002F168(id a1)
{
  v1 = qword_100073790;
  qword_100073790 = &off_100069058;
}

void sub_10002F334(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [SAUtilities breakCommaSeparatedStringToComponents:v5];
  if ([v8 count] == 1)
  {
    v9 = [v8 anyObject];
    v10 = [SALLMList isLLM:v9];

    if (v10)
    {
      v11 = [v6 dataSize];
      v12 = &v11[[v6 fixedSize]];
      v13 = [v6 purgeableSize];
      v14 = SALog();
      v15 = v14;
      if (v12 >= v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v17 = v8;
          v18 = 2048;
          v19 = [v6 dataSize];
          v20 = 2048;
          v21 = [v6 fixedSize];
          v22 = 2048;
          v23 = [v6 purgeableSize];
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Classify LLM %@ to System (data: %llu, fixed: %llu, purgeable: %llu)", buf, 0x2Au);
        }

        [*(a1 + 32) addToSystemDetails:objc_msgSend(v6 key:{"dataSize") + objc_msgSend(v6, "fixedSize") - objc_msgSend(v6, "purgeableSize"), @"com.apple.fakeapp.AppleIntelligence"}];
        [*(a1 + 32) updateBundleIDs:@"com.apple.fakeapp.System" withAppSize:v6];
        [*(a1 + 40) updateBundleIDs:@"com.apple.fakeapp.System" usedDirStat:0 fixedSize:objc_msgSend(v6 dataSize:"fixedSize") cloneSize:objc_msgSend(v6 purgeableSize:"dataSize") fileCount:{objc_msgSend(v6, "cloneSize"), objc_msgSend(v6, "purgeableSize"), 0}];
        [*(a1 + 32) removeBundleIDs:v5];
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100041160(v8, v6, v15);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_10002F9E0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = SALog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100041280(v2, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully created radar draft", v5, 2u);
    }

    +[SATapToRadar updateLastTTRNotificationDate];
  }
}

uint64_t sub_10002FB3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 44) & 1) != 0 || [v3 urgency] <= *(a1 + 40))
  {
    v5 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_10002FD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002FD84(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  path = container_get_path();
  if (path)
  {
    v4 = path;
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100041434();
    }

    v6 = [NSURL fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
    v7 = [NSString stringWithUTF8String:container_get_identifier()];
    *(*(*(a1 + 40) + 8) + 24) = (*(*(a1 + 32) + 16))();
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);
  objc_autoreleasePoolPop(v2);
  return v8;
}

uint64_t sub_10002FF20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 purgeabilityScoreAtUrgency:*(a1 + 40)];
  if (v4 && v4 <= *(a1 + 40))
  {
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10004149C();
    }

    v6 = *(a1 + 32);
    v7 = [v3 identifier];
    (*(v6 + 16))(v6, v7, [v3 size]);
  }

  return 1;
}

uint64_t sub_100030500(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  path = container_get_path();
  if (path)
  {
    v6 = path;
    v7 = [NSURL fileURLWithFileSystemRepresentation:path isDirectory:1 relativeToURL:0];
    v8 = [NSString stringWithUTF8String:container_get_identifier()];
    if (*(a1 + 56) == 1 && *(a1 + 57) == 1 && ![SAQuery isStagedAppContainer:a2])
    {

      v13 = 1;
      goto LABEL_11;
    }

    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = @"NO";
      v16 = *(a1 + 57);
      if (*(a1 + 56))
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      *buf = 136315906;
      if (v16)
      {
        v15 = @"YES";
      }

      v21 = v6;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v15;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "container path: %s bundle: %@ transient: %@ staged: %@ \n", buf, 0x2Au);
    }

    persona_unique_string = container_get_persona_unique_string();
    if (persona_unique_string)
    {
      v11 = [NSString stringWithUTF8String:persona_unique_string];
      v19[0] = v8;
      v19[1] = v11;
      v12 = [NSArray arrayWithObjects:v19 count:2];
    }

    else
    {
      v18 = v8;
      v12 = [NSArray arrayWithObjects:&v18 count:1];
      v11 = 0;
    }

    [*(a1 + 32) addObject:v7];
    [*(a1 + 40) addObject:v12];
  }

  v13 = *(*(*(a1 + 48) + 8) + 24);
LABEL_11:
  objc_autoreleasePoolPop(v4);
  return v13 & 1;
}

void sub_100030748(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v6 = [v5 objectAtIndexedSubscript:0];

  v7 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v8 = [v7 count];

  v9 = 0;
  if (v8 >= 2)
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    v9 = [v10 objectAtIndexedSubscript:1];
  }

  v11 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [SAQuery getAppPathForContainer:v11 identifier:v6 containerClass:*(a1 + 56) personaString:v9 existingQuery:*(a1 + 64) block:*(a1 + 48)];

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100030C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (!v3)
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000418E8(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_19;
  }

  v5 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    v7 = [v6 bundleIdentifier];
    v8 = [v3 path];
    v9 = [SAAppPath appPathWithRecord:v6 identifier:v7 dataContainerPath:v8 personaUniqueString:*(a1 + 40) isPlugin:*(a1 + 80) isGroup:0];

    if (v9)
    {
LABEL_4:
      *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 56) + 16))();
LABEL_22:

LABEL_23:
      objc_autoreleasePoolPop(v4);
      v24 = *(*(*(a1 + 64) + 8) + 24);
      goto LABEL_24;
    }

LABEL_20:
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100041920(a1, v9, v29, v30, v31, v32, v33, v34);
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000416C0((a1 + 32), v10);
    }

    goto LABEL_19;
  }

  v10 = *(a1 + 32);
  v18 = [v10 containingBundleRecord];

  if (!v18)
  {
    v25 = *(a1 + 48);
    v26 = [v3 path];
    v21 = [SAAppPath appPathWithRecord:v10 identifier:v25 dataContainerPath:v26 personaUniqueString:*(a1 + 40) isPlugin:1 isGroup:0];

    if (v21)
    {
      v21 = v21;
      v27 = 0;
      v9 = v21;
    }

    else
    {
      v36 = SALog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100041844(v10, v36);
      }

      v27 = 0;
      v9 = 0;
    }

    goto LABEL_33;
  }

  v19 = [v10 containingBundleRecord];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v28 = SALog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_100041758(v10, v28);
    }

LABEL_19:
    goto LABEL_20;
  }

  v21 = [v10 containingBundleRecord];
  v22 = [v21 bundleIdentifier];
  v23 = sub_100001508([v22 UTF8String], 2, -[NSObject platform](v21, "platform"), objc_msgSend(*(a1 + 40), "UTF8String"), 0, *(a1 + 72));

  if (!v23)
  {
    v37 = [v21 bundleIdentifier];
    v38 = [0 path];
    v9 = [SAAppPath appPathWithRecord:v21 identifier:v37 dataContainerPath:v38 personaUniqueString:*(a1 + 40) isPlugin:0 isGroup:0];

    v27 = v9 != 0;
    if (v9)
    {
      obj = v9;
      objc_sync_enter(obj);
      v39 = [v10 executableURL];
      v50 = sub_100001A5C([v39 fileSystemRepresentation]);

      v52 = [v10 executableURL];
      v51 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v52 fileSystemRepresentation]);
      v40 = [obj binaryPaths];
      v41 = [v40 anyObject];
      v42 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v41 fileSystemRepresentation]);
      v43 = [v51 hasPrefix:v42];

      if ((v43 & 1) == 0)
      {
        v44 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v50 fileSystemRepresentation]);
        v45 = [NSURL fileURLWithPath:v44 isDirectory:1];

        v46 = [v45 path];
        [obj addBinaryPath:v46];
      }

      v47 = [v10 bundleIdentifier];
      [obj addWriterID:v47];

      v48 = [v3 path];
      [obj addUniquePath:v48];

      objc_sync_exit(obj);
      v49 = obj;
      v27 = 1;
    }

LABEL_33:
    if (v9)
    {
      goto LABEL_4;
    }

    if (v27)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  objc_autoreleasePoolPop(v4);
  v24 = 1;
LABEL_24:

  return v24 & 1;
}

uint64_t sub_100031958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100031970(uint64_t a1, uint64_t a2)
{
  v3 = [SAQuery getLSBundleRecordForBundle:a2];
  if (v3)
  {
    v5 = v3;
    if (([*(*(*(a1 + 32) + 8) + 40) containsObject:v3] & 1) == 0)
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    }
  }

  return _objc_release_x1();
}

uint64_t sub_1000319FC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [SAQuery getVendorNameFromBundleRecord:a2];
  if (v5)
  {
    v6 = *(*(a1 + 32) + 8);
    v9 = *(v6 + 40);
    v7 = (v6 + 40);
    v8 = v9;
    if (v9)
    {
      if (([v8 isEqual:v5] & 1) == 0)
      {
        v10 = *(*(a1 + 32) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = 0;

        *a3 = 1;
      }
    }

    else
    {
      objc_storeStrong(v7, v5);
    }
  }

  return _objc_release_x1();
}

void sub_100032C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Block_object_dispose((v29 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100032CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    *(a3 + 1) = 1;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) += *(a3 + 8);
    v5 = (*(a3 + 8) + 512) >> 10;
    ++*(*(*(a1 + 56) + 8) + 24);
    v6 = [NSDate dateWithTimeIntervalSince1970:*(a3 + 72) / 1000000000.0 + *(a3 + 64)];
    [*(a1 + 32) timeIntervalSinceDate:v6];
    *(*(*(a1 + 64) + 8) + 24) += v5 * (v7 / 60.0);
    if (*(a3 + 80) == 1)
    {
      *(*(*(a1 + 72) + 8) + 24) += *(a3 + 8);
      ++*(*(*(a1 + 80) + 8) + 24);
    }
  }

  return [*(a1 + 40) shouldDefer] ^ 1;
}

uint64_t sub_100032FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldDefer])
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v3 dataContainerPath];

    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [v3 dataContainerPath];
      v9 = [v7 getBundleIDsForPath:v8];

      v10 = [*(a1 + 48) appsDataInternal];
      v11 = [v10 objectForKeyedSubscript:v9];

      v12 = [v11 vendorName];
      v13 = v12;
      if (!v12 || ([v12 isEqualToString:@"Apple"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"Unknown") & 1) != 0)
      {
        v4 = 1;
      }

      else
      {
        v15 = [v3 lastUsed];
        if (v15)
        {
          [*(a1 + 56) timeIntervalSinceDate:v15];
          [*(a1 + 64) setValueToTelemetryEntry:@"time_since_last_used" value:v16 bundleIDs:v9];
        }

        v22 = v15;
        v17 = [v3 cachePath];
        v18 = *(a1 + 32);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100033270;
        v25[3] = &unk_100065B60;
        v25[4] = *(a1 + 64);
        v19 = v9;
        v26 = v19;
        [SACacheUsageTelemetry traversePath:v17 BGTask:v18 reply:v25];

        if ([*(a1 + 32) shouldDefer])
        {
          v4 = 0;
        }

        else
        {
          v20 = [v3 tmpPath];
          v21 = *(a1 + 32);
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1000332B4;
          v23[3] = &unk_100065B60;
          v23[4] = *(a1 + 64);
          v24 = v19;
          [SACacheUsageTelemetry traversePath:v20 BGTask:v21 reply:v23];

          v4 = 1;
        }
      }
    }

    else
    {
      v4 = 1;
    }

    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

void sub_100033424(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v21 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [SAUtilities breakCommaSeparatedStringToComponents:v5];
  v8 = [a1[4] getValueForTelemetryEntry:@"cache_size" bundleIDs:v5];
  v9 = [a1[4] getValueForTelemetryEntry:@"time_since_last_used" bundleIDs:v5] - 43201;
  v10 = [a1[5] appsDataInternal];
  v11 = [v10 objectForKeyedSubscript:v5];

  v12 = [v11 dataSize];
  if (v9 >= 0xFFFFFFFFFFFF5740)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  [a1[4] addValueToTelemetryEntry:@"data_size" value:&v13[v12] bundleIDs:v5];
  [a1[4] addValueToTelemetryEntry:@"data_file_count" value:objc_msgSend(a1[6] bundleIDs:{"getValueForAppInfoEntry:forBundleIDs:", 27, v5), v5}];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v23;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = [a1[7] objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i)];
        v17 += [v20 unsignedLongLongValue];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  [a1[4] addValueToTelemetryEntry:@"app_usage" value:v17 bundleIDs:v5];
  [a1[4] addValueToTelemetryEntry:@"disk_used" value:objc_msgSend(a1[5] bundleIDs:{"APFSDiskUsed"), v5}];

  objc_autoreleasePoolPop(v6);
}

BOOL sub_100033CA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  switch(v8)
  {
    case 2:
      v13 = [*(a1 + 32) getValueForTelemetryEntry:@"data_size" bundleIDs:v5];
      v14 = [*(a1 + 32) getValueForTelemetryEntry:@"cache_size" bundleIDs:v5];
      v15 = 0.0;
      v16 = 0.0;
      if (v13 - 1 < v14)
      {
        v16 = v13 / (v14 / v13);
      }

      v17 = [*(a1 + 32) getValueForTelemetryEntry:@"data_size" bundleIDs:v6];
      v18 = [*(a1 + 32) getValueForTelemetryEntry:@"cache_size" bundleIDs:v6];
      if (v17 - 1 < v18)
      {
        v15 = v17 / (v18 / v17);
      }

      v12 = v16 < v15;
      break;
    case 1:
      v9 = *(a1 + 32);
      v10 = @"cache_age_weighted_size";
      goto LABEL_6;
    case 0:
      v9 = *(a1 + 32);
      v10 = @"data_size";
LABEL_6:
      v11 = [v9 getValueForTelemetryEntry:v10 bundleIDs:v5];
      v12 = v11 < [*(a1 + 32) getValueForTelemetryEntry:v10 bundleIDs:v6];
      break;
    default:
      v19 = SALog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100041E64();
      }

      v12 = 1;
      break;
  }

  v20 = v12;
  objc_autoreleasePoolPop(v7);

  return v20;
}

id sub_1000344D8(uint64_t a1)
{
  [*(a1 + 32) addObject:*(a1 + 40)];
  ++*(*(*(a1 + 56) + 8) + 24);
  v2 = [*(a1 + 48) cacheUsageTelemetry];
  v3 = [v2 objectForKey:*(a1 + 40)];

  return v3;
}

id sub_100034550(uint64_t a1)
{
  [*(a1 + 32) addObject:*(a1 + 40)];
  ++*(*(*(a1 + 56) + 8) + 24);
  v2 = [*(a1 + 48) cacheUsageTelemetry];
  v3 = [v2 objectForKey:*(a1 + 40)];

  return v3;
}

id sub_1000345C8(uint64_t a1)
{
  [*(a1 + 32) addObject:*(a1 + 40)];
  ++*(*(*(a1 + 56) + 8) + 24);
  v2 = [*(a1 + 48) cacheUsageTelemetry];
  v3 = [v2 objectForKey:*(a1 + 40)];

  return v3;
}

BOOL sub_100036900(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) getValueForAppInfoEntry:*(a1 + 40) forBundleIDs:v5];
  v9 = v8 < [*(a1 + 32) getValueForAppInfoEntry:*(a1 + 40) forBundleIDs:v6];
  objc_autoreleasePoolPop(v7);

  return v9;
}

void sub_100037430(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) getVendorValueforBundleIDs:v5];
  v9 = [SAUtilities breakCommaSeparatedStringToComponents:v8];
  if ([v9 count] >= 2)
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[SATelemetryManager removeAppsWithMultipleVendors]_block_invoke";
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: blocking %@ for vendors %@", &v11, 0x20u);
    }

    [*(*(a1 + 32) + 8) removeObjectForKey:v5];
  }

  objc_autoreleasePoolPop(v7);
}

id sub_100037D64(uint64_t a1)
{
  v2 = [*(a1 + 32) appsInfo];
  v3 = [v2 objectForKey:*(a1 + 40)];

  return v3;
}

id sub_100037DBC(uint64_t a1)
{
  v2 = [*(a1 + 32) appsInfo];
  v3 = [v2 objectForKey:*(a1 + 40)];

  return v3;
}

void sub_100037E58(id a1)
{
  v3[0] = &off_100068BF8;
  v3[1] = &off_100068C10;
  v4[0] = @"metric_type";
  v4[1] = @"metric_name";
  v3[2] = &off_100068C28;
  v3[3] = &off_100068C40;
  v4[2] = @"bundle_id";
  v4[3] = @"vendor";
  v3[4] = &off_100068C58;
  v3[5] = &off_100068C70;
  v4[4] = @"icloud_plan";
  v4[5] = @"saf_options";
  v3[6] = &off_100068C88;
  v3[7] = &off_100068CA0;
  v4[6] = @"app_index";
  v4[7] = @"app_version";
  v3[8] = &off_100068CB8;
  v3[9] = &off_100068CD0;
  v4[8] = @"bundle_id_count";
  v4[9] = @"dirstat_data_size";
  v3[10] = &off_100068CE8;
  v3[11] = &off_100068D00;
  v4[10] = @"dirstat_purgeables";
  v4[11] = @"dirstat_clones";
  v3[12] = &off_100068D18;
  v3[13] = &off_100068D30;
  v4[12] = @"dirstat_count";
  v4[13] = @"tag_data_size";
  v3[14] = &off_100068D48;
  v3[15] = &off_100068D60;
  v4[14] = @"tag_purgeables";
  v4[15] = @"tag_clones";
  v3[16] = &off_100068D78;
  v3[17] = &off_100068D90;
  v4[16] = @"tag_count";
  v4[17] = @"clone_data_size";
  v3[18] = &off_100068DA8;
  v3[19] = &off_100068DC0;
  v4[18] = @"clone_clone_size";
  v4[19] = @"clone_purgeable_size";
  v3[20] = &off_100068DD8;
  v3[21] = &off_100068DF0;
  v4[20] = @"cd_app_cache_purgeable";
  v4[21] = @"cd_plugin_purgeable";
  v3[22] = &off_100068E08;
  v3[23] = &off_100068E20;
  v4[22] = @"spi_fixed_size";
  v4[23] = @"spi_data_size";
  v3[24] = &off_100068E38;
  v3[25] = &off_100068E50;
  v4[24] = @"spi_purgeable_size";
  v4[25] = @"spi_clone_size";
  v3[26] = &off_100068E68;
  v3[27] = &off_100068E80;
  v4[26] = @"bundle_id_group";
  v4[27] = @"data_file_count";
  v3[28] = &off_100068E98;
  v3[29] = &off_100068EB0;
  v4[28] = @"binary_file_count";
  v4[29] = @"cache_file_count";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:30];
  v2 = qword_1000737B0;
  qword_1000737B0 = v1;
}

void sub_100038170(id a1)
{
  v3[0] = &off_100068BF8;
  v3[1] = &off_100068C10;
  v4[0] = @"metric_type";
  v4[1] = @"metric_name";
  v3[2] = &off_100068C28;
  v3[3] = &off_100068C58;
  v4[2] = @"icloud_plan";
  v4[3] = @"app_index";
  v3[4] = &off_100068C70;
  v3[5] = &off_100068C40;
  v4[4] = @"bundle_id_count";
  v4[5] = @"saf_options";
  v3[6] = &off_100068C88;
  v3[7] = &off_100068CA0;
  v4[6] = @"dirstat_data_size";
  v4[7] = @"dirstat_purgeables";
  v3[8] = &off_100068CB8;
  v3[9] = &off_100068CD0;
  v4[8] = @"dirstat_clones";
  v4[9] = @"dirstat_count";
  v3[10] = &off_100068CE8;
  v3[11] = &off_100068D18;
  v4[10] = @"tag_data_size";
  v4[11] = @"tag_purgeables";
  v3[12] = &off_100068D00;
  v3[13] = &off_100068D30;
  v4[12] = @"dirstat_count";
  v4[13] = @"tag_clones";
  v3[14] = &off_100068D48;
  v3[15] = &off_100068D60;
  v4[14] = @"tag_count";
  v4[15] = @"cd_app_cache_purgeable";
  v3[16] = &off_100068D78;
  v3[17] = &off_100068D90;
  v4[16] = @"cd_plugin_purgeable";
  v4[17] = @"spi_fixed_size";
  v3[18] = &off_100068DA8;
  v3[19] = &off_100068DC0;
  v4[18] = @"spi_data_size";
  v4[19] = @"spi_purgeable_size";
  v3[20] = &off_100068DD8;
  v3[21] = &off_100068DF0;
  v4[20] = @"spi_clone_size";
  v4[21] = @"apfs_used_block";
  v3[22] = &off_100068E08;
  v3[23] = &off_100068E20;
  v4[22] = @"data_file_count";
  v4[23] = @"binary_file_count";
  v3[24] = &off_100068E38;
  v4[24] = @"cache_file_count";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:25];
  v2 = qword_1000737C0;
  qword_1000737C0 = v1;
}

void sub_100038420(id a1)
{
  v3[0] = &off_100068BF8;
  v3[1] = &off_100068C10;
  v4[0] = @"metric_type";
  v4[1] = @"metric_name";
  v3[2] = &off_100068C28;
  v3[3] = &off_100068C40;
  v4[2] = @"bundle_id_count";
  v4[3] = @"dirstat_data_size";
  v3[4] = &off_100068C58;
  v3[5] = &off_100068C70;
  v4[4] = @"dirstat_purgeables";
  v4[5] = @"dirstat_clones";
  v3[6] = &off_100068C88;
  v4[6] = @"dirstat_count";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
  v2 = qword_1000737D0;
  qword_1000737D0 = v1;
}

void sub_100038568(id a1)
{
  v3[0] = &off_100068BF8;
  v3[1] = &off_100068C10;
  v4[0] = @"metric_type";
  v4[1] = @"metric_name";
  v3[2] = &off_100068C28;
  v3[3] = &off_100068C40;
  v4[2] = @"app_index";
  v4[3] = @"dirstat_data_size";
  v3[4] = &off_100068C58;
  v3[5] = &off_100068C70;
  v4[4] = @"tag_data_size";
  v4[5] = @"spi_fixed_size";
  v3[6] = &off_100068C88;
  v3[7] = &off_100068CA0;
  v4[6] = @"spi_data_size";
  v4[7] = @"spi_purgeable_size";
  v3[8] = &off_100068CB8;
  v3[9] = &off_100068CD0;
  v4[8] = @"spi_clone_size";
  v4[9] = @"tag_purgeables";
  v3[10] = &off_100068CE8;
  v4[10] = @"dirstat_purgeables";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:11];
  v2 = qword_1000737E0;
  qword_1000737E0 = v1;
}

void sub_1000393F8(id a1)
{
  v3[0] = @"metric_type";
  v3[1] = @"metric_name";
  v4[0] = @"metric_type";
  v4[1] = @"metric_name";
  v3[2] = @"icloud_plan";
  v3[3] = @"app_index";
  v4[2] = @"icloud_plan";
  v4[3] = @"total_app_count";
  v3[4] = @"dirstat_data_size";
  v3[5] = @"tag_data_size";
  v4[4] = @"total_dir_stat_processing_time";
  v4[5] = @"total_tag_record_processing_time";
  v3[6] = @"spi_fixed_size";
  v3[7] = @"spi_data_size";
  v4[6] = @"total_fixed_size_calculation_time";
  v4[7] = @"total_app_sizer_run_time";
  v3[8] = @"spi_purgeable_size";
  v3[9] = @"spi_clone_size";
  v4[8] = @"total_cache_delete_query_time";
  v4[9] = @"total_clone_mapping_time";
  v3[10] = @"tag_purgeables";
  v3[11] = @"dirstat_purgeables";
  v4[10] = @"total_purgeable_tags_time";
  v4[11] = @"software_updates_query_time";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:12];
  v2 = qword_1000737F0;
  qword_1000737F0 = v1;
}

void sub_1000396C0(id a1)
{
  v3[0] = @"metric_type";
  v3[1] = @"metric_name";
  v4[0] = @"metric_type";
  v4[1] = @"metric_name";
  v3[2] = @"bundle_id_count";
  v3[3] = @"dirstat_data_size";
  v4[2] = @"total_number_of_paths";
  v4[3] = @"total_number_of_dirstat_enabled_paths";
  v3[4] = @"dirstat_purgeables";
  v3[5] = @"dirstat_clones";
  v4[4] = @"total_number_of_dirstat_used_paths";
  v4[5] = @"total_number_of_dirstat_failed_paths";
  v3[6] = @"dirstat_count";
  v4[6] = @"total_number_of_dirstat_skipped_paths";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
  v2 = qword_100073800;
  qword_100073800 = v1;
}

void sub_100039930(id a1)
{
  v3[0] = @"metric_type";
  v3[1] = @"metric_name";
  v4[0] = @"metric_type";
  v4[1] = @"metric_name";
  v3[2] = @"icloud_plan";
  v3[3] = @"app_index";
  v4[2] = @"icloud_plan";
  v4[3] = @"total_app_count";
  v3[4] = @"bundle_id_count";
  v3[5] = @"saf_options";
  v4[4] = @"total_enterprise_volumes_count";
  v4[5] = @"total_purgeable_tags_count";
  v3[6] = @"dirstat_data_size";
  v3[7] = @"dirstat_purgeables";
  v4[6] = @"total_dirstat_data_size";
  v4[7] = @"total_dirstat_purgeable_size";
  v3[8] = @"dirstat_clones";
  v3[9] = @"tag_data_size";
  v4[8] = @"total_dirstat_clone_size";
  v4[9] = @"total_tag_attributed_data_size";
  v3[10] = @"tag_purgeables";
  v3[11] = @"dirstat_count";
  v4[10] = @"total_hidden_purgeable_tags_size";
  v4[11] = @"total_visible_purgeable_tags_size";
  v3[12] = @"tag_clones";
  v3[13] = @"tag_count";
  v4[12] = @"total_tag_attributed_clone_size";
  v4[13] = @"total_tag_attribution_count";
  v3[14] = @"cd_app_cache_purgeable";
  v3[15] = @"cd_plugin_purgeable";
  v4[14] = @"total_cache_delete_app_cache_purgeable_size";
  v4[15] = @"total_cache_delete_plugin_purgeable_size";
  v3[16] = @"spi_fixed_size";
  v3[17] = @"spi_data_size";
  v4[16] = @"system_volume_size";
  v4[17] = @"system_data_size";
  v3[18] = @"spi_purgeable_size";
  v3[19] = @"spi_clone_size";
  v4[18] = @"total_purgeable_size";
  v4[19] = @"total_clone_size";
  v3[20] = @"apfs_used_block";
  v3[21] = @"data_file_count";
  v4[20] = @"total_apfs_used_block_count";
  v4[21] = @"total_data_file_count";
  v3[22] = @"binary_file_count";
  v3[23] = @"cache_file_count";
  v4[22] = @"total_binary_file_count";
  v4[23] = @"total_cache_file_count";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:24];
  v2 = qword_100073810;
  qword_100073810 = v1;
}

void sub_100039DD0()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100039E40()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100039EB0(char a1, void *a2)
{
  if (a1)
  {
    [NSNumber numberWithInteger:2];
  }

  else
  {
    [a2 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
  }
  v2 = ;
  sub_100005024();
  sub_100005008();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100039F64()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100039FD4()
{
  sub_100005024();
  sub_10000508C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003A050()
{
  sub_100005070();
  v0 = __error();
  strerror(*v0);
  sub_10000507C();
  sub_100005008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10003A174()
{
  sub_100005070();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10003A228()
{
  sub_100005070();
  v0 = *__error();
  sub_100005030();
  sub_100005008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10003A2AC()
{
  sub_100005070();
  v0 = *__error();
  sub_100005030();
  sub_100005008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10003A330(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100005024();
  sub_10000508C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003A4D8()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003A548()
{
  sub_10000507C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003A5C8()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003A638()
{
  sub_10000507C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003A6B8()
{
  v0 = __error();
  strerror(*v0);
  sub_100005024();
  sub_100005008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003A740()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

void sub_10003A808()
{
  sub_100005070();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100005048();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_10003A8AC()
{
  sub_100005070();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100005048();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_10003A964()
{
  sub_10000509C();
  sub_10000508C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003A9E0()
{
  v0 = __error();
  strerror(*v0);
  sub_100005024();
  sub_100005008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003AA68()
{
  v0 = __error();
  strerror(*v0);
  sub_100005024();
  sub_100005008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003AAF0()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003AB60(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 20);
  v5 = *(a2 + 4);
  v6 = 136316162;
  v7 = "+[SASupport getVolSizeFromAttrList:completionHandler:]";
  v8 = 2080;
  v9 = a1;
  v10 = 2048;
  v11 = v3;
  v12 = 2048;
  v13 = v4;
  v14 = 2048;
  v15 = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s:%s:used:%llu:reserved:%llu:capacity:%llu", &v6, 0x34u);
}

void sub_10003AC2C()
{
  v0 = __error();
  strerror(*v0);
  v1 = *__error();
  sub_100005030();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10003ACC0(_DWORD *a1, char **a2)
{
  v4 = __error();
  v5 = strerror(*v4);
  *a1 = 136315138;
  *a2 = v5;
  sub_1000050A8(&_mh_execute_header, v6, v7, "APFSIOC_GET_VOLUME_ROLE returned with error: %s");
}

void sub_10003ADFC()
{
  sub_10000509C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10003AE6C()
{
  sub_10000509C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10003B09C()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003B10C()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003B218(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 4);
  v4 = 136315906;
  v5 = "+[SASupport getDiskUsed]";
  v6 = 2080;
  v7 = "/";
  v8 = 2048;
  v9 = v2;
  v10 = 2048;
  v11 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:%s: spaceAvail %llu (capacity:%llu)", &v4, 0x2Au);
}

void sub_10003B474()
{
  sub_100009F20();
  sub_100009F00();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003B4B0()
{
  sub_100009F20();
  sub_100009F00();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003B4EC()
{
  sub_100009F20();
  sub_100009F00();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003B528()
{
  sub_100009F20();
  sub_100009F00();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003B924(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedLongLong:a1];
  sub_100009F0C();
  sub_100009F40(&_mh_execute_header, v2, v3, "%s: adjust Denom Age by %@ days", v4, v5, v6, v7, 2u);
}

void sub_10003BA38(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "[SAHelper registerPaths:reply:]";
  *(buf + 6) = 2112;
  *(buf + 14) = @"/var/db/spaceattribution";
  *(buf + 11) = 2112;
  *(buf + 3) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to create folder at (%@) with - %@", buf, 0x20u);
}

void sub_10003BAB4()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003BE58()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003BE94()
{
  sub_10000509C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10003BF04(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to get OVP volume size %@", a2, 0xCu);
}

void sub_10003BF70()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003BFAC()
{
  sub_10000509C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10003C01C()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003C110(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a1 + 24);
  v4 = *(*a2 + 24);
  v5 = 136315650;
  v6 = "[SAHelper computeSizeOfSystemVolume:]";
  v7 = 2048;
  v8 = v3;
  v9 = 2048;
  v10 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s:end:sysVollUsed:%llu:totalCapacity:%llu", &v5, 0x20u);
}

void sub_10003C1B8(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100005018();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003C2C4(void *a1, int a2, NSObject *a3)
{
  v5 = 136315394;
  v6 = [a1 fileSystemRepresentation];
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Can't get mounted on volume of %s, statfs returned %d", &v5, 0x12u);
}

void sub_10003C368()
{
  sub_100009F2C();
  sub_100009F00();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C460()
{
  sub_100009F2C();
  sub_100009F00();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C558()
{
  sub_10000509C();
  sub_100009F00();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10003C640()
{
  sub_100009F0C();
  sub_100009F00();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003C834()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003C8A4()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C8E0()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C91C()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C958()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C994()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003CA04()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003CA74()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003CAE4()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003CD48(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  sub_100013110();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10003CDE8(void *a1)
{
  v1 = [a1 identifier];
  sub_100009F0C();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10003CE80()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003CEF0()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003CF2C()
{
  v0 = __error();
  strerror(*v0);
  sub_100005024();
  sub_100005008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003CFB4()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D024()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D114()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D184()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003D1C0()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003D1FC()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003D278()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003D2F4()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003D370()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003D3EC()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003D468()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D558()
{
  v1[0] = 136315394;
  sub_100009F0C();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s: bundle (%@) doesn't have AppPath, creating one", v1, 0x16u);
}

void sub_10003D5D8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = 136315650;
  sub_100013144();
  sub_100013160(&_mh_execute_header, v3, v4, "%s: Adding shared path (%@) to bundle (%@)", v5);
}

void sub_10003D650(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = 136315650;
  sub_100013144();
  sub_100013160(&_mh_execute_header, v3, v4, "%s: Adding unique path (%@) to bundle (%@)", v5);
}

void sub_10003D6C8()
{
  v1[0] = 136315394;
  sub_100009F0C();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s: bundle (%@) doesn't have AppPath, creating one", v1, 0x16u);
}

void sub_10003D748()
{
  sub_100005024();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D7B8()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10001493C();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10003D848()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100014914();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10003D8D8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error: Duplicate attribute detected (attribute: %d)\n", v2, 8u);
}

void sub_10003D950(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Skipping the attribution of group %llu (number of clones: %llu)", &v3, 0x16u);
}

void sub_10003D9D8()
{
  v5 = *__error();
  sub_100005008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10003DA60(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "processCloneMapOnVol for %@", &v2, 0xCu);
}

void sub_10003DB4C(unsigned int *a1)
{
  v2 = *__error();
  v3 = *a1;
  sub_100016138();
  sub_100005008();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x14u);
}

void sub_10003DBE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "processCloneMapOnVol buffSize 0 : No clones in volume %@", &v2, 0xCu);
}

void sub_10003DE0C(int a1, int __errnum)
{
  strerror(__errnum);
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10003E180(void *a1)
{
  [a1 unsignedLongLongValue];
  sub_10001FD58();
  sub_100005008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10003E210(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "unreportedSize (%llu) is larger than totalHiddenAppSize (%llu).", buf, 0x16u);
}

void sub_10003E340(void *a1)
{
  v2 = [a1 appSizerResults];
  [v2 totalPurgeableDataSize];
  v3 = [a1 appSizerResults];
  [v3 diskUsed];
  sub_10001FD58();
  sub_100005008();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10003E468(void *a1)
{
  v2 = [a1 appSizerResults];
  [v2 diskUsed];
  v3 = [a1 appSizerResults];
  [v3 totalPurgeableDataSize];
  sub_10001FD58();
  sub_100005008();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10003E528(void *a1)
{
  v1 = [a1 appSizerResults];
  [v1 totalPurgeableDataSize];
  sub_10001FD28();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10003E5C8(void *a1)
{
  v1 = [a1 description];
  sub_100005024();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003E654()
{
  sub_10001FD28();
  sub_10001FD68();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003E7E0(__CFString *a1, uint8_t *buf, os_log_t log)
{
  v4 = &stru_100066450;
  if (a1)
  {
    v4 = a1;
  }

  *buf = 138412546;
  *(buf + 4) = @"CACHE_DELETE_TOTAL_AVAILABLE";
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to get %@, purgeable size is set to 0. %@", buf, 0x16u);
}

void sub_10003E8DC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100013124(&_mh_execute_header, a2, a3, "Failed to process clone groups on volume %@ with error %@", *v3, *&v3[8], *&v3[16]);
}

void sub_10003E958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_100005024();
  sub_100013124(&_mh_execute_header, v3, v4, "CloneTreeWalker returned %@ for %@");
}

void sub_10003EA38(void *a1)
{
  v1 = [a1 description];
  sub_100005024();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003EB3C(id *a1)
{
  [*a1 dataVolumeSizeUsed];
  sub_10001FD58();
  sub_100009F40(&_mh_execute_header, v1, v2, "overprovisioning_file: physicalSize (%llu), adjusting dataVolumeSizeUsed to (%llu)", v3, v4, v5, v6, 0);
}

void sub_10003EBC4(void *a1)
{
  [a1 dataVolumeSizeUsed];
  v2 = [a1 appSizerResults];
  [v2 totalCDAvailable];
  sub_10001FD58();
  sub_100009F40(&_mh_execute_header, v3, v4, "Data volume sizes:dataVolumeSizeUsed %llu, totalCDAvailable %llu", v5, v6, v7, v8, 0);
}

void sub_10003EC6C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v8 = [a2 description];
  sub_100005008();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003ED58(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*a2 + 8) + 40);
  sub_100005024();
  sub_10001FD68();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003EEE8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown handler id (%@)", &v2, 0xCu);
}

void sub_10003EFE8(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 136315394;
  v5 = "+[SACallbackManager callAppSizeHandlersWithResults:error:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Failed to get client proxy with error: %@\nRemoving the handler from active handlers list", &v4, 0x16u);
}

void sub_10003F094(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_100022624();
  sub_100009EE4(&_mh_execute_header, v2, v3, "stat: _dir_content_max_count %zu", v4, v5, v6, v7, v8);
}

void sub_10003F100(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_100022624();
  sub_100009EE4(&_mh_execute_header, v2, v3, "stat: _onDifferentVolume %zu", v4, v5, v6, v7, v8);
}

void sub_10003F16C(uint64_t a1)
{
  v1 = *(a1 + 72);
  sub_100022624();
  sub_100009EE4(&_mh_execute_header, v2, v3, "stat: _skipSymbolicLink %zu", v4, v5, v6, v7, v8);
}

void sub_10003F1D8(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_100022624();
  sub_100009EE4(&_mh_execute_header, v2, v3, "stat: _folderCnt %zu", v4, v5, v6, v7, v8);
}

void sub_10003F244(uint64_t a1)
{
  v1 = *(a1 + 88);
  sub_100022624();
  sub_100009EE4(&_mh_execute_header, v2, v3, "stat: _filesDetected %zu", v4, v5, v6, v7, v8);
}

void sub_10003F2B0(uint64_t a1)
{
  v1 = *(a1 + 96);
  sub_100022624();
  sub_100009EE4(&_mh_execute_header, v2, v3, "stat: _noPathOutOfReach %zu", v4, v5, v6, v7, v8);
}

void sub_10003F31C(uint64_t a1)
{
  v1 = *(a1 + 104);
  sub_100022624();
  sub_100009EE4(&_mh_execute_header, v2, v3, "stat: _callback_stop %zu", v4, v5, v6, v7, v8);
}

void sub_10003F388(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_100022624();
  sub_100009EE4(&_mh_execute_header, v2, v3, "stat: _startTime %@", v4, v5, v6, v7, v8);
}

void sub_10003F3F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100022624();
  sub_100009EE4(&_mh_execute_header, v2, v3, "stat: _startTime %@", v4, v5, v6, v7, v8);
}

void sub_10003F460(uint64_t a1, NSObject *a2)
{
  [*(a1 + 32) timeIntervalSinceDate:*(a1 + 24)];
  v4 = 134217984;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "stat: execution time %f sec", &v4, 0xCu);
}

void sub_10003F640(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SATraverse _getFolderSizeForFD:path:options:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: No path neither FD was provided", &v1, 0xCu);
}

void sub_10003F6C4(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed fstatfs with error %s", buf, 0xCu);
}

void sub_10003F70C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SATraverse _getFolderSizeForFD:path:options:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Either a FD or a path should be provided", &v1, 0xCu);
}

void sub_10003F7FC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SADUrlSizer scanURLs:withSizer:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s start", &v1, 0xCu);
}

void sub_10003F880(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SADUrlSizer scanURLs:withSizer:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s end", &v1, 0xCu);
}

void sub_10003F948(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No active URL sizer found for ID %@", &v4, 0xCu);
}

void sub_10003F9E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "removeURLSizerHandler: the provided handler ID (%@) is not active at the moment", &v2, 0xCu);
}

void sub_10003FA5C(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[SAURlSizersManager callURLSizer:withResults:error:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s start", &v1, 0xCu);
}

void sub_10003FAE0(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[SAURlSizersManager callURLSizer:withResults:error:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s end", &v1, 0xCu);
}

void sub_10003FB64(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 136315394;
  v5 = "+[SAURlSizersManager callURLSizer:withResults:error:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: Failed to get client proxy with error: %@\nRemoving the the sizer configuration", &v4, 0x16u);
}

void sub_10003FC10(void *a1)
{
  [a1 urgency];
  sub_10002BE58();
  sub_100005008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10003FC94(void *a1)
{
  [a1 useState];
  sub_10002BE58();
  sub_100005008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10003FEE0(void *a1)
{
  v1 = [a1 pathToDisk];
  sub_100005024();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003FFF4(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 originID];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "can't find dir-key origin id %llu", a1, 0xCu);
}

void sub_100040060(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "can't parse eventStr", buf, 2u);
}

void sub_1000400E8()
{
  v5 = *__error();
  sub_100005008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1000402D0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FSEventStreamCreate:", buf, 2u);
}

void sub_100040394(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "processAttributionTagsForVol for %@", &v2, 0xCu);
}

void sub_10004040C()
{
  v0 = __error();
  strerror(*v0);
  sub_100005008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000404A8(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 5000;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Can't malloc %u structs", v1, 8u);
}

void sub_100040528()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10002C4F4();
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000405C4()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100005008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000406A8(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 512;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Can't malloc %u structs", v1, 8u);
}

void sub_100040728(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 runMode];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown run mode %lu", &v3, 0xCu);
}

void sub_1000407B4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SAVolumeInfo dealloc]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: deallocing volStat", &v1, 0xCu);
}

void sub_100040838(NSObject *a1)
{
  v2 = *__error();
  v3 = 136315394;
  v4 = "+[SAVolumeInfo newForPath:]";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%s: statfs returned %d", &v3, 0x12u);
}

void sub_1000408DC()
{
  v1[0] = 136315394;
  sub_100009F0C();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s: allocing volStat for %@", v1, 0x16u);
}

void sub_1000409D0(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "APFSIOC_DIR_STATS_OP for %llu returned DIR_STATS_POSSIBLY_INCONSISTENT", &v2, 0xCu);
}

void sub_100040A48(uint64_t a1, NSObject *a2)
{
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v7 = 134218498;
  v8 = a1;
  v9 = 1024;
  v10 = v4;
  v11 = 2080;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "APFSIOC_DIR_STATS_OP for %llu returned errno %u (%s)", &v7, 0x1Cu);
}

void sub_100040B08(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "There shouldn't be that many nested folders. (dirKey: %llu, chainedKey: %llu)", &v4, 0x16u);
}

void sub_10004108C(const __CFString *a1, NSObject *a2)
{
  v2 = @"Unknown";
  if (a1)
  {
    v2 = a1;
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to expire task with error %@", &v3, 0xCu);
}

void sub_100041160(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = 138413058;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 dataSize];
  v9 = 2048;
  v10 = [a2 fixedSize];
  v11 = 2048;
  v12 = [a2 purgeableSize];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Can't classify LLM %@ to System (data: %llu, fixed: %llu, purgeable: %llu)", &v5, 0x2Au);
}

void sub_100041280(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 136315394;
  v5 = "+[SATapToRadar sendTapToRadarNotificationWithDescription:highPriorityProblem:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: error creating radar draft: %@", &v4, 0x16u);
}

void sub_1000415D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100005024();
  WORD2(v7) = 2048;
  HIWORD(v7) = v3;
  sub_100013124(&_mh_execute_header, v4, v5, "Failed to copy container %s info with error %llu", v6, v7);
}

void sub_1000416C0(uint64_t *a1, NSObject *a2)
{
  v3 = *a1;
  objc_opt_class();
  v5 = 67109378;
  sub_100031AA8();
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%d enumerateAppPathsOnVolume skipping record class: %@", &v5, 0x12u);
}

void sub_100041758(void *a1, NSObject *a2)
{
  v4 = [a1 containingBundleRecord];
  v5 = objc_opt_class();
  v6 = [a1 containingBundleRecord];
  v7 = [v6 bundleIdentifier];
  v10 = 67109634;
  sub_100031AA8();
  v11 = v5;
  v12 = v8;
  v13 = v9;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%d enumerateAppPathsOnVolume encountered containing bundle record class: %@ : %@", &v10, 0x1Cu);
}

void sub_100041844(void *a1, NSObject *a2)
{
  v3 = [a1 bundleIdentifier];
  v5 = 67109378;
  sub_100031AA8();
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%d unable to create SAAppPath for extension: %@", &v5, 0x12u);
}

void sub_100041BF4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "+[SARunTimeDataManager setRunTimeDataObject:forKey:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to write %@ data to disk with error %@", &v3, 0x20u);
}

void sub_100041CF8()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100041D74()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100041FE4()
{
  sub_100039DBC();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100042060()
{
  sub_100039DBC();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000420DC()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042118()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042154()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042190()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000421CC()
{
  sub_100009F20();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000422EC()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000423FC()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100042478()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000424F4()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100042570()
{
  sub_100009F0C();
  sub_100005018();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}