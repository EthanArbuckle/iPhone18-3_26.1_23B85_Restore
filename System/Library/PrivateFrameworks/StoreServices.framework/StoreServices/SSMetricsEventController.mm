@interface SSMetricsEventController
- (BOOL)deleteEventsInsertedBefore:(int64_t)a3;
- (BOOL)deleteReportedEvents;
- (BOOL)insertEventSummaries:(id)a3 error:(id *)a4;
- (BOOL)markEventsAsReported:(id)a3;
- (SSMetricsEventController)init;
- (id)_collectUnreportedEventsFromDatabase:(id)a3 since:(int64_t)a4;
- (id)_collectUnreportedPIDsFromDatabase:(id)a3 matchingReportURLString:(id)a4 since:(int64_t)a5 suppressUserInfo:(BOOL)a6;
- (id)unreportedEventURLsSince:(int64_t)a3;
- (id)unreportedEventsForURL:(id)a3 since:(int64_t)a4 suppressUserInfo:(BOOL)a5;
- (id)unreportedEventsSince:(int64_t)a3;
- (int64_t)countUnreportedEventsBefore:(int64_t)a3;
- (void)_serialQueueInsertEvents:(id)a3 withCompletionHandler:(id)a4;
- (void)flushUnreportedEventsWithCompletionHandler:(id)a3;
@end

@implementation SSMetricsEventController

- (SSMetricsEventController)init
{
  v6.receiver = self;
  v6.super_class = SSMetricsEventController;
  v2 = [(SSMetricsController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SSMetricsEventTable);
    table = v2->_table;
    v2->_table = v3;
  }

  return v2;
}

- (void)_serialQueueInsertEvents:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SSMetricsController *)self configuration];
  v9 = [v8 reportingURLString];
  v10 = [(SSMetricsController *)self _cookieValuesForConfiguration:v8];
  if ([v10 count])
  {
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v10, @"cookies", 0}];
  }

  else
  {
    v11 = 0;
  }

  table = self->_table;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__SSMetricsEventController__serialQueueInsertEvents_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E84B3828;
  v18 = v6;
  v19 = v8;
  v20 = v11;
  v21 = v9;
  v22 = self;
  v13 = v9;
  v14 = v11;
  v15 = v8;
  v16 = v6;
  [(SSMetricsEventTable *)table performTransactionWithBlock:v17];
  if (v7)
  {
    v7[2](v7, 0);
  }
}

