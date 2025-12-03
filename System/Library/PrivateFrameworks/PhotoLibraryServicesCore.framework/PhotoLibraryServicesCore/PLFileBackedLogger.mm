@interface PLFileBackedLogger
+ (BOOL)_getResourceValue:(id *)value key:(id)key url:(id)url error:(id *)error;
+ (id)_openLoggerAtURL:(id)l logRotate:(BOOL)rotate error:(id *)error;
+ (id)_removeAndCreateLoggerAtURL:(id)l logRotate:(BOOL)rotate error:(id *)error;
+ (id)_setupWithLibraryIdentifier:(id)identifier type:(char)type logURL:(id)l;
+ (id)setupWithLibraryIdentifier:(id)identifier type:(char)type;
- (BOOL)isClosed;
- (PLFileBackedLogger)init;
- (PLFileBackedLogger)initWithLogFileURL:(id)l logRotate:(BOOL)rotate;
- (id)_inlock_createLoggerRecordWithLogFileURL:(id)l logRotate:(BOOL)rotate didRebuildLogArchive:(BOOL *)archive error:(id *)error;
- (int)fileRefCount;
- (void)_inlock_flush;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)logWithMessage:(const char *)message fromCodeLocation:(id)location type:(unsigned __int8)type;
@end

@implementation PLFileBackedLogger

- (BOOL)isClosed
{
  os_unfair_lock_lock(&s_lock);
  LOBYTE(self) = self->_lock_closed;
  os_unfair_lock_unlock(&s_lock);
  return self;
}

- (int)fileRefCount
{
  os_unfair_lock_lock(&s_lock);
  LODWORD(self) = [(PLAppleArchiveLoggerRecord *)self->_lock_loggerRecord refCount];
  os_unfair_lock_unlock(&s_lock);
  return self;
}

- (void)logWithMessage:(const char *)message fromCodeLocation:(id)location type:(unsigned __int8)type
{
  typeCopy = type;
  v6 = *&location.var1;
  var0 = location.var0;
  v32 = *MEMORY[0x1E69E9840];
  v29 = 0;
  pthread_threadid_np(0, &v29);
  v10 = getpid();
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  uTF8String = [processName UTF8String];

  if (var0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:var0];
    lastPathComponent = [v14 lastPathComponent];
  }

  else
  {
    lastPathComponent = @"unknown";
  }

  v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
  dateFormatter = self->_dateFormatter;
  date = [MEMORY[0x1E695DF00] date];
  v19 = [(NSDateFormatter *)dateFormatter stringFromDate:date];
  [v16 appendString:v19];

  if (typeCopy <= 1)
  {
    if (!typeCopy)
    {
      v20 = "Default";
      goto LABEL_16;
    }

    if (typeCopy == 1)
    {
      v20 = "Info";
      goto LABEL_16;
    }
  }

  else
  {
    switch(typeCopy)
    {
      case 2:
        v20 = "Debug";
        goto LABEL_16;
      case 16:
        v20 = "Error";
        goto LABEL_16;
      case 17:
        v20 = "Fault";
        goto LABEL_16;
    }
  }

  v20 = "Unknown";
