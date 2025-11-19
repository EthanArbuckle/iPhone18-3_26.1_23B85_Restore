@interface TRICKQueryLog
- (TRICKQueryLog)initWithPaths:(id)a3;
- (void)_logQueryWithRecordType:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 guardedData:(id)a6;
- (void)_openFileIfNeededWithGuardedData:(id)a3;
- (void)logQueryWithRecordType:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5;
@end

@implementation TRICKQueryLog

- (TRICKQueryLog)initWithPaths:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = TRICKQueryLog;
  v6 = [(TRICKQueryLog *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, a3);
    v8 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.triald.ck-query-log" qosClass:17];
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = objc_alloc(MEMORY[0x277D425F8]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    lock = v7->_lock;
    v7->_lock = v12;
  }

  return v7;
}

- (void)logQueryWithRecordType:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__TRICKQueryLog_logQueryWithRecordType_predicate_sortDescriptors___block_invoke;
  v15[3] = &unk_279DDF578;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __66__TRICKQueryLog_logQueryWithRecordType_predicate_sortDescriptors___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D737A8] hostingProcessIsTriald])
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.triald"];
  }

  v3 = v2;
  v4 = [v2 valueForKey:*MEMORY[0x277D739E8]];
  if ([v4 unsignedIntValue] == 4)
  {
  }

  else
  {
    v5 = [v4 unsignedIntValue];

    if (v5 != 5)
    {
      return;
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v11 = *(a1 + 32);
  v6 = *(v11 + 24);
  v12[2] = __66__TRICKQueryLog_logQueryWithRecordType_predicate_sortDescriptors___block_invoke_2;
  v12[3] = &unk_279DDF550;
  v7 = *(&v11 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v13 = v11;
  v14 = v10;
  [v6 runWithLockAcquired:v12];
}

- (void)_logQueryWithRecordType:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 guardedData:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  [(TRICKQueryLog *)self _openFileIfNeededWithGuardedData:v13];
  if ((v13[1] & 1) == 0 && v13[3])
  {
    if (v12)
    {
      v15 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_0];
      v16 = [v15 componentsJoinedByString:{@", "}];
    }

    else
    {
      v16 = &stru_287FA0430;
    }

    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = [v11 triLogDesc];
    v19 = [v17 initWithFormat:@"recordType:%@ | predicate:%@ | sortDescriptors:[%@]", v10, v18, v16];

    v20 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_287FA0430];

    if (([v13[2] containsObject:v20] & 1) == 0)
    {
      [v13[2] addObject:v20];
      v21 = [v20 stringByAppendingString:@"\n"];

      v22 = [v21 dataUsingEncoding:4];
      if (v22)
      {
        v23 = v13[3];
        v28 = 0;
        v24 = [v23 writeData:v22 error:&v28];
        v25 = v28;
        if (v24)
        {
          [v13[3] synchronizeAndReturnError:0];
        }

        else
        {
          v26 = TRILogCategory_Server();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v25;
            _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "Failed to log CKQuery: %@", buf, 0xCu);
          }
        }
      }

      v20 = v21;
    }
  }

  objc_autoreleasePoolPop(v14);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_openFileIfNeededWithGuardedData:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ((*(v4 + 8) & 1) == 0 && !*(v4 + 3))
  {
    v6 = [(TRIPaths *)self->_paths logDir];
    v7 = [v6 stringByAppendingPathComponent:@"CKQueryLogs"];

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];

    v9 = objc_opt_new();
    v10 = [MEMORY[0x277CBEBB0] localTimeZone];
    [v9 setTimeZone:v10];

    [v9 setFormatOptions:19];
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = objc_opt_new();
    v13 = [v9 stringFromDate:v12];
    v14 = [v11 initWithFormat:@"CKQueryLog-%@.log", v13];

    v15 = [v7 stringByAppendingPathComponent:v14];
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v54 = v15;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Logging CK queries: %{public}@", buf, 0xCu);
    }

    v17 = open([v15 fileSystemRepresentation], 514, 420);
    if ((v17 & 0x80000000) != 0)
    {
      v25 = TRILogCategory_Server();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v40 = __error();
        v41 = strerror(*v40);
        v42 = *__error();
        *buf = 136315394;
        v54 = v41;
        v55 = 1024;
        v56 = v42;
        _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Failed to open CKQueryLog: %s (%d)", buf, 0x12u);
      }

      *(v4 + 8) = 1;
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v17 closeOnDealloc:1];
      v19 = *(v4 + 3);
      *(v4 + 3) = v18;

      v20 = *(v4 + 3);
      v51 = 0;
      v21 = [v20 readDataUpToLength:0x20000 error:&v51];
      v46 = v51;
      if (v21)
      {
        if ([v21 length] < 0x20000)
        {
          v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v21 encoding:4];
          if (v28)
          {
            v44 = v14;
            v45 = v7;
            v29 = objc_opt_new();
            v30 = *(v4 + 2);
            *(v4 + 2) = v29;

            v43 = v28;
            v31 = [v28 componentsSeparatedByString:@"\n"];
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v32 = [v31 countByEnumeratingWithState:&v47 objects:v52 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v48;
              do
              {
                for (i = 0; i != v33; ++i)
                {
                  if (*v48 != v34)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v36 = *(*(&v47 + 1) + 8 * i);
                  if ([v36 length])
                  {
                    [*(v4 + 2) addObject:v36];
                  }
                }

                v33 = [v31 countByEnumeratingWithState:&v47 objects:v52 count:16];
              }

              while (v33);
            }

            v14 = v44;
            v7 = v45;
            v24 = v46;
            v28 = v43;
          }

          else
          {
            v37 = TRILogCategory_Server();
            v24 = v46;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_26F567000, v37, OS_LOG_TYPE_ERROR, "CKQueryLog is not UTF-8.", buf, 2u);
            }

            v38 = *(v4 + 3);
            *(v4 + 3) = 0;

            *(v4 + 8) = 1;
          }
        }

        else
        {
          v22 = TRILogCategory_Server();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "CKQueryLog is full.", buf, 2u);
          }

          v23 = *(v4 + 3);
          *(v4 + 3) = 0;

          *(v4 + 8) = 1;
          v24 = v46;
        }
      }

      else
      {
        v26 = TRILogCategory_Server();
        v24 = v46;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v54 = v46;
          _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "Failed to load CKQueryLog: %{public}@", buf, 0xCu);
        }

        v27 = *(v4 + 3);
        *(v4 + 3) = 0;

        *(v4 + 8) = 1;
      }
    }
  }

  objc_autoreleasePoolPop(v5);

  v39 = *MEMORY[0x277D85DE8];
}

@end