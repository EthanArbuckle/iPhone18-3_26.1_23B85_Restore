@interface SPApplicationMetadataUpdater
+ (id)metadataFilePath;
+ (id)metadataFilePathOld;
+ (id)metadataTokenPath;
+ (id)sharedInstance;
- (BOOL)incrementDataValues:(double *)a3 fromIndex:(unsigned int)a4 toIndex:(unsigned int)a5 byProportion:(double)a6;
- (BOOL)migrateDataIfNecessaryFromOlderFormatFile:(id)a3 newFormatFile:(id)a4;
- (SPApplicationMetadataUpdater)init;
- (id)appMetadata;
- (id)computeAppLaunchesFromTime:(double)a3 toTime:(double)a4 yesterday:(double)a5;
- (void)update;
- (void)updateApplicationMetadataWithFilePath:(id)a3 currentDate:(id)a4 legacyPath:(id)a5;
- (void)updateMetadata:(_app_metadata *)a3 lastUpdatedTime:(double)a4 nowTime:(double)a5;
@end

@implementation SPApplicationMetadataUpdater

+ (id)sharedInstance
{
  if (qword_1000A83B8 != -1)
  {
    sub_1000627AC();
  }

  v3 = qword_1000A83B0;

  return v3;
}

- (id)appMetadata
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[NSFileManager defaultManager];
  v4 = [objc_opt_class() metadataFilePath];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [NSData alloc];
    v7 = [objc_opt_class() metadataFilePath];
    v8 = [v6 initWithContentsOfFile:v7];

    if ([v8 length] >= 0x12)
    {
      v31 = objc_opt_new();
      v10 = [v8 bytes];
      if (!strcmp(v10 + 8, "10.4.1"))
      {
        v11 = (v10 + 18);
        for (i = v10; ; v10 = i)
        {
          if (v11 >= [v8 length] + v10)
          {
            v9 = v31;
            goto LABEL_22;
          }

          v12 = 0.0;
          for (j = 5; j != 18; ++j)
          {
            v12 = v12 + v11[j];
          }

          v15 = v11[2];
          v14 = v11[3];
          v16 = v11[4];
          v17 = [NSArray alloc];
          v18 = [NSNumber numberWithDouble:*v11];
          v19 = [NSNumber numberWithDouble:v11[2]];
          v20 = v14 + v15;
          v21 = [NSNumber numberWithDouble:v20];
          v22 = v16 + v20;
          v23 = [NSNumber numberWithDouble:v22];
          v24 = [NSNumber numberWithDouble:v12 + v22];
          v25 = [v17 initWithObjects:{v18, v19, v21, v23, v24, 0}];

          if ((*(v11 + 72) - 0x7FFF) <= 0x8002u)
          {
            break;
          }

          v26 = [[NSString alloc] initWithBytes:v11 + 146 length:*(v11 + 72) - 1 encoding:4];
          if (![v26 length])
          {
            v28 = SPLogForSPLogCategoryDefault();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              sub_1000628D0();
            }

            getpid();
            SimulateCrash();

            goto LABEL_20;
          }

          [v31 setObject:v25 forKey:v26];
          v11 = (v11 + *(v11 + 72) + 146);
        }

        v27 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100062944();
        }

        getpid();
        SimulateCrash();
LABEL_20:
      }

      v9 = 0;
LABEL_22:
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v2);

  return v9;
}

+ (id)metadataFilePath
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Library/Spotlight/applications.mdplist"];

  return v3;
}

+ (id)metadataFilePathOld
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Library/Spotlight/applications.plist"];

  return v3;
}

+ (id)metadataTokenPath
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Library/Spotlight/applications_processing"];

  return v3;
}

- (SPApplicationMetadataUpdater)init
{
  v9.receiver = self;
  v9.super_class = SPApplicationMetadataUpdater;
  v2 = [(SPApplicationMetadataUpdater *)&v9 init];
  if (v2)
  {
    v3 = +[NSCalendar currentCalendar];
    [(SPApplicationMetadataUpdater *)v2 setCalendar:v3];

    v4 = objc_opt_new();
    [(SPApplicationMetadataUpdater *)v2 setLookupDict:v4];
  }

  v5 = SPLogForSPLogCategoryDefault();
  v6 = v5;
  if (gSPLogDebugAsDefault)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v5, v7))
  {
    *buf = 136315138;
    v11 = "com.apple.searchd.updateRanking";
    _os_log_impl(&_mh_execute_header, v6, v7, "Registering XPC activity:%s", buf, 0xCu);
  }

  xpc_activity_register("com.apple.searchd.updateRanking", XPC_ACTIVITY_CHECK_IN, &stru_100092E70);
  return v2;
}

