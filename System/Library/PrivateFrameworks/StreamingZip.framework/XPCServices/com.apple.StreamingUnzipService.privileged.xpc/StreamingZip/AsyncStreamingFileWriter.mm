@interface AsyncStreamingFileWriter
- (BOOL)_executeWithError:(id *)error;
- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error;
- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error;
- (StreamingFileWriterErrorDelegate)errorDelegate;
- (id)suspendWithError:(id *)error;
- (int64_t)currentOffsetWithError:(id *)error;
- (timeval)accessTime;
- (timeval)modTime;
- (void)executeAsyncOperation;
- (void)setIncompleteExtractionAttribute;
@end

@implementation AsyncStreamingFileWriter

- (StreamingFileWriterErrorDelegate)errorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_errorDelegate);

  return WeakRetained;
}

- (timeval)modTime
{
  p_modTime = &self->_modTime;
  tv_sec = self->_modTime.tv_sec;
  v4 = *&p_modTime->tv_usec;
  result.tv_usec = v4;
  result.tv_sec = tv_sec;
  return result;
}

- (timeval)accessTime
{
  p_accessTime = &self->_accessTime;
  tv_sec = self->_accessTime.tv_sec;
  v4 = *&p_accessTime->tv_usec;
  result.tv_usec = v4;
  result.tv_sec = tv_sec;
  return result;
}

- (id)suspendWithError:(id *)error
{
  v5 = sub_10000126C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    path = [(StreamingFileWriter *)self path];
    *buf = 138412290;
    v11 = path;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Suspending async file writer for %@", buf, 0xCu);
  }

  [(AsyncStreamingFileWriter *)self setExecuteFileOperationFlags:[(AsyncStreamingFileWriter *)self executeFileOperationFlags]& 0xFFFFFFFFFFFFFFEFLL];
  if ([(AsyncStreamingFileWriter *)self _executeWithError:error])
  {
    v9.receiver = self;
    v9.super_class = AsyncStreamingFileWriter;
    v6 = [(StreamingFileWriter *)&v9 suspendWithError:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)executeAsyncOperation
{
  path = [(StreamingFileWriter *)self path];
  fileSize = [(StreamingFileWriter *)self fileSize];
  v5 = sub_10000126C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = path;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Performing async write for %@", buf, 0xCu);
  }

  v6 = sub_100001314();
  if (os_signpost_enabled(v6))
  {
    *buf = 138412546;
    v14 = path;
    v15 = 2048;
    v16 = fileSize;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ASYNC_WRITE", "Start async operation for %@ size %lld", buf, 0x16u);
  }

  v12 = 0;
  v7 = [(AsyncStreamingFileWriter *)self _executeWithError:&v12];
  v8 = v12;
  if ((v7 & 1) == 0)
  {
    v9 = sub_10000126C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = path;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Async operation for %@ failed: %@", buf, 0x16u);
    }

    errorDelegate = [(AsyncStreamingFileWriter *)self errorDelegate];
    [errorDelegate streamingFileWriter:self didEncounterError:v8];
  }

  v11 = sub_100001314();
  if (os_signpost_enabled(v11))
  {
    *buf = 138412546;
    v14 = path;
    v15 = 2048;
    v16 = fileSize;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ASYNC_WRITE", "End async operation for %@ size %lld", buf, 0x16u);
  }
}

