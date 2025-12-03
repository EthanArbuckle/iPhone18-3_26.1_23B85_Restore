@interface SSHTTPArchive
+ (double)_timeIntervalFromFilename:(id)filename;
+ (id)_JSONObjectForEntries:(id)entries;
+ (id)_JSONObjectForTaskMetrics:(id)metrics requestData:(id)data responseData:(id)responseData;
+ (id)_contentDictionaryForResponse:(id)response responseData:(id)data;
+ (id)_creatorDictionary;
+ (id)_dateFormatterForTimeZone:(id)zone;
+ (id)_entriesArrayForTaskMetrics:(id)metrics requestData:(id)data responseData:(id)responseData;
+ (id)_entryDictionaryForTaskMetrics:(id)metrics requestData:(id)data responseData:(id)responseData;
+ (id)_generateCommentsForTaskMetrics:(id)metrics;
+ (id)_headersArrayForHTTPHeaders:(id)headers;
+ (id)_localIPAddress;
+ (id)_requestDictionaryForTaskTransactionMetrics:(id)metrics requestData:(id)data;
+ (id)_responseDictionaryForTaskMetrics:(id)metrics responseData:(id)data;
+ (id)_stringFromDate:(id)date;
+ (id)merge:(id)merge;
+ (id)merge:(id)merge withEstimatedFileSizeLimit:(unint64_t)limit;
+ (id)outputDirectoryForLogConfig:(id)config;
+ (void)removeLogsWithLogConfig:(id)config olderThanDate:(id)date;
+ (void)sendWriteAllLogsToDiskDecompressedNotification;
+ (void)sendWriteAllLogsToDiskNotification;
- (BOOL)writeToDiskWithLogConfig:(id)config compressed:(BOOL)compressed error:(id *)error;
- (NSData)JSONData;
- (NSDictionary)JSONObject;
- (NSString)JSONString;
- (SSHTTPArchive)initWithJSONObject:(id)object;
- (SSHTTPArchive)initWithTaskMetrics:(id)metrics requestData:(id)data responseData:(id)responseData;
@end

@implementation SSHTTPArchive

- (SSHTTPArchive)initWithJSONObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = SSHTTPArchive;
  v5 = [(SSHTTPArchive *)&v14 init];
  if (v5)
  {
    v6 = SSViTunesStoreFramework();
    v7 = SSVWeakLinkedSymbolForString("ISCopyGzippedDataForData", v6);
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:objectCopy])
    {
      v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:objectCopy options:0 error:0];
    }

    else
    {
      v8 = 0;
    }

    v9 = v7(v8);
    v10 = v9;
    v11 = v9 != 0;
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    objc_storeStrong(&v5->_backingJSONData, v12);
    v5->_compressed = v11;
  }

  return v5;
}

- (SSHTTPArchive)initWithTaskMetrics:(id)metrics requestData:(id)data responseData:(id)responseData
{
  responseDataCopy = responseData;
  dataCopy = data;
  metricsCopy = metrics;
  v11 = [objc_opt_class() _JSONObjectForTaskMetrics:metricsCopy requestData:dataCopy responseData:responseDataCopy];

  v12 = [(SSHTTPArchive *)self initWithJSONObject:v11];
  return v12;
}

- (NSData)JSONData
{
  if ([(SSHTTPArchive *)self compressed])
  {
    v3 = SSViTunesStoreFramework();
    v4 = SSVWeakLinkedSymbolForString("ISCopyDecompressedGZipDataForData", v3);
    backingJSONData = [(SSHTTPArchive *)self backingJSONData];
    backingJSONData2 = v4();
  }

  else
  {
    backingJSONData2 = [(SSHTTPArchive *)self backingJSONData];
  }

  return backingJSONData2;
}

- (NSDictionary)JSONObject
{
  v2 = MEMORY[0x1E696ACB0];
  jSONData = [(SSHTTPArchive *)self JSONData];
  v4 = [v2 JSONObjectWithData:jSONData options:0 error:0];

  return v4;
}

- (NSString)JSONString
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  jSONData = [(SSHTTPArchive *)self JSONData];
  v5 = [v3 initWithData:jSONData encoding:4];

  return v5;
}

