@interface MBSQLiteFileHandle
+ (BOOL)compactSQLiteDatabaseAtPath:(id)path toPath:(id)toPath error:(id *)error;
+ (BOOL)copySQLiteFileAtPath:(id)path toPath:(id)toPath timeout:(double)timeout error:(id *)error;
+ (BOOL)isSQLiteFileAtPath:(id)path result:(BOOL *)result error:(id *)error;
+ (BOOL)isSQLiteFileHandle:(id)handle result:(BOOL *)result error:(id *)error;
+ (BOOL)lastModifiedForSQLiteFileAtPath:(id)path time:(int64_t *)time error:(id *)error;
+ (BOOL)removeJournalsForSQLiteFileAtPath:(id)path error:(id *)error;
+ (BOOL)removeSQLiteFileAtPath:(id)path error:(id *)error;
+ (BOOL)setAttributes:(id)attributes ofSQLiteFileAtPath:(id)path error:(id *)error;
+ (id)SQLiteFileHandleWithOriginalFileHandle:(id)handle copiedFileHandle:(id)fileHandle;
+ (id)executePragma:(id)pragma withDatabase:(sqlite3 *)database;
+ (void)removeAllSQLiteFilesAtPath:(id)path;
- (BOOL)closeWithError:(id *)error;
- (BOOL)statWithBuffer:(stat *)buffer error:(id *)error;
- (MBSQLiteFileHandle)initWithOriginalFileHandle:(id)handle copiedFileHandle:(id)fileHandle;
@end

@implementation MBSQLiteFileHandle

+ (BOOL)isSQLiteFileAtPath:(id)path result:(BOOL *)result error:(id *)error
{
  pathCopy = path;
  v8 = [pathCopy length];
  v9 = [@"/private" length];
  if (v8 > 1024 - ([@"-journal" length] + v9))
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = pathCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "File path too long to handle as a SQLite file: %@", buf, 0xCu);
      _MBLog();
    }

    if (!result)
    {
      goto LABEL_6;
    }

LABEL_5:
    *result = 0;
LABEL_6:
    v11 = 1;
    goto LABEL_14;
  }

  if (sub_100079E0C(pathCopy))
  {
    if (!result)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = [MBBasicFileHandle basicFileHandleWithPath:pathCopy flags:256 mode:0 error:error];
  if (v12)
  {
    v11 = [MBSQLiteFileHandle isSQLiteFileHandle:v12 result:result error:error];
    [v12 closeWithError:0];
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  return v11;
}

+ (BOOL)isSQLiteFileHandle:(id)handle result:(BOOL *)result error:(id *)error
{
  handleCopy = handle;
  *result = 0;
  v30 = xmmword_1000B7458;
  v31 = 0;
  v29 = 0;
  v8 = [handleCopy fd];
  if (fgetattrlist(v8, &v30, &v29, 8uLL, 0))
  {
    path = [handleCopy path];
    v10 = [MBError posixErrorWithPath:path format:@"fgetattrlist failed"];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      path2 = [handleCopy path];
      *buf = 138412546;
      v35 = path2;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "fgetattrlist failed at %@: %@", buf, 0x16u);

      path3 = [handleCopy path];
      _MBLog();
    }

    if (error)
    {
      v13 = v10;
      *error = v10;
    }

    v14 = 0;
  }

  else if (HIDWORD(v29) == 1)
  {
    __buf = 0;
    v33 = 0;
    v15 = pread(v8, &__buf, 0x10uLL, 0);
    v14 = v15 >= 0;
    if (v15 < 0)
    {
      v20 = *__error();
      path4 = [handleCopy path];
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v35 = path4;
        v36 = 1024;
        LODWORD(v37) = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "pread failed at %@: %{errno}d", buf, 0x12u);
        _MBLog();
      }

      v23 = [MBError errorWithErrno:v20 path:path4 format:@"pread error"];
      v24 = v23;
      if (error)
      {
        v25 = v23;
        *error = v24;
      }

      if ((v20 - 34) <= 0x3A && ((1 << (v20 - 34)) & 0x400000000000801) != 0 || v20 == 22)
      {
        sub_10000D2DC(path4, v20, "pread");
      }
    }

    else if (v15 == 16 && __buf == 0x66206574694C5153 && v33 == 0x332074616D726FLL)
    {
      *result = 1;
    }
  }

  else
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HIDWORD(v29);
      path5 = [handleCopy path];
      *buf = 134218242;
      v35 = v18;
      v36 = 2112;
      v37 = path5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Not a regular file (%ld) at %@", buf, 0x16u);

      path6 = [handleCopy path];
      _MBLog();
    }

    v14 = 1;
  }

  return v14;
}