uint64_t __75__SSMetricsEventController__serialQueueInsertEvents_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v91 = *MEMORY[0x1E69E9840];
  v53 = a2;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v54 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v76 objects:v90 count:16];
  if (v3)
  {
    v57 = *v77;
    do
    {
      v62 = 0;
      do
      {
        if (*v77 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v76 + 1) + 8 * v62);
        if ([v4 isBlacklistedByConfiguration:{*(a1 + 40), v51, v52}])
        {
          v5 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v5)
          {
            v5 = +[SSLogConfig sharedConfig];
          }

          v6 = [v5 shouldLog];
          v7 = [v5 shouldLogToDisk];
          v8 = [v5 OSLogObject];
          v9 = v8;
          if (v7)
          {
            v10 = v6 | 2;
          }

          else
          {
            v10 = v6;
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v10;
          }

          else
          {
            v11 = v10 & 2;
          }

          if (v11)
          {
            v12 = objc_opt_class();
            v84 = 138412546;
            v85 = v12;
            v86 = 2112;
            v87 = v4;
            v13 = v12;
            LODWORD(v52) = 22;
            v51 = &v84;
            v14 = _os_log_send_and_compose_impl();

            if (v14)
            {
              v9 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v84, v52}];
              free(v14);
              SSFileLog(v5, @"%@", v15, v16, v17, v18, v19, v20, v9);
              goto LABEL_18;
            }
          }

          else
          {
LABEL_18:
          }

          goto LABEL_37;
        }

        context = objc_autoreleasePoolPush();
        v59 = [v4 allTableEntityPropertiesPermittedByConfiguration:*(a1 + 40) externalValues:*(a1 + 48)];
        if ([v59 count])
        {
          v58 = [v4 decorateReportingURL:*(a1 + 56)];
          [v59 setObject:v54 forKey:@"timestampInserted"];
          [v59 setObject:&unk_1F507A288 forKey:@"timestampReported"];
          [v59 setObject:v58 forKey:@"report_url"];
          v60 = +[SSMetricsEventTableEntity databaseTable];
          v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"INSERT OR REPLACE INTO "];
          [v21 appendString:v60];
          objc_msgSend(v21, "appendString:", @" (");
          [v21 appendString:@"pid"];
          v22 = a1;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v23 = v59;
          v24 = [v23 countByEnumeratingWithState:&v72 objects:v89 count:16];
          if (v24)
          {
            v25 = *v73;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v73 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                v27 = *(*(&v72 + 1) + 8 * i);
                [v21 appendString:{@", "}];
                [v21 appendString:v27];
              }

              v24 = [v23 countByEnumeratingWithState:&v72 objects:v89 count:16];
            }

            while (v24);
          }

          a1 = v22;
          [v21 appendString:@") VALUES (?"];
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v28 = v23;
          v29 = [v28 countByEnumeratingWithState:&v68 objects:v88 count:16];
          if (v29)
          {
            v30 = *v69;
            while (1)
            {
              if (*v69 != v30)
              {
                objc_enumerationMutation(v28);
              }

              [v21 appendString:{@", ?"}];
              if (!--v29)
              {
                v29 = [v28 countByEnumeratingWithState:&v68 objects:v88 count:16];
                if (!v29)
                {
                  break;
                }
              }
            }
          }

          [v21 appendString:@";"]);
          v31 = CFUUIDCreate(0);
          v32 = *&CFUUIDGetUUIDBytes(v31);
          CFRelease(v31);
          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __75__SSMetricsEventController__serialQueueInsertEvents_withCompletionHandler___block_invoke_25;
          v63[3] = &unk_1E84B3800;
          v67 = v32;
          v64 = v28;
          v66 = &v80;
          v65 = v53;
          [v65 prepareStatementForSQL:v21 cache:0 usingBlock:v63];

LABEL_35:
          goto LABEL_36;
        }

        v33 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v33)
        {
          v33 = +[SSLogConfig sharedConfig];
        }

        v34 = [v33 shouldLog];
        v35 = [v33 shouldLogToDisk];
        v58 = v33;
        v36 = [v33 OSLogObject];
        if (v35)
        {
          v37 = v34 | 2;
        }

        else
        {
          v37 = v34;
        }

        v60 = v36;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
        }

        else
        {
          v38 = v37 & 2;
        }

        if (!v38)
        {
          goto LABEL_35;
        }

        v39 = objc_opt_class();
        v84 = 138412546;
        v85 = v39;
        v86 = 2112;
        v87 = v4;
        v40 = v39;
        LODWORD(v52) = 22;
        v51 = &v84;
        v41 = _os_log_send_and_compose_impl();

        if (v41)
        {
          v61 = [MEMORY[0x1E696AEC0] stringWithCString:v41 encoding:{4, &v84, v52}];
          free(v41);
          SSFileLog(v33, @"%@", v42, v43, v44, v45, v46, v47, v61);
        }

LABEL_36:

        objc_autoreleasePoolPop(context);
        if ((v81[3] & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_37:
        ++v62;
      }

      while (v62 != v3);
      v48 = [obj countByEnumeratingWithState:&v76 objects:v90 count:16];
      v3 = v48;
    }

    while (v48);
  }

LABEL_51:

  v49 = *(v81 + 24);
  _Block_object_dispose(&v80, 8);

  return v49 & 1;
}