+ (id)merge:(id)merge
{
  v23 = *MEMORY[0x1E69E9840];
  mergeCopy = merge;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = mergeCopy;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        jSONObject = [v9 JSONObject];
        v12 = [jSONObject objectForKeyedSubscript:@"log"];
        v13 = [v12 objectForKeyedSubscript:@"entries"];

        if (v13)
        {
          [v17 addObjectsFromArray:v13];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v14 = [objc_opt_class() _JSONObjectForEntries:v17];
  v15 = [objc_alloc(objc_opt_class()) initWithJSONObject:v14];

  return v15;
}

+ (id)merge:(id)merge withEstimatedFileSizeLimit:(unint64_t)limit
{
  selfCopy = self;
  v32 = *MEMORY[0x1E69E9840];
  mergeCopy = merge;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = mergeCopy;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v26 = 1000 * limit;
    v10 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        jSONObject = [v12 JSONObject];
        v15 = [jSONObject objectForKeyedSubscript:@"log"];
        v16 = [v15 objectForKeyedSubscript:@"entries"];

        if (v16)
        {
          [v6 addObjectsFromArray:v16];
        }

        jSONData = [v12 JSONData];
        v9 += [jSONData length];

        if (v9 > v26)
        {
          v18 = [objc_opt_class() _JSONObjectForEntries:v6];
          v19 = [objc_alloc(objc_opt_class()) initWithJSONObject:v18];
          [v24 addObject:v19];

          [v6 removeAllObjects];
        }

        objc_autoreleasePoolPop(v13);
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v20 = [objc_opt_class() _JSONObjectForEntries:v6];
    v21 = [objc_alloc(objc_opt_class()) initWithJSONObject:v20];
    [v24 addObject:v21];
  }

  return v24;
}

+ (id)outputDirectoryForLogConfig:(id)config
{
  configCopy = config;
  if (!configCopy)
  {
    configCopy = +[SSLogConfig sharedConfig];
  }

  outputDirectory = [configCopy outputDirectory];
  v5 = [outputDirectory stringByAppendingPathComponent:@"HTTPArchives"];

  return v5;
}

+ (void)removeLogsWithLogConfig:(id)config olderThanDate:(id)date
{
  v81 = *MEMORY[0x1E69E9840];
  configCopy = config;
  dateCopy = date;
  if (!configCopy)
  {
    configCopy = +[SSLogConfig sharedConfig];
  }

  v8 = [objc_opt_class() outputDirectoryForLogConfig:configCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [defaultManager fileExistsAtPath:v8];

  if ((v10 & 1) == 0)
  {
    v15 = configCopy;
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v56 = shouldLog | 2;
    }

    else
    {
      v56 = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v58 = v56;
    }

    else
    {
      v58 = v56 & 2;
    }

    if (v58)
    {
      v76 = 138412290;
      v77 = v8;
      LODWORD(v67) = 12;
      v59 = _os_log_send_and_compose_impl();

      if (!v59)
      {
        goto LABEL_53;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v59 encoding:{4, &v76, v67}];
      free(v59);
      SSFileLog(v15, @"%@", v60, v61, v62, v63, v64, v65, oSLogObject);
    }

    goto LABEL_53;
  }

  v68 = dateCopy;
  [dateCopy timeIntervalSinceReferenceDate];
  v12 = v11;
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = [defaultManager2 enumeratorAtPath:v8];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = v16;
  v18 = *v73;
  v69 = *v73;
  do
  {
    v19 = 0;
    v70 = v17;
    do
    {
      if (*v73 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v72 + 1) + 8 * v19);
      [self _timeIntervalFromFilename:{v20, v66}];
      if (v21 != 1.79769313e308 && v21 <= v12)
      {
        selfCopy = self;
        v24 = v15;
        v25 = v8;
        v26 = [v8 stringByAppendingPathComponent:v20];
        v27 = configCopy;
        v28 = v27;
        v29 = configCopy;
        if (!configCopy)
        {
          v28 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v28 shouldLog];
        if ([v28 shouldLogToDisk])
        {
          shouldLog2 |= 2u;
        }

        oSLogObject2 = [v28 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v32 = shouldLog2;
        }

        else
        {
          v32 = shouldLog2 & 2;
        }

        if (v32)
        {
          v76 = 138412290;
          v77 = v26;
          LODWORD(v67) = 12;
          v66 = &v76;
          v33 = _os_log_send_and_compose_impl();

          if (v33)
          {
            oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v33 encoding:{4, &v76, v67}];
            free(v33);
            SSFileLog(v28, @"%@", v34, v35, v36, v37, v38, v39, oSLogObject2);
            goto LABEL_23;
          }
        }

        else
        {
LABEL_23:
        }

        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v71 = 0;
        v41 = [defaultManager3 removeItemAtPath:v26 error:&v71];
        v42 = v71;

        if ((v41 & 1) == 0)
        {
          v43 = v27;
          if (!v29)
          {
            v43 = +[SSLogConfig sharedConfig];
          }

          v44 = v43;
          shouldLog3 = [v43 shouldLog];
          if ([v44 shouldLogToDisk])
          {
            shouldLog3 |= 2u;
          }

          oSLogObject3 = [v44 OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
          {
            v47 = shouldLog3;
          }

          else
          {
            v47 = shouldLog3 & 2;
          }

          if (v47)
          {
            v76 = 138412546;
            v77 = v26;
            v78 = 2112;
            v79 = v42;
            LODWORD(v67) = 22;
            v66 = &v76;
            v48 = _os_log_send_and_compose_impl();

            if (v48)
            {
              oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v48 encoding:{4, &v76, v67}];
              free(v48);
              SSFileLog(v44, @"%@", v49, v50, v51, v52, v53, v54, oSLogObject3);
              goto LABEL_35;
            }
          }

          else
          {
LABEL_35:
          }
        }

        v8 = v25;
        configCopy = v29;
        v15 = v24;
        self = selfCopy;
        v18 = v69;
        v17 = v70;
      }

      ++v19;
    }

    while (v17 != v19);
    v17 = [v15 countByEnumeratingWithState:&v72 objects:v80 count:16];
  }

  while (v17);
