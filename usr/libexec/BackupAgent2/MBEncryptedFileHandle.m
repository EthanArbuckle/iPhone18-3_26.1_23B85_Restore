@interface MBEncryptedFileHandle
+ (id)encryptedFileHandleForBackupWithPath:(id)a3 keybag:(id)a4 error:(id *)a5;
+ (id)encryptedFileHandleForRestoreWithPath:(id)a3 keybag:(id)a4 key:(id)a5 error:(id *)a6;
- (BOOL)closeWithError:(id *)a3;
- (BOOL)statWithBuffer:(stat *)a3 error:(id *)a4;
- (BOOL)validateEncryptionKey:(id)a3 error:(id *)a4;
- (MBEncryptedFileHandle)initWithPath:(id)a3 keybag:(id)a4 file:(_mkbfileref *)a5 restore:(BOOL)a6;
- (id)encryptionKeyWithError:(id *)a3;
- (int64_t)readWithBytes:(void *)a3 length:(unint64_t)a4 error:(id *)a5;
- (int64_t)writeWithBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation MBEncryptedFileHandle

+ (id)encryptedFileHandleForBackupWithPath:(id)a3 keybag:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    sub_10009F714();
  }

  v9 = MKBFileOpenForBackup();
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v15 = v7;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MKBFileOpenForBackup(%@, ...): %d", buf, 0x12u);
    _MBLog();
  }

  if (v9)
  {
    if (a5)
    {
      *a5 = [MBKeyBag errorWithReturnCode:v9 path:v7 description:@"Error opening encrypted file for backup"];
    }

    if (v9 >= 0xFFFFFFFE)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v15 = v7;
        v16 = 1024;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "MKBFileOpenForBackup failed at %@: %d", buf, 0x12u);
        _MBLog();
      }

      sub_10000D2DC(v7, v9, "MKBFileOpenForBackup");
    }

    v12 = 0;
  }

  else
  {
    v12 = [[MBEncryptedFileHandle alloc] initWithPath:v7 keybag:v8 file:0 restore:0];
  }

  return v12;
}

+ (id)encryptedFileHandleForRestoreWithPath:(id)a3 keybag:(id)a4 key:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10009F780();
    if (v14)
    {
      goto LABEL_3;
    }
  }

  sub_10009F7EC(a2, a1, v11);
LABEL_3:
  v15 = [v12 encryptedFileForRestoreWithPath:v11 key:v14 error:a6];
  if (v15)
  {
    v15 = [[MBEncryptedFileHandle alloc] initWithPath:v11 keybag:v12 file:v15 restore:1];
  }

  return v15;
}

- (MBEncryptedFileHandle)initWithPath:(id)a3 keybag:(id)a4 file:(_mkbfileref *)a5 restore:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = MBEncryptedFileHandle;
  v13 = [(MBEncryptedFileHandle *)&v18 init];
  if (v13)
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Opened encrypted file at %@", buf, 0xCu);
      _MBLog();
    }

    objc_storeStrong(&v13->_path, a3);
    objc_storeStrong(&v13->_keybag, a4);
    v13->_file = a5;
    v15 = [[NSMutableData alloc] initWithCapacity:0];
    buffer = v13->_buffer;
    v13->_buffer = v15;

    v13->_restore = a6;
  }

  return v13;
}

- (void)dealloc
{
  if (self->_file)
  {
    MKBFileClose();
  }

  v3.receiver = self;
  v3.super_class = MBEncryptedFileHandle;
  [(MBEncryptedFileHandle *)&v3 dealloc];
}

- (id)encryptionKeyWithError:(id *)a3
{
  if (!self->_keybag)
  {
    sub_10009F86C();
  }

  file = self->_file;
  path = self->_path;
  keybag = self->_keybag;

  return [(MBKeyBag *)keybag encryptionKeyForFile:file path:path error:a3];
}

- (BOOL)validateEncryptionKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  keybag = self->_keybag;
  if (!keybag)
  {
    sub_10009F898();
  }

  v8 = [(MBKeyBag *)keybag validateEncryptionKey:v6 file:self->_file path:self->_path error:a4];

  return v8;
}

- (BOOL)closeWithError:(id *)a3
{
  if (self->_restore)
  {
    file = self->_file;
    v6 = MKBFileWrite();
    v7 = MBGetDefaultLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6 < 0)
    {
      if (v8)
      {
        *buf = 134217984;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MKBFileWrite(0): %zd", buf, 0xCu);
        _MBLog();
      }

      if (a3)
      {
        v11 = [MBError posixErrorWithFormat:@"MKBFileWrite error"];
        goto LABEL_16;
      }

      return 0;
    }

    if (v8)
    {
      *buf = 134217984;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MKBFileWrite(0): %{bytes}zd", buf, 0xCu);
      _MBLog();
    }
  }

  v9 = self->_file;
  v10 = MKBFileClose();
  self->_file = 0;
  if (v10)
  {
    if (a3)
    {
      v11 = [MBKeyBag errorWithReturnCode:v10 description:@"MKBFileClose error"];
LABEL_16:
      v15 = v11;
      v16 = v11;
      result = 0;
      *a3 = v15;
      return result;
    }

    return 0;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    path = self->_path;
    *buf = 138412290;
    v19 = path;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Closed encrypted file at %@", buf, 0xCu);
    v17 = self->_path;
    _MBLog();
  }

  return 1;
}

