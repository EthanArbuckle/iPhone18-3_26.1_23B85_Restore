@interface SASpeculativeDownloadAnalytics
+ (BOOL)isBundleIdInHierarchy:(id)a3;
+ (id)SDTelResidencyKeysTranslationTable;
+ (id)SDTelStateKeysTranslationTable;
+ (id)SDTelUrgencyKeysTranslationTable;
+ (id)SDTelVolumeKeysTranslationTable;
+ (void)loadTelemetry:(id)a3 fromResults:(id)a4 forBundleId:(id)a5;
+ (void)loadTelemetry:(id)a3 withSdaElem:(id)a4;
+ (void)sendTelemetry:(id)a3 withSDAState:(id)a4 appSizerTelemetry:(id)a5;
- (id)collectDenominatorInfoForVolPath:(id)a3 volType:(int)a4 volumeInfo:(id)a5;
- (void)adjustDenomAgeBy:(unint64_t)a3;
- (void)analyzeVolumesInfo:(id)a3 pathList:(id)a4 appSizerResults:(id)a5 appSizerTelemetry:(id)a6 shouldStop:(BOOL)a7;
@end

@implementation SASpeculativeDownloadAnalytics

+ (BOOL)isBundleIdInHierarchy:(id)a3
{
  v3 = a3;
  if (qword_100073748 != -1)
  {
    sub_1000400D4();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = qword_100073740;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 hasPrefix:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

- (id)collectDenominatorInfoForVolPath:(id)a3 volType:(int)a4 volumeInfo:(id)a5
{
  v6 = a3;
  v45 = a5;
  v41 = malloc_type_malloc(0x30000uLL, 0xC8CCB583uLL);
  if (v41)
  {
    v7 = [v6 fileSystemRepresentation];
    v8 = objc_opt_new();
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "START: APFSIOC_SPEC_TELEM_OP on path %s.", buf, 0xCu);
    }

    v10 = +[NSDate now];
    bzero(v41, 0x30000uLL);
    *&buf[4] = 0;
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *buf = 5;
    *&buf[8] = xmmword_10004CD80;
    v52 = 0x3000000001388;
    v53 = v41;
    if (fsctl(v7, 0xC0F84A7EuLL, buf, 1u))
    {
LABEL_36:
      v32 = SALog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1000400E8();
      }
    }

    else
    {
      v39 = v10;
      v42 = v8;
      v43 = v6;
      v40 = v7;
      while (1)
      {
        v11 = DWORD2(v53);
        v12 = SALog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v49 = 67109632;
          *v50 = v11;
          *&v50[4] = 2048;
          *&v50[6] = *&buf[8];
          *&v50[14] = 2048;
          *&v50[16] = *&buf[16];
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "APFSIOC_SPEC_TELEM_OP: telemReq.num_of_entries %u, flags 0x%llx, objid 0x%llu", v49, 0x1Cu);
        }

        if (v11)
        {
          v13 = 0;
          v14 = v41;
          v44 = v11;
          do
          {
            v15 = [NSNumber numberWithUnsignedLongLong:*v14];
            v16 = [v45 getDirCacheElementForDirKey:v15 volumePath:v6 climbUpDSHierarchy:1 cacheDiscoveredDirElement:1];
            v17 = [v16 bundleIDs];
            if (v17)
            {
              v47 = v16;
              v48 = v15;
              v46 = v17;
              v18 = [v8 objectForKey:v17];
              if (!v18)
              {
                v18 = objc_opt_new();
              }

              for (i = 0; i != 7; ++i)
              {
                v20 = v14[i + 1];
                v21 = *(v14 + i + 16);
                if (v20)
                {
                  v22 = 0;
                }

                else
                {
                  v22 = v21 == 0;
                }

                if (!v22)
                {
                  v23 = [NSNumber numberWithUnsignedInt:i];
                  v24 = [v18 objectForKey:v23];

                  if (v24)
                  {
                    v25 = [v24 objectAtIndexedSubscript:0];
                    v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v25 unsignedLongLongValue] + v21);
                    [v24 setObject:v26 atIndexedSubscript:0];

                    v27 = [v24 objectAtIndexedSubscript:1];
                    v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v27 unsignedLongLongValue] + v20);
                    [v24 setObject:v28 atIndexedSubscript:1];
                  }

                  else
                  {
                    v27 = [NSNumber numberWithUnsignedLongLong:v21];
                    v28 = [NSNumber numberWithUnsignedLongLong:v20];
                    v24 = [NSMutableArray arrayWithObjects:v27, v28, 0];
                  }

                  v29 = [NSNumber numberWithUnsignedInt:i];
                  [v18 setObject:v24 forKey:v29];
                }
              }

              v8 = v42;
              v17 = v46;
              [v42 setObject:v18 forKey:v46];
              v6 = v43;
              v11 = v44;
              v16 = v47;
              v15 = v48;
            }

            else
            {
              v18 = SALog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *v49 = 138412290;
                *v50 = v15;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "APFSIOC_SPEC_TELEM_OP: Found no bundle-id for dirKey %@", v49, 0xCu);
              }
            }

            ++v13;
            v14 += 12;
          }

          while (v13 != v11);
        }

        if ((buf[8] & 6) == 0)
        {
          break;
        }

        v30 = *&buf[16];
        v31 = SALog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v49 = 134218240;
          *v50 = *&buf[8];
          *&v50[8] = 2048;
          *&v50[10] = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "APFSIOC_SPEC_TELEM_OP: We have more! flags: 0x%llX, restarting from %llu", v49, 0x16u);
        }

        bzero(v41, 0x30000uLL);
        *buf = 5;
        v66 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v53 = 0u;
        *&buf[8] = v30 == 0;
        *&buf[16] = v30;
        v52 = 0x3000000001388;
        *&v53 = v41;
        if (fsctl(v40, 0xC0F84A7EuLL, buf, 1u))
        {
          v10 = v39;
          goto LABEL_36;
        }
      }

      v34 = SALog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 134217984;
        *v50 = *&buf[8];
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "APFSIOC_SPEC_TELEM_OP: We have no more! 0x%llX", v49, 0xCu);
      }

      v35 = +[NSDate now];
      v10 = v39;
      [v35 timeIntervalSinceDate:v39];
      v37 = v36;

      v38 = SALog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v6;
        *&buf[12] = 2048;
        *&buf[14] = v37;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "SUCCESS: APFSIOC_SPEC_TELEM_OP for %@ took %lf sec", buf, 0x16u);
      }
    }

    free(v41);
  }

  else
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100040198();
    }

    v8 = 0;
  }

  return v8;
}