LABEL_40:

  dateCopy = v68;
LABEL_53:
}

+ (void)sendWriteAllLogsToDiskNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SSHTTPArchiveShouldSaveToDiskNotification", 0, 0, 1u);
}

+ (void)sendWriteAllLogsToDiskDecompressedNotification
{
  v2 = [objc_alloc(MEMORY[0x1E698D028]) initWithBundleIDs:0 states:0];
  v3 = [v2 applicationStateForApplication:@"com.apple.AppStore"];
  v4 = v3;
  NSLog(&cfstr_AppStoreStates.isa, v3);
  if (v4 == 2)
  {
    v5 = SSVFrontBoardServicesFramework();
    v6 = SSVWeakLinkedStringConstantForString("FBSOpenApplicationOptionKeyActivateSuspended", v5);
    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E695DF90]);
      v8 = [v7 initWithObjectsAndKeys:{MEMORY[0x1E695E118], v6, 0}];
      v9 = SSVFrontBoardServicesFramework();
      v10 = objc_alloc_init(SSVWeakLinkedClassForString(&cfstr_Fbssystemservi.isa, v9));
      v11 = dispatch_semaphore_create(0);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __63__SSHTTPArchive_sendWriteAllLogsToDiskDecompressedNotification__block_invoke;
      v14[3] = &unk_1E84B1C40;
      v15 = v2;
      v16 = v11;
      v12 = v11;
      [v10 openApplication:@"com.apple.AppStore" options:v8 withResult:v14];
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      [v2 invalidate];
    }
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SSHTTPArchiveShouldSaveToDiskDecompressedNotification", 0, 0, 1u);
    [v2 invalidate];
  }
}

intptr_t __63__SSHTTPArchive_sendWriteAllLogsToDiskDecompressedNotification__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  NSLog(&cfstr_LaunchedAppSto.isa, v4, [v3 applicationStateForApplication:@"com.apple.AppStore"]);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SSHTTPArchiveShouldSaveToDiskDecompressedNotification", 0, 0, 1u);
  [*(a1 + 32) invalidate];
  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

