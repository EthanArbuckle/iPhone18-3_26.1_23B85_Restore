@interface ExtractFileOperation
- (BOOL)_applyFileAttributesToDirectory:(id)directory error:(id *)error;
- (BOOL)_performBOMCopy:(id *)copy;
- (id)_newBOMCopierOptions;
- (void)_copierFinishedFileWithPath:(const char *)path size:(int64_t)size;
- (void)_copierStartedFileWithPath:(const char *)path size:(int64_t)size;
- (void)_copierUpdatedFileWithPath:(const char *)path size:(int64_t)size;
- (void)_initializeProgress;
- (void)_updateProgressWithByteCount:(int64_t)count;
- (void)dealloc;
- (void)run;
@end

@implementation ExtractFileOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ExtractFileOperation;
  [(ExtractFileOperation *)&v3 dealloc];
}

- (void)run
{
  [(ExtractFileOperation *)self _initializeProgress];
  v4 = 0;
  v3 = [(ExtractFileOperation *)self _performBOMCopy:&v4];
  if (v3)
  {
    [(ExtractFileOperation *)self _applyFileAttributesToDirectory:[(ExtractFileOperation *)self destinationFilePath] error:0];
  }

  [(ExtractFileOperation *)self setError:v4];
  [(ExtractFileOperation *)self setSuccess:v3];
}