+ (void)loadTelemetry:(id)a3 fromResults:(id)a4 forBundleId:(id)a5
{
  v7 = a4;
  v8 = a3;
  v16 = [NSSet setWithObject:a5];
  v9 = [v7 appData];
  v10 = [v9 objectForKeyedSubscript:v16];

  v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 diskCapacity] - objc_msgSend(v7, "diskUsed"));
  [v8 setObject:v11 forKeyedSubscript:@"disk_free_space"];

  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 fixedSize] + objc_msgSend(v10, "dataSize"));
  [v8 setObject:v12 forKeyedSubscript:@"total_size"];

  v13 = [v7 getPhySizeForAppSet:v16];
  v14 = [NSNumber numberWithUnsignedLongLong:v13];
  [v8 setObject:v14 forKeyedSubscript:@"total_app_size"];

  v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 purgeableSize]);
  [v8 setObject:v15 forKeyedSubscript:@"purgeable_size"];
}

+ (void)loadTelemetry:(id)a3 withSdaElem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 numOfPristineFiles];
  [v6 setObject:v7 forKeyedSubscript:@"num_of_pristine_files"];

  v8 = [v5 sizeOfPristineFiles];
  [v6 setObject:v8 forKeyedSubscript:@"size_of_pristine_files"];

  v9 = [v5 totalNumberOfPristine];
  [v6 setObject:v9 forKeyedSubscript:@"total_number_of_pristine"];

  v10 = [v5 totalSizeOfPristine];
  [v6 setObject:v10 forKeyedSubscript:@"total_size_of_pristine"];

  v11 = [v5 numOfPristineToday];
  [v6 setObject:v11 forKeyedSubscript:@"num_of_pristine_today"];

  v12 = [v5 sizeOfPristineToday];
  [v6 setObject:v12 forKeyedSubscript:@"size_of_pristine_today"];

  v13 = [v5 numOfPristine30d];
  [v6 setObject:v13 forKeyedSubscript:@"num_of_pristine_30d"];

  v14 = [v5 sizeOfPristine30d];
  [v6 setObject:v14 forKeyedSubscript:@"size_of_pristine_30d"];

  v15 = [v5 numOfEvents30d];
  [v6 setObject:v15 forKeyedSubscript:@"num_of_event_30d"];

  v16 = [v5 sizeOfEvents30d];

  [v6 setObject:v16 forKeyedSubscript:@"size_of_event_30d"];
}

