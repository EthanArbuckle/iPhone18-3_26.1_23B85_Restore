@interface StreamingFileWriterQueue
+ (id)sharedInstance;
- (BOOL)insertAsyncFileOperation:(id)operation error:(id *)error;
- (StreamingFileWriterQueue)init;
- (id)reserveAsyncOperationForFileSize:(int64_t)size path:(id)path group:(id)group operationPendingForPath:(BOOL *)forPath;
- (void)_runOperation:(id)operation;
@end

@implementation StreamingFileWriterQueue

- (BOOL)insertAsyncFileOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  reservation = [operationCopy reservation];
  isValid = [reservation isValid];
  if (isValid)
  {
    reservedSize = [reservation reservedSize];
    [reservation setValid:0];
    trackingGroup = [operationCopy trackingGroup];
    dispatch_group_enter(trackingGroup);
    path = [operationCopy path];
    os_unfair_lock_lock(&self->_pendingStateLock);
    runningOperationCount = [(StreamingFileWriterQueue *)self runningOperationCount];
    maxConcurrency = [(StreamingFileWriterQueue *)self maxConcurrency];
    if (runningOperationCount >= maxConcurrency)
    {
      pendingOperations = [(StreamingFileWriterQueue *)self pendingOperations];
      [pendingOperations addObject:operationCopy];
      v19 = sub_10000123C();
      if (os_signpost_enabled(v19))
      {
        *buf = 134218240;
        reservedSize2 = reservedSize;
        v30 = 2048;
        v31 = [pendingOperations count];
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CONCURRENCY_LIMIT", "Added async operation for size %lld; queue count: %lu", buf, 0x16u);
      }
    }

    else
    {
      [(StreamingFileWriterQueue *)self setRunningOperationCount:[(StreamingFileWriterQueue *)self runningOperationCount]+ 1];
    }

    v20 = [NSValue valueWithNonretainedObject:trackingGroup];
    pendingOperationPathsByGroupPointer = [(StreamingFileWriterQueue *)self pendingOperationPathsByGroupPointer];
    v22 = [pendingOperationPathsByGroupPointer objectForKeyedSubscript:v20];
    if (!v22)
    {
      v22 = objc_opt_new();
      [pendingOperationPathsByGroupPointer setObject:v22 forKeyedSubscript:v20];
    }

    [v22 addObject:path];

    os_unfair_lock_unlock(&self->_pendingStateLock);
    if (runningOperationCount < maxConcurrency)
    {
      fileWriterQueue = [(StreamingFileWriterQueue *)self fileWriterQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100010394;
      block[3] = &unk_100028808;
      block[4] = self;
      v27 = operationCopy;
      dispatch_group_async(trackingGroup, fileWriterQueue, block);
    }
  }

  else
  {
    v13 = sub_100001194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      reservedSize2 = [reservation reservedSize];
      v30 = 2112;
      v31 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Rejecting insert of file operation because the reservation for size %llu was not valid : %@", buf, 0x16u);
    }

    reservedSize3 = [reservation reservedSize];
    v16 = sub_10000151C("[StreamingFileWriterQueue insertAsyncFileOperation:error:]", 237, @"SZExtractorErrorDomain", 1, 0, 0, @"Rejecting insert of file operation because the reservation for size %llu was not valid", v15, reservedSize3);
    trackingGroup = v16;
    if (error)
    {
      v17 = v16;
      *error = trackingGroup;
    }
  }

  return isValid;
}