+ (BOOL)compactSQLiteDatabaseAtPath:(id)path toPath:(id)toPath error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  if (!error)
  {
    sub_1000A04DC();
  }

  v9 = toPathCopy;
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [v9 fileSystemRepresentation];
  ppDb = 0;
  memset(&v65, 0, sizeof(v65));
  if (stat(fileSystemRepresentation, &v65))
  {
    *&v12 = *__error();
    [MBError posixErrorWithPath:pathCopy format:@"stat error"];
    v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v14 = MBGetDefaultLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 138412546;
    *v68 = pathCopy;
    *&v68[8] = 1024;
    *&v68[10] = LODWORD(v12);
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "stat failed at %@: %{errno}d", buf, 0x12u);
    v57 = pathCopy;
    v58 = v12;
    goto LABEL_5;
  }

  st_size = v65.st_size;
  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *v68 = pathCopy;
    *&v68[8] = 2112;
    *&v68[10] = v9;
    *&v68[18] = 2048;
    *&v68[20] = st_size;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Compacting SQLite database at %@ to %@ (%lld bytes)", buf, 0x20u);
    v58 = *&v9;
    v59 = *&st_size;
    v57 = pathCopy;
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v30 = v29;
  *&v31 = sqlite3_open_v2(fileSystemRepresentation, &ppDb, 1, 0);
  if (LODWORD(v31))
  {
    v32 = v31;
    v33 = ppDb;
    if (ppDb)
    {
      v33 = sqlite3_errmsg(ppDb);
    }

    v57 = v33;
    v58 = v32;
    v34 = @"Error opening SQLite file: %s (%d)";
LABEL_28:
    v35 = 16;
LABEL_29:
    [MBError errorWithCode:v35 path:pathCopy format:v34, v57, *&v58, *&v59];
    *&v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
LABEL_30:
    v13 = *&v36;
    if (*&v36 != 0.0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v40 = v39;
  [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:v9];
  *&v41 = COERCE_DOUBLE(_sqlite3_db_copy_compact());
  if (v41)
  {
    v42 = v41;
    while (1)
    {
      *&v43 = sqlite3_extended_errcode(ppDb);
      v44 = MBGetDefaultLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *v68 = pathCopy;
        *&v68[8] = 1024;
        *&v68[10] = v42;
        *&v68[14] = 1024;
        *&v68[16] = LODWORD(v43);
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "_sqlite3_db_copy_compact failed at %@: %d/0x%x", buf, 0x18u);
        v58 = *&v42;
        v59 = v43;
        v57 = pathCopy;
        _MBLog();
      }

      if (v42 != 5)
      {
        break;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      if (v45 - v40 >= 1.0)
      {
        v34 = @"SQLite file is locked";
        v35 = 13;
        goto LABEL_29;
      }

      v46 = MBGetDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v68 = pathCopy;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Waiting for busy SQLite database at %@", buf, 0xCu);
        v57 = pathCopy;
        _MBLog();
      }

      [NSThread sleepForTimeInterval:0.1];
      [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:v9];
      *&v42 = COERCE_DOUBLE(_sqlite3_db_copy_compact());
      if (!v42)
      {
        goto LABEL_45;
      }
    }

    if (v42 == 14)
    {
      v34 = @"Can't open SQLite file";
      v35 = 100;
      goto LABEL_29;
    }

    v57 = v42;
    v34 = @"Can't compact SQLite file (%d)";
    goto LABEL_28;
  }

