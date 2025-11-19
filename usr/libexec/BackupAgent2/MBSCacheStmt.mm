@interface MBSCacheStmt
- (BOOL)step;
- (MBSCacheStmt)initWithCache:(id)a3 SQL:(id)a4 stmt:(sqlite3_stmt *)a5;
- (double)doubleColumn:(int)a3;
- (id)blobColumn:(int)a3;
- (id)textColumn:(int)a3;
- (int)columnCount;
- (int)intColumn:(int)a3;
- (int)typeOfColumn:(int)a3;
- (int64_t)int64Column:(int)a3;
- (void)dealloc;
- (void)reset;
- (void)verifyEqualToStmt:(id)a3 exceptColumnNumbers:(id)a4;
@end

@implementation MBSCacheStmt

- (MBSCacheStmt)initWithCache:(id)a3 SQL:(id)a4 stmt:(sqlite3_stmt *)a5
{
  v9.receiver = self;
  v9.super_class = MBSCacheStmt;
  result = [(MBSCacheStmt *)&v9 init];
  if (result)
  {
    result->_cache = a3;
    result->_SQL = a4;
    result->_stmt = a5;
    result->_reset = 1;
  }

  return result;
}

- (void)dealloc
{
  if (!self->_reset)
  {
    sub_10009B53C();
  }

  if (sqlite3_finalize(self->_stmt))
  {
    [(MBSCacheLikeObject *)self->_cache _raise:@"Error finalizing prepared statement: %@", self->_SQL];
  }

  v3.receiver = self;
  v3.super_class = MBSCacheStmt;
  [(MBSCacheStmt *)&v3 dealloc];
}

- (BOOL)step
{
  if (self->_reset)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_startTime = v3;
    self->_reset = 0;
  }

  v4 = sqlite3_step(self->_stmt);
  if ((v4 & 0xFFFFFFFE) != 0x64)
  {
    [(MBSCacheLikeObject *)self->_cache _raise:@"Failed to step (%d): %@", v4, self->_SQL];
  }

  return v4 == 100;
}

- (void)reset
{
  if (!self->_reset)
  {
    if (sqlite3_reset(self->_stmt))
    {
      [(MBSCacheLikeObject *)self->_cache _raise:@"Error resetting prepared statement: %@", self->_SQL];
    }

    if (sqlite3_clear_bindings(self->_stmt))
    {
      [(MBSCacheLikeObject *)self->_cache _raise:@"Error clearing prepared statement bindings: %@", self->_SQL];
    }

    cache = self->_cache;
    SQL = self->_SQL;
    +[NSDate timeIntervalSinceReferenceDate];
    [(MBSCacheLikeObject *)cache _profile:SQL time:v5 - self->_startTime];
    self->_startTime = 0.0;
    self->_reset = 1;
  }
}

- (int)columnCount
{
  if (self->_reset)
  {
    sub_10009B734();
  }

  stmt = self->_stmt;

  return sqlite3_column_count(stmt);
}

- (int)typeOfColumn:(int)a3
{
  if (self->_reset)
  {
    sub_10009B788();
  }

  stmt = self->_stmt;

  return sqlite3_column_type(stmt, a3);
}

- (int)intColumn:(int)a3
{
  if (self->_reset)
  {
    sub_10009B7DC();
  }

  stmt = self->_stmt;

  return sqlite3_column_int(stmt, a3);
}

- (int64_t)int64Column:(int)a3
{
  if (self->_reset)
  {
    sub_10009B830();
  }

  stmt = self->_stmt;

  return sqlite3_column_int64(stmt, a3);
}

- (double)doubleColumn:(int)a3
{
  if (self->_reset)
  {
    sub_10009B884();
  }

  stmt = self->_stmt;

  return sqlite3_column_double(stmt, a3);
}

- (id)blobColumn:(int)a3
{
  if (self->_reset)
  {
    sub_10009B8D8();
  }

  result = sqlite3_column_blob(self->_stmt, a3);
  if (result)
  {
    v6 = result;
    v7 = sqlite3_column_bytes(self->_stmt, a3);

    return [NSData dataWithBytes:v6 length:v7];
  }

  return result;
}

- (id)textColumn:(int)a3
{
  if (self->_reset)
  {
    sub_10009B92C();
  }

  result = sqlite3_column_text(self->_stmt, a3);
  if (result)
  {

    return [NSString stringWithUTF8String:result];
  }

  return result;
}

- (void)verifyEqualToStmt:(id)a3 exceptColumnNumbers:(id)a4
{
  do
  {
    v6 = objc_autoreleasePoolPush();
    if (![(MBSCacheStmt *)self step])
    {
      if (![a3 step])
      {
LABEL_20:
        v17 = 0;
        goto LABEL_22;
      }

      v14 = +[NSAssertionHandler currentHandler];
      v15 = 219;
      v16 = @"Fewer results on left-hand side";
LABEL_19:
      [(NSAssertionHandler *)v14 handleFailureInMethod:a2 object:self file:@"MBSCacheStmt.m" lineNumber:v15 description:v16];
      goto LABEL_20;
    }

    if (![a3 step])
    {
      v14 = +[NSAssertionHandler currentHandler];
      v15 = 215;
      v16 = @"Fewer results on right-hand side";
      goto LABEL_19;
    }

    v7 = [(MBSCacheStmt *)self columnCount];
    if (v7 != [a3 columnCount])
    {
      -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"MBSCacheStmt.m", 199, @"Column count doesn't match (%d != %d)", -[MBSCacheStmt columnCount](self, "columnCount"), [a3 columnCount]);
    }

    v8 = [(MBSCacheStmt *)self columnCount];
    if (v8 >= 1)
    {
      v9 = 0;
      do
      {
        if (([a4 containsObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v9)}] & 1) == 0)
        {
          v10 = [a3 valueOfColumn:v9];
          v11 = [(MBSCacheStmt *)self valueOfColumn:v9];
          if (v10 | v11)
          {
            if (([v10 isEqual:v11] & 1) == 0)
            {
              v12 = sqlite3_column_name(self->_stmt, v9);
              v13 = MBGetDefaultLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v24 = v12;
                v25 = 2112;
                v26 = v10;
                v27 = 2112;
                v28 = v11;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Column %s values don't match (%@ != %@)", buf, 0x20u);
                v19 = v10;
                v20 = v11;
                v18 = v12;
                _MBLog();
              }
            }

            if (([v10 isEqual:{v11, v18, v19, v20}] & 1) == 0)
            {
              v19 = v10;
              v20 = v11;
              v18 = v9;
              [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"MBSCacheStmt.m" description:211, @"Column %d values don't match (%@ != %@)"];
            }
          }
        }

        v9 = (v9 + 1);
      }

      while (v8 != v9);
    }

    v17 = 1;
LABEL_22:
    objc_autoreleasePoolPop(v6);
  }

  while ((v17 & 1) != 0);
  [(MBSCacheStmt *)self reset];
  [a3 reset];
}

@end