+ (void)sendTelemetry:(id)a3 withSDAState:(id)a4 appSizerTelemetry:(id)a5
{
  v28 = a3;
  v6 = a4;
  v7 = +[SASpeculativeDownloadAnalytics SDTelVolumeKeysTranslationTable];
  v8 = +[SASpeculativeDownloadAnalytics SDTelStateKeysTranslationTable];
  v9 = +[SASpeculativeDownloadAnalytics SDTelUrgencyKeysTranslationTable];
  v10 = +[SASpeculativeDownloadAnalytics SDTelResidencyKeysTranslationTable];
  v11 = [v6 volPath];
  v12 = [v6 histogramPerVol];
  v13 = [v12 objectForKey:v11];

  if (v13)
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000298E4;
    v34[3] = &unk_1000657D0;
    v14 = v7;
    v35 = v14;
    v36 = v8;
    v37 = v9;
    v15 = v10;
    v38 = v15;
    v27 = v10;
    v16 = v6;
    v39 = v16;
    v26 = v11;
    v17 = v8;
    v18 = v28;
    v40 = v18;
    [v13 enumerateBundleHistogram:v34];
    v19 = v6;
    v20 = v9;
    v21 = v7;
    v22 = [v16 volType];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100029EF0;
    v29[3] = &unk_1000657F8;
    v30 = v14;
    v31 = v16;
    v32 = v15;
    v23 = v18;
    v8 = v17;
    v33 = v23;
    v11 = v26;
    v10 = v27;
    v24 = v22;
    v7 = v21;
    v9 = v20;
    v6 = v19;
    [v31 enumerateAllAverageElementsOfVolType:v24 UsingBlock:v29];

    v25 = v35;
  }

  else
  {
    v25 = SALog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000401CC();
    }
  }
}

- (void)adjustDenomAgeBy:(unint64_t)a3
{
  v4 = [SDAState loadFromFileAtPath:self->_SdaStateFilePath];
  v5 = +[NSDate now];
  v6 = [v5 dateByAddingTimeInterval:-(86400 * a3)];
  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = a3;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updating lastUpdateDate by %lld days to %@", &v8, 0x16u);
  }

  [v4 setLastUpdateDate:v6];
  [v4 saveToFile];
}

