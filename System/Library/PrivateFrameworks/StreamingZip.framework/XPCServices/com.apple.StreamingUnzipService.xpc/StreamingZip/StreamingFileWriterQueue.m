@interface StreamingFileWriterQueue
+ (id)sharedInstance;
- (BOOL)insertAsyncFileOperation:(id)a3 error:(id *)a4;
- (StreamingFileWriterQueue)init;
- (id)reserveAsyncOperationForFileSize:(int64_t)a3 path:(id)a4 group:(id)a5 operationPendingForPath:(BOOL *)a6;
- (void)_runOperation:(id)a3;
@end

@implementation StreamingFileWriterQueue

- (BOOL)insertAsyncFileOperation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 reservation];
  v8 = [v7 isValid];
  if (v8)
  {
    v9 = [v7 reservedSize];
    [v7 setValid:0];
    v10 = [v6 trackingGroup];
    dispatch_group_enter(v10);
    v25 = [v6 path];
    os_unfair_lock_lock(&self->_pendingStateLock);
    v11 = [(StreamingFileWriterQueue *)self runningOperationCount];
    v12 = [(StreamingFileWriterQueue *)self maxConcurrency];
    if (v11 >= v12)
    {
      v18 = [(StreamingFileWriterQueue *)self pendingOperations];
      [v18 addObject:v6];
      v19 = sub_10000123C();
      if (os_signpost_enabled(v19))
      {
        *buf = 134218240;
        v29 = v9;
        v30 = 2048;
        v31 = [v18 count];
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CONCURRENCY_LIMIT", "Added async operation for size %lld; queue count: %lu", buf, 0x16u);
      }
    }

    else
    {
      [(StreamingFileWriterQueue *)self setRunningOperationCount:[(StreamingFileWriterQueue *)self runningOperationCount]+ 1];
    }

    v20 = [NSValue valueWithNonretainedObject:v10];
    v21 = [(StreamingFileWriterQueue *)self pendingOperationPathsByGroupPointer];
    v22 = [v21 objectForKeyedSubscript:v20];
    if (!v22)
    {
      v22 = objc_opt_new();
      [v21 setObject:v22 forKeyedSubscript:v20];
    }

    [v22 addObject:v25];

    os_unfair_lock_unlock(&self->_pendingStateLock);
    if (v11 < v12)
    {
      v23 = [(StreamingFileWriterQueue *)self fileWriterQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100010394;
      block[3] = &unk_100028808;
      block[4] = self;
      v27 = v6;
      dispatch_group_async(v10, v23, block);
    }
  }

  else
  {
    v13 = sub_100001194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v29 = [v7 reservedSize];
      v30 = 2112;
      v31 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Rejecting insert of file operation because the reservation for size %llu was not valid : %@", buf, 0x16u);
    }

    v14 = [v7 reservedSize];
    v16 = sub_10000151C("[StreamingFileWriterQueue insertAsyncFileOperation:error:]", 237, @"SZExtractorErrorDomain", 1, 0, 0, @"Rejecting insert of file operation because the reservation for size %llu was not valid", v15, v14);
    v10 = v16;
    if (a4)
    {
      v17 = v16;
      *a4 = v10;
    }
  }

  return v8;
}

- (void)_runOperation:(id)a3
{
  v4 = a3;
  v5 = [v4 reservation];
  v6 = [v5 reservedSize];

  v7 = [v4 path];
  v8 = [v4 trackingGroup];
  [v4 executeAsyncOperation];

  dispatch_group_leave(v8);
  os_unfair_lock_lock(&self->_pendingStateLock);
  [(StreamingFileWriterQueue *)self setPendingOperationSize:[(StreamingFileWriterQueue *)self pendingOperationSize]- v6];
  v9 = [NSValue valueWithNonretainedObject:v8];
  v10 = [(StreamingFileWriterQueue *)self pendingOperationPathsByGroupPointer];
  v11 = [v10 objectForKeyedSubscript:v9];
  v12 = v11;
  if (v11)
  {
    [v11 removeObject:v7];
    if (![v12 count])
    {
      [v10 removeObjectForKey:v9];
    }
  }

  else
  {
    v13 = sub_100001194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = v7;
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "No pending operation paths found for group %@ when trying to remove path %@", buf, 0x16u);
    }
  }

  v14 = [(StreamingFileWriterQueue *)self pendingOperations];
  if ([v14 count])
  {
    v15 = [v14 objectAtIndexedSubscript:0];
    [v14 removeObjectAtIndex:0];
  }

  else
  {
    [(StreamingFileWriterQueue *)self setRunningOperationCount:[(StreamingFileWriterQueue *)self runningOperationCount]- 1];
    v15 = 0;
  }

  os_unfair_lock_unlock(&self->_pendingStateLock);
  if (v15)
  {
    v16 = [v15 trackingGroup];
    v17 = [(StreamingFileWriterQueue *)self fileWriterQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001064C;
    v18[3] = &unk_100028808;
    v18[4] = self;
    v19 = v15;
    dispatch_group_async(v16, v17, v18);
  }
}

