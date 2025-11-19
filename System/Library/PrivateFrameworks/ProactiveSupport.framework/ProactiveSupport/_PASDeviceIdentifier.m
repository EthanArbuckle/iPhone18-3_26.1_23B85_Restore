@interface _PASDeviceIdentifier
- (NSUUID)UUID;
- (_PASDeviceIdentifier)initWithBasePath:(id)a3;
- (void)reset;
@end

@implementation _PASDeviceIdentifier

- (void)reset
{
  v14 = *MEMORY[0x1E69E9840];
  if (unlink([(NSString *)self->_path UTF8String]) && *__error() != 2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    path = self->_path;
    v5 = *__error();
    v6 = __error();
    v7 = strerror(*v6);
    v8 = 138412802;
    v9 = path;
    v10 = 1024;
    v11 = v5;
    v12 = 2080;
    v13 = v7;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unlinking %@: [%i] %s", &v8, 0x1Cu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (NSUUID)UUID
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = open([(NSString *)self->_path UTF8String], 0);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    if (read(v3, __buf, 0x10uLL) == 16)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:__buf];
      close(v4);
      if (v5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        path = self->_path;
        *buf = 138412290;
        v23 = path;
        _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Removing truncated device id file: %@", buf, 0xCu);
      }

      unlink([(NSString *)self->_path UTF8String]);
      close(v4);
    }

    goto LABEL_12;
  }

  if (*__error() == 2)
  {
LABEL_12:
    v7 = [MEMORY[0x1E696AFB0] UUID];
    [v7 getUUIDBytes:__buf];
    v8 = open([(NSString *)self->_path UTF8String], 2561, 384);
    if (v8 < 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = self->_path;
        v15 = *__error();
        v16 = __error();
        v17 = strerror(*v16);
        *buf = 138412802;
        v23 = v14;
        v24 = 1024;
        v25 = v15;
        v26 = 2080;
        v27 = v17;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error writing device identifier file %@: [%i] %s", buf, 0x1Cu);
      }

      v5 = 0;
    }

    else
    {
      v9 = v8;
      write(v8, __buf, 0x10uLL);
      close(v9);
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:self->_path];
      if ([v10 length] == 16)
      {
        [v10 getBytes:__buf length:16];
        v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:__buf];
      }

      else
      {
        v11 = 0;
      }

      v5 = v11;
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = self->_path;
    v19 = *__error();
    v20 = __error();
    v21 = strerror(*v20);
    *buf = 138412802;
    v23 = v18;
    v24 = 1024;
    v25 = v19;
    v26 = 2080;
    v27 = v21;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error opening device identifier file %@: [%i] %s", buf, 0x1Cu);
  }

  v5 = [MEMORY[0x1E696AFB0] UUID];
LABEL_20:
  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (_PASDeviceIdentifier)initWithBasePath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _PASDeviceIdentifier;
  v5 = [(_PASDeviceIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%u.uuid", v4, getuid()];
    path = v5->_path;
    v5->_path = v6;
  }

  return v5;
}

@end