- (BOOL)_applyFileAttributesToDirectory:(id)directory error:(id *)error
{
  v66 = 0;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 & 2;
  }

  if (v10)
  {
    v73.st_dev = 138412546;
    *&v73.st_mode = objc_opt_class();
    WORD2(v73.st_ino) = 2112;
    *(&v73.st_ino + 6) = directory;
    LODWORD(v58) = 22;
    v56 = &v73;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4, &v73, v58];
      free(v12);
      v56 = v13;
      SSFileLog();
    }
  }

  v61 = objc_alloc_init(NSFileManager);
  v14 = [v61 subpathsOfDirectoryAtPath:directory error:&v66];
  if (!v14)
  {
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = shouldLog2 | 2;
    }

    else
    {
      v29 = shouldLog2;
    }

    if (os_log_type_enabled([v27 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 & 2;
    }

    if (v30)
    {
      v31 = objc_opt_class();
      v73.st_dev = 138412802;
      *&v73.st_mode = v31;
      WORD2(v73.st_ino) = 2112;
      *(&v73.st_ino + 6) = directory;
      HIWORD(v73.st_gid) = 2112;
      *&v73.st_rdev = v66;
      LODWORD(v58) = 32;
      v32 = _os_log_send_and_compose_impl();
      if (v32)
      {
        v33 = v32;
        [NSString stringWithCString:v32 encoding:4, &v73, v58];
        free(v33);
        SSFileLog();
      }
    }

    v34 = v66;
    v26 = 0;
    goto LABEL_67;
  }

  v15 = v14;
  v60 = [(NSDictionary *)[(ExtractFileOperation *)self fileAttributes] mutableCopy];
  if (!v60)
  {
    v60 = objc_alloc_init(NSMutableDictionary);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v62 objects:v74 count:{16, v56}];
  if (!v16)
  {
    v26 = 1;
    goto LABEL_66;
  }

  v17 = v16;
  errorCopy = error;
  v18 = *v63;
  while (2)
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v63 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v62 + 1) + 8 * i);
      v21 = objc_alloc_init(NSAutoreleasePool);
      v22 = [directory stringByAppendingPathComponent:v20];
      fileSystemRepresentation = [v22 fileSystemRepresentation];
      if (fileSystemRepresentation)
      {
        memset(&v73, 0, sizeof(v73));
        if (stat(fileSystemRepresentation, &v73))
        {
          v35 = +[SSLogConfig sharedDaemonConfig];
          if (!v35)
          {
            v35 = +[SSLogConfig sharedConfig];
          }

          shouldLog3 = [v35 shouldLog];
          if ([v35 shouldLogToDisk])
          {
            v37 = shouldLog3 | 2;
          }

          else
          {
            v37 = shouldLog3;
          }

          if (os_log_type_enabled([v35 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
          }

          else
          {
            v38 = v37 & 2;
          }

          if (v38)
          {
            v39 = objc_opt_class();
            v40 = __error();
            v41 = strerror(*v40);
            v67 = 138412802;
            v68 = v39;
            v69 = 2112;
            v70 = v22;
            v71 = 2080;
            v72 = v41;
            LODWORD(v58) = 32;
            v57 = &v67;
            v42 = _os_log_send_and_compose_impl();
            if (v42)
            {
              v43 = v42;
              v44 = [NSString stringWithCString:v42 encoding:4, &v67, v58];
              free(v43);
              v57 = v44;
              SSFileLog();
            }
          }

          v66 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
        }

        else
        {
          v24 = [NSNumber alloc];
          0x1B0u = [v24 initWithShort:v73.st_mode | 0x1B0u];
          [v60 setObject:0x1B0u forKey:NSFilePosixPermissions];

          v66 = 0;
          if ([v61 setAttributes:v60 ofItemAtPath:v22 error:&v66])
          {

            goto LABEL_24;
          }

          v45 = +[SSLogConfig sharedDaemonConfig];
          if (!v45)
          {
            v45 = +[SSLogConfig sharedConfig];
          }

          shouldLog4 = [v45 shouldLog];
          if ([v45 shouldLogToDisk])
          {
            v47 = shouldLog4 | 2;
          }

          else
          {
            v47 = shouldLog4;
          }

          if (os_log_type_enabled([v45 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v48 = v47;
          }

          else
          {
            v48 = v47 & 2;
          }

          if (v48)
          {
            v49 = objc_opt_class();
            v67 = 138412802;
            v68 = v49;
            v69 = 2112;
            v70 = v22;
            v71 = 2112;
            v72 = v66;
            LODWORD(v58) = 32;
            v57 = &v67;
            v50 = _os_log_send_and_compose_impl();
            if (v50)
            {
              v51 = v50;
              v52 = [NSString stringWithCString:v50 encoding:4, &v67, v58];
              free(v51);
              v57 = v52;
              SSFileLog();
            }
          }

          v53 = v66;
        }

        [v21 drain];
        v26 = 0;
        goto LABEL_65;
      }

LABEL_24:
      [v21 drain];
    }

    v17 = [v15 countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

  v26 = 1;
LABEL_65:
  error = errorCopy;
LABEL_66:

LABEL_67:
  v54 = v66;
  if (error)
  {
    *error = v66;
  }

  return v26;
}

- (void)_copierFinishedFileWithPath:(const char *)path size:(int64_t)size
{
  [(ExtractFileOperation *)self _copierUpdatedFileWithPath:path size:size];

  self->_activeFilePath = 0;
}

- (void)_copierStartedFileWithPath:(const char *)path size:(int64_t)size
{
  self->_activeFileBytesCopied = 0;

  self->_activeFilePath = [[NSString alloc] initWithCString:path encoding:4];
}

- (void)_copierUpdatedFileWithPath:(const char *)path size:(int64_t)size
{
  activeFilePath = self->_activeFilePath;
  if (activeFilePath)
  {
    if (!strcmp(path, [(NSString *)activeFilePath cStringUsingEncoding:4]))
    {
      [(ExtractFileOperation *)self _updateProgressWithByteCount:size - self->_activeFileBytesCopied];
      self->_activeFileBytesCopied = size;
    }
  }
}

- (void)_initializeProgress
{
  [(NSString *)[(ExtractFileOperation *)self sourceFilePath] fileSystemRepresentation];
  if (!BOMCopierCountFilesInArchive())
  {
    v3 = OBJC_IVAR___ISOperation__progress;
    [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setUnits:1];
    [*&self->ISOperation_opaque[v3] setMaxValue:0];
    [*&self->ISOperation_opaque[v3] resetSnapshots];
    self->_lastSnapshotTime = -1.79769313e308;
    [(ExtractFileOperation *)self _updateProgressWithByteCount:0];
  }
}

- (id)_newBOMCopierOptions
{
  v3 = objc_alloc_init(NSMutableDictionary);
  sourceFileType = [(ExtractFileOperation *)self sourceFileType];
  if (sourceFileType == 1)
  {
    v5 = @"extractCPIO";
    goto LABEL_5;
  }

  if (!sourceFileType)
  {
    v5 = @"extractPKZip";
LABEL_5:
    [v3 setObject:kCFBooleanTrue forKey:v5];
  }

  return v3;
}

- (BOOL)_performBOMCopy:(id *)copy
{
  if (!BOMCopierNew())
  {
    v23 = 0;
    v15 = 0;
    if (!copy)
    {
      return v15;
    }

    goto LABEL_28;
  }

  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  BOMCopierSetCopyFileStartedHandler();
  BOMCopierSetCopyFileUpdateHandler();
  BOMCopierSetFatalErrorHandler();
  BOMCopierSetFatalFileErrorHandler();
  BOMCopierSetFileConflictErrorHandler();
  BOMCopierSetFileErrorHandler();
  fileSystemRepresentation = [(NSString *)[(ExtractFileOperation *)self sourceFilePath] fileSystemRepresentation];
  fileSystemRepresentation2 = [(NSString *)[(ExtractFileOperation *)self destinationFilePath] fileSystemRepresentation];
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v27 = 138412802;
    v28 = objc_opt_class();
    v29 = 2080;
    v30 = fileSystemRepresentation;
    v31 = 2080;
    v32 = fileSystemRepresentation2;
    LODWORD(v26) = 32;
    v25 = &v27;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4, &v27, v26];
      free(v11);
      v25 = v12;
      SSFileLog();
    }
  }

  _newBOMCopierOptions = [(ExtractFileOperation *)self _newBOMCopierOptions];
  v14 = BOMCopierCopyWithOptions();
  v15 = v14 == 0;
  if (v14)
  {
    v16 = v14;
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = shouldLog2 | 2;
    }

    else
    {
      v19 = shouldLog2;
    }

    if (!os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v20 = objc_opt_class();
      v27 = 138412546;
      v28 = v20;
      v29 = 1024;
      LODWORD(v30) = v16;
      LODWORD(v26) = 18;
      v21 = _os_log_send_and_compose_impl();
      if (v21)
      {
        v22 = v21;
        [NSString stringWithCString:v21 encoding:4, &v27, v26];
        free(v22);
        SSFileLog();
      }
    }

    v23 = ISError();
  }

  else
  {
    v23 = 0;
  }

  BOMCopierFree();
  if (copy)
  {
LABEL_28:
    *copy = v23;
  }

  return v15;
}

- (void)_updateProgressWithByteCount:(int64_t)count
{
  v5 = OBJC_IVAR___ISOperation__progress;
  currentValue = [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] currentValue];
  maxValue = &currentValue[count];
  if (maxValue >= [*&self->ISOperation_opaque[v5] maxValue])
  {
    maxValue = [*&self->ISOperation_opaque[v5] maxValue];
  }

  if (maxValue != currentValue)
  {
    [*&self->ISOperation_opaque[v5] setCurrentValue:maxValue];
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (self->_lastSnapshotTime + kSSOperationDefaultSnapshotInterval < Current)
  {
    [*&self->ISOperation_opaque[v5] snapshot];
    [(ExtractFileOperation *)self sendProgressToDelegate];
    self->_lastSnapshotTime = Current;
  }
}

@end