- (id)reserveAsyncOperationForFileSize:(int64_t)a3 path:(id)a4 group:(id)a5 operationPendingForPath:(BOOL *)a6
{
  v10 = a4;
  v11 = a5;
  if ([(StreamingFileWriterQueue *)self maxPendingItemSize]>= a3)
  {
    v13 = a3 >= 0;
  }

  else
  {
    v12 = sub_10000123C();
    if (os_signpost_enabled(v12))
    {
      v25 = 138412546;
      v26 = v10;
      v27 = 2048;
      v28 = a3;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FILE_TOO_BIG", "Too large for async: %@ size %lld", &v25, 0x16u);
    }

    v13 = 0;
  }

  v14 = [NSValue valueWithNonretainedObject:v11];
  os_unfair_lock_lock(&self->_pendingStateLock);
  v15 = [(StreamingFileWriterQueue *)self pendingOperationPathsByGroupPointer];
  v16 = [v15 objectForKeyedSubscript:v14];

  if (v16)
  {
    v17 = [v16 containsObject:v10];
    if (!v13)
    {
LABEL_11:

      os_unfair_lock_unlock(&self->_pendingStateLock);
      v19 = 0;
      v20 = 1;
      if (!v17)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v17 = 0;
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  v18 = [(StreamingFileWriterQueue *)self pendingOperationSize]+ a3;
  if (v18 > [(StreamingFileWriterQueue *)self maxPendingOperationSize])
  {
    goto LABEL_11;
  }

  [(StreamingFileWriterQueue *)self setPendingOperationSize:v18];

  os_unfair_lock_unlock(&self->_pendingStateLock);
  v21 = sub_10000123C();
  if (os_signpost_enabled(v21))
  {
    v25 = 138412802;
    v26 = v10;
    v27 = 2048;
    v28 = a3;
    v29 = 2048;
    v30 = v18;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ASYNC_FILE_RESERVED", "Async op reserved for %@ size %lld (cur total: %lld)", &v25, 0x20u);
  }

  v19 = [[StreamingFileWriterQueueReservation alloc] initWithReservationSize:a3];
  v20 = 0;
  if (v17)
  {
LABEL_16:
    v22 = sub_10000123C();
    if (os_signpost_enabled(v22))
    {
      v25 = 138412290;
      v26 = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ASYNC_OP_EXISTS", "Async op exists for %@", &v25, 0xCu);
    }
  }

LABEL_19:
  if ((v13 & v20) == 1)
  {
    v23 = sub_10000123C();
    if (os_signpost_enabled(v23))
    {
      v25 = 138412546;
      v26 = v10;
      v27 = 2048;
      v28 = a3;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ASYNC_FILE_QUEUE_FULL", "Insufficient buffer avilable for %@ size %lld", &v25, 0x16u);
    }
  }

  *a6 = v17;

  return v19;
}

- (StreamingFileWriterQueue)init
{
  v26.receiver = self;
  v26.super_class = StreamingFileWriterQueue;
  v2 = [(StreamingFileWriterQueue *)&v26 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.StreamingZip.StreamingFileWriterQueue", v3);
    fileWriterQueue = v2->_fileWriterQueue;
    v2->_fileWriterQueue = v4;

    v2->_pendingOperationSize = 0;
    v2->_runningOperationCount = 0;
    v6 = objc_opt_new();
    pendingOperations = v2->_pendingOperations;
    v2->_pendingOperations = v6;

    v8 = objc_opt_new();
    pendingOperationPathsByGroupPointer = v2->_pendingOperationPathsByGroupPointer;
    v2->_pendingOperationPathsByGroupPointer = v8;

    v2->_pendingStateLock._os_unfair_lock_opaque = 0;
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 integerForKey:@"MaxAsyncOperationSize"];

    v12 = sub_100001194();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11 < 1)
    {
      if (!v13)
      {
        v11 = 10485760;
LABEL_9:

        v2->_maxPendingOperationSize = v11;
        v15 = +[NSUserDefaults standardUserDefaults];
        v16 = [v15 integerForKey:@"MaxAsyncItemSize"];

        v17 = sub_100001194();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v16 < 1)
        {
          if (!v18)
          {
            v16 = 0x200000;
LABEL_16:

            v2->_maxPendingItemSize = v16;
            v20 = +[NSUserDefaults standardUserDefaults];
            v21 = [v20 integerForKey:@"MaxConcurrency"];

            v22 = sub_100001194();
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
            if (v21 < 1)
            {
              if (!v23)
              {
                v21 = 4;
                goto LABEL_23;
              }

              *buf = 134217984;
              v21 = 4;
              v28 = 4;
              v24 = "Max concurrency is %lu";
            }

            else
            {
              if (!v23)
              {
LABEL_23:

                v2->_maxConcurrency = v21;
                return v2;
              }

              *buf = 134217984;
              v28 = v21;
              v24 = "Overriding max concurrency to %lu";
            }

            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
            goto LABEL_23;
          }

          *buf = 134217984;
          v16 = 0x200000;
          v28 = 0x200000;
          v19 = "Max async item size limit is %lld";
        }

        else
        {
          if (!v18)
          {
            goto LABEL_16;
          }

          *buf = 134217984;
          v28 = v16;
          v19 = "Overriding max async item size limit to %lld";
        }

        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
        goto LABEL_16;
      }

      *buf = 134217984;
      v11 = 10485760;
      v28 = 10485760;
      v14 = "Max async operation size limit is %lld";
    }

    else
    {
      if (!v13)
      {
        goto LABEL_9;
      }

      *buf = 134217984;
      v28 = v11;
      v14 = "Overriding max async operation size limit to %lld";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
    goto LABEL_9;
  }

  return v2;
}

+ (id)sharedInstance
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!qword_10002F170)
  {
    v3 = objc_alloc_init(v2);
    v4 = qword_10002F170;
    qword_10002F170 = v3;
  }

  objc_sync_exit(v2);

  v5 = qword_10002F170;

  return v5;
}

@end