LABEL_16:
  [v16 appendFormat:@"0x%-8llx %-8s %8d %s: %@:%-5d ", v29, v20, v10, uTF8String, lastPathComponent, v6];
  if (self->_tag)
  {
    [v16 appendFormat:@"id:%@ ", self->_tag];
  }

  [v16 appendFormat:@"%s\n", message];
  os_unfair_lock_lock(&s_lock);
  lock_loggerRecord = self->_lock_loggerRecord;
  if (lock_loggerRecord)
  {
    logger = [(PLAppleArchiveLoggerRecord *)lock_loggerRecord logger];
    v28 = 0;
    v23 = [logger encodeBuffer:objc_msgSend(v16 size:"cStringUsingEncoding:" error:{4), objc_msgSend(v16, "lengthOfBytesUsingEncoding:", 4), &v28}];
    v24 = v28;

    if (v23)
    {
      if (self->_enableAutoFlush)
      {
        v25 = self->_lock_loggerRecord;
        v26 = [(PLAppleArchiveLoggerRecord *)v25 autoFlushCounter]+ 1;
        [(PLAppleArchiveLoggerRecord *)v25 setAutoFlushCounter:v26];
        if (v26 >= 0xB)
        {
          [(PLFileBackedLogger *)self _inlock_flush];
          [(PLAppleArchiveLoggerRecord *)self->_lock_loggerRecord setAutoFlushCounter:0];
        }
      }
    }

    else
    {
      v27 = PLBackendGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v24;
        _os_log_impl(&dword_1AA9BD000, v27, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: Failed while logging to archive logger: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v24 = 0;
  }

  os_unfair_lock_unlock(&s_lock);
}

- (void)_inlock_flush
{
  os_unfair_lock_assert_owner(&s_lock);
  if ([(PLAppleArchiveLoggerRecord *)self->_lock_loggerRecord refCount]>= 1)
  {
    logger = [(PLAppleArchiveLoggerRecord *)self->_lock_loggerRecord logger];
    [logger flush:0];
  }
}

- (void)flush
{
  os_unfair_lock_lock(&s_lock);
  [(PLFileBackedLogger *)self _inlock_flush];

  os_unfair_lock_unlock(&s_lock);
}

- (void)dealloc
{
  [(PLFileBackedLogger *)self close];
  v3.receiver = self;
  v3.super_class = PLFileBackedLogger;
  [(PLFileBackedLogger *)&v3 dealloc];
}

- (void)close
{
  *&v20[5] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&s_lock);
  if (!self->_lock_closed)
  {
    lock_loggerRecord = self->_lock_loggerRecord;
    if (lock_loggerRecord)
    {
      if ([(PLAppleArchiveLoggerRecord *)lock_loggerRecord refCount]<= 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        refCount = [(PLAppleArchiveLoggerRecord *)self->_lock_loggerRecord refCount];
        v18 = [(PLAppleArchiveLoggerRecord *)self->_lock_loggerRecord url];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PLFileBackedLog.m" lineNumber:231 description:{@"already closed. Ref count: %d. url: %@", refCount, v18}];
      }

      v5 = self->_lock_loggerRecord;
      v6 = [(PLAppleArchiveLoggerRecord *)v5 refCount]- 1;
      [(PLAppleArchiveLoggerRecord *)v5 setRefCount:v6];
      if (v6)
      {
        [(PLFileBackedLogger *)self _inlock_flush];
        p_super = PLBackendGetLog();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
        {
          refCount2 = [(PLAppleArchiveLoggerRecord *)self->_lock_loggerRecord refCount];
          v9 = [(PLAppleArchiveLoggerRecord *)self->_lock_loggerRecord url];
          lastPathComponent = [v9 lastPathComponent];
          *buf = 67109378;
          v20[0] = refCount2;
          LOWORD(v20[1]) = 2114;
          *(&v20[1] + 2) = lastPathComponent;
          _os_log_impl(&dword_1AA9BD000, p_super, OS_LOG_TYPE_INFO, "PLFileBackedLogger: decrement logger ref count to %d for log: %{public}@", buf, 0x12u);
        }
      }

      else
      {
        v11 = PLBackendGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [(PLAppleArchiveLoggerRecord *)self->_lock_loggerRecord url];
          *buf = 138543362;
          *v20 = v12;
          _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_DEFAULT, "PLFileBackedLogger: close url backed logger: %{public}@", buf, 0xCu);
        }

        logger = [(PLAppleArchiveLoggerRecord *)self->_lock_loggerRecord logger];
        [logger close:0];

        v14 = s_lock_loggers;
        v15 = [(PLAppleArchiveLoggerRecord *)self->_lock_loggerRecord url];
        [v14 setObject:0 forKeyedSubscript:v15];

        p_super = &self->_lock_loggerRecord->super;
        self->_lock_loggerRecord = 0;
      }

      self->_lock_closed = 1;
    }
  }

  os_unfair_lock_unlock(&s_lock);
}

