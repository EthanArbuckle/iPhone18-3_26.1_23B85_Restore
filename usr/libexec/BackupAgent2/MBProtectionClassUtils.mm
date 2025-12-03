@interface MBProtectionClassUtils
+ (BOOL)canOpenWhenLocked:(unsigned __int8)locked;
+ (BOOL)isContentUnavailableDueToCxExpiration:(id)expiration error:(id *)error;
+ (BOOL)isProtected:(unsigned __int8)protected;
+ (int)_openRawEncryptedWithPathFSR:(const char *)r error:(id *)error;
+ (int)sqliteOpenFlagForProtectionClass:(unsigned __int8)class;
+ (unsigned)getWithFD:(int)d error:(id *)error;
+ (unsigned)getWithPath:(id)path error:(id *)error;
+ (unsigned)getWithPathFSR:(const char *)r error:(id *)error;
@end

@implementation MBProtectionClassUtils

+ (BOOL)isProtected:(unsigned __int8)protected
{
  protectedCopy = protected;
  if (protected < 8u && ((0x9Fu >> protected) & 1) != 0)
  {
    v4 = 0x8Eu >> protected;
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v8 = protectedCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "=pc= +isProtected: Invalid protection class: %d", buf, 8u);
      _MBLog();
    }

    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

+ (BOOL)canOpenWhenLocked:(unsigned __int8)locked
{
  lockedCopy = locked;
  if (locked < 8u && ((0x9Fu >> locked) & 1) != 0)
  {
    v4 = 0xF9u >> locked;
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v8 = lockedCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "=pc= +canOpenWhenLocked: Invalid protection class: %d", buf, 8u);
      _MBLog();
    }

    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

+ (unsigned)getWithPath:(id)path error:(id *)error
{
  fileSystemRepresentation = [path fileSystemRepresentation];

  return [MBProtectionClassUtils getWithPathFSR:fileSystemRepresentation error:error];
}

+ (BOOL)isContentUnavailableDueToCxExpiration:(id)expiration error:(id *)error
{
  expirationCopy = expiration;
  fileSystemRepresentation = [expirationCopy fileSystemRepresentation];
  if ([self getWithPathFSR:fileSystemRepresentation error:error] != 7)
  {
    goto LABEL_7;
  }

  v8 = open(fileSystemRepresentation, 256);
  v9 = __error();
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (*v9 != 1)
  {
    goto LABEL_7;
  }

  v10 = 1;
  if (error)
  {
    *error = [MBError errorWithErrno:1 code:240 path:expirationCopy format:@"File content unavailable with protection class %d", 7];
  }

LABEL_8:

  return v10;
}

+ (unsigned)getWithPathFSR:(const char *)r error:(id *)error
{
  v5 = [self _openRawEncryptedWithPathFSR:r error:?];
  if ((v5 & 0x80000000) != 0)
  {
    return -1;
  }

  v6 = v5;
  v7 = [MBProtectionClassUtils getWithFD:v5 error:error];
  close(v6);
  return v7;
}

+ (int)_openRawEncryptedWithPathFSR:(const char *)r error:(id *)error
{
  result = open_dprotected_np(r, 256, 0, 1, 0);
  if (result < 0)
  {
    v7 = *__error();
    if (error)
    {
      v8 = [NSString mb_stringWithFileSystemRepresentation:r];
      *error = [MBError posixErrorWithPath:v8 format:@"open_dprotected_np error"];
    }

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315394;
      *&buf.st_mode = r;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=pc= open_dprotected_np failed at %s: %{errno}d", &buf, 0x12u);
      rCopy = r;
      v14 = v7;
      _MBLog();
    }

    if (v7 == 22)
    {
      if (!MBIsInternalInstall())
      {
        return -1;
      }
    }

    else
    {
      if (v7 != 1)
      {
        return -1;
      }

      memset(&buf, 0, sizeof(buf));
      v10 = lstat(r, &buf);
      if (v10 | buf.st_flags & 0x20)
      {
        return -1;
      }
    }

    v11 = [NSString mb_stringWithFileSystemRepresentation:r, rCopy, v14];
    sub_10000D2DC(v11, v7, "open_dprotected_np");
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      buf.st_dev = 138412546;
      *&buf.st_mode = v11;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "=pc= open_dprotected_np failed at %@: %{errno}d", &buf, 0x12u);
      _MBLog();
    }

    return -1;
  }

  return result;
}

+ (unsigned)getWithFD:(int)d error:(id *)error
{
  v5 = fcntl(d, 63);
  if (v5 < 0)
  {
    if (error)
    {
      *error = [MBError posixErrorWithFormat:@"fcntl error getting protection class"];
    }

    LOBYTE(v5) = -1;
  }

  return v5;
}

+ (int)sqliteOpenFlagForProtectionClass:(unsigned __int8)class
{
  classCopy = class;
  if (class - 1) < 7 && ((0x4Fu >> (class - 1)))
  {
    return dword_1000B73B8[(class - 1)];
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = classCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=pc= No SQLite open flag known for protection class: %d", buf, 8u);
    _MBLog();
  }

  return 0x400000;
}

@end