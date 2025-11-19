@interface AsyncStreamingFileWriter
- (BOOL)_executeWithError:(id *)a3;
- (BOOL)setCurrentOffset:(int64_t)a3 error:(id *)a4;
- (BOOL)writeBuffer:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
- (StreamingFileWriterErrorDelegate)errorDelegate;
- (id)suspendWithError:(id *)a3;
- (int64_t)currentOffsetWithError:(id *)a3;
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

- (id)suspendWithError:(id *)a3
{
  v5 = sub_10000126C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(StreamingFileWriter *)self path];
    *buf = 138412290;
    v11 = v8;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Suspending async file writer for %@", buf, 0xCu);
  }

  [(AsyncStreamingFileWriter *)self setExecuteFileOperationFlags:[(AsyncStreamingFileWriter *)self executeFileOperationFlags]& 0xFFFFFFFFFFFFFFEFLL];
  if ([(AsyncStreamingFileWriter *)self _executeWithError:a3])
  {
    v9.receiver = self;
    v9.super_class = AsyncStreamingFileWriter;
    v6 = [(StreamingFileWriter *)&v9 suspendWithError:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)executeAsyncOperation
{
  v3 = [(StreamingFileWriter *)self path];
  v4 = [(StreamingFileWriter *)self fileSize];
  v5 = sub_10000126C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Performing async write for %@", buf, 0xCu);
  }

  v6 = sub_100001314();
  if (os_signpost_enabled(v6))
  {
    *buf = 138412546;
    v14 = v3;
    v15 = 2048;
    v16 = v4;
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
      v14 = v3;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Async operation for %@ failed: %@", buf, 0x16u);
    }

    v10 = [(AsyncStreamingFileWriter *)self errorDelegate];
    [v10 streamingFileWriter:self didEncounterError:v8];
  }

  v11 = sub_100001314();
  if (os_signpost_enabled(v11))
  {
    *buf = 138412546;
    v14 = v3;
    v15 = 2048;
    v16 = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ASYNC_WRITE", "End async operation for %@ size %lld", buf, 0x16u);
  }
}

- (BOOL)_executeWithError:(id *)a3
{
  v5 = [(AsyncStreamingFileWriter *)self executeFileOperationFlags];
  if ((v5 & 1) == 0 || (v20.receiver = self, v20.super_class = AsyncStreamingFileWriter, v6 = [(StreamingFileWriter *)&v20 _openOutputFDWithFlags:[(AsyncStreamingFileWriter *)self oflag] mode:[(AsyncStreamingFileWriter *)self omode] performCachedWrites:[(AsyncStreamingFileWriter *)self performCachedWrites] quarantineInfo:0 error:a3]))
  {
    if ((v5 & 2) != 0)
    {
      v19.receiver = self;
      v19.super_class = AsyncStreamingFileWriter;
      [(StreamingFileWriter *)&v19 configureFileAndSetOwnership:[(AsyncStreamingFileWriter *)self setOwnership] toUID:[(AsyncStreamingFileWriter *)self uid] GID:[(AsyncStreamingFileWriter *)self gid]];
    }

    if ((v5 & 4) == 0)
    {
      goto LABEL_16;
    }

    v7 = [(AsyncStreamingFileWriter *)self fileData];
    v8 = [v7 bytes];
    v9 = [(AsyncStreamingFileWriter *)self fileData];
    v18.receiver = self;
    v18.super_class = AsyncStreamingFileWriter;
    LODWORD(v8) = -[StreamingFileWriter writeBuffer:length:error:](&v18, "writeBuffer:length:error:", v8, [v9 length], a3);

    if (!v8)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
LABEL_16:
      if ((v5 & 8) == 0 || (v10 = [(AsyncStreamingFileWriter *)self accessTime], v12 = v11, v13 = [(AsyncStreamingFileWriter *)self modTime], v17.receiver = self, v17.super_class = AsyncStreamingFileWriter, v6 = [(StreamingFileWriter *)&v17 finalizeFileWithAccessTime:v10 modTime:v12 mode:v13 error:v14, [(AsyncStreamingFileWriter *)self mode], a3]))
      {
        if ((v5 & 0x10) == 0 || (v16.receiver = self, v16.super_class = AsyncStreamingFileWriter, v6 = [(StreamingFileWriter *)&v16 closeOutputFDWithError:a3]))
        {
          [(AsyncStreamingFileWriter *)self setExecuteFileOperationFlags:0];
          LOBYTE(v6) = 1;
        }
      }
    }
  }

  return v6;
}

- (BOOL)writeBuffer:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v8 = [(AsyncStreamingFileWriter *)self fileData:a3];
  [v8 appendBytes:a3 length:a4];

  [(AsyncStreamingFileWriter *)self setExecuteFileOperationFlags:[(AsyncStreamingFileWriter *)self executeFileOperationFlags]| 4];
  return 1;
}

- (void)setIncompleteExtractionAttribute
{
  v3 = sub_10000126C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = [(StreamingFileWriter *)self path];
    v5 = 138412290;
    v6 = v4;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Setting incomplete extraction attribute not available on this async file operation for %@", &v5, 0xCu);
  }
}

- (BOOL)setCurrentOffset:(int64_t)a3 error:(id *)a4
{
  v6 = sub_10000126C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = [(StreamingFileWriter *)self path];
    *buf = 138412546;
    v14 = v12;
    v15 = 2112;
    v16 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Setting current output offset not available on async file operation for %@ : %@", buf, 0x16u);
  }

  v7 = [(StreamingFileWriter *)self path];
  v9 = sub_1000015F4("[AsyncStreamingFileWriter setCurrentOffset:error:]", 413, @"SZExtractorErrorDomain", 1, 0, 0, @"Setting current output offset not available on async file operation for %@", v8, v7);

  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  return 0;
}

- (int64_t)currentOffsetWithError:(id *)a3
{
  v5 = [(StreamingFileWriter *)self fileInterface];
  v6 = [v5 outputFDIsOpen];

  if (v6)
  {
    v14.receiver = self;
    v14.super_class = AsyncStreamingFileWriter;
    return [(StreamingFileWriter *)&v14 currentOffsetWithError:a3];
  }

  else
  {
    v8 = sub_10000126C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = [(StreamingFileWriter *)self path];
      *buf = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Getting current output offset not available on async file operation for %@ : %@", buf, 0x16u);
    }

    v9 = [(StreamingFileWriter *)self path];
    v11 = sub_1000015F4("[AsyncStreamingFileWriter currentOffsetWithError:]", 404, @"SZExtractorErrorDomain", 1, 0, 0, @"Getting current output offset not available on async file operation for %@", v10, v9);

    if (a3)
    {
      v12 = v11;
      *a3 = v11;
    }

    return -1;
  }
}

@end