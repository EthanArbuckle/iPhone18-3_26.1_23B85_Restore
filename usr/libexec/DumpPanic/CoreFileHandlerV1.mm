@interface CoreFileHandlerV1
- (BOOL)getCorefileLogInfo:(unint64_t *)a3 :(unint64_t *)a4 :(unsigned int *)a5;
- (const)getCoreDumpNameWithIndex:(unint64_t)a3;
- (id)getCorefileZeroRanges;
- (void)getCoreDumpInfoWithIndex:(unint64_t)a3 :(unint64_t *)a4 :(unint64_t *)a5 :(unsigned int *)a6;
@end

@implementation CoreFileHandlerV1

- (BOOL)getCorefileLogInfo:(unint64_t *)a3 :(unint64_t *)a4 :(unsigned int *)a5
{
  if (!a3)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a4)
  {
LABEL_8:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    _os_assert_log();
    result = _os_crash();
    __break(1u);
    return result;
  }

  log_length = self->_corefileHeader.log_length;
  *a4 = log_length;
  if (log_length)
  {
    *a3 = self->_corefileHeader.log_offset;
    *a5 = 0;
  }

  return log_length != 0;
}

- (void)getCoreDumpInfoWithIndex:(unint64_t)a3 :(unint64_t *)a4 :(unint64_t *)a5 :(unsigned int *)a6
{
  if (self->_corefileHeader.num_files <= a3)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a5)
  {
LABEL_8:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    v6 = &self->_corefileHeader + 32 * a3;
    *a4 = *(v6 + 4);
    *a5 = *(v6 + 5);
    *a6 = 1;
    return;
  }

LABEL_9:
  _os_assert_log();
  _os_crash();
  __break(1u);
}

- (const)getCoreDumpNameWithIndex:(unint64_t)a3
{
  if (self->_corefileHeader.num_files > a3)
  {
    return self->_corefileHeader.files[a3].core_name;
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)getCorefileZeroRanges
{
  v3 = [NSMutableArray arrayWithCapacity:1];
  num_files = self->_corefileHeader.num_files;
  if (num_files)
  {
    v5 = *(&self->_corefileHeader.log_offset + 4 * num_files) + *(&self->_corefileHeader.signature + 4 * num_files);
  }

  else
  {
    log_offset = self->_corefileHeader.log_offset;
    if (log_offset)
    {
      log_length = self->_corefileHeader.log_length;
      v8 = log_length + log_offset;
      if (log_length)
      {
        v5 = v8;
      }

      else
      {
        v5 = 544;
      }
    }

    else
    {
      v5 = 544;
    }
  }

  v9 = [NSNumber numberWithUnsignedLongLong:0];
  v10 = [NSNumber numberWithUnsignedLongLong:v5];
  v11 = [NSArray arrayWithObjects:v9, v10, 0];
  [v3 addObject:v11];

  return v3;
}

@end