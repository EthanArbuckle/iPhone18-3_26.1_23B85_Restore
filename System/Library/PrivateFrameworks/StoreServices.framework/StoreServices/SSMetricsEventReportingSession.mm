@interface SSMetricsEventReportingSession
- (BOOL)anyUnreportedEvents;
- (BOOL)markEventsAsReported;
- (SSMetricsEventReportingSession)initWithReportingURL:(id)a3 insertTimestamp:(int64_t)a4 eventController:(id)a5;
- (SSMetricsEventReportingSession)initWithReportingURL:(id)a3 insertTimestamp:(int64_t)a4 suppressUserInfo:(BOOL)a5 eventController:(id)a6;
- (id)_unreportedEvents;
- (id)sessionCanaryIdentifier;
- (id)writeEventsToStream:(id)a3 uncompressedMaxSize:(int64_t)a4;
- (int64_t)_estimateSizeOfJsonObject:(id)a3;
- (void)_writeString:(id)a3 toData:(id)a4;
@end

@implementation SSMetricsEventReportingSession

- (SSMetricsEventReportingSession)initWithReportingURL:(id)a3 insertTimestamp:(int64_t)a4 eventController:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(SSMetricsEventReportingSession *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_insertTimestamp = a4;
    unreportedEvents = v11->_unreportedEvents;
    v11->_unreportedEvents = 0;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unreportedEventPIDs = v12->_unreportedEventPIDs;
    v12->_unreportedEventPIDs = v14;

    objc_storeStrong(&v12->_eventController, a5);
    objc_storeStrong(&v12->_reportingURL, a3);
  }

  return v12;
}

- (SSMetricsEventReportingSession)initWithReportingURL:(id)a3 insertTimestamp:(int64_t)a4 suppressUserInfo:(BOOL)a5 eventController:(id)a6
{
  result = [(SSMetricsEventReportingSession *)self initWithReportingURL:a3 insertTimestamp:a4 eventController:a6];
  if (result)
  {
    result->_suppressUserInfo = a5;
  }

  return result;
}

- (BOOL)anyUnreportedEvents
{
  v2 = [(SSMetricsEventReportingSession *)self _unreportedEvents];
  v3 = [v2 count] != 0;

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

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
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

    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v22, v21}];
    free(v10);
    SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, v6);
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

        v10 = [*(*(&v15 + 1) + 8 * v9) reportingDictionary];
        v11 = [v10 objectForKey:@"canary"];

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

