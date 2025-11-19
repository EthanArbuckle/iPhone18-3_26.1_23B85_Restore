@interface PLFileSystemPersistenceBatchItem
- (PLFileSystemPersistenceBatchItem)initWithFileURL:(id)a3;
- (id)description;
- (void)persist;
- (void)setData:(id)a3 forKey:(id)a4;
- (void)setInt32:(int)a3 forKey:(id)a4;
- (void)setString:(id)a3 forKey:(id)a4;
- (void)setUInt16:(unsigned __int16)a3 forKey:(id)a4;
- (void)setUInt64:(unint64_t)a3 forKey:(id)a4;
- (void)setUUIDString:(id)a3 forKey:(id)a4;
@end

@implementation PLFileSystemPersistenceBatchItem

- (void)persist
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(PLFileSystemPersistenceBatchItem *)self fileURL];
  v4 = [v3 path];
  v5 = [v4 fileSystemRepresentation];

  v6 = open(v5, 2097153);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_2:
    v7 = v6;
    v8 = [(PLFileSystemPersistenceBatchItem *)self attributes];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __43__PLFileSystemPersistenceBatchItem_persist__block_invoke;
    v20[3] = &unk_1E7931DC0;
    v21 = v7;
    v20[4] = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v20];

    close(v7);
    return;
  }

  v9 = *__error();
  v10 = [(PLFileSystemPersistenceBatchItem *)self fileURL];
  v11 = [v10 path];
  v12 = [PLFileUtilities stripImmutableFlagIfNecessaryFromFileAtPath:v11];

  if (v12)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(PLFileSystemPersistenceBatchItem *)self fileURL];
      v15 = [v14 path];
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 138412546;
      v23 = v15;
      v24 = 2082;
      v25 = v17;
      _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_DEFAULT, "Retrying after clearing IMMUTABLE flag from %@ after failing to open file for writing (%{public}s).", buf, 0x16u);
    }

    v6 = open(v5, 2097153);
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

- (void)setString:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [a3 dataUsingEncoding:4];
  [(PLFileSystemPersistenceBatchItem *)self setData:v7 forKey:v6];
}

- (void)setUInt64:(unint64_t)a3 forKey:(id)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E695DEF0];
  v6 = a4;
  v7 = [v5 dataWithBytes:&v8 length:8];
  [(PLFileSystemPersistenceBatchItem *)self setData:v7 forKey:v6];
}

- (void)setInt32:(int)a3 forKey:(id)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E695DEF0];
  v6 = a4;
  v7 = [v5 dataWithBytes:&v8 length:4];
  [(PLFileSystemPersistenceBatchItem *)self setData:v7 forKey:v6];
}

- (void)setUInt16:(unsigned __int16)a3 forKey:(id)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E695DEF0];
  v6 = a4;
  v7 = [v5 dataWithBytes:&v8 length:2];
  [(PLFileSystemPersistenceBatchItem *)self setData:v7 forKey:v6];
}

- (void)setUUIDString:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = PLUUIDDataFromString(a3);
  [(PLFileSystemPersistenceBatchItem *)self setData:v7 forKey:v6];
}

- (void)setData:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v7 = [(PLFileSystemPersistenceBatchItem *)self attributes];
  [v7 setObject:v8 forKey:v6];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PLFileSystemPersistenceBatchItem *)self fileURL];
  v6 = [v5 path];
  v7 = [v3 stringWithFormat:@"<%@ %p> '%@'", v4, self, v6];

  return v7;
}

- (PLFileSystemPersistenceBatchItem)initWithFileURL:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PLFileSystemPersistenceBatchItem;
  v6 = [(PLFileSystemPersistenceBatchItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributes = v7->_attributes;
    v7->_attributes = v8;
  }

  return v7;
}

@end