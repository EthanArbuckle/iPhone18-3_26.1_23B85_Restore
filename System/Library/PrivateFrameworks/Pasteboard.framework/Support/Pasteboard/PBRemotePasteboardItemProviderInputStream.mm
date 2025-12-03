@interface PBRemotePasteboardItemProviderInputStream
+ (id)inputStreamWithFileHandle:(id)handle;
- (PBRemotePasteboardItemProviderInputStream)initWithFileHandle:(id)handle;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
@end

@implementation PBRemotePasteboardItemProviderInputStream

+ (id)inputStreamWithFileHandle:(id)handle
{
  handleCopy = handle;
  v5 = [[self alloc] initWithFileHandle:handleCopy];

  return v5;
}

- (PBRemotePasteboardItemProviderInputStream)initWithFileHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = PBRemotePasteboardItemProviderInputStream;
  v6 = [(PBRemotePasteboardItemProviderInputStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileHandle, handle);
    v7->_fd = [handleCopy fileDescriptor];
  }

  return v7;
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  result = read(self->_fd, read, length);
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