- (BOOL)writeToDiskWithLogConfig:(id)config compressed:(BOOL)compressed error:(id *)error
{
  compressedCopy = compressed;
  v66 = *MEMORY[0x1E69E9840];
  configCopy = config;
  if (!configCopy)
  {
    configCopy = +[SSLogConfig sharedConfig];
  }

  v9 = [objc_opt_class() outputDirectoryForLogConfig:configCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [defaultManager fileExistsAtPath:v9];

  if (v11)
  {
    v12 = 0;
    goto LABEL_6;
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v61 = 0;
  v14 = [defaultManager2 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v61];
  v12 = v61;

  if ((v14 & 1) == 0)
  {
    v24 = configCopy;
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v27 = shouldLog;
    }

    else
    {
      v27 = shouldLog & 2;
    }

    if (v27)
    {
      v62 = 138412546;
      v63 = v9;
      v64 = 2112;
      v65 = v12;
      LODWORD(v55) = 22;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
        goto LABEL_23;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, &v62, v55}];
      free(v28);
      SSFileLog(v24, @"%@", v29, v30, v31, v32, v33, v34, oSLogObject);
    }

LABEL_23:
    if (SSFileIsLocalWritable(v9))
    {
      v35 = 0;
      if (!error)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    goto LABEL_26;
  }

LABEL_6:
  if (!SSFileIsLocalWritable(v9))
  {
LABEL_26:
    v36 = SSError(@"SSErrorDomain", 107, 0, 0);
    v35 = 0;
    v37 = v12;
    goto LABEL_51;
  }

  v15 = @".har";
  errorCopy = error;
  if ([(SSHTTPArchive *)self compressed]&& compressedCopy)
  {
    v15 = [@".har" stringByAppendingString:@".compressed"];
  }

  v16 = MEMORY[0x1E696AEC0];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
  v57 = v15;
  v21 = [v16 stringWithFormat:@"%@_%f%@", bundleIdentifier, v20, v15];

  v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
  v58 = v21;
  v23 = [v22 URLByAppendingPathComponent:v21];

  if (compressedCopy)
  {
    [(SSHTTPArchive *)self backingJSONData];
  }

  else
  {
    [(SSHTTPArchive *)self JSONData];
  }
  v38 = ;
  v60 = v12;
  v35 = [v38 writeToURL:v23 options:1 error:&v60];
  v36 = v60;

  v39 = configCopy;
  v40 = v39;
  v37 = v57;
  if (v35)
  {
    if (!v39)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v40 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v43 = shouldLog2;
    }

    else
    {
      v43 = shouldLog2 & 2;
    }

    if (!v43)
    {
      goto LABEL_49;
    }

    v62 = 138412290;
    v63 = v23;
    LODWORD(v56) = 12;
  }

  else
  {
    if (!v39)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject2 = [v40 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v45 = shouldLog3;
    }

    else
    {
      v45 = shouldLog3 & 2;
    }

    if (!v45)
    {
      goto LABEL_49;
    }

    v62 = 138412290;
    v63 = v36;
    LODWORD(v56) = 12;
  }

  v46 = _os_log_send_and_compose_impl();

  if (v46)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v46 encoding:{4, &v62, v56}];
    free(v46);
    SSFileLog(v40, @"%@", v47, v48, v49, v50, v51, v52, oSLogObject2);
LABEL_49:
  }

  error = errorCopy;
LABEL_51:

  v12 = v36;
  if (error)
  {
LABEL_52:
    v53 = v12;
    *error = v12;
  }

LABEL_53:

  return v35;
}

+ (id)_contentDictionaryForResponse:(id)response responseData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v6 = MEMORY[0x1E695DF90];
    responseCopy = response;
    v8 = objc_alloc_init(v6);
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(responseCopy, "expectedContentLength")}];
    [v8 setObject:v9 forKeyedSubscript:@"bodySize"];

    mIMEType = [responseCopy MIMEType];

    if ([mIMEType length])
    {
      [v8 setObject:mIMEType forKeyedSubscript:@"mimeType"];
    }

    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
    v12 = [v11 length];
    if (v12)
    {
      v13 = v12;
      ShouldIncludeFullResponseBodiesInNetworkLogs = SSDebugShouldIncludeFullResponseBodiesInNetworkLogs();
      v15 = [dataCopy length];
      if ((ShouldIncludeFullResponseBodiesInNetworkLogs & 1) == 0 && v15 >= 0x9C41)
      {
        if (v13 <= (v13 / [dataCopy length] * 40000.0))
        {
          v16 = 0;
        }

        else
        {
          v16 = [v11 substringToIndex:?];
        }

        v11 = v16;
      }
    }

    if ([v11 length])
    {
      [v8 setObject:v11 forKeyedSubscript:@"text"];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  return v8;
}