- (id)_inlock_createLoggerRecordWithLogFileURL:(id)l logRotate:(BOOL)rotate didRebuildLogArchive:(BOOL *)archive error:(id *)error
{
  rotateCopy = rotate;
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  os_unfair_lock_assert_owner(&s_lock);
  v10 = PLBackendGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = lCopy;
    _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_DEFAULT, "PLFileBackedLogger: open url backed logger: %{public}@", buf, 0xCu);
  }

  v24 = 0;
  v11 = [PLFileBackedLogger _openLoggerAtURL:lCopy logRotate:rotateCopy error:&v24];
  v12 = v24;
  v13 = v12;
  if (v11)
  {
    goto LABEL_4;
  }

  HasDomainAndCode = PLErrorOrUnderlyingErrorHasDomainAndCode(v12, *MEMORY[0x1E69C09C0], 500300);
  v17 = *MEMORY[0x1E696A798];
  v18 = HasDomainAndCode && PLErrorOrUnderlyingErrorHasDomainAndCode(v13, *MEMORY[0x1E696A798], 0);
  if (!PLErrorOrUnderlyingErrorHasDomainAndCode(v13, v17, 17) && !v18)
  {
    goto LABEL_18;
  }

  v19 = PLBackendGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v26 = lCopy;
    _os_log_impl(&dword_1AA9BD000, v19, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: open url found a corrupt log file. Attempting repair for: %{public}@", buf, 0xCu);
  }

  v23 = v13;
  v11 = [PLFileBackedLogger _removeAndCreateLoggerAtURL:lCopy logRotate:rotateCopy error:&v23];
  v20 = v23;

  if (archive)
  {
    *archive = 1;
  }

  v13 = v20;
  if (v11)
  {
LABEL_4:
    v14 = [[PLAppleArchiveLoggerRecord alloc] initWithURL:lCopy logger:v11];
  }

  else
  {
LABEL_18:
    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_1AA9BD000, v21, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: Failed to open log file. Error: %@", buf, 0xCu);
    }

    if (error)
    {
      v22 = v13;
      v14 = 0;
      *error = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (PLFileBackedLogger)initWithLogFileURL:(id)l logRotate:(BOOL)rotate
{
  rotateCopy = rotate;
  v67 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v33.receiver = self;
  v33.super_class = PLFileBackedLogger;
  v7 = [(PLFileBackedLogger *)&v33 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v7->_dateFormatter;
    v7->_dateFormatter = v8;

    [(NSDateFormatter *)v7->_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS "];
    v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)v7->_dateFormatter setLocale:v10];
    v7->_enableAutoFlush = 0;
    v32 = 0;
    os_unfair_lock_lock(&s_lock);
    v11 = s_lock_loggers;
    if (!s_lock_loggers)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = s_lock_loggers;
      s_lock_loggers = v12;

      v11 = s_lock_loggers;
    }

    v14 = [v11 objectForKeyedSubscript:lCopy];
    lock_loggerRecord = v7->_lock_loggerRecord;
    v7->_lock_loggerRecord = v14;

    v16 = v7->_lock_loggerRecord;
    if (!v16)
    {
      v31 = 0;
      v17 = [(PLFileBackedLogger *)v7 _inlock_createLoggerRecordWithLogFileURL:lCopy logRotate:rotateCopy didRebuildLogArchive:&v32 error:&v31];
      v18 = v31;
      if (!v17)
      {
        v28 = PLBackendGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v18;
          _os_log_impl(&dword_1AA9BD000, v28, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: Failed to create logger record. Invalidating logger initialization. Error: %@", buf, 0xCu);
        }

        os_unfair_lock_unlock(&s_lock);
        v7 = 0;
        goto LABEL_16;
      }

      [s_lock_loggers setObject:v17 forKeyedSubscript:lCopy];
      v19 = [s_lock_loggers objectForKeyedSubscript:lCopy];
      v20 = v7->_lock_loggerRecord;
      v7->_lock_loggerRecord = v19;

      v16 = v7->_lock_loggerRecord;
    }

    [(PLAppleArchiveLoggerRecord *)v16 setRefCount:[(PLAppleArchiveLoggerRecord *)v16 refCount]+ 1];
    v7->_lock_closed = 0;
    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      refCount = [(PLAppleArchiveLoggerRecord *)v7->_lock_loggerRecord refCount];
      *buf = 67109378;
      *&buf[4] = refCount;
      *&buf[8] = 2114;
      *&buf[10] = lCopy;
      _os_log_impl(&dword_1AA9BD000, v21, OS_LOG_TYPE_INFO, "PLFileBackedLogger: url backed logger ref count %d for log %{public}@", buf, 0x12u);
    }

    os_unfair_lock_unlock(&s_lock);
    if (v32 == 1)
    {
      v23 = PLBackendGetLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        memset(buf, 0, sizeof(buf));
        v25 = PLBackendGetLog();
        os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        v26 = [MEMORY[0x1E695DF00] now];
        v34 = 138412290;
        v35 = v26;
        LODWORD(v30) = 12;
        v27 = _os_log_send_and_compose_impl();

        [(PLFileBackedLogger *)v7 logWithMessage:v27 fromCodeLocation:"PLFileBackedLog.m" type:188, 0, &v34, v30];
        if (v27 != buf)
        {
          free(v27);
        }
      }
    }

