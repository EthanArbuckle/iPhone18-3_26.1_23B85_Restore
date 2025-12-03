@interface _PASSqliteDefaultErrorHandler
- (BOOL)_abortDueToSqliteError:(id)error onError:(id)onError db:(id)db;
- (BOOL)_handle_SQLITE_BUSY:(id)y onError:(id)error db:(id)db;
- (BOOL)_handle_SQLITE_CANTOPEN:(id)n onError:(id)error db:(id)db;
- (BOOL)_handle_SQLITE_CONSTRAINT_VTAB:(id)b onError:(id)error db:(id)db;
- (BOOL)_handle_SQLITE_CORRUPT:(id)t onError:(id)error db:(id)db;
- (BOOL)_handle_SQLITE_CORRUPT_VTAB:(id)b onError:(id)error db:(id)db;
- (BOOL)_handle_SQLITE_FULL:(id)l onError:(id)error db:(id)db;
- (BOOL)_handle_SQLITE_IOERR:(id)r onError:(id)error db:(id)db;
- (BOOL)_handle_SQLITE_IOERR_SHMSIZE:(id)e onError:(id)error db:(id)db;
- (BOOL)_handle_SQLITE_IOERR_SHORT_READ:(id)d onError:(id)error db:(id)db;
- (BOOL)_handle_SQLITE_NOTADB:(id)b onError:(id)error db:(id)db;
- (BOOL)handleSqliteError:(int)error error:(id)a4 onError:(id)onError db:(id)db;
@end

@implementation _PASSqliteDefaultErrorHandler

- (BOOL)_handle_SQLITE_CONSTRAINT_VTAB:(id)b onError:(id)error db:(id)db
{
  v12 = *MEMORY[0x1E69E9840];
  bCopy = b;
  errorCopy = error;
  dbCopy = db;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = bCopy;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_CONSTRAINT_VTAB error: %@", &v10, 0xCu);
  }

  _exit(2);
}

- (BOOL)_handle_SQLITE_CORRUPT_VTAB:(id)b onError:(id)error db:(id)db
{
  v12 = *MEMORY[0x1E69E9840];
  bCopy = b;
  errorCopy = error;
  dbCopy = db;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = bCopy;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_CORRUPT_VTAB error: %@", &v10, 0xCu);
  }

  _exit(2);
}

- (BOOL)_handle_SQLITE_BUSY:(id)y onError:(id)error db:(id)db
{
  v12 = *MEMORY[0x1E69E9840];
  yCopy = y;
  errorCopy = error;
  dbCopy = db;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = yCopy;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_BUSY error: %@", &v10, 0xCu);
  }

  _exit(3);
}

- (BOOL)_handle_SQLITE_IOERR_SHMSIZE:(id)e onError:(id)error db:(id)db
{
  v19 = *MEMORY[0x1E69E9840];
  eCopy = e;
  errorCopy = error;
  dbCopy = db;
  userInfo = [eCopy userInfo];
  v12 = [userInfo objectForKeyedSubscript:@"sql"];
  v13 = [v12 containsString:@"PRAGMA journal_mode"];

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = eCopy;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_IOERR_SHMSIZE error: %@", &v17, 0xCu);
    }

    _exit(1);
  }

  v14 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR:eCopy onError:errorCopy db:dbCopy];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_handle_SQLITE_IOERR:(id)r onError:(id)error db:(id)db
{
  v12 = *MEMORY[0x1E69E9840];
  rCopy = r;
  errorCopy = error;
  dbCopy = db;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = rCopy;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_IOERR error: %@", &v10, 0xCu);
  }

  _exit(2);
}

- (BOOL)_handle_SQLITE_CANTOPEN:(id)n onError:(id)error db:(id)db
{
  nCopy = n;
  errorCopy = error;
  dbCopy = db;
  if (*__error() == 28)
  {
    [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_FULL:nCopy onError:errorCopy db:dbCopy];
  }

  v11 = [(_PASSqliteDefaultErrorHandler *)self _abortDueToSqliteError:nCopy onError:errorCopy db:dbCopy];

  return v11;
}

- (BOOL)_handle_SQLITE_IOERR_SHORT_READ:(id)d onError:(id)error db:(id)db
{
  dCopy = d;
  errorCopy = error;
  dbCopy = db;
  if (([dbCopy isInMemory] & 1) == 0)
  {
    [dbCopy placeCorruptionMarker];
  }

  v11 = [(_PASSqliteDefaultErrorHandler *)self _abortDueToSqliteError:dCopy onError:errorCopy db:dbCopy];

  return v11;
}

- (BOOL)_handle_SQLITE_NOTADB:(id)b onError:(id)error db:(id)db
{
  bCopy = b;
  errorCopy = error;
  dbCopy = db;
  if (([dbCopy isInMemory] & 1) == 0)
  {
    [dbCopy placeCorruptionMarker];
  }

  v11 = [(_PASSqliteDefaultErrorHandler *)self _abortDueToSqliteError:bCopy onError:errorCopy db:dbCopy];

  return v11;
}