- (void)update
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [objc_opt_class() metadataTokenPath];
  v4 = [objc_opt_class() metadataFilePathOld];
  v5 = [objc_opt_class() metadataFilePath];
  v6 = open([v3 UTF8String], 1, 384);
  if (v6 == -1)
  {
    v8 = open([v3 UTF8String], 513, 384);
    if (v8 == -1)
    {
      v10 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100062890();
      }
    }

    else
    {
      v9 = [NSDate dateWithTimeIntervalSinceNow:0.0];
      [(SPApplicationMetadataUpdater *)v2 updateApplicationMetadataWithFilePath:v5 currentDate:v9 legacyPath:v4];

      close(v8);
      unlink([v3 UTF8String]);
    }
  }

  else
  {
    v7 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100062850();
    }

    unlink([v4 UTF8String]);
    unlink([v5 UTF8String]);
    unlink([v3 UTF8String]);
    close(v6);
  }

  objc_sync_exit(v2);
}

- (BOOL)migrateDataIfNecessaryFromOlderFormatFile:(id)a3 newFormatFile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  if (![v7 fileExistsAtPath:v5])
  {
LABEL_5:
    LOBYTE(v8) = 1;
    goto LABEL_15;
  }

  if ([v7 fileExistsAtPath:v6])
  {
    if ([v7 fileExistsAtPath:v5])
    {
      [v7 removeItemAtPath:v5 error:0];
    }

    goto LABEL_5;
  }

  v9 = [v7 attributesOfItemAtPath:v5 error:0];
  v10 = [v9 fileSize];

  if (v10 <= 0x12)
  {
    v11 = 18;
  }

  else
  {
    v11 = v10;
  }

  v12 = malloc_type_calloc(1uLL, v11, 0xC18D5FFAuLL);
  v13 = [NSDictionary dictionaryWithContentsOfFile:v5];
  strcpy(v12 + 8, "10.4.1");
  v14 = [v13 objectForKeyedSubscript:@"lastUpdated"];
  [v14 timeIntervalSinceReferenceDate];
  *v12 = v15;

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100026BAC;
  v19[3] = &unk_100092EC0;
  v19[4] = &v24;
  v19[5] = &v20;
  v19[6] = v12 + 18;
  v19[7] = v11;
  [v13 enumerateKeysAndObjectsUsingBlock:v19];
  if (v21[3])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v16 = [NSData alloc];
    v17 = [v16 initWithBytesNoCopy:v12 length:v25[3] + 18 freeWhenDone:1];
    v8 = [v17 writeToFile:v6 atomically:1];
    if (v8)
    {
      [v7 removeItemAtPath:v5 error:0];
    }
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

LABEL_15:
  return v8;
}