- (id)writeEventsToStream:(id)a3 uncompressedMaxSize:(int64_t)a4
{
  v108 = *MEMORY[0x1E69E9840];
  v89 = a3;
  v5 = [(SSMetricsEventReportingSession *)self _unreportedEvents];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  unreportedEventPIDs = self->_unreportedEventPIDs;
  self->_unreportedEventPIDs = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(SSMetricsEventReportingSession *)self sessionCanaryIdentifier];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v5;
  v90 = v8;
  v91 = self;
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
      if ((a4 & 0x8000000000000000) == 0 && v10 > a4)
      {
        goto LABEL_27;
      }

      v13 = [*(*(&v97 + 1) + 8 * v11) reportingDictionary];
      v14 = [v13 objectForKey:@"canary"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v9])
      {

        goto LABEL_27;
      }

      v16 = self->_unreportedEventPIDs;
      v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "persistentID")}];
      [(NSMutableArray *)v16 addObject:v17];

      v18 = [(SSMetricsEventReportingSession *)self _estimateSizeOfJsonObject:v13];
      if (v18 < 0)
      {
        break;
      }

      v10 += v18;
      [v8 addObject:v13];
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

    v19 = v9;
    v20 = [v13 objectForKeyedSubscript:@"topic"];
    v21 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v22 |= 2u;
    }

    v23 = [v21 OSLogObject];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v22 &= 2u;
    }

    if (v22)
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

        v9 = v19;
        self = v91;
        goto LABEL_23;
      }

      v23 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v101, v88}];
      free(v26);
      SSFileLog(v21, @"%@", v27, v28, v29, v30, v31, v32, v23);
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
    v34 = [MEMORY[0x1E695DF00] date];
    [v34 timeIntervalSince1970];
    v36 = [v33 numberWithInteger:(v35 * 1000.0)];
    v105[2] = @"events";
    v106[1] = v36;
    v106[2] = v8;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:3];

    v96 = 0;
    v38 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v37 options:0 error:&v96];
    v39 = v96;
    if (v39)
    {
      v40 = +[SSLogConfig sharedStoreServicesConfig];
      v41 = v89;
      if (!v40)
      {
        v40 = +[SSLogConfig sharedConfig];
      }

      v42 = [v40 shouldLog];
      if ([v40 shouldLogToDisk])
      {
        v42 |= 2u;
      }

      v43 = [v40 OSLogObject];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = v42;
      }

      else
      {
        v44 = v42 & 2;
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

    v58 = v9;
    v41 = v89;
    v59 = [v89 write:objc_msgSend(v38 maxLength:{"bytes"), objc_msgSend(v38, "length")}];
    v60 = [v38 length];
    v61 = +[SSLogConfig sharedStoreServicesConfig];
    v40 = v61;
    if (v59 != v60)
    {
      if (!v61)
      {
        v40 = +[SSLogConfig sharedConfig];
      }

      v75 = [v40 shouldLog];
      if ([v40 shouldLogToDisk])
      {
        v75 |= 2u;
      }

      v43 = [v40 OSLogObject];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v76 = v75;
      }

      else
      {
        v76 = v75 & 2;
      }

      if (!v76)
      {
        v9 = v58;
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

      v41 = v89;
      v9 = v58;
      if (!v47)
      {
LABEL_75:

        v51 = 0;
LABEL_76:

        v8 = v90;
        goto LABEL_77;
      }

LABEL_73:
      v43 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:{4, &v101, v88}];
      free(v47);
      SSFileLog(v40, @"%@", v80, v81, v82, v83, v84, v85, v43);
LABEL_74:

      goto LABEL_75;
    }

    if (!v61)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    v62 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      v62 |= 2u;
    }

    v63 = [v40 OSLogObject];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = v62;
    }

    else
    {
      v64 = v62 & 2;
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

        v9 = v58;
        goto LABEL_76;
      }

      v63 = [MEMORY[0x1E696AEC0] stringWithCString:v67 encoding:{4, &v101, v88}];
      free(v67);
      SSFileLog(v40, @"%@", v68, v69, v70, v71, v72, v73, v63);
    }

    goto LABEL_60;
  }

  v37 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v37)
  {
    v37 = +[SSLogConfig sharedConfig];
  }

  v48 = [v37 shouldLog];
  if ([v37 shouldLogToDisk])
  {
    v48 |= 2u;
  }

  v39 = [v37 OSLogObject];
  if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v48 &= 2u;
  }

  if (v48)
  {
    v49 = objc_opt_class();
    v101 = 138543362;
    v102 = v49;
    v50 = v49;
    LODWORD(v88) = 12;
    v51 = _os_log_send_and_compose_impl();

    v41 = v89;
    if (!v51)
    {
      goto LABEL_78;
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:{4, &v101, v88}];
    free(v51);
    SSFileLog(v37, @"%@", v52, v53, v54, v55, v56, v57, v39);
    v51 = 0;
  }

  else
  {
    v51 = 0;
    v41 = v89;
  }

LABEL_77:

LABEL_78:

  return v51;
}

- (int64_t)_estimateSizeOfJsonObject:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = v3;
  [v4 addObject:v3];
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
      v10 = [v6 stringValue];
      v11 = [v10 lengthOfBytesUsingEncoding:4];
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

  v15 = [v14 shouldLog];
  v16 = [v14 shouldLogToDisk];
  v17 = [v14 OSLogObject];
  v18 = v17;
  if (v16)
  {
    v19 = v15 | 2;
  }

  else
  {
    v19 = v15;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
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

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v22, v21}];
      free(v13);
      SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, v9);
    }

    goto LABEL_13;
  }

LABEL_14:

  return unreportedEvents;
}

- (void)_writeString:(id)a3 toData:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = objc_autoreleasePoolPush();
  v7 = [v8 dataUsingEncoding:4];
  [v5 appendData:v7];

  objc_autoreleasePoolPop(v6);
}

@end