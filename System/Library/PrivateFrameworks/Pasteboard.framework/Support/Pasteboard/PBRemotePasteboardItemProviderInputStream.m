@interface PBRemotePasteboardItemProviderInputStream
+ (id)inputStreamWithFileHandle:(id)a3;
- (PBRemotePasteboardItemProviderInputStream)initWithFileHandle:(id)a3;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
@end

@implementation PBRemotePasteboardItemProviderInputStream

+ (id)inputStreamWithFileHandle:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFileHandle:v4];

  return v5;
}

- (PBRemotePasteboardItemProviderInputStream)initWithFileHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PBRemotePasteboardItemProviderInputStream;
  v6 = [(PBRemotePasteboardItemProviderInputStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileHandle, a3);
    v7->_fd = [v5 fileDescriptor];
  }

  return v7;
}

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  result = read(self->_fd, a3, a4);
  if (result < 0)
  {
    v5 = _PBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      v9 = 136315650;
      v10 = "[PBRemotePasteboardItemProviderInputStream read:maxLength:]";
      v11 = 1024;
      v12 = v6;
      v13 = 2080;
      v14 = v8;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s: Error trying to read from fileHandle obtained for item representation: errno %d - %s", &v9, 0x1Cu);
    }

    return 0;
  }

  return result;
}

@end