+ (id)_creatorDictionary
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = +[SSDevice currentDevice];
  userAgent = [v2 userAgent];

  v4 = +[SSDevice currentDevice];
  clientVersion = [v4 clientVersion];

  if (!userAgent)
  {
    userAgent = @"UNKNOWN";
  }

  if (!clientVersion)
  {
    clientVersion = @"UNKNOWN";
  }

  v8[0] = @"name";
  v8[1] = @"version";
  v9[0] = userAgent;
  v9[1] = clientVersion;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (id)_dateFormatterForTimeZone:(id)zone
{
  zoneCopy = zone;
  if (_dateFormatterForTimeZone__onceToken != -1)
  {
    +[SSHTTPArchive _dateFormatterForTimeZone:];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__53;
  v20 = __Block_byref_object_dispose__53;
  v21 = 0;
  v4 = _dateFormatterForTimeZone__dateFormatterAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SSHTTPArchive__dateFormatterForTimeZone___block_invoke_76;
  block[3] = &unk_1E84ABF40;
  v15 = &v16;
  v5 = zoneCopy;
  v14 = v5;
  dispatch_sync(v4, block);
  v6 = v17[5];
  if (!v6)
  {
    v7 = _dateFormatterForTimeZone__dateFormatterAccessQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__SSHTTPArchive__dateFormatterForTimeZone___block_invoke_2;
    v10[3] = &unk_1E84ABF40;
    v12 = &v16;
    v11 = v5;
    dispatch_barrier_sync(v7, v10);

    v6 = v17[5];
  }

  v8 = v6;

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __43__SSHTTPArchive__dateFormatterForTimeZone___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSHTTPArchive", MEMORY[0x1E69E96A8]);
  v1 = _dateFormatterForTimeZone__dateFormatterAccessQueue;
  _dateFormatterForTimeZone__dateFormatterAccessQueue = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = _dateFormatterForTimeZone__dateFormatters;
  _dateFormatterForTimeZone__dateFormatters = v2;
}

void __43__SSHTTPArchive__dateFormatterForTimeZone___block_invoke_76(uint64_t a1)
{
  v2 = [_dateFormatterForTimeZone__dateFormatters objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __43__SSHTTPArchive__dateFormatterForTimeZone___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 40) + 8) + 40) setDateFormat:@"uuuu-MM-dd'T'HH:mm:ss.sXXX"];
  [*(*(*(a1 + 40) + 8) + 40) setTimeZone:*(a1 + 32)];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v5 setLocale:v6];

  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = _dateFormatterForTimeZone__dateFormatters;

  return [v9 setObject:v8 forKeyedSubscript:v7];
}

