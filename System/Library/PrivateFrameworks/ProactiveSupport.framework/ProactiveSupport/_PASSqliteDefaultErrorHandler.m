@interface _PASSqliteDefaultErrorHandler
- (BOOL)_abortDueToSqliteError:(id)a3 onError:(id)a4 db:(id)a5;
- (BOOL)_handle_SQLITE_BUSY:(id)a3 onError:(id)a4 db:(id)a5;
- (BOOL)_handle_SQLITE_CANTOPEN:(id)a3 onError:(id)a4 db:(id)a5;
- (BOOL)_handle_SQLITE_CONSTRAINT_VTAB:(id)a3 onError:(id)a4 db:(id)a5;
- (BOOL)_handle_SQLITE_CORRUPT:(id)a3 onError:(id)a4 db:(id)a5;
- (BOOL)_handle_SQLITE_CORRUPT_VTAB:(id)a3 onError:(id)a4 db:(id)a5;
- (BOOL)_handle_SQLITE_FULL:(id)a3 onError:(id)a4 db:(id)a5;
- (BOOL)_handle_SQLITE_IOERR:(id)a3 onError:(id)a4 db:(id)a5;
- (BOOL)_handle_SQLITE_IOERR_SHMSIZE:(id)a3 onError:(id)a4 db:(id)a5;
- (BOOL)_handle_SQLITE_IOERR_SHORT_READ:(id)a3 onError:(id)a4 db:(id)a5;
- (BOOL)_handle_SQLITE_NOTADB:(id)a3 onError:(id)a4 db:(id)a5;
- (BOOL)handleSqliteError:(int)a3 error:(id)a4 onError:(id)a5 db:(id)a6;
@end

@implementation _PASSqliteDefaultErrorHandler

- (BOOL)_handle_SQLITE_CONSTRAINT_VTAB:(id)a3 onError:(id)a4 db:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_CONSTRAINT_VTAB error: %@", &v10, 0xCu);
  }

  _exit(2);
}

- (BOOL)_handle_SQLITE_CORRUPT_VTAB:(id)a3 onError:(id)a4 db:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_CORRUPT_VTAB error: %@", &v10, 0xCu);
  }

  _exit(2);
}

- (BOOL)_handle_SQLITE_BUSY:(id)a3 onError:(id)a4 db:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_BUSY error: %@", &v10, 0xCu);
  }

  _exit(3);
}

- (BOOL)_handle_SQLITE_IOERR_SHMSIZE:(id)a3 onError:(id)a4 db:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"sql"];
  v13 = [v12 containsString:@"PRAGMA journal_mode"];

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v8;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_IOERR_SHMSIZE error: %@", &v17, 0xCu);
    }

    _exit(1);
  }

  v14 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR:v8 onError:v9 db:v10];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_handle_SQLITE_IOERR:(id)a3 onError:(id)a4 db:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_IOERR error: %@", &v10, 0xCu);
  }

  _exit(2);
}

- (BOOL)_handle_SQLITE_CANTOPEN:(id)a3 onError:(id)a4 db:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (*__error() == 28)
  {
    [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_FULL:v8 onError:v9 db:v10];
  }

  v11 = [(_PASSqliteDefaultErrorHandler *)self _abortDueToSqliteError:v8 onError:v9 db:v10];

  return v11;
}

- (BOOL)_handle_SQLITE_IOERR_SHORT_READ:(id)a3 onError:(id)a4 db:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v10 isInMemory] & 1) == 0)
  {
    [v10 placeCorruptionMarker];
  }

  v11 = [(_PASSqliteDefaultErrorHandler *)self _abortDueToSqliteError:v8 onError:v9 db:v10];

  return v11;
}

- (BOOL)_handle_SQLITE_NOTADB:(id)a3 onError:(id)a4 db:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v10 isInMemory] & 1) == 0)
  {
    [v10 placeCorruptionMarker];
  }

  v11 = [(_PASSqliteDefaultErrorHandler *)self _abortDueToSqliteError:v8 onError:v9 db:v10];

  return v11;
}