- (BOOL)_executeWithError:(id *)error
{
  executeFileOperationFlags = [(AsyncStreamingFileWriter *)self executeFileOperationFlags];
  if ((executeFileOperationFlags & 1) == 0 || (v20.receiver = self, v20.super_class = AsyncStreamingFileWriter, v6 = [(StreamingFileWriter *)&v20 _openOutputFDWithFlags:[(AsyncStreamingFileWriter *)self oflag] mode:[(AsyncStreamingFileWriter *)self omode] performCachedWrites:[(AsyncStreamingFileWriter *)self performCachedWrites] quarantineInfo:0 error:error]))
  {
    if ((executeFileOperationFlags & 2) != 0)
    {
      v19.receiver = self;
      v19.super_class = AsyncStreamingFileWriter;
      [(StreamingFileWriter *)&v19 configureFileAndSetOwnership:[(AsyncStreamingFileWriter *)self setOwnership] toUID:[(AsyncStreamingFileWriter *)self uid] GID:[(AsyncStreamingFileWriter *)self gid]];
    }

    if ((executeFileOperationFlags & 4) == 0)
    {
      goto LABEL_16;
    }

    fileData = [(AsyncStreamingFileWriter *)self fileData];
    bytes = [fileData bytes];
    fileData2 = [(AsyncStreamingFileWriter *)self fileData];
    v18.receiver = self;
    v18.super_class = AsyncStreamingFileWriter;
    LODWORD(bytes) = -[StreamingFileWriter writeBuffer:length:error:](&v18, "writeBuffer:length:error:", bytes, [fileData2 length], error);

    if (!bytes)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
LABEL_16:
      if ((executeFileOperationFlags & 8) == 0 || (v10 = [(AsyncStreamingFileWriter *)self accessTime], v12 = v11, v13 = [(AsyncStreamingFileWriter *)self modTime], v17.receiver = self, v17.super_class = AsyncStreamingFileWriter, v6 = [(StreamingFileWriter *)&v17 finalizeFileWithAccessTime:v10 modTime:v12 mode:v13 error:v14, [(AsyncStreamingFileWriter *)self mode], error]))
      {
        if ((executeFileOperationFlags & 0x10) == 0 || (v16.receiver = self, v16.super_class = AsyncStreamingFileWriter, v6 = [(StreamingFileWriter *)&v16 closeOutputFDWithError:error]))
        {
          [(AsyncStreamingFileWriter *)self setExecuteFileOperationFlags:0];
          LOBYTE(v6) = 1;
        }
      }
    }
  }

  return v6;
}

- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error
{
  v8 = [(AsyncStreamingFileWriter *)self fileData:buffer];
  [v8 appendBytes:buffer length:length];

  [(AsyncStreamingFileWriter *)self setExecuteFileOperationFlags:[(AsyncStreamingFileWriter *)self executeFileOperationFlags]| 4];
  return 1;
}

- (void)setIncompleteExtractionAttribute
{
  v3 = sub_10000126C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    path = [(StreamingFileWriter *)self path];
    v5 = 138412290;
    v6 = path;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Setting incomplete extraction attribute not available on this async file operation for %@", &v5, 0xCu);
  }
}

- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error
{
  v6 = sub_10000126C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    path = [(StreamingFileWriter *)self path];
    *buf = 138412546;
    v14 = path;
    v15 = 2112;
    v16 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Setting current output offset not available on async file operation for %@ : %@", buf, 0x16u);
  }

  path2 = [(StreamingFileWriter *)self path];
  v9 = sub_1000015F4("[AsyncStreamingFileWriter setCurrentOffset:error:]", 413, @"SZExtractorErrorDomain", 1, 0, 0, @"Setting current output offset not available on async file operation for %@", v8, path2);

  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return 0;
}

- (int64_t)currentOffsetWithError:(id *)error
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  outputFDIsOpen = [fileInterface outputFDIsOpen];

  if (outputFDIsOpen)
  {
    v14.receiver = self;
    v14.super_class = AsyncStreamingFileWriter;
    return [(StreamingFileWriter *)&v14 currentOffsetWithError:error];
  }

  else
  {
    v8 = sub_10000126C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      path = [(StreamingFileWriter *)self path];
      *buf = 138412546;
      v16 = path;
      v17 = 2112;
      v18 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Getting current output offset not available on async file operation for %@ : %@", buf, 0x16u);
    }

    path2 = [(StreamingFileWriter *)self path];
    v11 = sub_1000015F4("[AsyncStreamingFileWriter currentOffsetWithError:]", 404, @"SZExtractorErrorDomain", 1, 0, 0, @"Getting current output offset not available on async file operation for %@", v10, path2);

    if (error)
    {
      v12 = v11;
      *error = v11;
    }

    return -1;
  }
}

@end