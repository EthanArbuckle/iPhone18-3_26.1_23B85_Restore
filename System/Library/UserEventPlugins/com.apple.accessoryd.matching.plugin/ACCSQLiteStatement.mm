@interface ACCSQLiteStatement
- (ACCSQLite)SQLite;
- (ACCSQLiteStatement)initWithSQLite:(id)lite SQL:(id)l handle:(sqlite3_stmt *)handle;
- (BOOL)step;
- (id)allObjects;
- (id)allObjectsByColumnName;
- (id)blobAtIndex:(unint64_t)index;
- (id)columnNameAtIndex:(unint64_t)index;
- (id)objectAtIndex:(unint64_t)index;
- (id)retainedTemporaryBoundObject:(id)object;
- (id)textAtIndex:(unint64_t)index;
- (void)bindBlob:(id)blob atIndex:(unint64_t)index;
- (void)bindDouble:(double)double atIndex:(unint64_t)index;
- (void)bindInt64:(int64_t)int64 atIndex:(unint64_t)index;
- (void)bindInt:(int)int atIndex:(unint64_t)index;
- (void)bindNullAtIndex:(unint64_t)index;
- (void)bindText:(id)text atIndex:(unint64_t)index;
- (void)bindValue:(id)value atIndex:(unint64_t)index;
- (void)bindValues:(id)values;
- (void)finalizeStatement;
- (void)reset;
- (void)resetAfterStepError;
@end

@implementation ACCSQLiteStatement

- (ACCSQLiteStatement)initWithSQLite:(id)lite SQL:(id)l handle:(sqlite3_stmt *)handle
{
  liteCopy = lite;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = ACCSQLiteStatement;
  v10 = [(ACCSQLiteStatement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_SQLite, liteCopy);
    objc_storeStrong(&v11->_SQL, l);
    v11->_handle = handle;
    v11->_reset = 1;
  }

  return v11;
}

- (void)finalizeStatement
{
  if (!self->_reset)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    SQL = self->_SQL;
    v6 = 138412290;
    v7 = SQL;
    v4 = "[#ACCEventLogger] accsqlite: Statement not reset after last use: %@";
    goto LABEL_7;
  }

  if (sqlite3_finalize(self->_handle) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = self->_SQL;
    v6 = 138412290;
    v7 = v3;
    v4 = "[#ACCEventLogger] accsqlite: Error finalizing prepared statement: %@";
LABEL_7:
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, &v6, 0xCu);
  }
}

- (void)resetAfterStepError
{
  if (!self->_reset)
  {
    sqlite3_reset(self->_handle);
    sqlite3_clear_bindings(self->_handle);
    [(NSMutableArray *)self->_temporaryBoundObjects removeAllObjects];
    self->_reset = 1;
  }
}

- (BOOL)step
{
  if (self->_reset)
  {
    self->_reset = 0;
  }

  v3 = sqlite3_step(self->_handle);
  if ((v3 & 0xFE) != 0x64)
  {
    [(ACCSQLiteStatement *)self resetAfterStepError];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v6[0] = 67109378;
      v6[1] = v3;
      v7 = 2112;
      v8 = SQL;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Failed to step (%d): %@", v6, 0x12u);
    }
  }

  return v3 == 100;
}

- (void)reset
{
  if (!self->_reset)
  {
    if (sqlite3_reset(self->_handle))
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      SQL = self->_SQL;
      v6 = 138412290;
      v7 = SQL;
      v4 = "[#ACCEventLogger] accsqlite: Error resetting prepared statement: %@";
LABEL_8:
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, &v6, 0xCu);
      return;
    }

    if (sqlite3_clear_bindings(self->_handle))
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v5 = self->_SQL;
      v6 = 138412290;
      v7 = v5;
      v4 = "[#ACCEventLogger] accsqlite: Error clearing prepared statement bindings: %@";
      goto LABEL_8;
    }

    [(NSMutableArray *)self->_temporaryBoundObjects removeAllObjects];
    self->_reset = 1;
  }
}

- (void)bindInt:(int)int atIndex:(unint64_t)index
{
  if (!self->_reset)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    SQL = self->_SQL;
    v10 = 138412290;
    indexCopy = SQL;
    v7 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v8 = 12;
    goto LABEL_7;
  }

  if (sqlite3_bind_int(self->_handle, index + 1, int) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_SQL;
    v10 = 134218242;
    indexCopy = index;
    v12 = 2112;
    v13 = v6;
    v7 = "[#ACCEventLogger] accsqlite: Error binding int at %ld: %@";
    v8 = 22;
LABEL_7:
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, &v10, v8);
  }
}