- (BOOL)_handle_SQLITE_CORRUPT:(id)a3 onError:(id)a4 db:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v10 isInMemory] & 1) == 0)
  {
    [v10 placeCorruptionMarker];
  }

  v11 = [(_PASSqliteDefaultErrorHandler *)self _abortDueToSqliteError:v8 onError:v9 db:v10];

  return v11;
}

- (BOOL)_handle_SQLITE_FULL:(id)a3 onError:(id)a4 db:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting due to SQLITE_FULL error: %@", &v10, 0xCu);
  }

  _exit(1);
}

- (BOOL)_abortDueToSqliteError:(id)a3 onError:(id)a4 db:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = [v7 domain];
    v16 = [v7 userInfo];
    v17 = [v16 objectForKeyedSubscript:@"reason"];
    v18 = [v7 userInfo];
    v19 = [v14 exceptionWithName:v15 reason:v17 userInfo:v18];
    v20 = v19;

    objc_exception_throw(v19);
  }

  v10 = v9;
  v11 = objc_autoreleasePoolPush();
  v12 = v8[2](v8, v7);
  objc_autoreleasePoolPop(v11);

  return (v12 & 1) == 0;
}

- (BOOL)handleSqliteError:(int)a3 error:(id)a4 onError:(id)a5 db:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (a3 > 525)
  {
    if (a3 <= 2322)
    {
      if (a3 > 1042)
      {
        if (a3 > 1801)
        {
          if (a3 <= 2057)
          {
            if (a3 == 1802)
            {
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_FSTAT:v10 onError:v11 db:v12];
              goto LABEL_167;
            }

            if (a3 == 1811)
            {
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_TRIGGER:v10 onError:v11 db:v12];
              goto LABEL_167;
            }
          }

          else
          {
            switch(a3)
            {
              case 2058:
                v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_UNLOCK:v10 onError:v11 db:v12];
                goto LABEL_167;
              case 2067:
                v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_UNIQUE:v10 onError:v11 db:v12];
                goto LABEL_167;
              case 2314:
                v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_RDLOCK:v10 onError:v11 db:v12];
                goto LABEL_167;
            }
          }
        }

        else if (a3 <= 1298)
        {
          if (a3 == 1043)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_FUNCTION:v10 onError:v11 db:v12];
            goto LABEL_167;
          }

          if (a3 == 1290)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_DIR_FSYNC:v10 onError:v11 db:v12];
            goto LABEL_167;
          }
        }

        else
        {
          switch(a3)
          {
            case 1299:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_NOTNULL:v10 onError:v11 db:v12];
              goto LABEL_167;
            case 1546:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_TRUNCATE:v10 onError:v11 db:v12];
              goto LABEL_167;
            case 1555:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_PRIMARYKEY:v10 onError:v11 db:v12];
              goto LABEL_167;
          }
        }
      }

      else if (a3 > 781)
      {
        if (a3 <= 1031)
        {
          if (a3 == 782)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CANTOPEN_FULLPATH:v10 onError:v11 db:v12];
            goto LABEL_167;
          }

          if (a3 == 787)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_FOREIGNKEY:v10 onError:v11 db:v12];
            goto LABEL_167;
          }
        }

        else
        {
          switch(a3)
          {
            case 1032:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_READONLY_DBMOVED:v10 onError:v11 db:v12];
              goto LABEL_167;
            case 1034:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_FSYNC:v10 onError:v11 db:v12];
              goto LABEL_167;
            case 1038:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CANTOPEN_CONVPATH:v10 onError:v11 db:v12];
              goto LABEL_167;
          }
        }
      }

      else if (a3 <= 538)
      {
        if (a3 == 526)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CANTOPEN_ISDIR:v10 onError:v11 db:v12];
          goto LABEL_167;
        }

        if (a3 == 531)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_COMMITHOOK:v10 onError:v11 db:v12];
          goto LABEL_167;
        }
      }

      else
      {
        switch(a3)
        {
          case 539:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOTICE_RECOVER_ROLLBACK:v10 onError:v11 db:v12];
            goto LABEL_167;
          case 776:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_READONLY_ROLLBACK:v10 onError:v11 db:v12];
            goto LABEL_167;
          case 778:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_WRITE:v10 onError:v11 db:v12];
            goto LABEL_167;
        }
      }
    }

    else if (a3 <= 4617)
    {
      if (a3 > 3337)
      {
        if (a3 <= 3849)
        {
          if (a3 == 3338)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_ACCESS:v10 onError:v11 db:v12];
            goto LABEL_167;
          }

          if (a3 == 3594)
          {
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_CHECKRESERVEDLOCK:v10 onError:v11 db:v12];
            goto LABEL_167;
          }
        }

        else
        {
          switch(a3)
          {
            case 3850:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_LOCK:v10 onError:v11 db:v12];
              goto LABEL_167;
            case 4106:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_CLOSE:v10 onError:v11 db:v12];
              goto LABEL_167;
            case 4362:
              v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_DIR_CLOSE:v10 onError:v11 db:v12];
              goto LABEL_167;
          }
        }
      }

      else if (a3 <= 2578)
      {
        if (a3 == 2323)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_VTAB:v10 onError:v11 db:v12];
          goto LABEL_167;
        }

        if (a3 == 2570)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_DELETE:v10 onError:v11 db:v12];
          goto LABEL_167;
        }
      }

      else
      {
        switch(a3)
        {
          case 2579:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_ROWID:v10 onError:v11 db:v12];
            goto LABEL_167;
          case 2826:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_BLOCKED:v10 onError:v11 db:v12];
            goto LABEL_167;
          case 3082:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_NOMEM:v10 onError:v11 db:v12];
            goto LABEL_167;
        }
      }
    }

    else if (a3 <= 5897)
    {
      if (a3 <= 5129)
      {
        if (a3 == 4618)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SHMOPEN:v10 onError:v11 db:v12];
          goto LABEL_167;
        }

        if (a3 == 4874)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SHMSIZE:v10 onError:v11 db:v12];
          goto LABEL_167;
        }
      }

      else
      {
        switch(a3)
        {
          case 5130:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SHMLOCK:v10 onError:v11 db:v12];
            goto LABEL_167;
          case 5386:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SHMMAP:v10 onError:v11 db:v12];
            goto LABEL_167;
          case 5642:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SEEK:v10 onError:v11 db:v12];
            goto LABEL_167;
        }
      }
    }

    else if (a3 > 6665)
    {
      switch(a3)
      {
        case 6666:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_CONVPATH:v10 onError:v11 db:v12];
          goto LABEL_167;
        case 6922:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_VNODE:v10 onError:v11 db:v12];
          goto LABEL_167;
        case 7178:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_AUTH:v10 onError:v11 db:v12];
          goto LABEL_167;
      }
    }

    else
    {
      switch(a3)
      {
        case 5898:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_DELETE_NOENT:v10 onError:v11 db:v12];
          goto LABEL_167;
        case 6154:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_MMAP:v10 onError:v11 db:v12];
          goto LABEL_167;
        case 6410:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_GETTEMPPATH:v10 onError:v11 db:v12];
          goto LABEL_167;
      }
    }

    goto LABEL_162;
  }

  if (a3 > 260)
  {
    if (a3 > 278)
    {
      if (a3 <= 515)
      {
        switch(a3)
        {
          case 279:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_AUTH_USER:v10 onError:v11 db:v12];
            goto LABEL_167;
          case 283:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOTICE_RECOVER_WAL:v10 onError:v11 db:v12];
            goto LABEL_167;
          case 284:
            v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_WARNING_AUTOINDEX:v10 onError:v11 db:v12];
            goto LABEL_167;
        }
      }

      else if (a3 > 519)
      {
        if (a3 == 520)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_READONLY_CANTLOCK:v10 onError:v11 db:v12];
          goto LABEL_167;
        }

        if (a3 == 522)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_SHORT_READ:v10 onError:v11 db:v12];
          goto LABEL_167;
        }
      }

      else
      {
        if (a3 == 516)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_ABORT_ROLLBACK:v10 onError:v11 db:v12];
          goto LABEL_167;
        }

        if (a3 == 517)
        {
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_BUSY_SNAPSHOT:v10 onError:v11 db:v12];
          goto LABEL_167;
        }
      }
    }

    else if (a3 <= 265)
    {
      switch(a3)
      {
        case 261:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_BUSY_RECOVERY:v10 onError:v11 db:v12];
          goto LABEL_167;
        case 262:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_LOCKED_SHAREDCACHE:v10 onError:v11 db:v12];
          goto LABEL_167;
        case 264:
          v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_READONLY_RECOVERY:v10 onError:v11 db:v12];
          goto LABEL_167;
      }
    }

    else if (a3 > 269)
    {
      if (a3 == 270)
      {
        v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CANTOPEN_NOTEMPDIR:v10 onError:v11 db:v12];
        goto LABEL_167;
      }

      if (a3 == 275)
      {
        v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT_CHECK:v10 onError:v11 db:v12];
        goto LABEL_167;
      }
    }

    else
    {
      if (a3 == 266)
      {
        v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR_READ:v10 onError:v11 db:v12];
        goto LABEL_167;
      }

      if (a3 == 267)
      {
        v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CORRUPT_VTAB:v10 onError:v11 db:v12];
        goto LABEL_167;
      }
    }