uint64_t __75__SSMetricsEventController__serialQueueInsertEvents_withCompletionHandler___block_invoke_25(uint64_t a1, sqlite3_stmt *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sqlite3_bind_int64(a2, 1, *(a1 + 56));
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        v11 = [*(a1 + 32) objectForKey:{*(*(&v13 + 1) + 8 * v9), v13}];
        SSSQLiteBindFoundationValueToStatement(a2, v10, v11);

        ++v9;
        ++v10;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)countUnreportedEventsBefore:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(SSMetricsController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SSMetricsEventController_countUnreportedEventsBefore___block_invoke;
  block[3] = &unk_1E84AD6B8;
  block[5] = &v9;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(v5, block);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __56__SSMetricsEventController_countUnreportedEventsBefore___block_invoke(void *a1)
{
  v1 = *(a1[4] + 72);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SSMetricsEventController_countUnreportedEventsBefore___block_invoke_2;
  v4[3] = &unk_1E84B3850;
  v2 = a1[6];
  v4[4] = a1[5];
  v4[5] = v2;
  return [v1 performTransactionWithBlock:v4];
}

uint64_t __56__SSMetricsEventController_countUnreportedEventsBefore___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SSMetricsEventTableEntity databaseTable];
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT COUNT(%@) FROM %@ WHERE %@ = 0 AND %@ < %lld", @"pid", v4, @"timestampReported", @"timestampInserted", *(a1 + 40)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SSMetricsEventController_countUnreportedEventsBefore___block_invoke_3;
  v7[3] = &unk_1E84B37D8;
  v7[4] = *(a1 + 32);
  [v3 prepareStatementForSQL:v5 cache:0 usingBlock:v7];

  return 1;
}

void __56__SSMetricsEventController_countUnreportedEventsBefore___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  if ([SSSQLiteDatabase statementHasRowAfterStepping:a2])
  {
    v4 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 0);
    if (objc_opt_respondsToSelector())
    {
      *(*(*(a1 + 32) + 8) + 24) = [v4 integerValue];
    }
  }
}

- (BOOL)deleteEventsInsertedBefore:(int64_t)a3
{
  v5 = +[SSMetricsEventTableEntity databaseTable];
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"DELETE FROM %@ WHERE %@ < %lld;", v5, @"timestampInserted", a3];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [(SSMetricsController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SSMetricsEventController_deleteEventsInsertedBefore___block_invoke;
  block[3] = &unk_1E84B38A0;
  v11 = v6;
  v12 = &v13;
  block[4] = self;
  v8 = v6;
  dispatch_sync(v7, block);

  LOBYTE(v6) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v6;
}

void __55__SSMetricsEventController_deleteEventsInsertedBefore___block_invoke(void *a1)
{
  v2 = *(a1[4] + 72);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__SSMetricsEventController_deleteEventsInsertedBefore___block_invoke_2;
  v6[3] = &unk_1E84B3878;
  v3 = a1[5];
  v9 = a1[6];
  v4 = v3;
  v5 = a1[4];
  v7 = v4;
  v8 = v5;
  [v2 performTransactionWithBlock:v6];
}

uint64_t __55__SSMetricsEventController_deleteEventsInsertedBefore___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [v4 executeSQL:v3];
  v5 = [v4 countChanges];

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

  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = objc_opt_class();
  v11 = *(*(*(a1 + 48) + 8) + 24);
  *v22 = 138412802;
  *&v22[4] = v10;
  *&v22[12] = 1024;
  *&v22[14] = v11;
  *&v22[18] = 1024;
  *&v22[20] = v5;
  v12 = v10;
  LODWORD(v21) = 24;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, v22, v21, *v22, *&v22[16], v23}];
    free(v13);
    SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, v9);
LABEL_11:
  }

  return *(*(*(a1 + 48) + 8) + 24);
}

- (BOOL)deleteReportedEvents
{
  v3 = +[SSMetricsEventTableEntity databaseTable];
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"DELETE FROM %@ WHERE %@ != 0;", v3, @"timestampReported"];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(SSMetricsController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SSMetricsEventController_deleteReportedEvents__block_invoke;
  block[3] = &unk_1E84B38A0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v4;
}

void __48__SSMetricsEventController_deleteReportedEvents__block_invoke(void *a1)
{
  v2 = *(a1[4] + 72);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__SSMetricsEventController_deleteReportedEvents__block_invoke_2;
  v6[3] = &unk_1E84B3878;
  v3 = a1[5];
  v9 = a1[6];
  v4 = v3;
  v5 = a1[4];
  v7 = v4;
  v8 = v5;
  [v2 performTransactionWithBlock:v6];
}