LABEL_16:
  }

  return v7;
}

- (PLFileBackedLogger)init
{
  v2 = PLMethodNotImplementedException(self, a2);
  objc_exception_throw(v2);
}

+ (id)_openLoggerAtURL:(id)l logRotate:(BOOL)rotate error:(id *)error
{
  rotateCopy = rotate;
  v70[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([lCopy isFileURL])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    v62 = 0;
    v10 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v62];
    v11 = v62;

    if (v10)
    {
      if (!rotateCopy)
      {
LABEL_36:
        v49 = [objc_alloc(MEMORY[0x1E69C0650]) initWithArchiveURL:lCopy];
        v58 = v11;
        v50 = [v49 openForWriting:&v58];
        v28 = v58;

        if (v50)
        {
          v30 = v49;
        }

        else
        {
          v51 = PLBackendGetLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            path = [lCopy path];
            *buf = 138412546;
            v64 = path;
            v65 = 2112;
            v66 = v28;
            _os_log_impl(&dword_1AA9BD000, v51, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: Unable to write-open file descriptor at %@: Error: %@", buf, 0x16u);
          }

          if (error)
          {
            v53 = v28;
            v30 = 0;
            *error = v28;
          }

          else
          {
            v30 = 0;
          }
        }

        goto LABEL_44;
      }

      uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
      v13 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"log"];

      v14 = [lCopy URLByAppendingPathExtension:@"old"];
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      path2 = [v13 path];
      v17 = [defaultManager2 fileExistsAtPath:path2];

      if (v17)
      {
        path3 = [v14 path];
        v19 = [defaultManager2 fileExistsAtPath:path3];

        if (v19)
        {
          v20 = PLBackendGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            path4 = [v13 path];
            path5 = [v14 path];
            *buf = 138412546;
            v64 = path4;
            v65 = 2112;
            v66 = path5;
            _os_log_impl(&dword_1AA9BD000, v20, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: cannot rotate %@ to %@: destination exists", buf, 0x16u);
          }

          v23 = 0;
        }

        else
        {
          v61 = 0;
          v45 = [MEMORY[0x1E69C0650] encodeFile:v13 destination:v14 error:&v61];
          v46 = v61;
          v23 = v46;
          if (v45)
          {
            v60 = v46;
            v47 = [defaultManager2 removeItemAtURL:v13 error:&v60];
            v24 = v60;

            if (v47)
            {
              goto LABEL_22;
            }

            v20 = PLBackendGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              path6 = [v13 path];
              *buf = 138412546;
              v64 = path6;
              v65 = 2112;
              v66 = v24;
              _os_log_impl(&dword_1AA9BD000, v20, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: error removing legacy log file %@: %@", buf, 0x16u);
            }

            v23 = v24;
          }

          else
          {
            v20 = PLBackendGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              path7 = [v13 path];
              [v14 path];
              v56 = v57 = v13;
              *buf = 138412802;
              v64 = path7;
              v65 = 2112;
              v66 = v56;
              v67 = 2112;
              v68 = v23;
              _os_log_impl(&dword_1AA9BD000, v20, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: cannot rotate %@ to %@: %@", buf, 0x20u);
            }
          }
        }

        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

LABEL_22:
      path8 = [lCopy path];
      v36 = [defaultManager2 fileExistsAtPath:path8];

      if (v36)
      {
        path9 = [lCopy path];
        v38 = [defaultManager2 attributesOfItemAtPath:path9 error:0];
        fileSize = [v38 fileSize];

        if (fileSize >> 22 < 0x19)
        {
          v41 = v24;
        }

        else
        {
          v59 = v24;
          v40 = [defaultManager2 moveItemAtURL:lCopy toURL:v14 error:&v59];
          v41 = v59;

          if ((v40 & 1) == 0)
          {
            v42 = PLBackendGetLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              path10 = [lCopy path];
              path11 = [v14 path];
              *buf = 138412802;
              v64 = path10;
              v65 = 2112;
              v66 = path11;
              v67 = 2112;
              v68 = v41;
              _os_log_impl(&dword_1AA9BD000, v42, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: cannot rotate %@ to %@: %@", buf, 0x20u);
            }
          }
        }
      }

      else
      {
        v41 = v24;
      }

      goto LABEL_36;
    }

    v31 = PLBackendGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      uRLByDeletingLastPathComponent2 = [lCopy URLByDeletingLastPathComponent];
      path12 = [uRLByDeletingLastPathComponent2 path];
      *buf = 138412546;
      v64 = path12;
      v65 = 2112;
      v66 = v11;
      _os_log_impl(&dword_1AA9BD000, v31, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: Unable to create a log file directory at %@, error:%@", buf, 0x16u);
    }

    if (error)
    {
      v34 = v11;
      v30 = 0;
      *error = v11;
    }

    else
    {
      v30 = 0;
    }

    v28 = v11;
  }

  else
  {
    v25 = MEMORY[0x1E696ABC0];
    v69 = *MEMORY[0x1E696A278];
    v70[0] = @"url parameter is not a file url";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    v27 = [v25 errorWithDomain:@"com.apple.photos.error" code:46102 userInfo:v26];
    if (error)
    {
      v27 = v27;
      *error = v27;
    }

    v28 = PLBackendGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      lastPathComponent = [lCopy lastPathComponent];
      *buf = 138543362;
      v64 = lastPathComponent;
      _os_log_impl(&dword_1AA9BD000, v28, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: Backend logging requires a file URL. Url specified %{public}@", buf, 0xCu);
    }

    v30 = 0;
  }

