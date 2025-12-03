@interface StreamingFileWriter
- (BOOL)closeOutputFDWithError:(id *)error;
- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error;
- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error;
- (NSString)path;
- (id)description;
- (id)suspendWithError:(id *)error;
- (int64_t)currentOffsetWithError:(id *)error;
- (int64_t)fileSize;
- (void)setIncompleteExtractionAttribute;
@end

@implementation StreamingFileWriter

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  path = [(StreamingFileWriter *)self path];
  v6 = [NSString stringWithFormat:@"<%@: path=%@>", v4, path];

  return v6;
}

- (NSString)path
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  path = [fileInterface path];

  return path;
}

- (int64_t)fileSize
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  fileSize = [fileInterface fileSize];

  return fileSize;
}

- (BOOL)closeOutputFDWithError:(id *)error
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  LOBYTE(error) = [fileInterface closeOutputFDWithError:error];

  return error;
}

- (id)suspendWithError:(id *)error
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  path = [(StreamingFileWriter *)self path];
  v7 = sub_100001194();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = path;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Suspending %@", buf, 0xCu);
  }

  v26 = 0;
  v8 = [fileInterface suspendWithError:&v26];
  v9 = v26;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = 1;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = sub_100001194();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *buf = 138412802;
          v28 = path;
          v29 = 2112;
          v30 = v23;
          v31 = 2112;
          v32 = 0;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unknown file interface class for path %@ : %@ : %@", buf, 0x20u);
        }

        v19 = objc_opt_class();
        v24 = NSStringFromClass(v19);
        v17 = sub_10000151C("[StreamingFileWriter suspendWithError:]", 322, @"SZExtractorErrorDomain", 1, 0, 0, @"Unknown file interface class for path %@ : %@", v20, path);

        v11 = 0;
        goto LABEL_18;
      }

      v10 = 2;
    }

    v11 = [[StreamingFileWriterState alloc] initWithFileInterfaceType:v10 fileInterfaceState:v8];
    v25 = v9;
    v13 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v25];
    v14 = v25;

    if (v13)
    {
      v9 = v14;
      goto LABEL_20;
    }

    v15 = sub_100001194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = path;
      v29 = 2112;
      v30 = v14;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to archive StreamingFileWriterState for path %@ : %@", buf, 0x16u);
    }

    v17 = sub_10000151C("[StreamingFileWriter suspendWithError:]", 330, @"SZExtractorErrorDomain", 1, v14, 0, @"Failed to archive StreamingFileWriterState for path %@", v16, path);
    v9 = v14;
LABEL_18:

    v9 = v17;
    if (!error)
    {
      goto LABEL_19;
    }

LABEL_7:
    v12 = v9;
    v13 = 0;
    *error = v9;
    goto LABEL_20;
  }

  v11 = 0;
  if (error)
  {
    goto LABEL_7;
  }

LABEL_19:
  v13 = 0;
LABEL_20:

  return v13;
}

- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  LOBYTE(error) = [fileInterface writeBuffer:buffer length:length error:error];

  return error;
}

- (void)setIncompleteExtractionAttribute
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  [fileInterface setIncompleteExtractionAttribute];
}

- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  LOBYTE(error) = [fileInterface setCurrentOffset:offset error:error];

  return error;
}

- (int64_t)currentOffsetWithError:(id *)error
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  v5 = [fileInterface currentOffsetWithError:error];

  return v5;
}

@end