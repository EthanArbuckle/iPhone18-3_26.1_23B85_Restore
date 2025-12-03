@interface PLFileSystemPersistenceBatchItem
- (PLFileSystemPersistenceBatchItem)initWithFileURL:(id)l;
- (id)description;
- (void)persist;
- (void)setData:(id)data forKey:(id)key;
- (void)setInt32:(int)int32 forKey:(id)key;
- (void)setString:(id)string forKey:(id)key;
- (void)setUInt16:(unsigned __int16)int16 forKey:(id)key;
- (void)setUInt64:(unint64_t)int64 forKey:(id)key;
- (void)setUUIDString:(id)string forKey:(id)key;
@end

@implementation PLFileSystemPersistenceBatchItem

- (void)persist
{
  v26 = *MEMORY[0x1E69E9840];
  fileURL = [(PLFileSystemPersistenceBatchItem *)self fileURL];
  path = [fileURL path];
  fileSystemRepresentation = [path fileSystemRepresentation];

  v6 = open(fileSystemRepresentation, 2097153);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_2:
    v7 = v6;
    attributes = [(PLFileSystemPersistenceBatchItem *)self attributes];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __43__PLFileSystemPersistenceBatchItem_persist__block_invoke;
    v20[3] = &unk_1E7931DC0;
    v21 = v7;
    v20[4] = self;
    [attributes enumerateKeysAndObjectsUsingBlock:v20];

    close(v7);
    return;
  }

  v9 = *__error();
  fileURL2 = [(PLFileSystemPersistenceBatchItem *)self fileURL];
  path2 = [fileURL2 path];
  v12 = [PLFileUtilities stripImmutableFlagIfNecessaryFromFileAtPath:path2];

  if (v12)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      fileURL3 = [(PLFileSystemPersistenceBatchItem *)self fileURL];
      path3 = [fileURL3 path];
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 138412546;
      v23 = path3;
      v24 = 2082;
      v25 = v17;
      _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_DEFAULT, "Retrying after clearing IMMUTABLE flag from %@ after failing to open file for writing (%{public}s).", buf, 0x16u);
    }

    v6 = open(fileSystemRepresentation, 2097153);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

    v9 = *__error();
  }

  v18 = PLBackendGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = strerror(v9);
    *buf = 136446210;
    v23 = v19;
    _os_log_impl(&dword_1AA9BD000, v18, OS_LOG_TYPE_ERROR, "Unable to open file to save extended attributes (%{public}s).", buf, 0xCu);
  }
}

void __43__PLFileSystemPersistenceBatchItem_persist__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFB0] null];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = v5;
  v11 = *(a1 + 40);
  v12 = [v10 UTF8String];
  if (v9)
  {
    if (fsetxattr(v11, v12, [v9 bytes], objc_msgSend(v9, "length"), 0, 0) < 0)
    {
      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 32) fileURL];
        v15 = [v14 path];
        v16 = __error();
        v17 = strerror(*v16);
        v21 = 138412546;
        v22 = v15;
        v23 = 2080;
        v24 = v17;
        v18 = "Unable to set extended attributes on '%@': (%s).";
LABEL_12:
        _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_ERROR, v18, &v21, 0x16u);

        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else if (fremovexattr(v11, v12, 0) < 0 && *__error() != 93)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) fileURL];
      v15 = [v14 path];
      v19 = __error();
      v20 = strerror(*v19);
      v21 = 138412546;
      v22 = v15;
      v23 = 2080;
      v24 = v20;
      v18 = "Unable to remove extended attributes on '%@': (%s).";
      goto LABEL_12;
    }

LABEL_13:
  }
}

- (void)setString:(id)string forKey:(id)key
{
  keyCopy = key;
  v7 = [string dataUsingEncoding:4];
  [(PLFileSystemPersistenceBatchItem *)self setData:v7 forKey:keyCopy];
}

- (void)setUInt64:(unint64_t)int64 forKey:(id)key
{
  int64Copy = int64;
  v5 = MEMORY[0x1E695DEF0];
  keyCopy = key;
  v7 = [v5 dataWithBytes:&int64Copy length:8];
  [(PLFileSystemPersistenceBatchItem *)self setData:v7 forKey:keyCopy];
}

- (void)setInt32:(int)int32 forKey:(id)key
{
  int32Copy = int32;
  v5 = MEMORY[0x1E695DEF0];
  keyCopy = key;
  v7 = [v5 dataWithBytes:&int32Copy length:4];
  [(PLFileSystemPersistenceBatchItem *)self setData:v7 forKey:keyCopy];
}

- (void)setUInt16:(unsigned __int16)int16 forKey:(id)key
{
  int16Copy = int16;
  v5 = MEMORY[0x1E695DEF0];
  keyCopy = key;
  v7 = [v5 dataWithBytes:&int16Copy length:2];
  [(PLFileSystemPersistenceBatchItem *)self setData:v7 forKey:keyCopy];
}

- (void)setUUIDString:(id)string forKey:(id)key
{
  keyCopy = key;
  v7 = PLUUIDDataFromString(string);
  [(PLFileSystemPersistenceBatchItem *)self setData:v7 forKey:keyCopy];
}

- (void)setData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  if (!dataCopy)
  {
    dataCopy = [MEMORY[0x1E695DFB0] null];
  }

  attributes = [(PLFileSystemPersistenceBatchItem *)self attributes];
  [attributes setObject:dataCopy forKey:keyCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  fileURL = [(PLFileSystemPersistenceBatchItem *)self fileURL];
  path = [fileURL path];
  v7 = [v3 stringWithFormat:@"<%@ %p> '%@'", v4, self, path];

  return v7;
}

- (PLFileSystemPersistenceBatchItem)initWithFileURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = PLFileSystemPersistenceBatchItem;
  v6 = [(PLFileSystemPersistenceBatchItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, l);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributes = v7->_attributes;
    v7->_attributes = v8;
  }

  return v7;
}

@end