LABEL_45:
  v47 = MBGetDefaultLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *v68 = pathCopy;
    *&v68[8] = 2112;
    *&v68[10] = v9;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Created compacted SQLite file from %@ to %@", buf, 0x16u);
    v57 = pathCopy;
    v58 = *&v9;
    _MBLog();
  }

  memset(&v64, 0, sizeof(v64));
  if (!lstat(fileSystemRepresentation2, &v64) && ((v64.st_mode & 0xF000) != 0x8000 || v64.st_nlink >= 2u))
  {
    [MBError errorWithCode:1 format:@"not a regular file", v57, *&v58, *&v59];
    *&v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    goto LABEL_30;
  }

  if (lchown(fileSystemRepresentation2, v65.st_uid, v65.st_gid))
  {
    v48 = @"chown error";
LABEL_56:
    [MBError posixErrorWithPath:v9 format:v48, v57, *&v58, *&v59];
    *&v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    goto LABEL_30;
  }

  if (lchmod(fileSystemRepresentation2, v65.st_mode))
  {
    v48 = @"chmod error";
    goto LABEL_56;
  }

  v63 = 0;
  v49 = [MBProtectionClassUtils getWithPathFSR:fileSystemRepresentation error:&v63];
  v13 = COERCE_DOUBLE(v63);
  if ((v49 + 1) <= 1u)
  {
    v14 = MBGetDefaultLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_6:

      if (v13 != 0.0)
      {
LABEL_7:
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v68 = pathCopy;
          *&v68[8] = 2112;
          *&v68[10] = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to compact SQLite database at %@: %@", buf, 0x16u);
          v57 = pathCopy;
          v58 = v13;
          _MBLog();
        }

        v16 = *&v13;
        v17 = 0;
        *error = v13;
        v18 = v13;
        goto LABEL_10;
      }

LABEL_31:
      sub_1000A04B0();
    }

    *buf = 138412546;
    *v68 = pathCopy;
    *&v68[8] = 2112;
    *&v68[10] = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to fetch the protection class for %@: %@", buf, 0x16u);
    v57 = pathCopy;
    v58 = v13;
LABEL_5:
    _MBLog();
    goto LABEL_6;
  }

  v62 = v13;
  v50 = [MBProtectionClassUtils setWithPathFSR:fileSystemRepresentation2 value:v49 error:&v62];
  v18 = COERCE_DOUBLE(*&v62);

  if ((v50 & 1) == 0)
  {
    v51 = MBGetDefaultLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      *v68 = v49;
      *&v68[4] = 2112;
      *&v68[6] = v9;
      *&v68[14] = 2112;
      *&v68[16] = v18;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to set the protection class (%d) for %@: %@", buf, 0x1Cu);
      v58 = *&v9;
      v59 = v18;
      v57 = v49;
      _MBLog();
    }
  }

  [NSDate timeIntervalSinceReferenceDate:v57];
  v53 = v52;
  v54 = v64.st_size;
  v55 = MBGetDefaultLog();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    v56 = v53 - v30;
    *buf = 138412802;
    *v68 = pathCopy;
    *&v68[8] = 2048;
    *&v68[10] = v56;
    *&v68[18] = 2048;
    *&v68[20] = v54;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Finished compacting SQLite database at %@ in %0.3fs (%lld bytes)", buf, 0x20u);
    v59 = *&v54;
    v58 = v56;
    v57 = pathCopy;
    _MBLog();
  }

  v17 = 1;
LABEL_10:
  if (ppDb)
  {
    *&v19 = sqlite3_close(ppDb);
    if (LODWORD(v19))
    {
      v20 = v19;
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v68 = pathCopy;
        *&v68[8] = 1024;
        *&v68[10] = LODWORD(v20);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to close SQLite database at %@: %d", buf, 0x12u);
        v57 = pathCopy;
        v58 = v20;
        _MBLog();
      }
    }
  }

  v61 = v18;
  v22 = [MBSQLiteFileHandle removeJournalsForSQLiteFileAtPath:v9 error:&v61, v57, *&v58, *&v59];
  v23 = *&v61;

  if ((v22 & 1) == 0)
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v68 = v9;
      *&v68[8] = 2112;
      *&v68[10] = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to remove SQLite files for %@: %@", buf, 0x16u);
      _MBLog();
    }

    v23 = 0;
  }

  if (!v17)
  {
    v60 = v23;
    v25 = [MBSQLiteFileHandle removeSQLiteFileAtPath:v9 error:&v60];
    v26 = v60;

    if (v25)
    {
      v23 = v26;
    }

    else
    {
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v68 = v9;
        *&v68[8] = 2112;
        *&v68[10] = v26;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to remove SQLite database at %@: %@", buf, 0x16u);
        _MBLog();
      }

      v23 = 0;
    }
  }

  return v17;
}