- (void)updateApplicationMetadataWithFilePath:(id)a3 currentDate:(id)a4 legacyPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSFileManager defaultManager];
  if (![(SPApplicationMetadataUpdater *)self migrateDataIfNecessaryFromOlderFormatFile:v10 newFormatFile:v8])
  {
    [v11 removeItemAtPath:v10 error:0];
    v15 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000629B8();
    }

    goto LABEL_14;
  }

  v12 = [(SPApplicationMetadataUpdater *)self lookupDict];
  [v12 removeAllObjects];

  [v9 timeIntervalSinceReferenceDate];
  v14 = v13;
  if ([v11 fileExistsAtPath:v8])
  {
    v15 = [[NSMutableData alloc] initWithContentsOfFile:v8];
    v16 = [v15 mutableBytes];
    if (!v16 || (v17 = v16, [v15 length]< 0x12) || strcmp(v17 + 8, "10.4.1"))
    {
      v18 = +[NSFileManager defaultManager];
      [v18 removeItemAtPath:v8 error:0];

LABEL_14:
      goto LABEL_15;
    }

    v64 = v9;
    v24 = *v17;
    *v17 = v14;
    if ([v15 length]>= 0x13)
    {
      v35 = 18;
      while (1)
      {
        v36 = &v17[v35];
        v37 = *&v17[v35 + 16];
        *buf = *&v17[v35];
        v69 = v37;
        v38 = *&v17[v35 + 32];
        v39 = *&v17[v35 + 48];
        v40 = *&v17[v35 + 64];
        v73 = *&v17[v35 + 80];
        v71 = v39;
        v72 = v40;
        v70 = v38;
        v41 = *&v17[v35 + 96];
        v42 = *&v17[v35 + 112];
        v43 = *&v17[v35 + 128];
        v77 = *&v17[v35 + 144];
        v75 = v42;
        v76 = v43;
        v74 = v41;
        [(SPApplicationMetadataUpdater *)self updateMetadata:buf lastUpdatedTime:v24 nowTime:v14];
        v44 = v69;
        *v36 = *buf;
        *(v36 + 1) = v44;
        v45 = v70;
        v46 = v71;
        v47 = v73;
        *(v36 + 4) = v72;
        *(v36 + 5) = v47;
        *(v36 + 2) = v45;
        *(v36 + 3) = v46;
        v48 = v74;
        v49 = v75;
        v50 = v76;
        *(v36 + 72) = v77;
        *(v36 + 7) = v49;
        *(v36 + 8) = v50;
        *(v36 + 6) = v48;
        v51 = v77;
        if ((v77 - 0x7FFF) <= 0x8002u)
        {
          break;
        }

        v52 = [[NSString alloc] initWithBytes:v36 + 146 length:v77 - 1 encoding:4];
        if (!v52)
        {
          v60 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            sub_1000629F8(v15, v35, v60);
          }

          goto LABEL_26;
        }

        v53 = v52;
        [NSNumber numberWithLongLong:v35];
        v62 = v35;
        v54 = v8;
        v55 = v10;
        v56 = v11;
        v58 = v57 = v17;
        v59 = [(SPApplicationMetadataUpdater *)self lookupDict];
        [v59 setObject:v58 forKeyedSubscript:v53];

        v17 = v57;
        v11 = v56;
        v10 = v55;
        v8 = v54;

        v35 = v51 + v62 + 146;
        if (v35 >= [v15 length])
        {
          goto LABEL_21;
        }
      }

      v60 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_100062A94();
      }

LABEL_26:
      v9 = v64;

      [v11 removeItemAtPath:v8 error:0];
      goto LABEL_14;
    }

LABEL_21:
    v9 = v64;
LABEL_11:
    v25 = objc_opt_new();
    [v25 setDay:-1];
    v26 = [(SPApplicationMetadataUpdater *)self calendar];
    v63 = v9;
    v27 = [v26 dateByAddingComponents:v25 toDate:v9 options:0];

    v61 = v27;
    [v27 timeIntervalSinceReferenceDate];
    v29 = [(SPApplicationMetadataUpdater *)self computeAppLaunchesFromTime:v24 toTime:v14 yesterday:v28];
    v30 = objc_opt_new();
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100027414;
    v65[3] = &unk_100092EE8;
    v65[4] = self;
    v15 = v15;
    v66 = v15;
    v31 = v30;
    v67 = v31;
    [v29 enumerateKeysAndObjectsUsingBlock:v65];
    v32 = [(SPApplicationMetadataUpdater *)self lookupDict];
    [v32 removeAllObjects];

    [v15 appendData:v31];
    [v15 writeToFile:v8 atomically:1];
    v33 = SPLogForSPLogCategoryDefault();
    v34 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v33, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      *buf = 138412290;
      *&buf[4] = v29;
      _os_log_impl(&_mh_execute_header, v33, ((v34 & 1) == 0), "updated app metadata with launches %@", buf, 0xCu);
    }

    v9 = v63;
    goto LABEL_14;
  }

  v19 = malloc_type_calloc(1uLL, 0x12uLL, 0x1000040B88D2812uLL);
  if (v19)
  {
    strcpy(v19 + 8, "10.4.1");
    *v19 = v14;
    v15 = [[NSMutableData alloc] initWithBytesNoCopy:v19 length:18 freeWhenDone:1];
    v20 = objc_opt_new();
    [v20 setWeekOfMonth:-1];
    v21 = [(SPApplicationMetadataUpdater *)self calendar];
    v22 = [v21 dateByAddingComponents:v20 toDate:v9 options:0];
    [v22 timeIntervalSinceReferenceDate];
    v24 = v23;

    goto LABEL_11;
  }

LABEL_15:
}

- (BOOL)incrementDataValues:(double *)a3 fromIndex:(unsigned int)a4 toIndex:(unsigned int)a5 byProportion:(double)a6
{
  if (a5 <= a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a5;
    v8 = &a3[a5];
    v10 = *v8;
    v9 = v8 - 1;
    v11 = v10;
    do
    {
      --v7;
      v12 = *v9;
      v13 = v11 + *v9 * a6;
      v11 = v12 - v12 * a6;
      *v9 = v11;
      v9[1] = v13;
      --v9;
      v6 |= v12 != 0.0;
    }

    while (v7 > a4);
  }

  return v6 & 1;
}

