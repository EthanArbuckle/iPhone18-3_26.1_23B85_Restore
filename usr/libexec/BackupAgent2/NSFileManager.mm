@interface NSFileManager
- (BOOL)_anyPathExists:(id)a3;
- (BOOL)_migratePaths:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)_moveItemAtPath:(id)a3 toTempDir:(id)a4;
- (BOOL)_perform:(id)a3 times:(unint64_t)a4 error:(id *)a5;
- (BOOL)_removeAllPaths:(id)a3 error:(id *)a4;
- (BOOL)_tryMovingThenRemovingItemAtPath:(id)a3 error:(id *)a4;
- (BOOL)mb_markAsPurgeableItemAtPath:(id)a3 error:(id *)a4;
- (BOOL)mb_migrateIfNeededFromSource:(id)a3 sourceSubPaths:(id)a4 toDestination:(id)a5 destinationSubPaths:(id)a6 error:(id *)a7;
- (BOOL)mb_moveAsideAndMarkPurgeableDBFilesAtPath:(id)a3 error:(id *)a4;
- (BOOL)mb_moveToTmpDirThenRemoveItemAtPath:(id)a3 error:(id *)a4;
- (BOOL)mb_savePlistAtPath:(id)a3 addingItems:(id)a4 removing:(id)a5 error:(id *)a6;
- (id)_pathsRootedAt:(id)a3 subpaths:(id)a4;
- (id)mb_moveAsideItemAtPath:(id)a3 error:(id *)a4;
@end

@implementation NSFileManager

- (BOOL)mb_moveToTmpDirThenRemoveItemAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    sub_10009B384();
  }

  v7 = v6;
  if ([(NSFileManager *)self fileExistsAtPath:v6])
  {
    v13 = 0;
    v8 = [(NSFileManager *)self _tryMovingThenRemovingItemAtPath:v7 error:&v13];
    v9 = v13;
    v10 = v9;
    if (a4 && !v8)
    {
      v11 = v9;
      *a4 = v10;
    }
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=mbfm= rm: Nothing at %{public}@ to remove", buf, 0xCu);
      _MBLog();
    }

    v8 = 1;
  }

  return v8;
}

- (BOOL)_tryMovingThenRemovingItemAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    sub_10009B3DC();
  }

  if (!a4)
  {
    sub_10009B3B0();
  }

  v7 = v6;
  v8 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:v6 identifiedBy:@"move-aside-cleanup" error:a4];
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=mbfm= rm: Created move-aside temp dir: %@", buf, 0xCu);
      _MBLog();
    }

    if ([(NSFileManager *)self _moveItemAtPath:v7 toTempDir:v8])
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v8 path];
        *buf = 138543362;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=mbfm= rm: Removing temporary cleanup dir %{public}@", buf, 0xCu);

        v20 = [v8 path];
        _MBLog();
      }

      v12 = [v8 disposeWithError:a4];
    }

    else
    {
      *a4 = [MBError posixErrorWithPath:v7 format:@"Unable to move to temporary cleanup dir"];
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v8 path];
        v15 = *a4;
        *buf = 138543874;
        v25 = v7;
        v26 = 2114;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=mbfm= rm: Unable to move %{public}@ to temporary cleanup dir %{public}@: %@", buf, 0x20u);

        v21 = [v8 path];
        v23 = *a4;
        _MBLog();
      }

      [v8 dispose];
      v12 = 0;
    }
  }

  else
  {
    if ([MBError errnoForError:*a4]== 2)
    {
      goto LABEL_11;
    }

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *a4;
      *buf = 138543618;
      v25 = v7;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=mbfm= rm: Unable to create temporary cleanup dir, removing %{public}@ in place: %{public}@", buf, 0x16u);
      v22 = *a4;
      _MBLog();
    }

    v12 = [(NSFileManager *)self removeItemAtPath:v7 error:a4];
    if ((v12 & 1) != 0 || [(NSFileManager *)self fileExistsAtPath:v7])
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = v7;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=mbfm= rm: Removed %{public}@ in place", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
LABEL_11:
      v12 = 1;
    }
  }

  return v12;
}

- (BOOL)_moveItemAtPath:(id)a3 toTempDir:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 makeTemporaryFilePath];
  v8 = [v5 fileSystemRepresentation];
  v9 = [v7 fileSystemRepresentation];
  rename(v8, v9, v10);
  if (v11)
  {
    if (*__error() != 2)
    {
      v15 = 0;
      goto LABEL_10;
    }

    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 path];
      *buf = 138543618;
      v19 = v5;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=mbfm= rm: Nothing at %{public}@ to move to temporary cleanup dir %{public}@", buf, 0x16u);