- (BOOL)_handle_SQLITE_CORRUPT:(id)t onError:(id)error db:(id)db
{
  tCopy = t;
  errorCopy = error;
  dbCopy = db;
  if (([dbCopy isInMemory] & 1) == 0)
  {
    [dbCopy placeCorruptionMarker];
  }

  v11 = [(_PASSqliteDefaultErrorHandler *)self _abortDueToSqliteError:tCopy onError:errorCopy db:dbCopy];

  return v11;
}

- (BOOL)_handle_SQLITE_FULL:(id)l onError:(id)error db:(id)db
{
  v12 = *MEMORY[0x1E69E9840];
  lCopy = l;
  errorCopy = error;
  dbCopy = db;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = lCopy;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_FULL error: %@", &v10, 0xCu);
  }

  _exit(1);
}

- (BOOL)_abortDueToSqliteError:(id)error onError:(id)onError db:(id)db
{
  errorCopy = error;
  onErrorCopy = onError;
  dbCopy = db;
  if (!onErrorCopy)
  {
    v14 = MEMORY[0x1E695DF30];
    domain = [errorCopy domain];
    userInfo = [errorCopy userInfo];
    v17 = [userInfo objectForKeyedSubscript:@"reason"];
    userInfo2 = [errorCopy userInfo];
    v19 = [v14 exceptionWithName:domain reason:v17 userInfo:userInfo2];
    v20 = v19;

    objc_exception_throw(v19);
  }

  v10 = dbCopy;
  v11 = objc_autoreleasePoolPush();
  v12 = onErrorCopy[2](onErrorCopy, errorCopy);
  objc_autoreleasePoolPop(v11);

  return (v12 & 1) == 0;
}