- (BOOL)statWithBuffer:(stat *)a3 error:(id *)a4
{
  v5 = fstat([(MBEncryptedFileHandle *)self fd], a3);
  v6 = v5;
  if (a4 && v5)
  {
    *a4 = [MBError posixErrorWithFormat:@"fstat error"];
  }

  return v6 == 0;
}

- (int64_t)readWithBytes:(void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  if (self->_restore)
  {
    sub_10009F8C4();
  }

  if ((sub_100079D10([(MBEncryptedFileHandle *)self fd]) & 1) == 0)
  {
    if ([(MBKeyBag *)self->_keybag isOTA])
    {
      file = self->_file;
    }

    else
    {
      if (a4 <= 0xF)
      {
        if (a5)
        {
          v10 = [MBError errorWithCode:100 format:@"Buffer for reading from encrypted file too small"];
LABEL_19:
          *a5 = v10;
        }

        return -1;
      }

      v11 = self->_file;
    }

    v8 = MKBFileRead();
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v16 = a4;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MKBFileRead(%{bytes}lu): %zd", buf, 0x16u);
      _MBLog();
    }

    if (a5)
    {
      v10 = [MBError posixErrorWithFormat:@"MKBFileRead error"];
      goto LABEL_19;
    }

    return -1;
  }

  v8 = 0;
LABEL_12:
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v16 = a4;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "MKBFileRead(%{bytes}lu): %{bytes}zd", buf, 0x16u);
    _MBLog();
  }

  return v8;
}

- (int64_t)writeWithBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  if (!self->_restore)
  {
    sub_10009F930();
  }

  if ([(MBKeyBag *)self->_keybag isOTA])
  {
    file = self->_file;
    v10 = MKBFileWrite();
    v11 = MBGetDefaultLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v12)
      {
        *buf = 134218240;
        v23 = a4;
        v24 = 2048;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileWrite(%{bytes}lu): %{bytes}zd", buf, 0x16u);
LABEL_22:
        _MBLog();
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    if (v12)
    {
      *buf = 134218240;
      v23 = a4;
      v24 = 2048;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileWrite(%{bytes}lu): %zd", buf, 0x16u);
      v20 = a4;
      v21 = v10;
LABEL_27:
      _MBLog();
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if (![(NSMutableData *)self->_buffer length])
  {
    if ((a4 & 0xF) != 0)
    {
      [(NSMutableData *)self->_buffer appendBytes:a3 + (a4 & 0xFFFFFFFFFFFFFFF0) length:a4 & 0xF];
    }

    v16 = self->_file;
    v17 = MKBFileWrite();
    v11 = MBGetDefaultLog();
    v18 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if ((v17 & 0x8000000000000000) == 0)
    {
      if (v18)
      {
        *buf = 134218240;
        v23 = a4 & 0xFFFFFFFFFFFFFFF0;
        v24 = 2048;
        v25 = v17;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileWrite(%{bytes}lu): %{bytes}zd", buf, 0x16u);
        goto LABEL_22;
      }

LABEL_23:

      return a4;
    }

    if (v18)
    {
      *buf = 134218240;
      v23 = a4 & 0xFFFFFFFFFFFFFFF0;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileWrite(%{bytes}lu): %zd", buf, 0x16u);
      v20 = a4 & 0xFFFFFFFFFFFFFFF0;
      v21 = v17;
      goto LABEL_27;
    }

LABEL_28:

    if (!a5)
    {
      return -1;
    }

    goto LABEL_13;
  }

  v13 = [(NSMutableData *)self->_buffer length];
  if (16 - v13 < a4)
  {
    a4 = 16 - v13;
  }

  [(NSMutableData *)self->_buffer appendBytes:a3 length:a4];
  if ([(NSMutableData *)self->_buffer length]>= 0x10)
  {
    v14 = self->_file;
    [(NSMutableData *)self->_buffer mutableBytes];
    [(NSMutableData *)self->_buffer length];
    v15 = MKBFileWrite();
    [(NSMutableData *)self->_buffer setLength:0];
    if (v15 < 0)
    {
      if (!a5)
      {
        return -1;
      }

LABEL_13:
      *a5 = [MBError posixErrorWithFormat:@"MKBFileWrite error", v20, v21];
      return -1;
    }
  }

  return a4;
}

@end