+ (id)_entriesArrayForTaskMetrics:(id)metrics requestData:(id)data responseData:(id)responseData
{
  v24 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  dataCopy = data;
  responseDataCopy = responseData;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  transactionMetrics = [metricsCopy transactionMetrics];
  v13 = [transactionMetrics countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(transactionMetrics);
        }

        v17 = [self _entryDictionaryForTaskMetrics:*(*(&v19 + 1) + 8 * i) requestData:dataCopy responseData:responseDataCopy];
        [v11 addObject:v17];
      }

      v14 = [transactionMetrics countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

+ (id)_entryDictionaryForTaskMetrics:(id)metrics requestData:(id)data responseData:(id)responseData
{
  v8 = MEMORY[0x1E695DF90];
  responseDataCopy = responseData;
  dataCopy = data;
  metricsCopy = metrics;
  v12 = objc_alloc_init(v8);
  fetchStartDate = [metricsCopy fetchStartDate];
  v14 = [self _stringFromDate:fetchStartDate];
  [v12 setObject:v14 forKeyedSubscript:@"startedDateTime"];

  responseEndDate = [metricsCopy responseEndDate];
  requestStartDate = [metricsCopy requestStartDate];
  [responseEndDate timeIntervalSinceDate:requestStartDate];
  v18 = v17 * 1000.0;

  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  [v12 setObject:v19 forKeyedSubscript:@"time"];

  v20 = [self _requestDictionaryForTaskTransactionMetrics:metricsCopy requestData:dataCopy];

  [v12 setObject:v20 forKeyedSubscript:@"request"];
  v21 = [self _responseDictionaryForTaskMetrics:metricsCopy responseData:responseDataCopy];

  [v12 setObject:v21 forKeyedSubscript:@"response"];
  v22 = [self _generateCommentsForTaskMetrics:metricsCopy];

  [v12 setObject:v22 forKeyedSubscript:@"comment"];

  return v12;
}

+ (id)_headersArrayForHTTPHeaders:(id)headers
{
  v21 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [headersCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v18[1] = @"value";
        v19[0] = v9;
        v18[0] = @"name";
        v10 = [headersCopy objectForKeyedSubscript:?];
        v19[1] = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
        [v4 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)_JSONObjectForEntries:(id)entries
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  entriesCopy = entries;
  v6 = objc_alloc_init(v4);
  [v6 setObject:@"1.2" forKeyedSubscript:@"version"];
  _creatorDictionary = [self _creatorDictionary];
  [v6 setObject:_creatorDictionary forKeyedSubscript:@"creator"];

  [v6 setObject:entriesCopy forKeyedSubscript:@"entries"];
  v10 = @"log";
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

+ (id)_JSONObjectForTaskMetrics:(id)metrics requestData:(id)data responseData:(id)responseData
{
  v6 = [self _entriesArrayForTaskMetrics:metrics requestData:data responseData:responseData];
  v7 = [self _JSONObjectForEntries:v6];

  return v7;
}

+ (id)_generateCommentsForTaskMetrics:(id)metrics
{
  v4 = MEMORY[0x1E695DF90];
  metricsCopy = metrics;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(metricsCopy, "_apsRelayAttempted")}];
  [v6 setObject:v7 forKeyedSubscript:@"APS-Attempted"];

  v8 = MEMORY[0x1E696AD98];
  _apsRelaySucceeded = [metricsCopy _apsRelaySucceeded];

  v10 = [v8 numberWithBool:_apsRelaySucceeded];
  [v6 setObject:v10 forKeyedSubscript:@"APS-Succeeded"];

  _localIPAddress = [self _localIPAddress];
  [v6 setObject:_localIPAddress forKeyedSubscript:@"clientIPAddress"];

  v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:1 error:0];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v12 encoding:4];
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &stru_1F503F418;
  }

  v15 = v14;

  return v14;
}

+ (id)_localIPAddress
{
  v10 = 0;
  v2 = getifaddrs(&v10);
  v3 = v10;
  v4 = @"error";
  if (!v2 && v10)
  {
    do
    {
      if (v3->ifa_addr->sa_family == 2)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3->ifa_name];
        v6 = [v5 isEqualToString:@"en0"];

        if (v6)
        {
          v7.s_addr = *&v3->ifa_addr->sa_data[2];
          v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:inet_ntoa(v7)];

          v4 = v8;
        }
      }

      v3 = v3->ifa_next;
    }

    while (v3);
    v3 = v10;
  }

  MEMORY[0x1DA6DF780](v3);

  return v4;
}

+ (id)_requestDictionaryForTaskTransactionMetrics:(id)metrics requestData:(id)data
{
  v27[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  request = [metrics request];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  [v8 setObject:v9 forKeyedSubscript:@"bodySize"];

  allHTTPHeaderFields = [request allHTTPHeaderFields];
  v11 = [self _headersArrayForHTTPHeaders:allHTTPHeaderFields];
  [v8 setObject:v11 forKeyedSubscript:@"headers"];

  [v8 setObject:&unk_1F507A240 forKeyedSubscript:@"headersSize"];
  [v8 setObject:@"HTTP/1.1" forKeyedSubscript:@"httpVersion"];
  hTTPMethod = [request HTTPMethod];
  if ([hTTPMethod length])
  {
    [v8 setObject:hTTPMethod forKeyedSubscript:@"method"];
  }

  v13 = [request URL];
  absoluteString = [v13 absoluteString];

  if ([absoluteString length])
  {
    [v8 setObject:absoluteString forKeyedSubscript:@"url"];
  }

  if (SSDebugShouldLogFullMetricsRequest())
  {
    v15 = [absoluteString containsString:@"xp.apple.com"];
    if (!dataCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
    if (!dataCopy)
    {
LABEL_12:
      v18 = 0;
      goto LABEL_13;
    }
  }

  if (!(([dataCopy length] < 0x9C41) | v15 & 1))
  {
    goto LABEL_12;
  }

  v16 = SSViTunesStoreFramework();
  v17 = SSVWeakLinkedSymbolForString("ISCopyDecompressedGZipDataForData", v16);
  v18 = v17(dataCopy);
  if (!v18)
  {
    v18 = dataCopy;
  }

LABEL_13:
  if ([absoluteString containsString:@"/WebObjects/MZFinance.woa/wa/authenticate"])
  {
    v19 = [MEMORY[0x1E696AE40] propertyListWithData:v18 options:1 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
      v21 = [v20 valueForKey:@"password"];

      if (v21)
      {
        [v20 setValue:@"REDACTED" forKey:@"password"];
        v22 = [MEMORY[0x1E696AE40] dataWithPropertyList:v20 format:100 options:0 error:0];

        v18 = v22;
      }
    }
  }

  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v18 encoding:4];
  if ([v23 length])
  {
    v26 = @"text";
    v27[0] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v8 setObject:v24 forKeyedSubscript:@"postData"];
  }

  return v8;
}