uint64_t __48__SSMetricsEventController_deleteReportedEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [v4 executeSQL:v3];
  v5 = [v4 countChanges];

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

  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = objc_opt_class();
  v11 = *(*(*(a1 + 48) + 8) + 24);
  *v22 = 138412802;
  *&v22[4] = v10;
  *&v22[12] = 1024;
  *&v22[14] = v11;
  *&v22[18] = 1024;
  *&v22[20] = v5;
  v12 = v10;
  LODWORD(v21) = 24;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, v22, v21, *v22, *&v22[16], v23}];
    free(v13);
    SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, v9);
LABEL_11:
  }

  return *(*(*(a1 + 48) + 8) + 24);
}

- (void)flushUnreportedEventsWithCompletionHandler:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v19 = 138412290;
  v20 = objc_opt_class();
  v9 = v20;
  LODWORD(v17) = 12;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v19, v17}];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
LABEL_11:
  }

  v18.receiver = self;
  v18.super_class = SSMetricsEventController;
  [(SSMetricsController *)&v18 flushUnreportedEventsWithCompletionHandler:v4];
}

- (BOOL)insertEventSummaries:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__82;
  v37 = __Block_byref_object_dispose__82;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  if ([v6 count])
  {
    v7 = [(SSMetricsController *)self serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__SSMetricsEventController_insertEventSummaries_error___block_invoke;
    block[3] = &unk_1E84B3918;
    block[4] = self;
    v26 = v6;
    v27 = &v33;
    v28 = &v29;
    dispatch_sync(v7, block);

    goto LABEL_14;
  }

  v8 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  v10 = [v8 shouldLogToDisk];
  v11 = [v8 OSLogObject];
  v12 = v11;
  if (v10)
  {
    v9 |= 2u;
  }

  if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v13 = objc_opt_class();
  v39 = 138412290;
  v40 = v13;
  v14 = v13;
  LODWORD(v24) = 12;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v39, v24}];
    free(v15);
    SSFileLog(v8, @"%@", v16, v17, v18, v19, v20, v21, v12);
LABEL_12:
  }

LABEL_14:
  if (a4)
  {
    *a4 = v34[5];
  }

  v22 = *(v30 + 24);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v22 & 1;
}

void __55__SSMetricsEventController_insertEventSummaries_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SSMetricsEventController_insertEventSummaries_error___block_invoke_2;
  v5[3] = &unk_1E84B38F0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 performTransactionWithBlock:v5];
}