LABEL_162:
    if (a3 >= 0x100)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17[0] = 67109890;
        v17[1] = a3;
        v18 = 2080;
        v19 = sqlite3_errstr(a3);
        v20 = 1024;
        v21 = a3;
        v22 = 2080;
        v23 = sqlite3_errstr(a3);
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Converting SQLite extended error type %i (%s) to primary error type %i (%s)", v17, 0x22u);
      }

      v13 = [(_PASSqliteDefaultErrorHandler *)self handleSqliteError:a3 error:v10 onError:v11 db:v12];
    }

    else
    {
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_UNKNOWN_ERROR:v10 onError:v11 db:v12];
    }

    goto LABEL_167;
  }

  switch(a3)
  {
    case 1:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_ERROR:v10 onError:v11 db:v12];
      break;
    case 2:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_INTERNAL:v10 onError:v11 db:v12];
      break;
    case 3:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_PERM:v10 onError:v11 db:v12];
      break;
    case 4:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_ABORT:v10 onError:v11 db:v12];
      break;
    case 5:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_BUSY:v10 onError:v11 db:v12];
      break;
    case 6:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_LOCKED:v10 onError:v11 db:v12];
      break;
    case 7:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOMEM:v10 onError:v11 db:v12];
      break;
    case 8:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_READONLY:v10 onError:v11 db:v12];
      break;
    case 9:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_INTERRUPT:v10 onError:v11 db:v12];
      break;
    case 10:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_IOERR:v10 onError:v11 db:v12];
      break;
    case 11:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CORRUPT:v10 onError:v11 db:v12];
      break;
    case 12:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOTFOUND:v10 onError:v11 db:v12];
      break;
    case 13:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_FULL:v10 onError:v11 db:v12];
      break;
    case 14:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CANTOPEN:v10 onError:v11 db:v12];
      break;
    case 15:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_PROTOCOL:v10 onError:v11 db:v12];
      break;
    case 16:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_EMPTY:v10 onError:v11 db:v12];
      break;
    case 17:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_SCHEMA:v10 onError:v11 db:v12];
      break;
    case 18:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_TOOBIG:v10 onError:v11 db:v12];
      break;
    case 19:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_CONSTRAINT:v10 onError:v11 db:v12];
      break;
    case 20:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_MISMATCH:v10 onError:v11 db:v12];
      break;
    case 21:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_MISUSE:v10 onError:v11 db:v12];
      break;
    case 22:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOLFS:v10 onError:v11 db:v12];
      break;
    case 23:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_AUTH:v10 onError:v11 db:v12];
      break;
    case 24:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_FORMAT:v10 onError:v11 db:v12];
      break;
    case 25:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_RANGE:v10 onError:v11 db:v12];
      break;
    case 26:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOTADB:v10 onError:v11 db:v12];
      break;
    case 27:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_NOTICE:v10 onError:v11 db:v12];
      break;
    case 28:
      v13 = [(_PASSqliteDefaultErrorHandler *)self _handle_SQLITE_WARNING:v10 onError:v11 db:v12];
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