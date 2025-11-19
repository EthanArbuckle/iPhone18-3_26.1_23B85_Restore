@interface MBBasicFileHandle
- (BOOL)closeWithError:(id *)a3;
- (BOOL)statWithBuffer:(stat *)a3 error:(id *)a4;
- (MBBasicFileHandle)initWithPath:(id)a3 fd:(int)a4;
- (id)encryptionKeyWithError:(id *)a3;
- (int64_t)readWithBytes:(void *)a3 length:(unint64_t)a4 error:(id *)a5;
- (int64_t)writeWithBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
@end

@implementation MBBasicFileHandle

- (MBBasicFileHandle)initWithPath:(id)a3 fd:(int)a4
{
  v7 = a3;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Opened file at %@", buf, 0xCu);
    _MBLog();
  }

  v12.receiver = self;
  v12.super_class = MBBasicFileHandle;
  v9 = [(MBBasicFileHandle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, a3);
    v10->_fd = a4;
  }

  return v10;
}

- (id)encryptionKeyWithError:(id *)a3
{
  if (a3)
  {
    *a3 = [MBError errorWithCode:4 format:@"File has no encryption key"];
  }

  return 0;
}

- (BOOL)statWithBuffer:(stat *)a3 error:(id *)a4
{
  v5 = fstat(self->_fd, a3);
  v6 = v5;
  if (a4 && v5)
  {
    *a4 = [MBError posixErrorWithFormat:@"fstat error"];
  }

  return v6 == 0;
}

- (int64_t)readWithBytes:(void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  if (sub_100079D10(self->_fd))
  {
    return 0;
  }

  result = read(self->_fd, a3, a4);
  if (result < 0)
  {
    if (a5)
    {
      *a5 = [MBError posixErrorWithFormat:@"read error"];
    }

    return -1;
  }

  return result;
}

- (int64_t)writeWithBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  result = write(self->_fd, a3, a4);
  if (result < 0)
  {
    if (a5)
    {
      *a5 = [MBError posixErrorWithFormat:@"write error"];
    }

    return -1;
  }

  return result;
}

- (BOOL)closeWithError:(id *)a3
{
  v5 = close(self->_fd);
  if (v5)
  {
    if (a3)
    {
      *a3 = [MBError posixErrorWithFormat:@"close error"];
    }
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      path = self->_path;
      *buf = 138412290;
      v11 = path;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Closed file at %@", buf, 0xCu);
      v9 = self->_path;
      _MBLog();
    }
  }

  return v5 == 0;
}

@end