- (BOOL)handleSqliteError:(int)error error:(id)a4 onError:(id)onError db:(id)db
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a4;
  onErrorCopy = onError;
  dbCopy = db;
  if (error > 525)
  {
    if (error <= 2322)
    {
      if (error > 1042)
      {
        if (error > 1801)
        {
          if (error <= 2057)
          {
            if (error == 1802)
            {
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_FSTAT:v10 onError:onErrorCopy db:dbCopy];
              goto LABEL_167;
            }

            if (error == 1811)
            {
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_TRIGGER:v10 onError:onErrorCopy db:dbCopy];
              goto LABEL_167;
            }
          }

          else
          {
            switch(error)
            {
              case 2058:
                v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_UNLOCK:v10 onError:onErrorCopy db:dbCopy];
                goto LABEL_167;
              case 2067:
                v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_UNIQUE:v10 onError:onErrorCopy db:dbCopy];
                goto LABEL_167;
              case 2314:
                v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_RDLOCK:v10 onError:onErrorCopy db:dbCopy];
                goto LABEL_167;
            }
          }
        }

        else if (error <= 1298)
        {
          if (error == 1043)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_FUNCTION:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          }

          if (error == 1290)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_DIR_FSYNC:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          }
        }

        else
        {
          switch(error)
          {
            case 1299:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_NOTNULL:v10 onError:onErrorCopy db:dbCopy];
              goto LABEL_167;
            case 1546:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_TRUNCATE:v10 onError:onErrorCopy db:dbCopy];
              goto LABEL_167;
            case 1555:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_PRIMARYKEY:v10 onError:onErrorCopy db:dbCopy];
              goto LABEL_167;
          }
        }
      }

      else if (error > 781)
      {
        if (error <= 1031)
        {
          if (error == 782)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CANTOPEN_FULLPATH:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          }

          if (error == 787)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_FOREIGNKEY:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          }
        }

        else
        {
          switch(error)
          {
            case 1032:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_READONLY_DBMOVED:v10 onError:onErrorCopy db:dbCopy];
              goto LABEL_167;
            case 1034:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_FSYNC:v10 onError:onErrorCopy db:dbCopy];
              goto LABEL_167;
            case 1038:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CANTOPEN_CONVPATH:v10 onError:onErrorCopy db:dbCopy];
              goto LABEL_167;
          }
        }
      }

      else if (error <= 538)
      {
        if (error == 526)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CANTOPEN_ISDIR:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        }

        if (error == 531)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_COMMITHOOK:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        }
      }

      else
      {
        switch(error)
        {
          case 539:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOTICE_RECOVER_ROLLBACK:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          case 776:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_READONLY_ROLLBACK:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          case 778:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_WRITE:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
        }
      }
    }

    else if (error <= 4617)
    {
      if (error > 3337)
      {
        if (error <= 3849)
        {
          if (error == 3338)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_ACCESS:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          }

          if (error == 3594)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_CHECKRESERVEDLOCK:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          }
        }

        else
        {
          switch(error)
          {
            case 3850:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_LOCK:v10 onError:onErrorCopy db:dbCopy];
              goto LABEL_167;
            case 4106:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_CLOSE:v10 onError:onErrorCopy db:dbCopy];
              goto LABEL_167;
            case 4362:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_DIR_CLOSE:v10 onError:onErrorCopy db:dbCopy];
              goto LABEL_167;
          }
        }
      }

      else if (error <= 2578)
      {
        if (error == 2323)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_VTAB:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        }

        if (error == 2570)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_DELETE:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        }
      }

      else
      {
        switch(error)
        {
          case 2579:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_ROWID:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          case 2826:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_BLOCKED:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          case 3082:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_NOMEM:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
        }
      }
    }

    else if (error <= 5897)
    {
      if (error <= 5129)
      {
        if (error == 4618)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SHMOPEN:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        }

        if (error == 4874)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SHMSIZE:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        }
      }

      else
      {
        switch(error)
        {
          case 5130:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SHMLOCK:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          case 5386:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SHMMAP:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          case 5642:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SEEK:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
        }
      }
    }

    else if (error > 6665)
    {
      switch(error)
      {
        case 6666:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_CONVPATH:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        case 6922:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_VNODE:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        case 7178:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_AUTH:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
      }
    }

    else
    {
      switch(error)
      {
        case 5898:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_DELETE_NOENT:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        case 6154:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_MMAP:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        case 6410:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_GETTEMPPATH:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
      }
    }

    goto LABEL_162;
  }

  if (error > 260)
  {
    if (error > 278)
    {
      if (error <= 515)
      {
        switch(error)
        {
          case 279:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_AUTH_USER:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          case 283:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOTICE_RECOVER_WAL:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
          case 284:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_WARNING_AUTOINDEX:v10 onError:onErrorCopy db:dbCopy];
            goto LABEL_167;
        }
      }

      else if (error > 519)
      {
        if (error == 520)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_READONLY_CANTLOCK:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        }

        if (error == 522)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SHORT_READ:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        }
      }

      else
      {
        if (error == 516)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_ABORT_ROLLBACK:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        }

        if (error == 517)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_BUSY_SNAPSHOT:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        }
      }
    }

    else if (error <= 265)
    {
      switch(error)
      {
        case 261:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_BUSY_RECOVERY:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        case 262:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_LOCKED_SHAREDCACHE:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
        case 264:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_READONLY_RECOVERY:v10 onError:onErrorCopy db:dbCopy];
          goto LABEL_167;
      }
    }

    else if (error > 269)
    {
      if (error == 270)
      {
        v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CANTOPEN_NOTEMPDIR:v10 onError:onErrorCopy db:dbCopy];
        goto LABEL_167;
      }

      if (error == 275)
      {
        v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_CHECK:v10 onError:onErrorCopy db:dbCopy];
        goto LABEL_167;
      }
    }

    else
    {
      if (error == 266)
      {
        v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_READ:v10 onError:onErrorCopy db:dbCopy];
        goto LABEL_167;
      }

      if (error == 267)
      {
        v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CORRUPT_VTAB:v10 onError:onErrorCopy db:dbCopy];
        goto LABEL_167;
      }
    }

LABEL_162:
    if (error >= 0x100)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17[0] = 67109890;
        v17[1] = error;
        v18 = 2080;
        v19 = sqlite3_errstr(error);
        v20 = 1024;
        errorCopy = error;
        v22 = 2080;
        v23 = sqlite3_errstr(error);
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Converting SQLite extended error type %i (%s) to primary error type %i (%s)", v17, 0x22u);
      }

      v13 = [(_PASSqliteDefaultErrorHandler *)self handleSqliteError:error error:v10 onError:onErrorCopy db:dbCopy];
    }

    else
    {
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_UNKNOWN_ERROR:v10 onError:onErrorCopy db:dbCopy];
    }

    goto LABEL_167;
  }

  switch(error)
  {
    case 1:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_ERROR:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 2:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_INTERNAL:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 3:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_PERM:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 4:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_ABORT:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 5:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_BUSY:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 6:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_LOCKED:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 7:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOMEM:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 8:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_READONLY:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 9:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_INTERRUPT:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 10:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 11:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CORRUPT:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 12:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOTFOUND:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 13:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_FULL:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 14:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CANTOPEN:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 15:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_PROTOCOL:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 16:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_EMPTY:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 17:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_SCHEMA:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 18:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_TOOBIG:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 19:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 20:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_MISMATCH:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 21:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_MISUSE:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 22:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOLFS:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 23:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_AUTH:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 24:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_FORMAT:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 25:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_RANGE:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 26:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOTADB:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 27:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOTICE:v10 onError:onErrorCopy db:dbCopy];
      break;
    case 28:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_WARNING:v10 onError:onErrorCopy db:dbCopy];
      break;
    default:
      goto LABEL_162;
  }

LABEL_167:
  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end