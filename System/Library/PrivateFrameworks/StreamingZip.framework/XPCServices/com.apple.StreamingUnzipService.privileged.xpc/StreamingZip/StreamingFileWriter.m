@interface StreamingFileWriter
- (BOOL)closeOutputFDWithError:(id *)a3;
- (BOOL)setCurrentOffset:(int64_t)a3 error:(id *)a4;
- (BOOL)writeBuffer:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
- (NSString)path;
- (id)description;
- (id)suspendWithError:(id *)a3;
- (int64_t)currentOffsetWithError:(id *)a3;
- (int64_t)fileSize;
- (void)setIncompleteExtractionAttribute;
@end

@implementation StreamingFileWriter

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(StreamingFileWriter *)self path];
  v6 = [NSString stringWithFormat:@"<%@: path=%@>", v4, v5];

  return v6;
}

- (NSString)path
{
  v2 = [(StreamingFileWriter *)self fileInterface];
  v3 = [v2 path];

  return v3;
}

- (int64_t)fileSize
{
  v2 = [(StreamingFileWriter *)self fileInterface];
  v3 = [v2 fileSize];

  return v3;
}

- (BOOL)closeOutputFDWithError:(id *)a3
{
  v4 = [(StreamingFileWriter *)self fileInterface];
  LOBYTE(a3) = [v4 closeOutputFDWithError:a3];

  return a3;
}

- (id)suspendWithError:(id *)a3
{
  v5 = [(StreamingFileWriter *)self fileInterface];
  v6 = [(StreamingFileWriter *)self path];
  v7 = sub_10000126C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Suspending %@", buf, 0xCu);
  }

  v26 = 0;
  v8 = [v5 suspendWithError:&v26];
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
        v18 = sub_10000126C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *buf = 138412802;
          v28 = v6;
          v29 = 2112;
          v30 = v23;
          v31 = 2112;
          v32 = 0;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unknown file interface class for path %@ : %@ : %@", buf, 0x20u);
        }

        v19 = objc_opt_class();
        v24 = NSStringFromClass(v19);
        v17 = sub_1000015F4("[StreamingFileWriter suspendWithError:]", 322, @"SZExtractorErrorDomain", 1, 0, 0, @"Unknown file interface class for path %@ : %@", v20, v6);

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

    v15 = sub_10000126C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = v6;
      v29 = 2112;
      v30 = v14;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to archive StreamingFileWriterState for path %@ : %@", buf, 0x16u);
    }

    v17 = sub_1000015F4("[StreamingFileWriter suspendWithError:]", 330, @"SZExtractorErrorDomain", 1, v14, 0, @"Failed to archive StreamingFileWriterState for path %@", v16, v6);
    v9 = v14;
LABEL_18:

    v9 = v17;
    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_7:
    v12 = v9;
    v13 = 0;
    *a3 = v9;
    goto LABEL_20;
  }

  v11 = 0;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_19:
  v13 = 0;
LABEL_20:

  return v13;
}

- (BOOL)writeBuffer:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v8 = [(StreamingFileWriter *)self fileInterface];
  LOBYTE(a5) = [v8 writeBuffer:a3 length:a4 error:a5];

  return a5;
}

- (void)setIncompleteExtractionAttribute
{
  v2 = [(StreamingFileWriter *)self fileInterface];
  [v2 setIncompleteExtractionAttribute];
}

- (BOOL)setCurrentOffset:(int64_t)a3 error:(id *)a4
{
  v6 = [(StreamingFileWriter *)self fileInterface];
  LOBYTE(a4) = [v6 setCurrentOffset:a3 error:a4];

  return a4;
}

- (int64_t)currentOffsetWithError:(id *)a3
{
  v4 = [(StreamingFileWriter *)self fileInterface];
  v5 = [v4 currentOffsetWithError:a3];

  return v5;
}

@end