LABEL_44:

  return v30;
}

+ (id)_removeAndCreateLoggerAtURL:(id)l logRotate:(BOOL)rotate error:(id *)error
{
  rotateCopy = rotate;
  v65[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v53 = 0;
    v9 = *MEMORY[0x1E695DB78];
    v52 = 0;
    v10 = [self _getResourceValue:&v53 key:v9 url:lCopy error:&v52];
    v11 = v53;
    v12 = v52;
    v13 = v12;
    if ((v10 & 1) == 0)
    {
      if (error)
      {
        v24 = v12;
        v23 = 0;
        *error = v13;
LABEL_34:

        goto LABEL_35;
      }

LABEL_16:
      v23 = 0;
      goto LABEL_34;
    }

    if ([v11 BOOLValue])
    {
      v14 = MEMORY[0x1E696ABC0];
      v62 = *MEMORY[0x1E696A278];
      v63 = @"url parameter is a directory";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v16 = [v14 errorWithDomain:@"com.apple.photos.error" code:46102 userInfo:v15];
      if (error)
      {
        v16 = v16;
        *error = v16;
      }

      v17 = PLBackendGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        lastPathComponent = [lCopy lastPathComponent];
        *buf = 138543362;
        v55 = lastPathComponent;
        _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: Backend logging requires a file URL. Url specified is a directory %{public}@", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v51 = 0;
    v25 = *MEMORY[0x1E695DC30];
    v50 = v13;
    v26 = [self _getResourceValue:&v51 key:v25 url:lCopy error:&v50];
    v27 = v51;
    v28 = v50;

    if (v26)
    {
      pathExtension = [v27 pathExtension];
      v30 = [pathExtension isEqualToString:@"aapbz"];

      if (v30)
      {
        if (unlink([lCopy fileSystemRepresentation]))
        {
          v49 = MEMORY[0x1E696ABC0];
          v31 = *MEMORY[0x1E696A798];
          v32 = *__error();
          v58[0] = *MEMORY[0x1E696A278];
          v33 = MEMORY[0x1E696AEC0];
          v34 = __error();
          v35 = [v33 stringWithUTF8String:strerror(*v34)];
          v59[0] = v35;
          v58[1] = *MEMORY[0x1E696A368];
          path = [lCopy path];
          v59[1] = path;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
          v38 = [v49 errorWithDomain:v31 code:v32 userInfo:v37];

          if (error)
          {
            v39 = v38;
            *error = v38;
          }

          v40 = PLBackendGetLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            lastPathComponent2 = [lCopy lastPathComponent];
            *buf = 138543618;
            v55 = lastPathComponent2;
            v56 = 2112;
            v57 = v38;
            _os_log_impl(&dword_1AA9BD000, v40, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: Backend logging failed to removed corrupt log file %{public}@. Error: %@", buf, 0x16u);
          }

          v23 = 0;
          v28 = v38;
        }

        else
        {
          v23 = [self _openLoggerAtURL:lCopy logRotate:rotateCopy error:error];
        }

        goto LABEL_33;
      }

      v43 = MEMORY[0x1E696ABC0];
      v60 = *MEMORY[0x1E696A278];
      v61 = @"url filename is of an unknown type";
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v45 = [v43 errorWithDomain:@"com.apple.photos.error" code:46102 userInfo:v44];
      if (error)
      {
        v45 = v45;
        *error = v45;
      }

      v46 = PLBackendGetLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        lastPathComponent3 = [lCopy lastPathComponent];
        *buf = 138543362;
        v55 = lastPathComponent3;
        _os_log_impl(&dword_1AA9BD000, v46, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: Backend logging requires a file URL with an expected path extension %{public}@", buf, 0xCu);
      }
    }

    else if (error)
    {
      v42 = v28;
      v23 = 0;
      *error = v28;
LABEL_33:

      v13 = v28;
      goto LABEL_34;
    }

    v23 = 0;
    goto LABEL_33;
  }

  v19 = MEMORY[0x1E696ABC0];
  v64 = *MEMORY[0x1E696A278];
  v65[0] = @"url parameter is not a file url";
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
  v21 = [v19 errorWithDomain:@"com.apple.photos.error" code:46102 userInfo:v20];
  if (error)
  {
    v21 = v21;
    *error = v21;
  }

  v13 = PLBackendGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    lastPathComponent4 = [lCopy lastPathComponent];
    *buf = 138543362;
    v55 = lastPathComponent4;
    _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: Backend logging requires a file URL. Url specified %{public}@", buf, 0xCu);
  }

  v23 = 0;
LABEL_35:

  return v23;
}