LABEL_7:
      v17 = [v6 path];
      _MBLog();
    }
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 path];
      *buf = 138543618;
      v19 = v5;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=mbfm= rm: moved item at %{public}@ to temp cleanup dir %{public}@", buf, 0x16u);

      goto LABEL_7;
    }
  }

  v15 = 1;
LABEL_10:

  return v15;
}

- (id)mb_moveAsideItemAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    sub_10009B408();
  }

  v7 = v6;
  v8 = [v6 pathExtension];
  v9 = [v7 stringByDeletingPathExtension];
  v10 = [v9 stringByAppendingString:@"_"];
  v11 = +[NSDate now];
  v12 = [v11 iso8601String];
  v13 = [v10 stringByAppendingString:v12];
  v14 = [v13 stringByAppendingPathExtension:v8];

  v21 = 0;
  LOBYTE(v10) = [(NSFileManager *)self moveItemAtPath:v7 toPath:v14 error:&v21];
  v15 = v21;
  v16 = MBGetDefaultLog();
  v17 = v16;
  if (v10)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v23 = v7;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=mbfm= ma: Moved aside %{public}@ to %{public}@", buf, 0x16u);
      _MBLog();
    }

    v18 = v14;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=mbfm= ma: Unable to move aside %{public}@ to %{public}@: %@", buf, 0x20u);
      _MBLog();
    }

    if (a4)
    {
      v19 = v15;
      v18 = 0;
      *a4 = v15;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (BOOL)mb_markAsPurgeableItemAtPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v11 = 73733;
  v6 = fsctl([v5 fileSystemRepresentation], 0xC0084A44uLL, &v11, 0);
  if (v6)
  {
    v7 = [MBError errorWithErrno:*__error() path:v5 format:@"Failed to mark item purgeable"];
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=mbfm= =purge= Failed to mark %{public}@ as purgeable: %@", buf, 0x16u);
      _MBLog();
    }

    if (a4)
    {
      v9 = v7;
      *a4 = v7;
    }
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=mbfm= =purge= Marked %{public}@ as purgeable", buf, 0xCu);
      _MBLog();
    }
  }

  return v6 == 0;
}

- (BOOL)mb_moveAsideAndMarkPurgeableDBFilesAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    sub_10009B434();
  }

  v7 = v6;
  if ([(NSFileManager *)self fileExistsAtPath:v6])
  {
    v8 = MBSQLiteJournalSuffixes();
    v9 = [v8 setByAddingObject:&stru_1000FF270];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      v29 = v7;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [v7 stringByAppendingString:{*(*(&v32 + 1) + 8 * v13), v27, v28}];
        if ([(NSFileManager *)self fileExistsAtPath:v14])
        {
          v15 = [(NSFileManager *)self mb_moveAsideItemAtPath:v14 error:a4];
          if (!v15)
          {
            v23 = MBGetDefaultLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v37 = v14;
              v38 = 2112;
              v39 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=mbfm= Failed to move aside DB file %@: %@", buf, 0x16u);
              _MBLog();
            }

            v24 = 0;
            v19 = 0;
            if (a4)
            {
LABEL_26:
              *a4 = v24;
              v19 = v24;
            }

LABEL_28:

            v22 = 0;
            goto LABEL_29;
          }

          v16 = a4;
          v31 = 0;
          v17 = self;
          v18 = [(NSFileManager *)self mb_markAsPurgeableItemAtPath:v15 error:&v31];
          v19 = v31;
          v20 = MBGetDefaultLog();
          v21 = v20;
          if ((v18 & 1) == 0)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v37 = v15;
              v38 = 2112;
              v39 = v19;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=mbfm= Failed to mark DB %@ as purgeable: %@", buf, 0x16u);
              _MBLog();
            }

            if (v16)
            {
              a4 = v16;
              v25 = v19;
              v24 = v19;
              v7 = v29;
              goto LABEL_26;
            }

            v7 = v29;
            goto LABEL_28;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v37 = v14;
            v38 = 2112;
            v39 = v15;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=mbfm= Moved aside DB file %@ to %@", buf, 0x16u);
            v27 = v14;
            v28 = v15;
            _MBLog();
          }

          a4 = v16;
          v7 = v29;
          self = v17;
        }

        if (v11 == ++v13)
        {
          v11 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v22 = 1;
LABEL_29:
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

- (BOOL)mb_migrateIfNeededFromSource:(id)a3 sourceSubPaths:(id)a4 toDestination:(id)a5 destinationSubPaths:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (([v12 isAbsolutePath] & 1) == 0)
  {
    sub_10009B460();
  }

  if (([v14 isAbsolutePath] & 1) == 0)
  {
    sub_10009B48C();
  }

  v16 = [v13 count];
  if (v16 != [v15 count])
  {
    sub_10009B4B8();
  }

  v31 = a7;
  v17 = [(NSFileManager *)self _pathsRootedAt:v12 subpaths:v13];
  v18 = [(NSFileManager *)self _anyPathExists:v17];
  v19 = [(NSFileManager *)self _pathsRootedAt:v14 subpaths:v15];
  v20 = [(NSFileManager *)self _anyPathExists:v19];
  v21 = MBGetDefaultLog();
  v22 = v21;
  if (!v20)
  {
    v25 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v25)
      {
        v26 = [v15 componentsJoinedByString:{@", "}];
        *buf = 138543874;
        v33 = v26;
        v34 = 2114;
        v35 = v12;
        v36 = 2114;
        v37 = v14;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=mbfm= mg: Migrating (%{public}@) from %{public}@ to %{public}@", buf, 0x20u);

        v30 = [v15 componentsJoinedByString:{@", "}];
        _MBLog();
      }

      v24 = [(NSFileManager *)self _migratePaths:v17 to:v19 error:v31];
      goto LABEL_13;
    }

    if (v25)
    {
      *buf = 138543618;
      v33 = v12;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=mbfm= mg: Nothing to migrate from %{public}@ to %{public}@", buf, 0x16u);
      goto LABEL_18;
    }

