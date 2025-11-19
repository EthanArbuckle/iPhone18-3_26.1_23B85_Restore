@interface UNCKeyedDictionaryRepository
- (BOOL)_saveDictionary:(id)a3 atPath:(id)a4;
- (UNCKeyedDictionaryRepository)initWithDirectory:(id)a3 fileName:(id)a4 pathExtension:(id)a5 librarian:(id)a6;
- (id)_dataAtPath:(id)a3;
- (id)_dictionaryAtPath:(id)a3;
- (id)_directoryForKey:(id)a3;
- (id)_pathForKey:(id)a3;
- (id)allKeys;
- (id)dictionaryForKey:(id)a3;
- (void)_removeDictionaryAtPath:(id)a3;
- (void)removeDictionaryForKey:(id)a3;
- (void)setDictionary:(id)a3 forKey:(id)a4;
@end

@implementation UNCKeyedDictionaryRepository

- (UNCKeyedDictionaryRepository)initWithDirectory:(id)a3 fileName:(id)a4 pathExtension:(id)a5 librarian:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = UNCKeyedDictionaryRepository;
  v14 = [(UNCKeyedDictionaryRepository *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    directory = v14->_directory;
    v14->_directory = v15;

    v17 = [v11 copy];
    fileName = v14->_fileName;
    v14->_fileName = v17;

    v19 = [v12 copy];
    pathExtension = v14->_pathExtension;
    v14->_pathExtension = v19;

    objc_storeStrong(&v14->_librarian, a6);
  }

  return v14;
}

- (id)allKeys
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 enumeratorAtPath:self->_directory];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(NSString *)self->_directory stringByAppendingPathComponent:v9];
        v11 = [v10 stringByAppendingPathComponent:self->_fileName];
        v12 = [v11 stringByAppendingPathExtension:self->_pathExtension];

        if ([v3 fileExistsAtPath:v12])
        {
          v13 = [(UNCBundleLibrarian *)self->_librarian bundleIdentifierForUniqueIdentifier:v9];
          if (v13)
          {
            [v16 addObject:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = [(UNCKeyedDictionaryRepository *)self _pathForKey:a3];
  v5 = [(UNCKeyedDictionaryRepository *)self _dictionaryAtPath:v4];

  return v5;
}

- (void)setDictionary:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(UNCKeyedDictionaryRepository *)self _pathForKey:a4];
  [(UNCKeyedDictionaryRepository *)self _saveDictionary:v6 atPath:v7];
}

- (void)removeDictionaryForKey:(id)a3
{
  v4 = [(UNCKeyedDictionaryRepository *)self _pathForKey:a3];
  [(UNCKeyedDictionaryRepository *)self _removeDictionaryAtPath:v4];
}

- (id)_directoryForKey:(id)a3
{
  v4 = [(UNCBundleLibrarian *)self->_librarian uniqueIdentifierForBundleIdentifier:a3];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F563BF08];
  v6 = [(NSString *)self->_directory stringByAppendingPathComponent:v5];

  return v6;
}

- (id)_pathForKey:(id)a3
{
  v4 = [(UNCKeyedDictionaryRepository *)self _directoryForKey:a3];
  v5 = [v4 stringByAppendingPathComponent:self->_fileName];
  v6 = [v5 stringByAppendingPathExtension:self->_pathExtension];

  return v6;
}

- (id)_dictionaryAtPath:(id)a3
{
  v4 = a3;
  v5 = [(UNCKeyedDictionaryRepository *)self _dataAtPath:v4];
  if (!v5)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v20 = MEMORY[0x1E696ACD0];
  v22 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v22 setWithObjects:{v21, v19, v18, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [v20 unarchivedObjectOfClasses:v14 fromData:v5 error:0];

  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = *MEMORY[0x1E6983368];
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [(UNCKeyedDictionaryRepository *)v16 _dictionaryAtPath:v15, v4];
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v15;
}

- (id)_dataAtPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];
  if (!v4)
  {
    v5 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
    {
      [(UNCKeyedDictionaryRepository *)v3 _dataAtPath:v5];
    }
  }

  return v4;
}

- (BOOL)_saveDictionary:(id)a3 atPath:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E6983368];
  v8 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543618;
    v27 = v6;
    v28 = 2048;
    v29 = [v5 count];
    _os_log_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_DEFAULT, "Saving file at %{public}@ with %lu items", buf, 0x16u);
  }

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v6 stringByDeletingLastPathComponent];
  if (([v10 fileExistsAtPath:v11] & 1) == 0)
  {
    v25 = 0;
    v12 = [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v25];
    v13 = v25;
    if ((v12 & 1) == 0 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      [UNCBundleLibrarian _queue_saveDictionary:atPath:];
    }
  }

  v24 = 0;
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v24];
  v15 = v24;
  v16 = v15;
  if (v14)
  {
    v23 = v15;
    v17 = [v14 writeToFile:v6 options:268435457 error:&v23];
    v18 = v23;

    if (v17)
    {
      v19 = 1;
    }

    else
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        [UNCBundleLibrarian _queue_saveDictionary:atPath:];
      }

      v19 = 0;
    }

    v16 = v18;
  }

  else
  {
    v20 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      [UNCKeyedDictionaryRepository _saveDictionary:v16 atPath:v20];
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)_removeDictionaryAtPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v7 = 0;
    v5 = [v4 removeItemAtPath:v3 error:&v7];
    v6 = v7;
    if ((v5 & 1) == 0 && os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
    {
      [UNCKeyedDictionaryRepository _removeDictionaryAtPath:];
    }
  }
}

- (void)_dictionaryAtPath:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = a2;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_ERROR, "Exception caught data at %{public}@; exception: %{public}@", &v6, 0x16u);
  }

  objc_end_catch();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_dictionaryAtPath:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  v9 = a3;
  v6 = v5;
  _os_log_error_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_ERROR, "Unexpected class %{public}@ decocded at %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_dataAtPath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "No data found at %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_saveDictionary:(void *)a1 atPath:.cold.2(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = objc_begin_catch(a1);
  v2 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v1;
    _os_log_error_impl(&dword_1DA7A9000, v2, OS_LOG_TYPE_ERROR, "Unable to archive objects: %{public}@", &v4, 0xCu);
  }

  objc_end_catch();
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_saveDictionary:(uint64_t)a1 atPath:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "Could not encode object data: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_removeDictionaryAtPath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "Could not delete %{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end