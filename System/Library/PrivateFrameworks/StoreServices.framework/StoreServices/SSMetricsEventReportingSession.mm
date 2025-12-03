@interface SSMetricsEventReportingSession
- (BOOL)anyUnreportedEvents;
- (BOOL)markEventsAsReported;
- (SSMetricsEventReportingSession)initWithReportingURL:(id)l insertTimestamp:(int64_t)timestamp eventController:(id)controller;
- (SSMetricsEventReportingSession)initWithReportingURL:(id)l insertTimestamp:(int64_t)timestamp suppressUserInfo:(BOOL)info eventController:(id)controller;
- (id)_unreportedEvents;
- (id)sessionCanaryIdentifier;
- (id)writeEventsToStream:(id)stream uncompressedMaxSize:(int64_t)size;
- (int64_t)_estimateSizeOfJsonObject:(id)object;
- (void)_writeString:(id)string toData:(id)data;
@end

@implementation SSMetricsEventReportingSession

- (SSMetricsEventReportingSession)initWithReportingURL:(id)l insertTimestamp:(int64_t)timestamp eventController:(id)controller
{
  lCopy = l;
  controllerCopy = controller;
  v11 = [(SSMetricsEventReportingSession *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_insertTimestamp = timestamp;
    unreportedEvents = v11->_unreportedEvents;
    v11->_unreportedEvents = 0;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unreportedEventPIDs = v12->_unreportedEventPIDs;
    v12->_unreportedEventPIDs = v14;

    objc_storeStrong(&v12->_eventController, controller);
    objc_storeStrong(&v12->_reportingURL, l);
  }

  return v12;
}

- (SSMetricsEventReportingSession)initWithReportingURL:(id)l insertTimestamp:(int64_t)timestamp suppressUserInfo:(BOOL)info eventController:(id)controller
{
  result = [(SSMetricsEventReportingSession *)self initWithReportingURL:l insertTimestamp:timestamp eventController:controller];
  if (result)
  {
    result->_suppressUserInfo = info;
  }

  return result;
}

- (BOOL)anyUnreportedEvents
{
  _unreportedEvents = [(SSMetricsEventReportingSession *)self _unreportedEvents];
  v3 = [_unreportedEvents count] != 0;

  return v3;
}

- (BOOL)markEventsAsReported
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    unreportedEventPIDs = self->_unreportedEventPIDs;
    v9 = v7;
    v22 = 138412546;
    v23 = v7;
    v24 = 1024;
    v25 = [(NSMutableArray *)unreportedEventPIDs count];
    LODWORD(v21) = 18;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v22, v21}];
    free(v10);
    SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
  }

LABEL_12:
  if (![(NSMutableArray *)self->_unreportedEventPIDs count])
  {
    return 0;
  }

  v17 = [(SSMetricsEventController *)self->_eventController markEventsAsReported:self->_unreportedEventPIDs];
  v18 = self->_unreportedEventPIDs;
  self->_unreportedEventPIDs = 0;

  unreportedEvents = self->_unreportedEvents;
  self->_unreportedEvents = 0;

  return v17;
}

- (id)sessionCanaryIdentifier
{
  v20 = *MEMORY[0x1E69E9840];
  sessionCanaryIdentifier = self->_sessionCanaryIdentifier;
  if (sessionCanaryIdentifier)
  {
    v3 = sessionCanaryIdentifier;
  }

  else
  {
    [(SSMetricsEventReportingSession *)self _unreportedEvents];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        reportingDictionary = [*(*(&v15 + 1) + 8 * v9) reportingDictionary];
        v11 = [reportingDictionary objectForKey:@"canary"];

        if (v11)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v11 = 0;
    }

    v12 = [v11 copy];
    v13 = self->_sessionCanaryIdentifier;
    self->_sessionCanaryIdentifier = v12;

    v3 = self->_sessionCanaryIdentifier;
  }

  return v3;
}

- (id)writeEventsToStream:(id)stream uncompressedMaxSize:(int64_t)size
{
  v108 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  _unreportedEvents = [(SSMetricsEventReportingSession *)self _unreportedEvents];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  unreportedEventPIDs = self->_unreportedEventPIDs;
  self->_unreportedEventPIDs = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sessionCanaryIdentifier = [(SSMetricsEventReportingSession *)self sessionCanaryIdentifier];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = _unreportedEvents;
  v90 = v8;
  selfCopy = self;
  v94 = [obj countByEnumeratingWithState:&v97 objects:v107 count:16];
  if (v94)
  {
    v10 = 0;
    v93 = *v98;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v98 != v93)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v97 + 1) + 8 * v11);
      if ((size & 0x8000000000000000) == 0 && v10 > size)
      {
        goto LABEL_27;
      }

      reportingDictionary = [*(*(&v97 + 1) + 8 * v11) reportingDictionary];
      v14 = [reportingDictionary objectForKey:@"canary"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:sessionCanaryIdentifier])
      {

        goto LABEL_27;
      }

      v16 = self->_unreportedEventPIDs;
      v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "persistentID")}];
      [(NSMutableArray *)v16 addObject:v17];

      v18 = [(SSMetricsEventReportingSession *)self _estimateSizeOfJsonObject:reportingDictionary];
      if (v18 < 0)
      {
        break;
      }

      v10 += v18;
      [v8 addObject:reportingDictionary];