+ (BOOL)copySQLiteFileAtPath:(id)path toPath:(id)toPath timeout:(double)timeout error:(id *)error
{
  pathCopy = path;
  v10 = COERCE_DOUBLE(toPath);
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [*&v10 fileSystemRepresentation];
  v82 = 0;
  ppDb = 0;
  memset(&v81, 0, sizeof(v81));
  if (stat(fileSystemRepresentation, &v81))
  {
    if (error)
    {
      *error = [MBError posixErrorWithPath:pathCopy format:@"stat error"];
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 138412546;
      v85 = *&pathCopy;
      v86 = 1024;
      *v87 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "stat failed at %@: %{errno}d", buf, 0x12u);
      v75 = *&pathCopy;
      *&v76 = *__error();
      _MBLog();
    }

    goto LABEL_7;
  }

  st_size = v81.st_size;
  v29 = MBGetDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v85 = *&pathCopy;
    v86 = 2112;
    *v87 = v10;
    *&v87[8] = 2048;
    v88 = st_size;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Copying SQLite database at %@ to %@ (%lld bytes)", buf, 0x20u);
    v76 = v10;
    v77 = st_size;
    v75 = *&pathCopy;
    _MBLog();
  }

  v30 = [MBProtectionClassUtils getWithPath:pathCopy error:error];
  if ((v30 + 1) < 2u)
  {
    v23 = 0;
LABEL_36:
    v25 = 0;
    goto LABEL_37;
  }

  v34 = v30;
  +[NSDate timeIntervalSinceReferenceDate];
  v36 = v35;
  *&v37 = sqlite3_open_v2(fileSystemRepresentation, &ppDb, 1, 0);
  if (LODWORD(v37))
  {
    if (error)
    {
      v38 = v37;
      v39 = ppDb;
      if (ppDb)
      {
        v39 = sqlite3_errmsg(ppDb);
      }

      v75 = *&v39;
      v76 = v38;
      v40 = @"Error opening SQLite file: %s (%d)";
LABEL_43:
      v41 = 16;
LABEL_44:
      v42 = *&pathCopy;
      goto LABEL_52;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v43 = MBGetDefaultLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v85 = *&pathCopy;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Opened SQLite database at %@", buf, 0xCu);
    v75 = *&pathCopy;
    _MBLog();
  }

  *&v44 = [MBProtectionClassUtils sqliteOpenFlagForProtectionClass:v34]| 6;
  *&v45 = sqlite3_open_v2(fileSystemRepresentation2, &v82, SLODWORD(v44), 0);
  if (LODWORD(v45))
  {
    if (error)
    {
      v46 = v45;
      v47 = v82;
      if (v82)
      {
        v47 = sqlite3_errmsg(v82);
      }

      v75 = *&v47;
      v76 = v46;
      v40 = @"Error opening SQLite file: %s (%d)";
      v41 = 16;
      v42 = v10;
LABEL_52:
      v48 = [MBError errorWithCode:v41 path:*&v42 format:v40, *&v75, *&v76, v77];
LABEL_53:
      v15 = 0;
      *error = v48;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v49 = MBGetDefaultLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v85 = v10;
    v86 = 1024;
    *v87 = LODWORD(v44);
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Opened SQLite file for copying at %@ with flags 0x%x", buf, 0x12u);
    v75 = v10;
    v76 = v44;
    _MBLog();
  }

  memset(&v80, 0, sizeof(v80));
  if (!lstat(fileSystemRepresentation2, &v80) && ((v80.st_mode & 0xF000) != 0x8000 || v80.st_nlink >= 2u))
  {
    if (error)
    {
      v48 = [MBError errorWithCode:1 format:@"not a regular file"];
      goto LABEL_53;
    }

    goto LABEL_7;
  }

  if (lchown(fileSystemRepresentation2, v81.st_uid, v81.st_gid))
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v50 = @"chown error";
LABEL_65:
    v48 = [MBError posixErrorWithPath:*&v10 format:v50, *&v75, *&v76, v77];
    goto LABEL_53;
  }

  if (lchmod(fileSystemRepresentation2, v81.st_mode))
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v50 = @"chmod error";
    goto LABEL_65;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v52 = v51;
  *&v53 = sqlite3_file_control(v82, 0, 102, ppDb);
  if (LODWORD(v53))
  {
    v54 = v53;
    while (1)
    {
      v55 = sqlite3_extended_errcode(v82);
      v56 = MBGetDefaultLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v85 = *&pathCopy;
        v86 = 1024;
        *v87 = LODWORD(v54);
        *&v87[4] = 1024;
        *&v87[6] = v55;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "sqlite3_file_control(SQLITE_REPLACE_DATABASE) failed at %@: %d/0x%x", buf, 0x18u);
        v76 = v54;
        v77 = v55;
        v75 = *&pathCopy;
        _MBLog();
      }

      if (LODWORD(v54) != 5)
      {
        break;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      if (v57 - v52 >= timeout)
      {
        if (!error)
        {
          goto LABEL_7;
        }

        v40 = @"SQLite file is locked";
        v41 = 13;
        goto LABEL_44;
      }

      v58 = MBGetDefaultLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v85 = *&pathCopy;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "Waiting for busy SQLite database at %@", buf, 0xCu);
        v75 = *&pathCopy;
        _MBLog();
      }

      [NSThread sleepForTimeInterval:0.1];
      *&v54 = sqlite3_file_control(v82, 0, 102, ppDb);
      if (!LODWORD(v54))
      {
        goto LABEL_77;
      }
    }

    if (LODWORD(v54) == 14)
    {
      if (!error)
      {
        goto LABEL_7;
      }

      v40 = @"Can't open SQLite file";
      v41 = 100;
      goto LABEL_44;
    }

    if (!error)
    {
      goto LABEL_7;
    }

    v40 = @"Can't copy SQLite file";
    goto LABEL_43;
  }