- (void)analyzeVolumesInfo:(id)a3 pathList:(id)a4 appSizerResults:(id)a5 appSizerTelemetry:(id)a6 shouldStop:(BOOL)a7
{
  v7 = a7;
  v65 = a3;
  v64 = a4;
  v63 = a5;
  v62 = a6;
  v66 = self;
  v12 = [SDAState loadFromFileAtPath:self->_SdaStateFilePath];
  v13 = SALog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "After loading:", buf, 2u);
  }

  [v12 print];
  v14 = [v12 executionOnGoing];
  v15 = [v14 isEqual:&off_100068B50];

  if (v15)
  {
    v16 = SALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v12 startExecutionDate];
      *buf = 138412290;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "failed to finish processing that started at %@", buf, 0xCu);
    }

    v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v63 diskCapacity] - objc_msgSend(v63, "diskUsed"));
    [NSDictionary dictionaryWithObjectsAndKeys:&off_100068B68, @"number_of_traversal", &off_100068B38, @"age_bin_version", v18, @"disk_free_space", 0];
    v87 = _NSConcreteStackBlock;
    v88 = 3221225472;
    v89 = sub_10002B04C;
    v91 = v90 = &unk_1000657A8;
    v19 = v91;
    if ((AnalyticsSendEventLazy() & 1) == 0)
    {
      v20 = SALog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10004029C();
      }
    }

    v21 = [v12 numOfTraversal];
    v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v21 unsignedLongLongValue] + 1);

    [v12 setNumOfTraversal:v22];
  }

  [v12 setExecutionOnGoing:&off_100068B50];
  v23 = +[NSDate now];
  [v12 setStartExecutionDate:v23];

  [v12 saveToFile];
  if (v7)
  {
    v24 = SALog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100040310();
    }

    goto LABEL_63;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [v65 volumesPaths];
  v73 = [obj countByEnumeratingWithState:&v83 objects:v105 count:16];
  if (!v73)
  {
    goto LABEL_60;
  }

  v72 = *v84;
  do
  {
    for (i = 0; i != v73; i = i + 1)
    {
      if (*v84 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v83 + 1) + 8 * i);
      v27 = SALog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Start SDA for %@", buf, 0xCu);
      }

      v28 = [[NSConditionLock alloc] initWithCondition:0];
      v29 = [v12 lastEventIdPerVol];
      v30 = [v29 objectForKey:v26];

      if (v30)
      {
        sinceWhen = [v30 unsignedLongLongValue];
        [v12 setVolPath:v26];
        v31 = objc_opt_new();
        v32 = [v12 histogramPerVol];
        [v32 setObject:v31 forKey:v26];

        memset(&__src, 0, 512);
        v33 = v26;
        if (statfs([v26 fileSystemRepresentation], &__src))
        {
          v34 = *__error();
          v35 = SALog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v34;
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "statfs returned %d", buf, 8u);
          }

          goto LABEL_26;
        }

        v39 = __src.f_fsid.val[0];
        v81 = 0;
        if (fsctl(__src.f_mntonname, 0x40024A6CuLL, &v81, 1u))
        {
          v40 = *__error();
          v35 = SALog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v58 = *__error();
            *buf = 67109376;
            *&buf[4] = v40;
            *&buf[8] = 1024;
            *&buf[10] = v58;
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "APFSIOC_GET_VOLUME_ROLE returned %d (errno = %d)", buf, 0xEu);
          }