LABEL_23:

      if (v94 == ++v11)
      {
        v94 = [obj countByEnumeratingWithState:&v97 objects:v107 count:16];
        if (v94)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

    v19 = sessionCanaryIdentifier;
    v20 = [reportingDictionary objectForKeyedSubscript:@"topic"];
    v21 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v21 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v24 = objc_opt_class();
      v101 = 138412546;
      v102 = v24;
      v103 = 2112;
      v104[0] = v20;
      v25 = v24;
      LODWORD(v88) = 22;
      v87 = &v101;
      v26 = _os_log_send_and_compose_impl();

      v8 = v90;
      if (!v26)
      {
LABEL_22:

        sessionCanaryIdentifier = v19;
        self = selfCopy;
        goto LABEL_23;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v101, v88}];
      free(v26);
      SSFileLog(v21, @"%@", v27, v28, v29, v30, v31, v32, oSLogObject);
    }

    goto LABEL_22;
  }

LABEL_27:

  if ([v8 count])
  {
    v106[0] = &unk_1F507A358;
    v105[0] = @"deliveryVersion";
    v105[1] = @"postTime";
    v33 = MEMORY[0x1E696AD98];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v36 = [v33 numberWithInteger:(v35 * 1000.0)];
    v105[2] = @"events";
    v106[1] = v36;
    v106[2] = v8;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:3];

    v96 = 0;
    v38 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v37 options:0 error:&v96];
    oSLogObject4 = v96;
    if (oSLogObject4)
    {
      v40 = +[SSLogConfig sharedStoreServicesConfig];
      v41 = streamCopy;
      if (!v40)
      {
        v40 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v40 shouldLog];
      if ([v40 shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      oSLogObject2 = [v40 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v44 = shouldLog2;
      }

      else
      {
        v44 = shouldLog2 & 2;
      }

      if (!v44)
      {
        goto LABEL_74;
      }

      v45 = objc_opt_class();
      v101 = 138543619;
      v102 = v45;
      v103 = 2113;
      v104[0] = v37;
      v46 = v45;
      LODWORD(v88) = 22;
      v47 = _os_log_send_and_compose_impl();

      if (!v47)
      {
        goto LABEL_75;
      }

      goto LABEL_73;
    }

    v58 = sessionCanaryIdentifier;
    v41 = streamCopy;
    v59 = [streamCopy write:objc_msgSend(v38 maxLength:{"bytes"), objc_msgSend(v38, "length")}];
    v60 = [v38 length];
    v61 = +[SSLogConfig sharedStoreServicesConfig];
    v40 = v61;
    if (v59 != v60)
    {
      if (!v61)
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
        v76 = shouldLog3;
      }

      else
      {
        v76 = shouldLog3 & 2;
      }

      if (!v76)
      {
        sessionCanaryIdentifier = v58;
        goto LABEL_74;
      }

      v77 = objc_opt_class();
      v78 = v77;
      v79 = [v38 length];
      v101 = 138543874;
      v102 = v77;
      v103 = 1026;
      LODWORD(v104[0]) = v59;
      WORD2(v104[0]) = 2050;
      *(v104 + 6) = v79;
      LODWORD(v88) = 28;
      v47 = _os_log_send_and_compose_impl();

      v41 = streamCopy;
      sessionCanaryIdentifier = v58;
      if (!v47)
      {
LABEL_75:

        v51 = 0;
LABEL_76:

        v8 = v90;
        goto LABEL_77;
      }

LABEL_73:
      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:{4, &v101, v88}];
      free(v47);
      SSFileLog(v40, @"%@", v80, v81, v82, v83, v84, v85, oSLogObject2);
LABEL_74:

      goto LABEL_75;
    }

    if (!v61)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    oSLogObject3 = [v40 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v64 = shouldLog4;
    }

    else
    {
      v64 = shouldLog4 & 2;
    }

    if (v64)
    {
      v65 = objc_opt_class();
      v101 = 138543618;
      v102 = v65;
      v103 = 1026;
      LODWORD(v104[0]) = v59;
      v66 = v65;
      LODWORD(v88) = 18;
      v67 = _os_log_send_and_compose_impl();

      if (!v67)
      {
LABEL_60:

        v74 = malloc_type_malloc(0x14uLL, 0xD5088CB2uLL);
        v51 = v74;
        if (v74)
        {
          *v74 = 0;
          v74[1] = 0;
          *(v74 + 4) = 0;
          CC_SHA1([v38 bytes], v59, v74);
          v51 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v51 length:20];
        }

        sessionCanaryIdentifier = v58;
        goto LABEL_76;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v67 encoding:{4, &v101, v88}];
      free(v67);
      SSFileLog(v40, @"%@", v68, v69, v70, v71, v72, v73, oSLogObject3);
    }

    goto LABEL_60;
  }

  v37 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v37)
  {
    v37 = +[SSLogConfig sharedConfig];
  }

  shouldLog5 = [v37 shouldLog];
  if ([v37 shouldLogToDisk])
  {
    shouldLog5 |= 2u;
  }

  oSLogObject4 = [v37 OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog5 &= 2u;
  }

  if (shouldLog5)
  {
    v49 = objc_opt_class();
    v101 = 138543362;
    v102 = v49;
    v50 = v49;
    LODWORD(v88) = 12;
    v51 = _os_log_send_and_compose_impl();

    v41 = streamCopy;
    if (!v51)
    {
      goto LABEL_78;
    }

    oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:{4, &v101, v88}];
    free(v51);
    SSFileLog(v37, @"%@", v52, v53, v54, v55, v56, v57, oSLogObject4);
    v51 = 0;
  }

  else
  {
    v51 = 0;
    v41 = streamCopy;
  }

