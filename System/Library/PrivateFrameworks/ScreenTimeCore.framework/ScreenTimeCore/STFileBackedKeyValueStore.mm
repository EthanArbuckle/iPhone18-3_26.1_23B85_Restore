@interface STFileBackedKeyValueStore
+ (void)_createDirectoryLoggingErrorsAtURL:(id)a3 withFilesystemPrimitives:(id)a4;
- (STFileBackedKeyValueStore)initWithDirectory:(id)a3 fileExtension:(id)a4 filesystemPrimitives:(id)a5;
- (id)_buildFileURL:(id)a3;
- (id)purge;
- (id)readValueForKey:(id)a3;
- (void)enumerateKeysAndValuesUsingBlock:(id)a3;
- (void)persistValue:(id)a3 forKey:(id)a4;
- (void)removeValueForKey:(id)a3;
@end

@implementation STFileBackedKeyValueStore

- (STFileBackedKeyValueStore)initWithDirectory:(id)a3 fileExtension:(id)a4 filesystemPrimitives:(id)a5
{
  v8 = a5;
  v19.receiver = self;
  v19.super_class = STFileBackedKeyValueStore;
  v9 = a4;
  v10 = a3;
  v11 = [(STFileBackedKeyValueStore *)&v19 init];
  v12 = [v10 copy];
  directory = v11->_directory;
  v11->_directory = v12;

  v14 = [v9 copy];
  fileExtension = v11->_fileExtension;
  v11->_fileExtension = v14;

  filesystemPrimitives = v11->_filesystemPrimitives;
  v11->_filesystemPrimitives = v8;
  v17 = v8;

  [STFileBackedKeyValueStore _createDirectoryLoggingErrorsAtURL:v10 withFilesystemPrimitives:v17];
  return v11;
}

- (id)purge
{
  v3 = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  v4 = [(STFileBackedKeyValueStore *)self directory];
  v13 = 0;
  v5 = [v3 removeFileURL:v4 error:&v13];
  v6 = v13;

  if (v5)
  {
    v7 = [(STFileBackedKeyValueStore *)self directory];
    v8 = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
    [STFileBackedKeyValueStore _createDirectoryLoggingErrorsAtURL:v7 withFilesystemPrimitives:v8];

    v9 = +[STResult success];
  }

  else
  {
    v10 = +[STLog fileBackedKeyValueStore];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100116C08(self, v6, v10);
    }

    v9 = [STResult failure:v6];
  }

  v11 = v9;

  return v11;
}

- (void)persistValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(STFileBackedKeyValueStore *)self _buildFileURL:a4];
  v8 = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  v12 = 0;
  v9 = [v8 writeData:v6 toFileURL:v7 error:&v12];

  v10 = v12;
  if ((v9 & 1) == 0)
  {
    v11 = +[STLog fileBackedKeyValueStore];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100116CB8();
    }
  }
}

- (void)removeValueForKey:(id)a3
{
  v4 = [(STFileBackedKeyValueStore *)self _buildFileURL:a3];
  v5 = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  v9 = 0;
  v6 = [v5 removeFileURL:v4 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = +[STLog fileBackedKeyValueStore];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100116D20();
    }
  }
}

- (id)readValueForKey:(id)a3
{
  v4 = [(STFileBackedKeyValueStore *)self _buildFileURL:a3];
  v5 = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  v19 = 0;
  v6 = [v5 fileSizeOfDataAtURL:v4 error:&v19];
  v7 = v19;

  if (!v6)
  {
    v11 = +[STLog fileBackedKeyValueStore];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100116EE0();
    }

    goto LABEL_11;
  }

  if ([v6 longLongValue] >= 20971521)
  {
    v8 = +[STLog fileBackedKeyValueStore];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100116DF0(v4, v8);
    }

    v9 = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
    v18 = 0;
    v10 = [v9 removeFileURL:v4 error:&v18];
    v11 = v18;

    if ((v10 & 1) == 0)
    {
      v12 = +[STLog fileBackedKeyValueStore];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100116E68(v4, v12);
      }
    }

LABEL_11:
    v13 = 0;
LABEL_12:

    v14 = v7;
    goto LABEL_13;
  }

  v16 = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  v17 = v7;
  v13 = [v16 readDataFromFileURL:v4 error:&v17];
  v14 = v17;

  if (!v13)
  {
    v11 = +[STLog fileBackedKeyValueStore];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100116D88();
    }

    v7 = v14;
    goto LABEL_12;
  }

LABEL_13:

  return v13;
}

- (void)enumerateKeysAndValuesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(STFileBackedKeyValueStore *)self directory];
  v6 = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003F78C;
  v9[3] = &unk_1001A40C0;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  [v6 enumerateRegularFilesInDirectoryAtURL:v8 withBlock:v9];
}

- (id)_buildFileURL:(id)a3
{
  v4 = a3;
  v5 = [(STFileBackedKeyValueStore *)self directory];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:0];

  v7 = [(STFileBackedKeyValueStore *)self fileExtension];
  v8 = [v6 URLByAppendingPathExtension:v7];

  return v8;
}

+ (void)_createDirectoryLoggingErrorsAtURL:(id)a3 withFilesystemPrimitives:(id)a4
{
  v5 = a3;
  v9 = 0;
  v6 = [a4 createDirectoryAtURL:v5 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = +[STLog fileBackedKeyValueStore];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100116FC4();
    }
  }
}

@end