uint64_t __55__SSMetricsEventController_insertEventSummaries_error___block_invoke_2(uint64_t a1, void *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 1;
  v44 = +[SSMetricsEventTableEntity databaseTable];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = *(a1 + 32);
  v47 = [obj countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (v47)
  {
    v46 = *v65;
    do
    {
      v3 = 0;
      do
      {
        if (*v65 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v64 + 1) + 8 * v3);
        context = objc_autoreleasePoolPush();
        v49 = [v4 objectForKey:@"report_url"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v49 length])
        {
          v21 = [SSLogConfig sharedStoreServicesConfig:v41];
          if (!v21)
          {
            v21 = +[SSLogConfig sharedConfig];
          }

          v22 = [v21 shouldLog];
          v23 = [v21 shouldLogToDisk];
          v24 = [v21 OSLogObject];
          v25 = v24;
          if (v23)
          {
            v22 |= 2u;
          }

          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v22 &= 2u;
          }

          if (v22)
          {
            v26 = objc_opt_class();
            v72 = 138412802;
            v73 = v26;
            v74 = 2112;
            v75 = @"report_url";
            v76 = 2112;
            v77 = v4;
            v27 = v26;
            LODWORD(v42) = 32;
            v41 = &v72;
            v28 = _os_log_send_and_compose_impl();

            if (v28)
            {
              v25 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, &v72, v42}];
              free(v28);
              SSFileLog(v21, @"%@", v29, v30, v31, v32, v33, v34, v25);
              goto LABEL_32;
            }
          }

          else
          {
LABEL_32:
          }

LABEL_34:
          v20 = 0;
          goto LABEL_35;
        }

        v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"INSERT OR REPLACE INTO "];
        [v5 appendString:v44];
        objc_msgSend(v5, "appendString:", @" (");
        [v5 appendString:@"pid"];
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v6 = v4;
        v7 = [v6 countByEnumeratingWithState:&v60 objects:v79 count:16];
        if (v7)
        {
          v8 = *v61;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v61 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v60 + 1) + 8 * i);
              [v5 appendString:{@", ", v41}];
              [v5 appendString:v10];
            }

            v7 = [v6 countByEnumeratingWithState:&v60 objects:v79 count:16];
          }

          while (v7);
        }

        [v5 appendString:@") VALUES (?"];
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v11 = v6;
        v12 = [v11 countByEnumeratingWithState:&v56 objects:v78 count:16];
        if (v12)
        {
          v13 = *v57;
          while (1)
          {
            if (*v57 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [v5 appendString:{@", ?", v41}];
            if (!--v12)
            {
              v12 = [v11 countByEnumeratingWithState:&v56 objects:v78 count:16];
              if (!v12)
              {
                break;
              }
            }
          }
        }

        [v5 appendString:@";"]);
        v14 = CFUUIDCreate(0);
        v15 = *&CFUUIDGetUUIDBytes(v14);
        CFRelease(v14);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __55__SSMetricsEventController_insertEventSummaries_error___block_invoke_3;
        v50[3] = &unk_1E84B38C8;
        v50[4] = v11;
        v54 = &v68;
        v55 = v15;
        v16 = v43;
        v17 = *(a1 + 40);
        v51 = v16;
        v52 = v17;
        v18 = v5;
        v53 = v18;
        [v16 prepareStatementForSQL:v18 cache:1 usingBlock:v50];
        v19 = *(v69 + 24);
        if (v19)
        {
          v20 = 0;
        }

        else
        {
          v35 = SSError(@"SSErrorDomain", 100, 0, 0);
          v36 = *(*(a1 + 48) + 8);
          v37 = *(v36 + 40);
          *(v36 + 40) = v35;

          v20 = 2;
        }

        if (v19)
        {
          goto LABEL_34;
        }

LABEL_35:

        objc_autoreleasePoolPop(context);
        if (v20)
        {
          goto LABEL_42;
        }

        ++v3;
      }

      while (v3 != v47);
      v38 = [obj countByEnumeratingWithState:&v64 objects:v80 count:16];
      v47 = v38;
    }

    while (v38);
  }

LABEL_42:

  v39 = *(v69 + 24);
  *(*(*(a1 + 56) + 8) + 24) = v39;

  _Block_object_dispose(&v68, 8);
  return v39 & 1;
}

void __55__SSMetricsEventController_insertEventSummaries_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  sqlite3_bind_int64(a2, 1, *(a1 + 72));
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        v11 = [*(a1 + 32) objectForKey:*(*(&v28 + 1) + 8 * v9)];
        SSSQLiteBindFoundationValueToStatement(a2, v10, v11);

        ++v9;
        ++v10;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v6);
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v12 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 56);
      v18 = *(a1 + 32);
      v32 = 138412802;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      v19 = v16;
      LODWORD(v27) = 32;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_20:

        return;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v32, v27, v28}];
      free(v20);
      SSFileLog(v12, @"%@", v21, v22, v23, v24, v25, v26, v15);
    }

    goto LABEL_20;
  }
}

- (BOOL)markEventsAsReported:(id)a3
{
  v4 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = +[SSMetricsEventTableEntity databaseTable];
  v8 = [v4 componentsJoinedByString:{@", "}];
  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"UPDATE %@ SET %@ = %lld WHERE (%@ IN (%@)) AND %@ = 0;", v7, @"timestampReported", v6, @"pid", v8, @"timestampReported"];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = [(SSMetricsController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SSMetricsEventController_markEventsAsReported___block_invoke;
  block[3] = &unk_1E84B38A0;
  v14 = v9;
  v15 = &v16;
  block[4] = self;
  v11 = v9;
  dispatch_sync(v10, block);

  LOBYTE(v9) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __49__SSMetricsEventController_markEventsAsReported___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SSMetricsEventController_markEventsAsReported___block_invoke_2;
  v4[3] = &unk_1E84B3940;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 performTransactionWithBlock:v4];
}

