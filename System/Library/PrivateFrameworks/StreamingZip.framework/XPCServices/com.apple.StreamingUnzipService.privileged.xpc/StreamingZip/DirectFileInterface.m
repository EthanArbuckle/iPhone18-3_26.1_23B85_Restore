@interface DirectFileInterface
- (BOOL)closeOutputFDWithError:(id *)a3;
- (BOOL)setCurrentOffset:(int64_t)a3 error:(id *)a4;
- (BOOL)writeBuffer:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
- (DirectFileInterface)initWithFilePath:(id)a3 expectedSize:(int64_t)a4 resumptionState:(id)a5;
- (int64_t)currentOffsetWithError:(id *)a3;
- (void)configureFileAndSetOwnership:(BOOL)a3 toUID:(unsigned int)a4 GID:(unsigned int)a5;
- (void)dealloc;
- (void)setIncompleteExtractionAttribute;
@end

@implementation DirectFileInterface

- (void)configureFileAndSetOwnership:(BOOL)a3 toUID:(unsigned int)a4 GID:(unsigned int)a5
{
  v7 = a3;
  v9 = [(DirectFileInterface *)self outputFD];
  v11 = [(DirectFileInterface *)self path];
  v10 = v11;
  sub_10000C700(v9, [v11 fileSystemRepresentation], -[DirectFileInterface fileSize](self, "fileSize"), v7, a4, a5);
}

- (void)setIncompleteExtractionAttribute
{
  v3 = [(DirectFileInterface *)self outputFD];
  v5 = [(DirectFileInterface *)self path];
  v4 = v5;
  sub_10000C9C0(v3, [v5 fileSystemRepresentation]);
}

- (BOOL)setCurrentOffset:(int64_t)a3 error:(id *)a4
{
  v7 = lseek([(DirectFileInterface *)self outputFD], a3, 0);
  if (v7 == -1)
  {
    v8 = *__error();
    v9 = [(DirectFileInterface *)self path];
    v10 = sub_10000126C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      v19 = a3;
      v20 = 2112;
      v21 = v9;
      v22 = 2080;
      v23 = strerror(v8);
      v24 = 2112;
      v25 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to seek to offset %llu in output file at path %@ : %s : %@", buf, 0x2Au);
    }

    v16 = NSFilePathErrorKey;
    v17 = v9;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    strerror(v8);
    v13 = sub_1000015F4("[DirectFileInterface setCurrentOffset:error:]", 134, NSPOSIXErrorDomain, v8, 0, v11, @"Failed to seek to offset %llu in output file at path %@ : %s", v12, a3);

    if (a4)
    {
      v14 = v13;
      *a4 = v13;
    }
  }

  return v7 != -1;
}

- (int64_t)currentOffsetWithError:(id *)a3
{
  v5 = lseek([(DirectFileInterface *)self outputFD], 0, 1);
  if (v5 == -1)
  {
    v6 = *__error();
    v7 = [(DirectFileInterface *)self path];
    v8 = sub_10000126C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = v7;
      v18 = 2080;
      v19 = strerror(v6);
      v20 = 2112;
      v21 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to seek to current offset in output file at path %@ : %s : %@", buf, 0x20u);
    }

    v14 = NSFilePathErrorKey;
    v15 = v7;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    strerror(v6);
    v11 = sub_1000015F4("[DirectFileInterface currentOffsetWithError:]", 120, NSPOSIXErrorDomain, v6, 0, v9, @"Failed to seek to current offset in output file at path %@ : %s", v10, v7);

    if (a3)
    {
      v12 = v11;
      *a3 = v11;
    }
  }

  return v5;
}

- (BOOL)closeOutputFDWithError:(id *)a3
{
  v4 = [(DirectFileInterface *)self outputFD];
  if ((v4 & 0x80000000) == 0)
  {
    close(v4);
    [(DirectFileInterface *)self setOutputFD:0xFFFFFFFFLL];
  }

  return 1;
}

- (BOOL)writeBuffer:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v9 = [(DirectFileInterface *)self outputFD];
  v10 = 0;
  do
  {
    if (a4 == v10)
    {
      return 1;
    }

    v11 = write(v9, a3 + v10, a4 - v10);
    v10 += v11;
  }

  while ((v11 & 0x8000000000000000) == 0);
  if (a4 == -1)
  {
    return 1;
  }

  v12 = *__error();
  v13 = [(DirectFileInterface *)self path];
  v14 = sub_10000126C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v23 = v13;
    v24 = 2080;
    v25 = strerror(v12);
    v26 = 2112;
    v27 = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to write data to output file at %@: %s : %@", buf, 0x20u);
  }

  v20 = NSFilePathErrorKey;
  v21 = v13;
  v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  strerror(v12);
  v17 = sub_1000015F4("[DirectFileInterface writeBuffer:length:error:]", 88, NSPOSIXErrorDomain, v12, 0, v15, @"Failed to write data to output file at %@: %s", v16, v13);

  if (a5)
  {
    v18 = v17;
    *a5 = v17;
  }

  return 0;
}

- (void)dealloc
{
  [(DirectFileInterface *)self closeOutputFDWithError:0];
  v3.receiver = self;
  v3.super_class = DirectFileInterface;
  [(DirectFileInterface *)&v3 dealloc];
}

- (DirectFileInterface)initWithFilePath:(id)a3 expectedSize:(int64_t)a4 resumptionState:(id)a5
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = DirectFileInterface;
  v8 = [(DirectFileInterface *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    path = v8->_path;
    v8->_path = v9;

    v8->_fileSize = a4;
    v8->_outputFD = -1;
  }

  return v8;
}

@end