- (void)bindInt64:(int64_t)int64 atIndex:(unint64_t)index
{
  if (!self->_reset)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    SQL = self->_SQL;
    v10 = 138412290;
    indexCopy = SQL;
    v7 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v8 = 12;
    goto LABEL_7;
  }

  if (sqlite3_bind_int64(self->_handle, index + 1, int64) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_SQL;
    v10 = 134218242;
    indexCopy = index;
    v12 = 2112;
    v13 = v6;
    v7 = "[#ACCEventLogger] accsqlite: Error binding int64 at %ld: %@";
    v8 = 22;
LABEL_7:
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, &v10, v8);
  }
}

- (void)bindDouble:(double)double atIndex:(unint64_t)index
{
  if (!self->_reset)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    SQL = self->_SQL;
    v10 = 138412290;
    indexCopy = SQL;
    v7 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v8 = 12;
    goto LABEL_7;
  }

  if (sqlite3_bind_double(self->_handle, index + 1, double) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_SQL;
    v10 = 134218242;
    indexCopy = index;
    v12 = 2112;
    v13 = v6;
    v7 = "[#ACCEventLogger] accsqlite: Error binding double at %ld: %@";
    v8 = 22;
LABEL_7:
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, &v10, v8);
  }
}

- (void)bindBlob:(id)blob atIndex:(unint64_t)index
{
  blobCopy = blob;
  v7 = blobCopy;
  if (self->_reset)
  {
    if (!blobCopy)
    {
      [(ACCSQLiteStatement *)self bindNullAtIndex:index];
      goto LABEL_10;
    }

    if (sqlite3_bind_blob(self->_handle, index + 1, [blobCopy bytes], objc_msgSend(blobCopy, "length"), 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v12 = 134218242;
      indexCopy = index;
      v14 = 2112;
      v15 = SQL;
      v9 = "[#ACCEventLogger] accsqlite: Error binding blob at %ld: %@";
      v10 = 22;
LABEL_8:
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, &v12, v10);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_SQL;
    v12 = 138412290;
    indexCopy = v11;
    v9 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v10 = 12;
    goto LABEL_8;
  }

LABEL_10:
}

- (void)bindText:(id)text atIndex:(unint64_t)index
{
  textCopy = text;
  v7 = textCopy;
  if (self->_reset)
  {
    if (!textCopy)
    {
      [(ACCSQLiteStatement *)self bindNullAtIndex:index];
      goto LABEL_10;
    }

    if (sqlite3_bind_text(self->_handle, index + 1, [textCopy UTF8String], -1, 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v12 = 134218242;
      indexCopy = index;
      v14 = 2112;
      v15 = SQL;
      v9 = "[#ACCEventLogger] accsqlite: Error binding text at %ld: %@";
      v10 = 22;
LABEL_8:
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, &v12, v10);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_SQL;
    v12 = 138412290;
    indexCopy = v11;
    v9 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v10 = 12;
    goto LABEL_8;
  }

LABEL_10:
}

- (void)bindNullAtIndex:(unint64_t)index
{
  if (sqlite3_bind_null(self->_handle, index + 1))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: sqlite3_bind_null error", v3, 2u);
    }
  }
}

- (id)retainedTemporaryBoundObject:(id)object
{
  objectCopy = object;
  temporaryBoundObjects = self->_temporaryBoundObjects;
  if (!temporaryBoundObjects)
  {
    v6 = objc_opt_new();
    v7 = self->_temporaryBoundObjects;
    self->_temporaryBoundObjects = v6;

    temporaryBoundObjects = self->_temporaryBoundObjects;
  }

  [(NSMutableArray *)temporaryBoundObjects addObject:objectCopy];

  return objectCopy;
}

- (void)bindValue:(id)value atIndex:(unint64_t)index
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [ACCObjCType typeForValue:valueCopy];
    if ([absoluteString isIntegerNumber])
    {
      if ([absoluteString size] <= 4)
      {
LABEL_4:
        -[ACCSQLiteStatement bindInt:atIndex:](self, "bindInt:atIndex:", [valueCopy intValue], index);
LABEL_13:

        goto LABEL_14;
      }
    }

    else if ([absoluteString code] == &dword_8 + 2)
    {
      goto LABEL_4;
    }

    -[ACCSQLiteStatement bindInt64:atIndex:](self, "bindInt64:atIndex:", [valueCopy longLongValue], index);
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindBlob:valueCopy atIndex:index];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    [valueCopy getUUIDBytes:&v11];
    v8 = [NSData dataWithBytes:&v11 length:16];
