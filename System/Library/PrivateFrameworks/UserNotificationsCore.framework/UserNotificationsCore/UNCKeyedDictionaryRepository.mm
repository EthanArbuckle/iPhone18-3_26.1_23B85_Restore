@interface UNCKeyedDictionaryRepository
- (BOOL)_saveDictionary:(id)dictionary atPath:(id)path;
- (UNCKeyedDictionaryRepository)initWithDirectory:(id)directory fileName:(id)name pathExtension:(id)extension librarian:(id)librarian;
- (id)_dataAtPath:(id)path;
- (id)_dictionaryAtPath:(id)path;
- (id)_directoryForKey:(id)key;
- (id)_pathForKey:(id)key;
- (id)allKeys;
- (id)dictionaryForKey:(id)key;
- (void)_removeDictionaryAtPath:(id)path;
- (void)removeDictionaryForKey:(id)key;
- (void)setDictionary:(id)dictionary forKey:(id)key;
@end

@implementation UNCKeyedDictionaryRepository

- (UNCKeyedDictionaryRepository)initWithDirectory:(id)directory fileName:(id)name pathExtension:(id)extension librarian:(id)librarian
{
  directoryCopy = directory;
  nameCopy = name;
  extensionCopy = extension;
  librarianCopy = librarian;
  v22.receiver = self;
  v22.super_class = UNCKeyedDictionaryRepository;
  v14 = [(UNCKeyedDictionaryRepository *)&v22 init];
  if (v14)
  {
    v15 = [directoryCopy copy];
    directory = v14->_directory;
    v14->_directory = v15;

    v17 = [nameCopy copy];
    fileName = v14->_fileName;
    v14->_fileName = v17;

    v19 = [extensionCopy copy];
    pathExtension = v14->_pathExtension;
    v14->_pathExtension = v19;

    objc_storeStrong(&v14->_librarian, librarian);
  }

  return v14;
}

- (id)allKeys
{
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [defaultManager enumeratorAtPath:self->_directory];
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

        if ([defaultManager fileExistsAtPath:v12])
        {
          v13 = [(UNCBundleLibrarian *)self->_librarian bundleIdentifierForUniqueIdentifier:v9];
          if (v13)
          {
            [array addObject:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)dictionaryForKey:(id)key
{
  v4 = [(UNCKeyedDictionaryRepository *)self _pathForKey:key];
  v5 = [(UNCKeyedDictionaryRepository *)self _dictionaryAtPath:v4];

  return v5;
}

- (void)setDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  v7 = [(UNCKeyedDictionaryRepository *)self _pathForKey:key];
  [(UNCKeyedDictionaryRepository *)self _saveDictionary:dictionaryCopy atPath:v7];
}

- (void)removeDictionaryForKey:(id)key
{
  v4 = [(UNCKeyedDictionaryRepository *)self _pathForKey:key];
  [(UNCKeyedDictionaryRepository *)self _removeDictionaryAtPath:v4];
}

- (id)_directoryForKey:(id)key
{
  v4 = [(UNCBundleLibrarian *)self->_librarian uniqueIdentifierForBundleIdentifier:key];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F563BF08];
  v6 = [(NSString *)self->_directory stringByAppendingPathComponent:v5];

  return v6;
}

- (id)_pathForKey:(id)key
{
  v4 = [(UNCKeyedDictionaryRepository *)self _directoryForKey:key];
  v5 = [v4 stringByAppendingPathComponent:self->_fileName];
  v6 = [v5 stringByAppendingPathExtension:self->_pathExtension];

  return v6;
}

- (id)_dictionaryAtPath:(id)path
{
  pathCopy = path;
  v5 = [(UNCKeyedDictionaryRepository *)self _dataAtPath:pathCopy];
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
        [(UNCKeyedDictionaryRepository *)v16 _dictionaryAtPath:v15, pathCopy];
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v15;
}

- (id)_dataAtPath:(id)path
{
  pathCopy = path;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathCopy];
  if (!v4)
  {
    v5 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
    {
      [(UNCKeyedDictionaryRepository *)pathCopy _dataAtPath:v5];
    }
  }

  return v4;
}

- (BOOL)_saveDictionary:(id)dictionary atPath:(id)path
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  pathCopy = path;
  v7 = MEMORY[0x1E6983368];
  v8 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543618;
    v27 = pathCopy;
    v28 = 2048;
    v29 = [dictionaryCopy count];
    _os_log_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_DEFAULT, "Saving file at %{public}@ with %lu items", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0)
  {
    v25 = 0;
    v12 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
    v13 = v25;
    if ((v12 & 1) == 0 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      [UNCBundleLibrarian _queue_saveDictionary:atPath:];
    }
  }

  v24 = 0;
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dictionaryCopy requiringSecureCoding:1 error:&v24];
  v15 = v24;
  v16 = v15;
  if (v14)
  {
    v23 = v15;
    v17 = [v14 writeToFile:pathCopy options:268435457 error:&v23];
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

- (void)_removeDictionaryAtPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy])
  {
    v7 = 0;
    v5 = [defaultManager removeItemAtPath:pathCopy error:&v7];
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