- (void)updateMetadata:(_app_metadata *)a3 lastUpdatedTime:(double)a4 nowTime:(double)a5
{
  v7 = a5 - a4;
  var1 = a3->var1;
  v9 = (a5 - var1) / 604800.0;
  v10 = var1 <= 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  if (v7 / 604800.0 >= v11)
  {
    v11 = v7 / 604800.0;
  }

  v12 = vcvtd_n_f64_s32(v11, 2uLL);
  if (v12 > 1.0)
  {
    v12 = 1.0;
  }

  if (v12 > 0.0 && [(SPApplicationMetadataUpdater *)self incrementDataValues:a3->var2 fromIndex:2 toIndex:15 byProportion:?])
  {
    a3->var1 = a5;
  }

  if (v7 / 86400.0 / 7.0 <= 1.0)
  {
    v13 = v7 / 86400.0 / 7.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = a3->var2[1];
  v15 = v13 * v14;
  if (v15 > 0.0)
  {
    v16 = v15 + a3->var2[2];
    v14 = v14 - v15;
    a3->var2[1] = v14;
    a3->var2[2] = v16;
  }

  v17 = a3->var2[0];
  if (v17 > 0.0)
  {
    a3->var2[1] = v17 + v14;
    a3->var2[0] = 0.0;
  }
}

- (id)computeAppLaunchesFromTime:(double)a3 toTime:(double)a4 yesterday:(double)a5
{
  v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
  v9 = SPLogForSPLogCategoryDefault();
  v10 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v9, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 138412546;
    v60 = v7;
    v61 = 2112;
    v62 = v8;
    _os_log_impl(&_mh_execute_header, v9, ((v10 & 1) == 0), "fetching app launches from %@ to %@", buf, 0x16u);
  }

  v11 = +[_DKKnowledgeStore knowledgeStore];
  v12 = objc_alloc_init(_DKEventQuery);
  v13 = +[_DKSystemEventStreams appInFocusStream];
  v58 = v13;
  v14 = [NSArray arrayWithObjects:&v58 count:1];
  [v12 setEventStreams:v14];

  v15 = [_DKQuery startDateSortDescriptorAscending:0];
  v57 = v15;
  v16 = [NSArray arrayWithObjects:&v57 count:1];
  [v12 setSortDescriptors:v16];

  [v12 setReadMetadata:1];
  v17 = [_DKQuery predicateForEventsWithStartInDateRangeFrom:v7 to:v8];
  [v12 setPredicate:v17];

  v55 = 0;
  v18 = [v11 executeQuery:v12 error:&v55];
  v19 = v55;
  if (v19)
  {
    v20 = &__NSDictionary0__struct;
  }

  else
  {
    v47 = v12;
    v48 = v11;
    v49 = v8;
    v50 = v7;
    v20 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v46 = v18;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v51 + 1) + 8 * i);
          v27 = [v26 stringValue];
          v28 = [v26 metadata];
          v29 = [v28 count];

          if (v29)
          {
            v29 = [v26 metadata];
            v30 = +[_DKApplicationMetadataKey extensionContainingBundleIdentifier];
            v31 = [v29 objectForKey:v30];

            v32 = [v31 length];
            LOBYTE(v29) = v32 != 0;
            if (v32)
            {
              v33 = v31;

              v27 = v33;
            }
          }

          v34 = [v20 objectForKey:v27];
          if (!v34)
          {
            v34 = [&off_100098FD0 mutableCopy];
            [v20 setObject:v34 forKey:v27];
          }

          v35 = [v26 startDate];
          [v35 timeIntervalSinceReferenceDate];
          v37 = v36;

          if ((v29 & 1) == 0)
          {
            v38 = [v34 objectAtIndexedSubscript:v37 <= a5];
            v39 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v38 unsignedIntegerValue] + 1);
            [v34 setObject:v39 atIndexedSubscript:v37 <= a5];
          }

          v40 = [v34 objectAtIndexedSubscript:2];
          [v40 doubleValue];
          v42 = v41;

          if (v42 == 0.0 || v37 < v42)
          {
            v44 = [NSNumber numberWithDouble:v37];
            [v34 setObject:v44 atIndexedSubscript:2];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v23);
    }

    v8 = v49;
    v7 = v50;
    v12 = v47;
    v11 = v48;
    v18 = v46;
    v19 = 0;
  }

  return v20;
}

@end