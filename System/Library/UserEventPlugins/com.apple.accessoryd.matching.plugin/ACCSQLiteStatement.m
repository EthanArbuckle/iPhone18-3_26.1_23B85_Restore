@interface ACCSQLiteStatement
- (ACCSQLite)SQLite;
- (ACCSQLiteStatement)initWithSQLite:(id)a3 SQL:(id)a4 handle:(sqlite3_stmt *)a5;
- (BOOL)step;
- (id)allObjects;
- (id)allObjectsByColumnName;
- (id)blobAtIndex:(unint64_t)a3;
- (id)columnNameAtIndex:(unint64_t)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)retainedTemporaryBoundObject:(id)a3;
- (id)textAtIndex:(unint64_t)a3;
- (void)bindBlob:(id)a3 atIndex:(unint64_t)a4;
- (void)bindDouble:(double)a3 atIndex:(unint64_t)a4;
- (void)bindInt64:(int64_t)a3 atIndex:(unint64_t)a4;
- (void)bindInt:(int)a3 atIndex:(unint64_t)a4;
- (void)bindNullAtIndex:(unint64_t)a3;
- (void)bindText:(id)a3 atIndex:(unint64_t)a4;
- (void)bindValue:(id)a3 atIndex:(unint64_t)a4;
- (void)bindValues:(id)a3;
- (void)finalizeStatement;
- (void)reset;
- (void)resetAfterStepError;
@end

@implementation ACCSQLiteStatement

- (ACCSQLiteStatement)initWithSQLite:(id)a3 SQL:(id)a4 handle:(sqlite3_stmt *)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = ACCSQLiteStatement;
  v10 = [(ACCSQLiteStatement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_SQLite, v8);
    objc_storeStrong(&v11->_SQL, a4);
    v11->_handle = a5;
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

- (void)bindInt:(int)a3 atIndex:(unint64_t)a4
{
  if (!self->_reset)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    SQL = self->_SQL;
    v10 = 138412290;
    v11 = SQL;
    v7 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v8 = 12;
    goto LABEL_7;
  }

  if (sqlite3_bind_int(self->_handle, a4 + 1, a3) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_SQL;
    v10 = 134218242;
    v11 = a4;
    v12 = 2112;
    v13 = v6;
    v7 = "[#ACCEventLogger] accsqlite: Error binding int at %ld: %@";
    v8 = 22;
LABEL_7:
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, &v10, v8);
  }
}

- (void)bindInt64:(int64_t)a3 atIndex:(unint64_t)a4
{
  if (!self->_reset)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    SQL = self->_SQL;
    v10 = 138412290;
    v11 = SQL;
    v7 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v8 = 12;
    goto LABEL_7;
  }

  if (sqlite3_bind_int64(self->_handle, a4 + 1, a3) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_SQL;
    v10 = 134218242;
    v11 = a4;
    v12 = 2112;
    v13 = v6;
    v7 = "[#ACCEventLogger] accsqlite: Error binding int64 at %ld: %@";
    v8 = 22;
LABEL_7:
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, &v10, v8);
  }
}

- (void)bindDouble:(double)a3 atIndex:(unint64_t)a4
{
  if (!self->_reset)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    SQL = self->_SQL;
    v10 = 138412290;
    v11 = SQL;
    v7 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v8 = 12;
    goto LABEL_7;
  }

  if (sqlite3_bind_double(self->_handle, a4 + 1, a3) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_SQL;
    v10 = 134218242;
    v11 = a4;
    v12 = 2112;
    v13 = v6;
    v7 = "[#ACCEventLogger] accsqlite: Error binding double at %ld: %@";
    v8 = 22;
LABEL_7:
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, &v10, v8);
  }
}

- (void)bindBlob:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_reset)
  {
    if (!v6)
    {
      [(ACCSQLiteStatement *)self bindNullAtIndex:a4];
      goto LABEL_10;
    }

    if (sqlite3_bind_blob(self->_handle, a4 + 1, [v6 bytes], objc_msgSend(v6, "length"), 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v12 = 134218242;
      v13 = a4;
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
    v13 = v11;
    v9 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v10 = 12;
    goto LABEL_8;
  }

LABEL_10:
}

- (void)bindText:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_reset)
  {
    if (!v6)
    {
      [(ACCSQLiteStatement *)self bindNullAtIndex:a4];
      goto LABEL_10;
    }

    if (sqlite3_bind_text(self->_handle, a4 + 1, [v6 UTF8String], -1, 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v12 = 134218242;
      v13 = a4;
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
    v13 = v11;
    v9 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v10 = 12;
    goto LABEL_8;
  }

LABEL_10:
}

- (void)bindNullAtIndex:(unint64_t)a3
{
  if (sqlite3_bind_null(self->_handle, a3 + 1))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: sqlite3_bind_null error", v3, 2u);
    }
  }
}