LABEL_19:

    v27 = 1;
    goto LABEL_20;
  }

  if (!v18)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v33 = v12;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=mbfm= mg: Nothing to migrate from %{public}@, already present in %{public}@", buf, 0x16u);
LABEL_18:
      _MBLog();
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v13 componentsJoinedByString:{@", "}];
    *buf = 138543874;
    v33 = v23;
    v34 = 2114;
    v35 = v12;
    v36 = 2114;
    v37 = v14;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=mbfm= mg: Cleaning up un-migrated (%{public}@) from %{public}@, already present in %{public}@", buf, 0x20u);

    v29 = [v13 componentsJoinedByString:{@", "}];
    _MBLog();
  }

  v24 = [(NSFileManager *)self _removeAllPaths:v17 error:v31];
LABEL_13:
  v27 = v24;
LABEL_20:

  return v27;
}

- (id)_pathsRootedAt:(id)a3 subpaths:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    sub_10009B510();
  }

  v7 = v6;
  if (!v6)
  {
    sub_10009B4E4();
  }

  v8 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v5 stringByAppendingPathComponent:{*(*(&v16 + 1) + 8 * i), v16}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (BOOL)_anyPathExists:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(NSFileManager *)self fileExistsAtPath:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)_removeAllPaths:(id)a3 error:(id *)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008218;
  v7[3] = &unk_1000FD468;
  v8 = self;
  v9 = a3;
  v5 = v9;
  LOBYTE(a4) = -[NSFileManager _perform:times:error:](v8, "_perform:times:error:", v7, [v5 count], a4);

  return a4;
}

- (BOOL)_migratePaths:(id)a3 to:(id)a4 error:(id *)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008348;
  v10[3] = &unk_1000FD490;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v7 = v13;
  v8 = v12;
  LOBYTE(a5) = -[NSFileManager _perform:times:error:](v11, "_perform:times:error:", v10, [v8 count], a5);

  return a5;
}

- (BOOL)_perform:(id)a3 times:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  if (a4)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v14 = 0;
      v10 = v7[2](v7, v8, &v14);
      v11 = v14;
      if ((v10 & 1) == 0 && [MBError codeForNSError:v11]!= 4)
      {
        if (!v9)
        {
          v9 = +[NSMutableArray array];
        }

        [v9 addObject:v11];
      }

      ++v8;
    }

    while (a4 != v8);
    v12 = v9 == 0;
    if (a5 && v9)
    {
      [MBError errorWithErrors:v9];
      *a5 = v12 = 0;
    }
  }

  else
  {
    v9 = 0;
    v12 = 1;
  }

  return v12;
}

- (BOOL)mb_savePlistAtPath:(id)a3 addingItems:(id)a4 removing:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [NSMutableDictionary dictionaryWithContentsOfFile:v10];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSMutableDictionary dictionary];
  }

  v16 = v15;

  if (v11)
  {
    [v16 addEntriesFromDictionary:v11];
  }

  if (v12)
  {
    [v16 removeObjectsForKeys:v12];
  }

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v10;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=mbfm= Updating plist at %@ to %@", buf, 0x16u);
    _MBLog();
  }

  v18 = [v10 stringByDeletingLastPathComponent];
  v19 = [(NSFileManager *)self createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:a6];

  if (v19)
  {
    v20 = [NSPropertyListSerialization dataWithPropertyList:v16 format:200 options:0 error:a6];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 writeToFile:v10 options:268435457 error:a6];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end