LABEL_77:
  v59 = MBGetDefaultLog();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v85 = *&pathCopy;
    v86 = 2112;
    *v87 = v10;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "Copied SQLite file from %@ to %@", buf, 0x16u);
    v75 = *&pathCopy;
    v76 = v10;
    _MBLog();
  }

  *&v60 = sqlite3_wal_checkpoint_v2(v82, 0, 2, 0, 0);
  if (LODWORD(v60))
  {
    v61 = v60;
    v62 = sqlite3_extended_errcode(v82);
    v63 = MBGetDefaultLog();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v85 = *&pathCopy;
      v86 = 1024;
      *v87 = LODWORD(v61);
      *&v87[4] = 1024;
      *&v87[6] = v62;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to checkpoint copied SQLite database at %@ (%d/0x%x)", buf, 0x18u);
      v76 = v61;
      v77 = v62;
      v75 = *&pathCopy;
      _MBLog();
    }

    if (!error)
    {
      goto LABEL_7;
    }

    v40 = @"Can't checkpoint copied SQLite file";
    goto LABEL_43;
  }

  v64 = MBGetDefaultLog();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v85 = *&pathCopy;
    v86 = 2112;
    *v87 = v10;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "Checkpointed copied SQLite file from %@ to %@", buf, 0x16u);
    v75 = *&pathCopy;
    v76 = v10;
    _MBLog();
  }

  *&v65 = sqlite3_close(v82);
  v82 = 0;
  if (LODWORD(v65))
  {
    v66 = v65;
    v67 = MBGetDefaultLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = v10;
      v86 = 1024;
      *v87 = LODWORD(v66);
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Failed to close copied SQLite database at %@: %d", buf, 0x12u);
      v75 = v10;
      v76 = v66;
      _MBLog();
    }

    if (!error)
    {
      goto LABEL_7;
    }

    v40 = @"Can't close copied SQLite file";
    goto LABEL_43;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v69 = v68;
  v70 = lstat(fileSystemRepresentation2, &v80);
  v71 = v80.st_size;
  v72 = MBGetDefaultLog();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
  {
    if (v70)
    {
      v73 = -1;
    }

    else
    {
      v73 = v71;
    }

    *buf = 138412802;
    v74 = v69 - v36;
    v85 = *&pathCopy;
    v86 = 2048;
    *v87 = v74;
    *&v87[8] = 2048;
    v88 = v73;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Finished copying SQLite database at %@ in %0.3fs (%lld bytes)", buf, 0x20u);
    v77 = v73;
    v76 = v74;
    v75 = *&pathCopy;
    _MBLog();
  }

  v15 = 1;