- (void)_runOperation:(id)operation
{
  operationCopy = operation;
  reservation = [operationCopy reservation];
  reservedSize = [reservation reservedSize];

  path = [operationCopy path];
  trackingGroup = [operationCopy trackingGroup];
  [operationCopy executeAsyncOperation];

  dispatch_group_leave(trackingGroup);
  os_unfair_lock_lock(&self->_pendingStateLock);
  [(StreamingFileWriterQueue *)self setPendingOperationSize:[(StreamingFileWriterQueue *)self pendingOperationSize]- reservedSize];
  v9 = [NSValue valueWithNonretainedObject:trackingGroup];
  pendingOperationPathsByGroupPointer = [(StreamingFileWriterQueue *)self pendingOperationPathsByGroupPointer];
  v11 = [pendingOperationPathsByGroupPointer objectForKeyedSubscript:v9];
  v12 = v11;
  if (v11)
  {
    [v11 removeObject:path];
    if (![v12 count])
    {
      [pendingOperationPathsByGroupPointer removeObjectForKey:v9];
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
      v23 = path;
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "No pending operation paths found for group %@ when trying to remove path %@", buf, 0x16u);
    }
  }

  pendingOperations = [(StreamingFileWriterQueue *)self pendingOperations];
  if ([pendingOperations count])
  {
    v15 = [pendingOperations objectAtIndexedSubscript:0];
    [pendingOperations removeObjectAtIndex:0];
  }

  else
  {
    [(StreamingFileWriterQueue *)self setRunningOperationCount:[(StreamingFileWriterQueue *)self runningOperationCount]- 1];
    v15 = 0;
  }

  os_unfair_lock_unlock(&self->_pendingStateLock);
  if (v15)
  {
    trackingGroup2 = [v15 trackingGroup];
    fileWriterQueue = [(StreamingFileWriterQueue *)self fileWriterQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001064C;
    v18[3] = &unk_100028808;
    v18[4] = self;
    v19 = v15;
    dispatch_group_async(trackingGroup2, fileWriterQueue, v18);
  }
}

- (id)reserveAsyncOperationForFileSize:(int64_t)size path:(id)path group:(id)group operationPendingForPath:(BOOL *)forPath
{
  pathCopy = path;
  groupCopy = group;
  if ([(StreamingFileWriterQueue *)self maxPendingItemSize]>= size)
  {
    v13 = size >= 0;
  }

  else
  {
    v12 = sub_10000123C();
    if (os_signpost_enabled(v12))
    {
      v25 = 138412546;
      v26 = pathCopy;
      v27 = 2048;
      sizeCopy3 = size;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FILE_TOO_BIG", "Too large for async: %@ size %lld", &v25, 0x16u);
    }

    v13 = 0;
  }

  v14 = [NSValue valueWithNonretainedObject:groupCopy];
  os_unfair_lock_lock(&self->_pendingStateLock);
  pendingOperationPathsByGroupPointer = [(StreamingFileWriterQueue *)self pendingOperationPathsByGroupPointer];
  v16 = [pendingOperationPathsByGroupPointer objectForKeyedSubscript:v14];

  if (v16)
  {
    v17 = [v16 containsObject:pathCopy];
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

  v18 = [(StreamingFileWriterQueue *)self pendingOperationSize]+ size;
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
    v26 = pathCopy;
    v27 = 2048;
    sizeCopy3 = size;
    v29 = 2048;
    v30 = v18;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ASYNC_FILE_RESERVED", "Async op reserved for %@ size %lld (cur total: %lld)", &v25, 0x20u);
  }

  v19 = [[StreamingFileWriterQueueReservation alloc] initWithReservationSize:size];
  v20 = 0;
  if (v17)
  {
LABEL_16:
    v22 = sub_10000123C();
    if (os_signpost_enabled(v22))
    {
      v25 = 138412290;
      v26 = pathCopy;
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
      v26 = pathCopy;
      v27 = 2048;
      sizeCopy3 = size;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ASYNC_FILE_QUEUE_FULL", "Insufficient buffer avilable for %@ size %lld", &v25, 0x16u);
    }
  }

  *forPath = v17;

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_10002F170)
  {
    v3 = objc_alloc_init(selfCopy);
    v4 = qword_10002F170;
    qword_10002F170 = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = qword_10002F170;

  return v5;
}

@end