- (id)unreportedEventsForURL:(id)a3 since:(int64_t)a4 suppressUserInfo:(BOOL)a5
{
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[SSMetricsEventController _maximumUnreportedToSelect](self, "_maximumUnreportedToSelect")}];
  v10 = [(SSMetricsController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SSMetricsEventController_unreportedEventsForURL_since_suppressUserInfo___block_invoke;
  block[3] = &unk_1E84B3990;
  block[4] = self;
  v17 = v8;
  v19 = a4;
  v20 = a5;
  v11 = v9;
  v18 = v11;
  v12 = v8;
  dispatch_sync(v10, block);

  v13 = v18;
  v14 = v11;

  return v11;
}

void __74__SSMetricsEventController_unreportedEventsForURL_since_suppressUserInfo___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__SSMetricsEventController_unreportedEventsForURL_since_suppressUserInfo___block_invoke_2;
  v8[3] = &unk_1E84B3968;
  v8[4] = v3;
  v5 = v2;
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v11 = v6;
  v12 = *(a1 + 64);
  v10 = v7;
  [v4 performTransactionWithBlock:v8];
}

uint64_t __74__SSMetricsEventController_unreportedEventsForURL_since_suppressUserInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) absoluteString];
  v7 = [v5 _collectUnreportedPIDsFromDatabase:v3 matchingReportURLString:v6 since:*(a1 + 56) suppressUserInfo:*(a1 + 64)];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = [SSMetricsEventTableEntity alloc];
        v15 = -[SSSQLiteEntity initWithPersistentID:inDatabase:](v14, "initWithPersistentID:inDatabase:", [v13 longLongValue], v3);
        [*(a1 + 48) addObject:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

- (id)unreportedEventsSince:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__82;
  v13 = __Block_byref_object_dispose__82;
  v14 = 0;
  v5 = [(SSMetricsController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SSMetricsEventController_unreportedEventsSince___block_invoke;
  block[3] = &unk_1E84AD6B8;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __50__SSMetricsEventController_unreportedEventsSince___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 72);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SSMetricsEventController_unreportedEventsSince___block_invoke_2;
  v4[3] = &unk_1E84B39B8;
  v5 = v1;
  v6 = *(a1 + 48);
  return [v2 performTransactionWithBlock:v4];
}

uint64_t __50__SSMetricsEventController_unreportedEventsSince___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) _collectUnreportedEventsFromDatabase:v3 since:*(a1 + 48)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v4);
  return 1;
}

- (id)unreportedEventURLsSince:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(SSMetricsController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SSMetricsEventController_unreportedEventURLsSince___block_invoke;
  block[3] = &unk_1E84AD6E0;
  block[4] = self;
  v13 = a3;
  v7 = v5;
  v12 = v7;
  dispatch_sync(v6, block);

  v8 = v12;
  v9 = v7;

  return v7;
}

void __53__SSMetricsEventController_unreportedEventURLsSince___block_invoke(void *a1)
{
  v1 = *(a1[4] + 72);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__SSMetricsEventController_unreportedEventURLsSince___block_invoke_2;
  v3[3] = &unk_1E84B39E0;
  v2 = a1[5];
  v5 = a1[6];
  v4 = v2;
  [v1 performTransactionWithBlock:v3];
}

uint64_t __53__SSMetricsEventController_unreportedEventURLsSince___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = +[SSMetricsEventTableEntity databaseTable];
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT DISTINCT(%@) FROM %@ WHERE %@ = 0 AND %@ <= %lld ORDER BY %@ ASC", @"report_url", v5, @"timestampReported", @"timestampInserted", *(a1 + 40), @"timestampInserted"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__SSMetricsEventController_unreportedEventURLsSince___block_invoke_3;
  v9[3] = &unk_1E84B3388;
  v7 = v3;
  v10 = v7;
  v11 = *(a1 + 32);
  [v7 prepareStatementForSQL:v6 cache:0 usingBlock:v9];

  objc_autoreleasePoolPop(v4);
  return 1;
}