LABEL_8:
  if (ppDb)
  {
    *&v16 = sqlite3_close(ppDb);
    if (LODWORD(v16))
    {
      v17 = v16;
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = *&pathCopy;
        v86 = 1024;
        *v87 = LODWORD(v17);
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to close the SQLite database at %@: %d", buf, 0x12u);
        v75 = *&pathCopy;
        v76 = v17;
        _MBLog();
      }
    }
  }

  if (v82)
  {
    *&v19 = sqlite3_close(v82);
    if (LODWORD(v19))
    {
      v20 = v19;
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = v10;
        v86 = 1024;
        *v87 = LODWORD(v20);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to close the SQLite database at %@: %d", buf, 0x12u);
        v75 = v10;
        v76 = v20;
        _MBLog();
      }
    }
  }

  v79 = 0;
  v22 = [MBSQLiteFileHandle removeJournalsForSQLiteFileAtPath:*&v10 error:&v79, *&v75, *&v76, v77];
  v23 = v79;
  if ((v22 & 1) == 0)
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = v10;
      v86 = 2112;
      *v87 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to remove the journals for the database at %@: %@", buf, 0x16u);
      _MBLog();
    }

    v23 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v78 = v23;
    v26 = [MBSQLiteFileHandle removeSQLiteFileAtPath:*&v10 error:&v78];
    v27 = v78;

    if (v26)
    {
      v23 = v27;
    }

    else
    {
      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = v10;
        v86 = 2112;
        *v87 = v27;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to remove the SQLite database at %@: %@", buf, 0x16u);
        _MBLog();
      }

      v23 = 0;
    }

    v32 = MBGetDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = *&pathCopy;
      v86 = 2112;
      *v87 = v23;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to copy SQLite database at %@: %@", buf, 0x16u);
      _MBLog();
    }

    goto LABEL_36;
  }

  v25 = 1;
LABEL_37:

  return v25;
}

+ (BOOL)lastModifiedForSQLiteFileAtPath:(id)path time:(int64_t *)time error:(id *)error
{
  pathCopy = path;
  v8 = [pathCopy stringByAppendingString:@"-wal"];
  memset(&v20, 0, sizeof(v20));
  if (stat([v8 fileSystemRepresentation], &v20))
  {
    lastPathComponent = [v8 lastPathComponent];
    v10 = strlen([lastPathComponent fileSystemRepresentation]);

    if (*__error() == 63 && v10 >= 0x100)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "WAL file name too long: %@", buf, 0xCu);
        _MBLog();
      }
    }

    else if (*__error() != 2)
    {
      v15 = [MBError posixErrorWithPath:v8 format:@"stat failed"];
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v8;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "stat failed at %@: %@", buf, 0x16u);
        goto LABEL_21;
      }

LABEL_22:

      goto LABEL_23;
    }
  }

  else if ((v20.st_mode & 0xF000) == 0x8000)
  {
    tv_sec = v20.st_mtimespec.tv_sec;
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v22 = tv_sec;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Using last modified time (%lu) of WAL at %@", buf, 0x16u);
LABEL_17:
      _MBLog();
    }

LABEL_18:

    *time = tv_sec;
    v17 = 1;
    goto LABEL_26;
  }

  if (!stat([pathCopy fileSystemRepresentation], &v20))
  {
    tv_sec = v20.st_mtimespec.tv_sec;
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v22 = tv_sec;
      v23 = 2112;
      v24 = pathCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Using last modified time (%lu) of db at %@", buf, 0x16u);
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v14 = *__error();
  v15 = [MBError posixErrorWithPath:pathCopy format:@"stat failed"];
  if (v14 != 2)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = pathCopy;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "stat failed at %@: %@", buf, 0x16u);