+ (BOOL)_getResourceValue:(id *)value key:(id)key url:(id)url error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  urlCopy = url;
  v17 = 0;
  v10 = [urlCopy getResourceValue:value forKey:key error:&v17];
  v11 = v17;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    if (error)
    {
      v13 = v11;
      *error = v12;
    }

    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      lastPathComponent = [urlCopy lastPathComponent];
      *buf = 138543618;
      v19 = lastPathComponent;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_1AA9BD000, v14, OS_LOG_TYPE_ERROR, "PLFileBackedLogger: Backend logging failed to determine the url status for %{public}@. Error: %@", buf, 0x16u);
    }
  }

  return v10;
}

+ (id)_setupWithLibraryIdentifier:(id)identifier type:(char)type logURL:(id)l
{
  typeCopy = type;
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  if (lCopy)
  {
    v9 = [[PLFileBackedLogger alloc] initWithLogFileURL:lCopy logRotate:1];
  }

  else
  {
    v9 = 0;
  }

  [(PLFileBackedLogger *)v9 setLoggerType:typeCopy];
  if ([identifierCopy length] < 9)
  {
    if (identifierCopy)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = identifierCopy;
        _os_log_impl(&dword_1AA9BD000, v12, OS_LOG_TYPE_DEFAULT, "PLFileBackedLogger: Tag length shorter than expected for identifier %{public}@", &v14, 0xCu);
      }
    }

    v10 = [identifierCopy copy];
    [(PLFileBackedLogger *)v9 setTag:v10];
  }

  else
  {
    v10 = [identifierCopy substringToIndex:8];
    v11 = [v10 copy];
    [(PLFileBackedLogger *)v9 setTag:v11];
  }

  return v9;
}

+ (id)setupWithLibraryIdentifier:(id)identifier type:(char)type
{
  typeCopy = type;
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
  {
    v7 = @"PhotosUpgrade";
    if (typeCopy != 1)
    {
      v7 = 0;
    }

    if (typeCopy == 2)
    {
      v8 = @"PhotosSearch";
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      v9 = [@"Logs/com.apple.assetsd" stringByAppendingPathComponent:?];
      v10 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
      lastObject = [v10 lastObject];

      v12 = [lastObject stringByAppendingPathComponent:v9];
      v13 = [v12 stringByAppendingPathExtension:@"aapbz"];

      v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:0];

      goto LABEL_13;
    }

    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 67109120;
      v18[1] = typeCopy;
      _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_ERROR, "failed to obtain name for file backed log for type: %d", v18, 8u);
    }
  }

  v14 = 0;
LABEL_13:
  v16 = [self _setupWithLibraryIdentifier:identifierCopy type:typeCopy logURL:v14];

  return v16;
}

@end