@interface CoreFileHandlerV2
- (BOOL)getCorefileLogInfo:(unint64_t *)a3 :(unint64_t *)a4 :(unsigned int *)a5;
- (BOOL)isZeroes:(id)a3;
- (const)getCoreDumpNameWithIndex:(unint64_t)a3;
- (id)getCoreDumpEncryptionKey:(unint64_t)a3;
- (void)getCoreDumpInfoWithIndex:(unint64_t)a3 :(unint64_t *)a4 :(unint64_t *)a5 :(unsigned int *)a6;
@end

@implementation CoreFileHandlerV2

- (id)getCoreDumpEncryptionKey:(unint64_t)a3
{
  if (self->_corefileHeader->num_files <= a3)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    encryptionPublicKey = self->_encryptionPublicKey;

    return encryptionPublicKey;
  }

  return result;
}

- (BOOL)getCorefileLogInfo:(unint64_t *)a3 :(unint64_t *)a4 :(unsigned int *)a5
{
  if (!a3)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_9:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  corefileHeader = self->_corefileHeader;
  log_length = corefileHeader->log_length;
  *a4 = log_length;
  if (log_length)
  {
    *a3 = corefileHeader->log_offset;
    *a5 = 0;
    flags = corefileHeader->flags;
    if (flags)
    {
      if ((flags & 0x100) == 0)
      {
        v9 = qword_100042AF8;
        if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v14 = flags;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unsupported encryption key format in corefile flags: %llu", buf, 0xCu);
        }

        v10 = [NSString stringWithFormat:@"%s must be implemented", "Encryption key format"];
        v11 = [NSException exceptionWithName:NSInvalidArgumentException reason:v10 userInfo:0];
        v12 = v11;

        objc_exception_throw(v11);
      }

      *a5 = 4;
    }
  }

  return log_length != 0;
}

- (void)getCoreDumpInfoWithIndex:(unint64_t)a3 :(unint64_t *)a4 :(unint64_t *)a5 :(unsigned int *)a6
{
  corefileHeader = self->_corefileHeader;
  if (corefileHeader->num_files <= a3)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!a4)
  {
LABEL_16:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  if (!a5)
  {
LABEL_17:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_18:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!a6)
  {
    goto LABEL_18;
  }

  v7 = &corefileHeader->signature + 5 * a3;
  v8 = v7[8];
  *a4 = v7[9];
  *a5 = v7[10];
  *a6 = 0;
  if ((v8 & 0x100) != 0)
  {
    v9 = 5;
    v10 = 1;
    goto LABEL_11;
  }

  if ((v8 & 0x200) != 0)
  {
    v9 = 6;
    v10 = 2;
LABEL_11:
    *a6 = v10;
    if ((v8 & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  v9 = 4;
  if ((v8 & 1) == 0)
  {
    return;
  }

LABEL_12:
  flags = corefileHeader->flags;
  if ((flags & 0x100) == 0)
  {
    v12 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = flags;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unsupported encryption key format in corefile flags: %llu", buf, 0xCu);
    }

    v13 = [NSString stringWithFormat:@"%s must be implemented", "Encryption key format"];
    v14 = [NSException exceptionWithName:NSInvalidArgumentException reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  *a6 = v9;
}

- (const)getCoreDumpNameWithIndex:(unint64_t)a3
{
  corefileHeader = self->_corefileHeader;
  if (corefileHeader->num_files > a3)
  {
    return (&corefileHeader[1].pub_key_offset + 5 * a3);
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)isZeroes:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  if ([v3 length])
  {
    v5 = 0;
    while (1)
    {
      v6 = v4[v5] == 0;
      if (v4[v5])
      {
        break;
      }

      if (++v5 >= [v3 length])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = 1;
  }

  return v6;
}

@end