void __53__SSMetricsEventController_unreportedEventURLsSince___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) statementHasRowAfterStepping:a2])
  {
    do
    {
      if (sqlite3_column_type(a2, 0) == 3)
      {
        v5 = sqlite3_column_text(a2, 0);
        if (v5)
        {
          if (*v5)
          {
            v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
            v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
            [*(a1 + 40) addObject:v7];
          }
        }
      }
    }

    while (([*(a1 + 32) statementHasRowAfterStepping:a2] & 1) != 0);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_collectUnreportedEventsFromDatabase:(id)a3 since:(int64_t)a4
{
  v6 = a3;
  v7 = +[SSMetricsEventTableEntity databaseTable];
  v8 = [(SSMetricsEventController *)self _maximumUnreportedToSelect];
  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT %@ FROM %@ WHERE %@ = 0 AND %@ <= %lld ORDER BY %@ ASC LIMIT %d", @"pid", v7, @"timestampReported", @"timestampInserted", a4, @"timestampInserted", v8];
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__SSMetricsEventController__collectUnreportedEventsFromDatabase_since___block_invoke;
  v16[3] = &unk_1E84B3388;
  v17 = v6;
  v11 = v10;
  v18 = v11;
  v12 = v6;
  [v12 prepareStatementForSQL:v9 cache:0 usingBlock:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

void __71__SSMetricsEventController__collectUnreportedEventsFromDatabase_since___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) statementHasRowAfterStepping:a2])
  {
    do
    {
      if (sqlite3_column_type(a2, 0) == 1)
      {
        v5 = [(SSSQLiteEntity *)[SSMetricsEventTableEntity alloc] initWithPersistentID:sqlite3_column_int64(a2 inDatabase:0), *(a1 + 32)];
        [*(a1 + 40) addObject:v5];
      }
    }

    while (([*(a1 + 32) statementHasRowAfterStepping:a2] & 1) != 0);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_collectUnreportedPIDsFromDatabase:(id)a3 matchingReportURLString:(id)a4 since:(int64_t)a5 suppressUserInfo:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = +[SSMetricsEventTableEntity databaseTable];
  v13 = [(SSMetricsEventController *)self _maximumUnreportedToSelect];
  v14 = objc_alloc(MEMORY[0x1E696AD60]);
  v15 = @"0";
  if (v6)
  {
    v15 = @"1";
  }

  v16 = [v14 initWithFormat:@"SELECT %@ FROM %@ WHERE %@ = '%@' AND %@ = 0 AND %@ <= %lld AND %@ = %@ ORDER BY %@ ASC LIMIT %d", @"pid", v12, @"report_url", v11, @"timestampReported", @"timestampInserted", a5, @"supressDsid", v15, @"timestampInserted", v13];

  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:v13];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __110__SSMetricsEventController__collectUnreportedPIDsFromDatabase_matchingReportURLString_since_suppressUserInfo___block_invoke;
  v23[3] = &unk_1E84B3388;
  v24 = v10;
  v18 = v17;
  v25 = v18;
  v19 = v10;
  [v19 prepareStatementForSQL:v16 cache:0 usingBlock:v23];
  v20 = v25;
  v21 = v18;

  return v18;
}

void __110__SSMetricsEventController__collectUnreportedPIDsFromDatabase_matchingReportURLString_since_suppressUserInfo___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) statementHasRowAfterStepping:a2])
  {
    do
    {
      if (sqlite3_column_type(a2, 0) == 1)
      {
        v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{sqlite3_column_int64(a2, 0)}];
        [*(a1 + 40) addObject:v5];
      }
    }

    while (([*(a1 + 32) statementHasRowAfterStepping:a2] & 1) != 0);
  }

  objc_autoreleasePoolPop(v4);
}

@end