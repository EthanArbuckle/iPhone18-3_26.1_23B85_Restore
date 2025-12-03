@interface DirectFileInterface
- (BOOL)closeOutputFDWithError:(id *)error;
- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error;
- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error;
- (DirectFileInterface)initWithFilePath:(id)path expectedSize:(int64_t)size resumptionState:(id)state;
- (int64_t)currentOffsetWithError:(id *)error;
- (void)configureFileAndSetOwnership:(BOOL)ownership toUID:(unsigned int)d GID:(unsigned int)iD;
- (void)dealloc;
- (void)setIncompleteExtractionAttribute;
@end

@implementation DirectFileInterface

- (void)configureFileAndSetOwnership:(BOOL)ownership toUID:(unsigned int)d GID:(unsigned int)iD
{
  ownershipCopy = ownership;
  outputFD = [(DirectFileInterface *)self outputFD];
  path = [(DirectFileInterface *)self path];
  v10 = path;
  sub_10000C628(outputFD, [path fileSystemRepresentation], -[DirectFileInterface fileSize](self, "fileSize"), ownershipCopy, d, iD);
}

- (void)setIncompleteExtractionAttribute
{
  outputFD = [(DirectFileInterface *)self outputFD];
  path = [(DirectFileInterface *)self path];
  v4 = path;
  sub_10000C8E8(outputFD, [path fileSystemRepresentation]);
}

- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error
{
  v7 = lseek([(DirectFileInterface *)self outputFD], offset, 0);
  if (v7 == -1)
  {
    v8 = *__error();
    path = [(DirectFileInterface *)self path];
    v10 = sub_100001194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      offsetCopy = offset;
      v20 = 2112;
      v21 = path;
      v22 = 2080;
      v23 = strerror(v8);
      v24 = 2112;
      v25 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to seek to offset %llu in output file at path %@ : %s : %@", buf, 0x2Au);
    }

    v16 = NSFilePathErrorKey;
    v17 = path;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    strerror(v8);
    v13 = sub_10000151C("[DirectFileInterface setCurrentOffset:error:]", 134, NSPOSIXErrorDomain, v8, 0, v11, @"Failed to seek to offset %llu in output file at path %@ : %s", v12, offset);

    if (error)
    {
      v14 = v13;
      *error = v13;
    }
  }

  return v7 != -1;
}

- (int64_t)currentOffsetWithError:(id *)error
{
  v5 = lseek([(DirectFileInterface *)self outputFD], 0, 1);
  if (v5 == -1)
  {
    v6 = *__error();
    path = [(DirectFileInterface *)self path];
    v8 = sub_100001194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = path;
      v18 = 2080;
      v19 = strerror(v6);
      v20 = 2112;
      v21 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to seek to current offset in output file at path %@ : %s : %@", buf, 0x20u);
    }

    v14 = NSFilePathErrorKey;
    v15 = path;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    strerror(v6);
    v11 = sub_10000151C("[DirectFileInterface currentOffsetWithError:]", 120, NSPOSIXErrorDomain, v6, 0, v9, @"Failed to seek to current offset in output file at path %@ : %s", v10, path);

    if (error)
    {
      v12 = v11;
      *error = v11;
    }
  }

  return v5;
}

- (BOOL)closeOutputFDWithError:(id *)error
{
  outputFD = [(DirectFileInterface *)self outputFD];
  if ((outputFD & 0x80000000) == 0)
  {
    close(outputFD);
    [(DirectFileInterface *)self setOutputFD:0xFFFFFFFFLL];
  }

  return 1;
}

- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error
{
  outputFD = [(DirectFileInterface *)self outputFD];
  v10 = 0;
  do
  {
    if (length == v10)
    {
      return 1;
    }

    v11 = write(outputFD, buffer + v10, length - v10);
    v10 += v11;
  }

  while ((v11 & 0x8000000000000000) == 0);
  if (length == -1)
  {
    return 1;
  }

  v12 = *__error();
  path = [(DirectFileInterface *)self path];
  v14 = sub_100001194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v23 = path;
    v24 = 2080;
    v25 = strerror(v12);
    v26 = 2112;
    v27 = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to write data to output file at %@: %s : %@", buf, 0x20u);
  }

  v20 = NSFilePathErrorKey;
  v21 = path;
  v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  strerror(v12);
  v17 = sub_10000151C("[DirectFileInterface writeBuffer:length:error:]", 88, NSPOSIXErrorDomain, v12, 0, v15, @"Failed to write data to output file at %@: %s", v16, path);

  if (error)
  {
    v18 = v17;
    *error = v17;
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

- (DirectFileInterface)initWithFilePath:(id)path expectedSize:(int64_t)size resumptionState:(id)state
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = DirectFileInterface;
  v8 = [(DirectFileInterface *)&v12 init];
  if (v8)
  {
    v9 = [pathCopy copy];
    path = v8->_path;
    v8->_path = v9;

    v8->_fileSize = size;
    v8->_outputFD = -1;
  }

  return v8;
}

@end