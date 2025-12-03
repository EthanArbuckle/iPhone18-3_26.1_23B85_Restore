@interface _CachedFileDescriptors
- (int)_cachedFDForDomain:(id)domain withSnapshotPath:(id)path error:(id *)error;
- (int)_cachedFDForPath:(id)path WithError:(id *)error;
- (int)cachedFDForDomain:(id)domain withSnapshotPath:(id)path error:(id *)error;
@end

@implementation _CachedFileDescriptors

- (int)cachedFDForDomain:(id)domain withSnapshotPath:(id)path error:(id *)error
{
  if (path)
  {

    return [_CachedFileDescriptors _cachedFDForDomain:"_cachedFDForDomain:withSnapshotPath:error:" withSnapshotPath:domain error:?];
  }

  else
  {
    rootPath = [domain rootPath];
    v8 = [(_CachedFileDescriptors *)self _cachedFDForPath:rootPath WithError:error];

    return v8;
  }
}

- (int)_cachedFDForDomain:(id)domain withSnapshotPath:(id)path error:(id *)error
{
  domainCopy = domain;
  pathCopy = path;
  if (!pathCopy)
  {
    sub_1000A0714();
  }

  v10 = pathCopy;
  rootPath = [domainCopy rootPath];
  volumeMountPoint = [domainCopy volumeMountPoint];
  v13 = sub_100077FF4(rootPath, v10, volumeMountPoint);

  if (!v13)
  {
    sub_1000A06E8();
  }

  v14 = self->_fileHandleForSnapshot;
  if (v14)
  {
    v15 = v14;
    if (([v13 isEqualToString:self->_fileHandlePathForSnapshot] & 1) == 0)
    {
      sub_1000A0664();
    }

LABEL_8:
    fileDescriptor = [(NSFileHandle *)v15 fileDescriptor];
    if (fileDescriptor == -1)
    {
      sub_1000A0690();
    }

    goto LABEL_9;
  }

  v16 = open([v13 fileSystemRepresentation], 0);
  if (v16 != -1)
  {
    v15 = [[NSFileHandle alloc] initWithFileDescriptor:v16 closeOnDealloc:1];
    fileHandleForSnapshot = self->_fileHandleForSnapshot;
    self->_fileHandleForSnapshot = v15;

    objc_storeStrong(&self->_fileHandlePathForSnapshot, v13);
    if (!v15)
    {
      sub_1000A06BC();
    }

    goto LABEL_8;
  }

  v20 = *__error();
  if (error)
  {
    *error = [MBError posixErrorWithPath:v13 format:@"open failed"];
  }

  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v23 = v13;
    v24 = 1024;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=scanning= open failed at %@: %{errno}d", buf, 0x12u);
    _MBLog();
  }

  v15 = 0;
  fileDescriptor = -1;
LABEL_9:

  return fileDescriptor;
}

- (int)_cachedFDForPath:(id)path WithError:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    sub_1000A07C4();
  }

  v8 = pathCopy;
  v9 = self->_fileHandle;
  if (v9)
  {
    v10 = v9;
    if (([v8 isEqualToString:self->_fileHandlePath] & 1) == 0)
    {
      sub_1000A0740();
    }

LABEL_7:
    fileDescriptor = [(NSFileHandle *)v10 fileDescriptor];
    if (fileDescriptor == -1)
    {
      sub_1000A076C();
    }

    goto LABEL_8;
  }

  v11 = open([v8 fileSystemRepresentation], 0);
  if (v11 != -1)
  {
    v10 = [[NSFileHandle alloc] initWithFileDescriptor:v11 closeOnDealloc:1];
    fileHandle = self->_fileHandle;
    self->_fileHandle = v10;

    objc_storeStrong(&self->_fileHandlePath, path);
    if (!v10)
    {
      sub_1000A0798();
    }

    goto LABEL_7;
  }

  v15 = *__error();
  if (error)
  {
    *error = [MBError posixErrorWithPath:v8 format:@"open failed"];
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 1024;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=scanning= open failed at %@: %{errno}d", buf, 0x12u);
    _MBLog();
  }

  v10 = 0;
  fileDescriptor = -1;
LABEL_8:

  return fileDescriptor;
}

@end