LABEL_11:
    absoluteString = v8;
    v9 = [(ACCSQLiteStatement *)self retainedTemporaryBoundObject:v8];
    [(ACCSQLiteStatement *)self bindBlob:v9 atIndex:index];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindText:valueCopy atIndex:index];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindNullAtIndex:index];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy timeIntervalSinceReferenceDate];
    [(ACCSQLiteStatement *)self bindDouble:index atIndex:?];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [NSKeyedArchiver archivedDataWithRootObject:valueCopy];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [valueCopy absoluteString];
    v9 = [(ACCSQLiteStatement *)self retainedTemporaryBoundObject:absoluteString];
    [(ACCSQLiteStatement *)self bindText:v9 atIndex:index];
    goto LABEL_12;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 138412290;
    *(&v11 + 4) = objc_opt_class();
    v10 = *(&v11 + 4);
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Can't bind object of type %@", &v11, 0xCu);
  }

LABEL_14:
}

- (void)bindValues:(id)values
{
  valuesCopy = values;
  if ([valuesCopy count])
  {
    v4 = 0;
    do
    {
      v5 = [valuesCopy objectAtIndexedSubscript:v4];
      [(ACCSQLiteStatement *)self bindValue:v5 atIndex:v4];

      ++v4;
    }

    while (v4 < [valuesCopy count]);
  }
}

- (id)columnNameAtIndex:(unint64_t)index
{
  v3 = sqlite3_column_name(self->_handle, index);

  return [NSString stringWithUTF8String:v3];
}

- (id)blobAtIndex:(unint64_t)index
{
  indexCopy = index;
  v5 = sqlite3_column_blob(self->_handle, index);
  if (v5)
  {
    v5 = [NSData dataWithBytes:v5 length:sqlite3_column_bytes(self->_handle, indexCopy)];
  }

  return v5;
}

- (id)textAtIndex:(unint64_t)index
{
  v3 = sqlite3_column_text(self->_handle, index);
  if (v3)
  {
    v3 = [NSString stringWithUTF8String:v3];
  }

  return v3;
}

- (id)objectAtIndex:(unint64_t)index
{
  v5 = [(ACCSQLiteStatement *)self columnTypeAtIndex:?];
  v6 = v5;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v7 = [NSNumber numberWithLongLong:[(ACCSQLiteStatement *)self int64AtIndex:index]];
      goto LABEL_15;
    }

    if (v5 == 2)
    {
      [(ACCSQLiteStatement *)self doubleAtIndex:index];
      v7 = [NSNumber numberWithDouble:?];
      goto LABEL_15;
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v7 = [(ACCSQLiteStatement *)self textAtIndex:index];
        goto LABEL_15;
      case 4:
        v7 = [(ACCSQLiteStatement *)self blobAtIndex:index];
        goto LABEL_15;
      case 5:
        goto LABEL_14;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Unexpected column type: %d", v9, 8u);
  }

LABEL_14:
  v7 = 0;
LABEL_15:

  return v7;
}

- (id)allObjects
{
  columnCount = [(ACCSQLiteStatement *)self columnCount];
  v4 = [NSMutableArray arrayWithCapacity:columnCount];
  if (columnCount)
  {
    for (i = 0; i != columnCount; ++i)
    {
      v6 = [(ACCSQLiteStatement *)self objectAtIndex:i];
      if (v6)
      {
        [v4 setObject:v6 atIndexedSubscript:i];
      }

      else
      {
        v7 = +[NSNull null];
        [v4 setObject:v7 atIndexedSubscript:i];
      }
    }
  }

  return v4;
}

- (id)allObjectsByColumnName
{
  columnCount = [(ACCSQLiteStatement *)self columnCount];
  v4 = [NSMutableDictionary dictionaryWithCapacity:columnCount];
  if (columnCount)
  {
    for (i = 0; i != columnCount; ++i)
    {
      v6 = [(ACCSQLiteStatement *)self columnNameAtIndex:i];
      v7 = [(ACCSQLiteStatement *)self objectAtIndex:i];
      if (v7)
      {
        [v4 setObject:v7 forKeyedSubscript:v6];
      }
    }
  }

  return v4;
}

- (ACCSQLite)SQLite
{
  WeakRetained = objc_loadWeakRetained(&self->_SQLite);

  return WeakRetained;
}

@end