LABEL_21:
      _MBLog();
      goto LABEL_22;
    }

    goto LABEL_22;
  }

LABEL_23:
  if (error)
  {
    v18 = v15;
    *error = v15;
  }

  v17 = 0;
LABEL_26:

  return v17;
}

+ (id)executePragma:(id)pragma withDatabase:(sqlite3 *)database
{
  ppStmt = 0;
  do
  {
    pragma = [NSString stringWithFormat:@"PRAGMA %@", pragma];
    v7 = sqlite3_prepare(database, [pragma UTF8String], -1, &ppStmt, 0);
  }

  while (v7 == 5);
  if (v7)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "sqlite3_prepare returned %d!", buf, 8u);
      _MBLog();
    }

    v9 = 0;
  }

  else
  {
    do
    {
      v8 = sqlite3_step(ppStmt);
    }

    while (v8 == 5);
    if (v8 == 100)
    {
      v9 = [NSString stringWithFormat:@"%s", sqlite3_column_text(ppStmt, 0)];
        ;
      }
    }

    else
    {
      v9 = 0;
    }

    sqlite3_finalize(ppStmt);
    ppStmt = 0;
  }

  return v9;
}

+ (BOOL)setAttributes:(id)attributes ofSQLiteFileAtPath:(id)path error:(id *)error
{
  attributesCopy = attributes;
  pathCopy = path;
  v24 = +[NSFileManager defaultManager];
  v9 = [attributesCopy mutableCopy];
  v10 = [v9 objectForKeyedSubscript:NSFileOwnerAccountID];
  v11 = [v9 objectForKeyedSubscript:NSFileGroupOwnerAccountID];
  [v9 removeObjectForKey:NSFileOwnerAccountID];
  v23 = v9;
  [v9 removeObjectForKey:NSFileGroupOwnerAccountID];
  v25 = v11;
  v26 = v10;
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 138412546;
      *&buf.st_mode = v10;
      WORD2(buf.st_ino) = 2112;
      *(&buf.st_ino + 6) = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No uid or gid: %@, %@", &buf, 0x16u);
      _MBLog();
    }

    goto LABEL_9;
  }

  memset(&buf, 0, sizeof(buf));
  if (lstat([pathCopy fileSystemRepresentation], &buf) || (buf.st_mode & 0xF000) == 0x8000 && buf.st_nlink < 2u)
  {
    if (lchown([pathCopy fileSystemRepresentation], objc_msgSend(v10, "integerValue"), objc_msgSend(v11, "integerValue")))
    {
      if (error)
      {
        [MBError errorWithCode:1 format:@"chown error on %@", pathCopy];
LABEL_38:
        *error = LOBYTE(v14) = 0;
        goto LABEL_41;
      }

      goto LABEL_9;
    }

    if (([v24 setAttributes:v9 ofItemAtPath:pathCopy error:error] & 1) == 0)
    {
      goto LABEL_9;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = MBSQLiteJournalSuffixes();
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v16)
    {
      LOBYTE(v14) = 1;
      goto LABEL_40;
    }

    v17 = v16;
    v18 = *v29;
    v14 = 1;
LABEL_19:
    v19 = 0;
    while (1)
    {
      if (*v29 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = [pathCopy stringByAppendingString:*(*(&v28 + 1) + 8 * v19)];
      memset(&v27, 0, sizeof(v27));
      if (!lstat([v20 fileSystemRepresentation], &v27) && ((v27.st_mode & 0xF000) != 0x8000 || v27.st_nlink >= 2u))
      {
        break;
      }

      if (lchown([v20 fileSystemRepresentation], objc_msgSend(v26, "integerValue"), objc_msgSend(v25, "integerValue")))
      {
        if (!error)
        {
          goto LABEL_32;
        }

        [MBError errorWithCode:1 format:@"chown error: %@", v20];
LABEL_31:
        *error = v14 = 0;
        goto LABEL_33;
      }

      v14 &= [v24 setAttributes:v23 ofItemAtPath:v20 error:error];
LABEL_33:

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (!v17)
        {
LABEL_40:

          goto LABEL_41;
        }

        goto LABEL_19;
      }
    }

    if (!error)
    {
LABEL_32:
      v14 = 0;
      goto LABEL_33;
    }

    [MBError errorWithCode:1 format:@"not a regular file", v22];
    goto LABEL_31;
  }

  if (error)
  {
    [MBError errorWithCode:1 format:@"not a regular file", v22];
    goto LABEL_38;
  }