+ (id)_responseDictionaryForTaskMetrics:(id)metrics responseData:(id)data
{
  v29[2] = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  dataCopy = data;
  response = [metricsCopy response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = response;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = [self _contentDictionaryForResponse:v10 responseData:dataCopy];
    [v11 setObject:v12 forKeyedSubscript:@"content"];

    v13 = MEMORY[0x1E695DF70];
    allHeaderFields = [v10 allHeaderFields];
    v15 = [self _headersArrayForHTTPHeaders:allHeaderFields];
    v16 = [v13 arrayWithArray:v15];

    resourceFetchType = [metricsCopy resourceFetchType];
    v28[0] = @"name";
    v28[1] = @"value";
    v18 = @"false";
    if (resourceFetchType == 3)
    {
      v18 = @"true";
    }

    v29[0] = @"X-Apple-Connection-Reused";
    v29[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    [v16 addObject:v19];

    [v11 setObject:v16 forKeyedSubscript:@"headers"];
    [v11 setObject:&unk_1F507A240 forKeyedSubscript:@"headersSize"];
    [v11 setObject:@"HTTP/1.1" forKeyedSubscript:@"httpVersion"];
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "statusCode")}];
    [v11 setObject:v20 forKeyedSubscript:@"status"];

    v21 = [MEMORY[0x1E696AC68] localizedStringForStatusCode:{objc_msgSend(v10, "statusCode")}];
    if ([v21 length])
    {
      [v11 setObject:v21 forKeyedSubscript:@"statusText"];
    }

    allHeaderFields2 = [v10 allHeaderFields];
    v23 = [allHeaderFields2 objectForKeyedSubscript:@"Content-Length"];

    v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v23, "integerValue")}];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = &unk_1F507A240;
    }

    [v11 setObject:v26 forKeyedSubscript:@"bodySize"];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  return v11;
}

+ (id)_stringFromDate:(id)date
{
  v4 = MEMORY[0x1E695DFE8];
  dateCopy = date;
  systemTimeZone = [v4 systemTimeZone];
  v7 = [self _dateFormatterForTimeZone:systemTimeZone];
  v8 = [v7 stringFromDate:dateCopy];

  return v8;
}

+ (double)_timeIntervalFromFilename:(id)filename
{
  filenameCopy = filename;
  if ([filenameCopy containsString:@".har"])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [filenameCopy stringByReplacingOccurrencesOfString:@".har" withString:&stru_1F503F418];

    filenameCopy = [v5 stringByReplacingOccurrencesOfString:@".compressed" withString:&stru_1F503F418];

    v6 = [filenameCopy componentsSeparatedByString:@"_"];
    if ([v6 count] == 2)
    {
      v7 = [v6 objectAtIndexedSubscript:1];
      v8 = [MEMORY[0x1E696AE88] scannerWithString:v7];
      v11 = 0.0;
      if ([v8 scanDouble:&v11])
      {
        v9 = v11;
      }

      else
      {
        v9 = 1.79769313e308;
      }
    }

    else
    {
      v9 = 1.79769313e308;
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v9 = 1.79769313e308;
  }

  return v9;
}

@end