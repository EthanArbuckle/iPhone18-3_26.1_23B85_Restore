@interface STFileBackedKeyValueStore
+ (void)_createDirectoryLoggingErrorsAtURL:(id)l withFilesystemPrimitives:(id)primitives;
- (STFileBackedKeyValueStore)initWithDirectory:(id)directory fileExtension:(id)extension filesystemPrimitives:(id)primitives;
- (id)_buildFileURL:(id)l;
- (id)purge;
- (id)readValueForKey:(id)key;
- (void)enumerateKeysAndValuesUsingBlock:(id)block;
- (void)persistValue:(id)value forKey:(id)key;
- (void)removeValueForKey:(id)key;
@end

@implementation STFileBackedKeyValueStore

- (STFileBackedKeyValueStore)initWithDirectory:(id)directory fileExtension:(id)extension filesystemPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v19.receiver = self;
  v19.super_class = STFileBackedKeyValueStore;
  extensionCopy = extension;
  directoryCopy = directory;
  v11 = [(STFileBackedKeyValueStore *)&v19 init];
  v12 = [directoryCopy copy];
  directory = v11->_directory;
  v11->_directory = v12;

  v14 = [extensionCopy copy];
  fileExtension = v11->_fileExtension;
  v11->_fileExtension = v14;

  filesystemPrimitives = v11->_filesystemPrimitives;
  v11->_filesystemPrimitives = primitivesCopy;
  v17 = primitivesCopy;

  [STFileBackedKeyValueStore _createDirectoryLoggingErrorsAtURL:directoryCopy withFilesystemPrimitives:v17];
  return v11;
}

- (id)purge
{
  filesystemPrimitives = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  directory = [(STFileBackedKeyValueStore *)self directory];
  v13 = 0;
  v5 = [filesystemPrimitives removeFileURL:directory error:&v13];
  v6 = v13;

  if (v5)
  {
    directory2 = [(STFileBackedKeyValueStore *)self directory];
    filesystemPrimitives2 = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
    [STFileBackedKeyValueStore _createDirectoryLoggingErrorsAtURL:directory2 withFilesystemPrimitives:filesystemPrimitives2];

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

- (void)persistValue:(id)value forKey:(id)key
{
  valueCopy = value;
  v7 = [(STFileBackedKeyValueStore *)self _buildFileURL:key];
  filesystemPrimitives = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  v12 = 0;
  v9 = [filesystemPrimitives writeData:valueCopy toFileURL:v7 error:&v12];

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

- (void)removeValueForKey:(id)key
{
  v4 = [(STFileBackedKeyValueStore *)self _buildFileURL:key];
  filesystemPrimitives = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  v9 = 0;
  v6 = [filesystemPrimitives removeFileURL:v4 error:&v9];
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

- (id)readValueForKey:(id)key
{
  v4 = [(STFileBackedKeyValueStore *)self _buildFileURL:key];
  filesystemPrimitives = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  v19 = 0;
  v6 = [filesystemPrimitives fileSizeOfDataAtURL:v4 error:&v19];
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

    filesystemPrimitives2 = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
    v18 = 0;
    v10 = [filesystemPrimitives2 removeFileURL:v4 error:&v18];
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

  filesystemPrimitives3 = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  v17 = v7;
  v13 = [filesystemPrimitives3 readDataFromFileURL:v4 error:&v17];
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

- (void)enumerateKeysAndValuesUsingBlock:(id)block
{
  blockCopy = block;
  directory = [(STFileBackedKeyValueStore *)self directory];
  filesystemPrimitives = [(STFileBackedKeyValueStore *)self filesystemPrimitives];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003F78C;
  v9[3] = &unk_1001A40C0;
  v10 = directory;
  selfCopy = self;
  v12 = blockCopy;
  v7 = blockCopy;
  v8 = directory;
  [filesystemPrimitives enumerateRegularFilesInDirectoryAtURL:v8 withBlock:v9];
}

- (id)_buildFileURL:(id)l
{
  lCopy = l;
  directory = [(STFileBackedKeyValueStore *)self directory];
  v6 = [directory URLByAppendingPathComponent:lCopy isDirectory:0];

  fileExtension = [(STFileBackedKeyValueStore *)self fileExtension];
  v8 = [v6 URLByAppendingPathExtension:fileExtension];

  return v8;
}

+ (void)_createDirectoryLoggingErrorsAtURL:(id)l withFilesystemPrimitives:(id)primitives
{
  lCopy = l;
  v9 = 0;
  v6 = [primitives createDirectoryAtURL:lCopy error:&v9];
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