LABEL_9:
  LOBYTE(v14) = 0;
LABEL_41:

  return v14;
}

+ (BOOL)removeSQLiteFileAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = +[NSFileManager defaultManager];
  v10 = 0;
  v7 = [v6 removeItemAtPath:pathCopy error:&v10];
  v8 = v10;

  if (error && (v7 & 1) == 0)
  {
    *error = [MBError errorForNSError:v8 path:pathCopy format:@"Error removing copied SQLite file"];
  }

  return v7;
}

+ (BOOL)removeJournalsForSQLiteFileAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = +[NSFileManager defaultManager];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = MBSQLiteJournalSuffixes();
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    errorCopy = error;
    v10 = 0;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [pathCopy stringByAppendingString:{*(*(&v22 + 1) + 8 * i), v19}];
        if ([v6 fileExistsAtPath:v13])
        {
          v21 = v10;
          v14 = [v6 removeItemAtPath:v13 error:&v21];
          v15 = v21;

          if (!v14)
          {
            if (errorCopy)
            {
              *errorCopy = [MBError errorForNSError:v15 path:v13 format:@"Error removing copied SQLite file journal"];
            }

            v17 = 0;
            goto LABEL_18;
          }

          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v27 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Removed copied SQLite file journal at %@", buf, 0xCu);
            v19 = v13;
            _MBLog();
          }

          v10 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v17 = 1;
    v15 = v10;
  }

  else
  {
    v15 = 0;
    v17 = 1;
  }

LABEL_18:

  return v17;
}

+ (void)removeAllSQLiteFilesAtPath:(id)path
{
  pathCopy = path;
  [MBSQLiteFileHandle removeJournalsForSQLiteFileAtPath:pathCopy error:0];
  [MBSQLiteFileHandle removeSQLiteFileAtPath:pathCopy error:0];
}

+ (id)SQLiteFileHandleWithOriginalFileHandle:(id)handle copiedFileHandle:(id)fileHandle
{
  fileHandleCopy = fileHandle;
  handleCopy = handle;
  v7 = [[MBSQLiteFileHandle alloc] initWithOriginalFileHandle:handleCopy copiedFileHandle:fileHandleCopy];

  return v7;
}

- (MBSQLiteFileHandle)initWithOriginalFileHandle:(id)handle copiedFileHandle:(id)fileHandle
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = MBSQLiteFileHandle;
  v8 = [(MBFileHandleProxy *)&v11 initWithFileHandle:fileHandle];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_originalFileHandle, handle);
  }

  return v9;
}

- (BOOL)statWithBuffer:(stat *)buffer error:(id *)error
{
  if ([MBFileHandle statWithBuffer:"statWithBuffer:error:" error:?])
  {
    v10 = 0;
    path = [(MBFileHandle *)self->_originalFileHandle path];
    v8 = [MBSQLiteFileHandle lastModifiedForSQLiteFileAtPath:path time:&v10 error:error];

    if (v8)
    {
      buffer->st_mtimespec.tv_sec = v10;
      buffer->st_mtimespec.tv_nsec = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)closeWithError:(id *)error
{
  v5 = [(MBFileHandle *)self->_originalFileHandle closeWithError:?];
  v10.receiver = self;
  v10.super_class = MBSQLiteFileHandle;
  v6 = [(MBFileHandleProxy *)&v10 closeWithError:error];
  fileHandle = [(MBFileHandleProxy *)self fileHandle];
  path = [fileHandle path];
  LODWORD(error) = [MBSQLiteFileHandle removeSQLiteFileAtPath:path error:error]& v6;

  return error & v5;
}

@end