LABEL_26:
        }

        else
        {
          if (v81 == 576)
          {
            v41 = 3;
          }

          else
          {
            v41 = 0;
          }

          if (v81 == 64)
          {
            v41 = 2;
          }

          if (v81 == 2)
          {
            v42 = 1;
          }

          else
          {
            v42 = v41;
          }

          v70 = v42;
          [v12 setVolType:?];
          *buf = 0u;
          memset(v97, 0, 496);
          v43 = v31;
          *buf = v43;
          *&buf[8] = &sinceWhen;
          *v97 = [v12 lastUpdateDate];
          memcpy(&v97[8], &__src, 0x878uLL);
          v98 = v70;
          v69 = v65;
          v99 = v69;
          v44 = v26;
          v100 = v44;
          v68 = v64;
          v101 = v68;
          v45 = v28;
          v102 = v45;
          v103 = 0;
          context.version = 0;
          memset(&context.retain, 0, 24);
          context.info = buf;
          values = @"/.activity";
          v46 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
          v67 = v43;
          CurrentEventId = FSEventsGetCurrentEventId();
          v48 = sinceWhen;
          if (sinceWhen >= CurrentEventId)
          {
            v48 = CurrentEventId;
          }

          sinceWhen = v48;
          v49 = SALog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            sub_1000402D0(&v77, v78, v49);
          }

          v50 = FSEventStreamCreateRelativeToDevice(kCFAllocatorDefault, sub_100028048, &context, v39, v46, sinceWhen, 0.0, 0x10u);
          v51 = dispatch_queue_create("fse que", 0);
          FSEventStreamSetDispatchQueue(v50, v51);
          if (FSEventStreamStart(v50))
          {
            [v45 lockWhenCondition:1];
            FSEventStreamStop(v50);
            v52 = [[NSConditionLock alloc] initWithCondition:0];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10002B054;
            block[3] = &unk_100065820;
            v76 = v50;
            v53 = v52;
            v75 = v53;
            dispatch_async(v51, block);
            [v53 lockWhenCondition:1];
            CFRelease(v46);
            CFRelease(values);
            v54 = SALog();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              *v92 = 134218242;
              v93 = sinceWhen;
              v94 = 2112;
              v95 = v44;
              _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "Saving last event id %llu for vol %@", v92, 0x16u);
            }

            v55 = sinceWhen;
            v56 = +[NSDate now];
            [v12 updateEventId:v55 andDate:v56 forVolPath:v44];

            [(SASpeculativeDownloadAnalytics *)v66 processDenominatorsWithVolPath:v44 volType:v70 pathList:v68 volumesInfo:v69 state:v12];
            if (v66->_Options)
            {
              [v67 print];
            }

            v57 = SALog();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *v92 = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "SDA: Send telemetry", v92, 2u);
            }

            [SASpeculativeDownloadAnalytics sendTelemetry:v63 withSDAState:v12 appSizerTelemetry:v62];
          }

          else
          {
            v53 = SALog();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *v92 = 138412290;
              v93 = v44;
              _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "FSEventStreamStart failed for %@", v92, 0xCu);
            }
          }

          sub_10002B0DC(buf);
        }

        goto LABEL_58;
      }

      v36 = SALog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Initial run. Set initial lastEventId and abort.", buf, 2u);
      }

      v37 = FSEventsGetCurrentEventId();
      v38 = +[NSDate now];
      [v12 updateEventId:v37 andDate:v38 forVolPath:v26];

LABEL_58:
    }

    v73 = [obj countByEnumeratingWithState:&v83 objects:v105 count:16];
  }

  while (v73);
LABEL_60:

  v59 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v63 diskCapacity] - objc_msgSend(v63, "diskUsed"));
  [v12 setFreeDiskSpaceAtStart:v59];

  v60 = +[NSDate now];
  [v12 setLastUpdateDate:v60];

  [v12 setExecutionOnGoing:&off_1000689D0];
  [v12 fadeOldEntries];
  v61 = SALog();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Before saving:", buf, 2u);
  }

  [v12 print];
  [v12 saveToFile];
LABEL_63:
}

+ (id)SDTelVolumeKeysTranslationTable
{
  if (qword_100073758 != -1)
  {
    sub_100040344();
  }

  v3 = qword_100073750;

  return v3;
}

+ (id)SDTelStateKeysTranslationTable
{
  if (qword_100073768 != -1)
  {
    sub_100040358();
  }

  v3 = qword_100073760;

  return v3;
}

+ (id)SDTelUrgencyKeysTranslationTable
{
  if (qword_100073778 != -1)
  {
    sub_10004036C();
  }

  v3 = qword_100073770;

  return v3;
}

+ (id)SDTelResidencyKeysTranslationTable
{
  if (qword_100073788 != -1)
  {
    sub_100040380();
  }

  v3 = qword_100073780;

  return v3;
}

@end