- (id)retainedTemporaryBoundObject:(id)a3
{
  v4 = a3;
  temporaryBoundObjects = self->_temporaryBoundObjects;
  if (!temporaryBoundObjects)
  {
    v6 = objc_opt_new();
    v7 = self->_temporaryBoundObjects;
    self->_temporaryBoundObjects = v6;

    temporaryBoundObjects = self->_temporaryBoundObjects;
  }

  [(NSMutableArray *)temporaryBoundObjects addObject:v4];

  return v4;
}

- (void)bindValue:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [ACCObjCType typeForValue:v6];
    if ([v7 isIntegerNumber])
    {
      if ([v7 size] <= 4)
      {
LABEL_4:
        -[ACCSQLiteStatement bindInt:atIndex:](self, "bindInt:atIndex:", [v6 intValue], a4);
LABEL_13:

        goto LABEL_14;
      }
    }

    else if ([v7 code] == &dword_8 + 2)
    {
      goto LABEL_4;
    }

    -[ACCSQLiteStatement bindInt64:atIndex:](self, "bindInt64:atIndex:", [v6 longLongValue], a4);
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindBlob:v6 atIndex:a4];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    [v6 getUUIDBytes:&v11];
    v8 = [NSData dataWithBytes:&v11 length:16];
LABEL_11:
    v7 = v8;
    v9 = [(ACCSQLiteStatement *)self retainedTemporaryBoundObject:v8];
    [(ACCSQLiteStatement *)self bindBlob:v9 atIndex:a4];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindText:v6 atIndex:a4];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindNullAtIndex:a4];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 timeIntervalSinceReferenceDate];
    [(ACCSQLiteStatement *)self bindDouble:a4 atIndex:?];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v6];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 absoluteString];
    v9 = [(ACCSQLiteStatement *)self retainedTemporaryBoundObject:v7];
    [(ACCSQLiteStatement *)self bindText:v9 atIndex:a4];
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

- (void)bindValues:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = 0;
    do
    {
      v5 = [v6 objectAtIndexedSubscript:v4];
      [(ACCSQLiteStatement *)self bindValue:v5 atIndex:v4];

      ++v4;
    }

    while (v4 < [v6 count]);
  }
}

- (id)columnNameAtIndex:(unint64_t)a3
{
  v3 = sqlite3_column_name(self->_handle, a3);

  return [NSString stringWithUTF8String:v3];
}

- (id)blobAtIndex:(unint64_t)a3
{
  v3 = a3;
  v5 = sqlite3_column_blob(self->_handle, a3);
  if (v5)
  {
    v5 = [NSData dataWithBytes:v5 length:sqlite3_column_bytes(self->_handle, v3)];
  }

  return v5;
}

- (id)textAtIndex:(unint64_t)a3
{
  v3 = sqlite3_column_text(self->_handle, a3);
  if (v3)
  {
    v3 = [NSString stringWithUTF8String:v3];
  }

  return v3;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v5 = [(ACCSQLiteStatement *)self columnTypeAtIndex:?];
  v6 = v5;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v7 = [NSNumber numberWithLongLong:[(ACCSQLiteStatement *)self int64AtIndex:a3]];
      goto LABEL_15;
    }

    if (v5 == 2)
    {
      [(ACCSQLiteStatement *)self doubleAtIndex:a3];
      v7 = [NSNumber numberWithDouble:?];
      goto LABEL_15;
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v7 = [(ACCSQLiteStatement *)self textAtIndex:a3];
        goto LABEL_15;
      case 4:
        v7 = [(ACCSQLiteStatement *)self blobAtIndex:a3];
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
  v3 = [(ACCSQLiteStatement *)self columnCount];
  v4 = [NSMutableArray arrayWithCapacity:v3];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
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
  v3 = [(ACCSQLiteStatement *)self columnCount];
  v4 = [NSMutableDictionary dictionaryWithCapacity:v3];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
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