LABEL_77:

LABEL_78:

  return v51;
}

- (int64_t)_estimateSizeOfJsonObject:(id)object
{
  v51 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = objectCopy;
  [v4 addObject:objectCopy];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  while (1)
  {
    if (![v4 count])
    {
      v12 = v42[3];
      goto LABEL_16;
    }

    v5 = [v4 count] - 1;
    v6 = [v4 objectAtIndex:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42[3] += 2;
      v7 = [v6 lengthOfBytesUsingEncoding:4];
      v8 = v42;
      v9 = v42[3] + v7;
LABEL_5:
      v8[3] = v9;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [v6 stringValue];
      v11 = [stringValue lengthOfBytesUsingEncoding:4];
      v42[3] += v11;

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v42;
      v9 = v42[3] + 4;
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42[3] += 2;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __60__SSMetricsEventReportingSession__estimateSizeOfJsonObject___block_invoke;
      v37[3] = &unk_1E84B3A38;
      v40 = 1;
      v39 = &v41;
      v38 = v4;
      [v6 enumerateKeysAndObjectsUsingBlock:v37];

      goto LABEL_8;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v42[3] += 2;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __60__SSMetricsEventReportingSession__estimateSizeOfJsonObject___block_invoke_2;
    v33[3] = &unk_1E84B3A60;
    v36 = 1;
    v35 = &v41;
    v34 = v4;
    [v6 enumerateObjectsUsingBlock:v33];

LABEL_8:
    [v4 removeObjectAtIndex:v5];
  }

  v14 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v14 shouldLog];
  shouldLogToDisk = [v14 shouldLogToDisk];
  oSLogObject = [v14 OSLogObject];
  v18 = oSLogObject;
  if (shouldLogToDisk)
  {
    v19 = shouldLog | 2;
  }

  else
  {
    v19 = shouldLog;
  }

  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 & 2;
  }

  if (v20)
  {
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v45 = 138543874;
    v46 = v21;
    v47 = 2112;
    v48 = v6;
    v49 = 2114;
    v50 = v22;
    v23 = v22;
    LODWORD(v31) = 32;
    v24 = _os_log_send_and_compose_impl();

    if (v24)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v45, v31}];
      free(v24);
      SSFileLog(v14, @"%@", v25, v26, v27, v28, v29, v30, v18);
      goto LABEL_28;
    }
  }

  else
  {
LABEL_28:
  }

  v12 = -1;
LABEL_16:
  _Block_object_dispose(&v41, 8);

  return v12;
}

void __60__SSMetricsEventReportingSession__estimateSizeOfJsonObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 32) addObject:v6];
}

uint64_t __60__SSMetricsEventReportingSession__estimateSizeOfJsonObject___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return [*(a1 + 32) addObject:a2];
}

- (id)_unreportedEvents
{
  v26 = *MEMORY[0x1E69E9840];
  unreportedEvents = self->_unreportedEvents;
  if (!unreportedEvents)
  {
    v4 = [(SSMetricsEventController *)self->_eventController unreportedEventsForURL:self->_reportingURL since:self->_insertTimestamp suppressUserInfo:self->_suppressUserInfo];
    v5 = self->_unreportedEvents;
    self->_unreportedEvents = v4;

    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = self->_unreportedEvents;
      v12 = v10;
      v22 = 138412546;
      v23 = v10;
      v24 = 1024;
      v25 = [(NSArray *)v11 count];
      LODWORD(v21) = 18;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_13:

        unreportedEvents = self->_unreportedEvents;
        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v22, v21}];
      free(v13);
      SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_13;
  }

LABEL_14:

  return unreportedEvents;
}

- (void)_writeString:(id)string toData:(id)data
{
  stringCopy = string;
  dataCopy = data;
  v6 = objc_autoreleasePoolPush();
  v7 = [stringCopy dataUsingEncoding:4];
  [dataCopy appendData:v7];

  objc_autoreleasePoolPop(v6);
}

@end