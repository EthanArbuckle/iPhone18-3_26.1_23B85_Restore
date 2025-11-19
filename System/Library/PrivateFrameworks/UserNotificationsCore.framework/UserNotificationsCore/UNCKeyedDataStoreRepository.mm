@interface UNCKeyedDataStoreRepository
- (BOOL)_saveObjects:(id)a3 atPath:(id)a4;
- (BOOL)_useReplacementToImport:(id)a3 into:(id)a4;
- (UNCKeyedDataStoreRepository)initWithDirectory:(id)a3 fileName:(id)a4 pathExtension:(id)a5 librarian:(id)a6 repositoryProtectionStrategy:(id)a7 objectIdentifierKey:(id)a8 maxObjectsPerKey:(int64_t)a9;
- (id)_addObject:(id)a3 toObjects:(id)a4 mustReplace:(BOOL)a5 receipt:(id *)a6;
- (id)_dataAtPath:(id)a3;
- (id)_directoryForKey:(id)a3;
- (id)_objectsAtPath:(id)a3;
- (id)_objectsForData:(id)a3 identifier:(id)a4;
- (id)_objectsPassingTest:(id)a3 atPath:(id)a4;
- (id)_pathForKey:(id)a3;
- (id)_removeObjectsPassingTest:(id)a3 atPath:(id)a4;
- (id)allKeys;
- (id)objectsForKey:(id)a3;
- (id)objectsPassingTest:(id)a3 forKey:(id)a4;
- (id)removeObjectsPassingTest:(id)a3 forKey:(id)a4;
- (void)_removeItemAtPath:(id)a3;
- (void)_setObjects:(id)a3 atPath:(id)a4;
- (void)migrateStoreAtPath:(id)a3 forKey:(id)a4;
- (void)protectionStateChanged;
- (void)removeAllObjectsForKey:(id)a3;
- (void)removeStoreForKey:(id)a3;
- (void)removeStoreForKey:(id)a3 overridePathExtension:(id)a4;
- (void)setObjects:(id)a3 forKey:(id)a4;
@end

@implementation UNCKeyedDataStoreRepository

- (void)protectionStateChanged
{
  protectionStrategy = self->_protectionStrategy;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_protectionStrategy;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__UNCKeyedDataStoreRepository_protectionStateChanged__block_invoke;
    v5[3] = &unk_1E85D7D58;
    v5[4] = self;
    [(UNSContentProtectionStrategy *)v4 importDataWithImportHandler:v5];
  }
}

- (UNCKeyedDataStoreRepository)initWithDirectory:(id)a3 fileName:(id)a4 pathExtension:(id)a5 librarian:(id)a6 repositoryProtectionStrategy:(id)a7 objectIdentifierKey:(id)a8 maxObjectsPerKey:(int64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v31.receiver = self;
  v31.super_class = UNCKeyedDataStoreRepository;
  v21 = [(UNCKeyedDataStoreRepository *)&v31 init];
  if (v21)
  {
    v22 = [v15 copy];
    directory = v21->_directory;
    v21->_directory = v22;

    v24 = [v16 copy];
    fileName = v21->_fileName;
    v21->_fileName = v24;

    v26 = [v17 copy];
    pathExtension = v21->_pathExtension;
    v21->_pathExtension = v26;

    objc_storeStrong(&v21->_librarian, a6);
    objc_storeStrong(&v21->_protectionStrategy, a7);
    v28 = [v20 copy];
    objectIdentifierKey = v21->_objectIdentifierKey;
    v21->_objectIdentifierKey = v28;

    v21->_maxObjectsPerKey = a9;
  }

  return v21;
}

- (id)allKeys
{
  v37[1] = *MEMORY[0x1E69E9840];
  v27 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_directory];
  v37[0] = *MEMORY[0x1E695DB78];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v6 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:v5 options:1 errorHandler:&__block_literal_global_22];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        protectionStrategy = self->_protectionStrategy;
        v15 = [v12 path];
        LOBYTE(protectionStrategy) = [(UNSContentProtectionStrategy *)protectionStrategy dataIsAvailableAtPath:v15];

        if (protectionStrategy)
        {
          librarian = self->_librarian;
          v17 = [v12 lastPathComponent];
          v18 = [(UNCBundleLibrarian *)librarian bundleIdentifierForUniqueIdentifier:v17];

          v19 = *MEMORY[0x1E6983368];
          if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            v21 = [v12 path];
            *buf = 138412546;
            v33 = v21;
            v34 = 2112;
            v35 = v18;
            _os_log_impl(&dword_1DA7A9000, v20, OS_LOG_TYPE_DEFAULT, "UNCKeyedDataStoreRepository allKeys: Loading: %@ bundleIdentifier: %@", buf, 0x16u);
          }

          if (v18)
          {
            [v27 addObject:v18];
          }
        }

        else
        {
          v22 = *MEMORY[0x1E6983368];
          if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            v24 = [v12 path];
            *buf = 138412290;
            v33 = v24;
            _os_log_impl(&dword_1DA7A9000, v23, OS_LOG_TYPE_DEFAULT, "UNCKeyedDataStoreRepository allKeys: !dataIsAvailableAtPath: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v9);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v27;
}

uint64_t __38__UNCKeyedDataStoreRepository_allKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "UNCKeyedDataStoreRepository allKeys: enumeratorAtURL failed url: %@ error: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
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
  v4 = [(UNCKeyedDataStoreRepository *)self _directoryForKey:a3];
  v5 = [v4 stringByAppendingPathComponent:self->_fileName];
  v6 = [v5 stringByAppendingPathExtension:self->_pathExtension];

  return v6;
}

- (id)objectsForKey:(id)a3
{
  v4 = [(UNCKeyedDataStoreRepository *)self _pathForKey:a3];
  v5 = [(UNCKeyedDataStoreRepository *)self _objectsAtPath:v4];

  return v5;
}

- (id)_objectsAtPath:(id)a3
{
  v4 = a3;
  v5 = [(UNCKeyedDataStoreRepository *)self _dataAtPath:v4];
  if (v5)
  {
    v6 = [(UNCKeyedDataStoreRepository *)self _objectsForData:v5 identifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)objectsPassingTest:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [(UNCKeyedDataStoreRepository *)self _pathForKey:a4];
    v8 = [(UNCKeyedDataStoreRepository *)self _objectsPassingTest:v6 atPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_objectsPassingTest:(id)a3 atPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UNCKeyedDataStoreRepository *)self _dataAtPath:v7];
  if (v8)
  {
    v9 = [(UNCKeyedDataStoreRepository *)self _objectsForData:v8 identifier:v7];
    v10 = [v9 bs_filter:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_objectsForData:(id)a3 identifier:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v25 = a4;
  context = objc_autoreleasePoolPush();
  v22 = MEMORY[0x1E696ACD0];
  v24 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v21 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v24 setWithObjects:{v23, v21, v5, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [v22 unarchivedObjectOfClasses:v14 fromData:v26 error:0];

  objc_autoreleasePoolPop(context);
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = *MEMORY[0x1E6983368];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        [(UNCKeyedDataStoreRepository *)v17 _objectsForData:v25 identifier:v27, v16];
      }

      v15 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_dataAtPath:(id)a3
{
  v4 = a3;
  v5 = [(UNSContentProtectionStrategy *)self->_protectionStrategy dataAtPath:v4];
  if (!v5)
  {
    v6 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
    {
      [(UNCKeyedDictionaryRepository *)v4 _dataAtPath:v6];
    }
  }

  return v5;
}

- (BOOL)_saveObjects:(id)a3 atPath:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6983368];
  v9 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543618;
    v28 = v7;
    v29 = 2048;
    v30 = [v6 count];
    _os_log_impl(&dword_1DA7A9000, v10, OS_LOG_TYPE_DEFAULT, "Saving file at %{public}@ with %lu items", buf, 0x16u);
  }

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [v7 stringByDeletingLastPathComponent];
  if (([v11 fileExistsAtPath:v12] & 1) == 0)
  {
    v26 = 0;
    v13 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v26];
    v14 = v26;
    if ((v13 & 1) == 0 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [UNCKeyedDataStoreRepository _saveObjects:atPath:];
    }
  }

  v25 = 0;
  v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v25];
  v16 = v25;
  if (v15)
  {
    protectionStrategy = self->_protectionStrategy;
    v24 = v16;
    v18 = [(UNSContentProtectionStrategy *)protectionStrategy writeData:v15 atPath:v7 error:&v24];
    v19 = v24;

    if (v18)
    {
      v20 = 1;
    }

    else
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        [UNCKeyedDataStoreRepository _saveObjects:atPath:];
      }

      v20 = 0;
    }

    v16 = v19;
  }

  else
  {
    v21 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [UNCKeyedDictionaryRepository _saveDictionary:v16 atPath:v21];
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)removeAllObjectsForKey:(id)a3
{
  v4 = [(UNCKeyedDataStoreRepository *)self _pathForKey:a3];
  [(UNCKeyedDataStoreRepository *)self _saveObjects:MEMORY[0x1E695E0F0] atPath:v4];
}

- (id)removeObjectsPassingTest:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [(UNCKeyedDataStoreRepository *)self _pathForKey:a4];
    v8 = [(UNCKeyedDataStoreRepository *)self _removeObjectsPassingTest:v6 atPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_removeObjectsPassingTest:(id)a3 atPath:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19 = self;
  v20 = a4;
  v7 = [(UNCKeyedDataStoreRepository *)self _objectsAtPath:?];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (v6[2](v6, v14))
        {
          if (v11)
          {
            v15 = v11;
          }

          else
          {
            v15 = [MEMORY[0x1E695DF70] array];
            v11 = v15;
          }
        }

        else if (v10)
        {
          v15 = v10;
        }

        else
        {
          v15 = [MEMORY[0x1E695DF70] array];
          v10 = v15;
        }

        [v15 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  [(UNCKeyedDataStoreRepository *)v19 _saveObjects:v10 atPath:v20];
  v16 = [UNCDataStoreReceipt receiptWithAddedObjects:0 replacedObjects:0 replacementObjects:0 removedObjects:v11];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)setObjects:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(UNCKeyedDataStoreRepository *)self _pathForKey:a4];
  [(UNCKeyedDataStoreRepository *)self _setObjects:v6 atPath:v7];
}

- (void)_setObjects:(id)a3 atPath:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  v9 = [v8 count];
  maxObjectsPerKey = self->_maxObjectsPerKey;
  if (v9 > maxObjectsPerKey)
  {
    [v8 removeObjectsInRange:{maxObjectsPerKey, objc_msgSend(v8, "count") - self->_maxObjectsPerKey}];
  }

  if (self->_recordValidationTest)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v12)
    {
      v14 = v11;
      goto LABEL_18;
    }

    v13 = v12;
    v20 = v6;
    v14 = 0;
    v15 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (((*(self->_recordValidationTest + 2))() & 1) == 0)
        {
          if (!v14)
          {
            v14 = [MEMORY[0x1E695DF70] array];
          }

          [v14 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);

    v6 = v20;
    if (v14)
    {
      [v11 removeObjectsInArray:v14];
LABEL_18:
    }
  }

  v18 = objc_autoreleasePoolPush();
  [(UNCKeyedDataStoreRepository *)self _saveObjects:v8 atPath:v7];
  objc_autoreleasePoolPop(v18);

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_addObject:(id)a3 toObjects:(id)a4 mustReplace:(BOOL)a5 receipt:(id *)a6
{
  LODWORD(v41) = a5;
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF70] array];
  v43 = v8;
  [v10 addObject:v8];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v50;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        if (-[UNCKeyedDataStoreRepository _isReplacementSupported](self, "_isReplacementSupported", v41) && ([v16 objectForKey:self->_objectIdentifierKey], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "objectForKey:", self->_objectIdentifierKey), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToString:", v18), v18, v17, v19))
        {
          v20 = [MEMORY[0x1E695DEC8] arrayWithObject:v16];

          v13 = v20;
        }

        else
        {
          [v10 addObject:v16];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v21 = v13;
  if (v41 && ![v13 count])
  {
    v37 = 0;
    v24 = 0;
    v26 = 0;
    v36 = a6;
    if (a6)
    {
LABEL_41:
      *v36 = [UNCDataStoreReceipt receiptWithAddedObjects:v37 replacedObjects:v21 replacementObjects:v24 removedObjects:v26, v41];
    }
  }

  else
  {
    v22 = [MEMORY[0x1E695DEC8] arrayWithObject:{v43, v41}];
    if (v13)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    if (v13)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    v25 = [v10 count];
    v26 = 0;
    maxObjectsPerKey = self->_maxObjectsPerKey;
    if (v25 > maxObjectsPerKey)
    {
      v28 = [v10 count] - self->_maxObjectsPerKey;
      v29 = [v10 subarrayWithRange:{maxObjectsPerKey, v28}];
      v26 = [v29 mutableCopy];

      [v10 removeObjectsInRange:{maxObjectsPerKey, v28}];
    }

    if (self->_recordValidationTest)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v30 = v10;
      v31 = [v30 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v46;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v46 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v45 + 1) + 8 * j);
            if (((*(self->_recordValidationTest + 2))() & 1) == 0)
            {
              if (!v26)
              {
                v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v30, "count")}];
              }

              [v26 addObject:v35];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v32);
      }

      if (v26)
      {
        [v30 removeObjectsInArray:v26];
      }

      v36 = a6;
      v21 = v13;
    }

    else
    {
      v36 = a6;
    }

    v37 = v41;
    if (v36)
    {
      goto LABEL_41;
    }
  }

  v38 = [v10 copy];

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (void)removeStoreForKey:(id)a3
{
  v4 = [(UNCKeyedDataStoreRepository *)self _pathForKey:a3];
  [(UNCKeyedDataStoreRepository *)self _removeItemAtPath:v4];
}

- (void)removeStoreForKey:(id)a3 overridePathExtension:(id)a4
{
  v6 = a4;
  v9 = [(UNCKeyedDataStoreRepository *)self _pathForKey:a3];
  v7 = [v9 stringByDeletingPathExtension];
  v8 = [v7 stringByAppendingPathExtension:v6];

  [(UNCKeyedDataStoreRepository *)self _removeItemAtPath:v8];
}

- (void)_removeItemAtPath:(id)a3
{
  protectionStrategy = self->_protectionStrategy;
  v4 = 0;
  [(UNSContentProtectionStrategy *)protectionStrategy removeItemAtPath:a3 error:&v4];
}

- (void)migrateStoreAtPath:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E696AC08];
  v8 = a3;
  v9 = [v7 defaultManager];
  v10 = [(UNCKeyedDataStoreRepository *)self _directoryForKey:v6];
  if (([v9 fileExistsAtPath:v10] & 1) == 0)
  {
    v14 = 0;
    [v9 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v14];
    v11 = v14;
    if (v11 && os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
    {
      [UNCKeyedDataStoreRepository migrateStoreAtPath:forKey:];
    }
  }

  protectionStrategy = self->_protectionStrategy;
  v13 = [(UNCKeyedDataStoreRepository *)self _pathForKey:v6];
  [(UNSContentProtectionStrategy *)protectionStrategy migrateDataAtPath:v8 toPath:v13];
}

- (BOOL)_useReplacementToImport:(id)a3 into:(id)a4
{
  v6 = a4;
  v7 = [a3 count];
  v8 = [v6 count];

  if (!v7 || !v8)
  {
    return 0;
  }

  return [(UNCKeyedDataStoreRepository *)self _isReplacementSupported];
}

id __53__UNCKeyedDataStoreRepository_protectionStateChanged__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) _objectsForData:a2 identifier:0];
  v7 = [*(a1 + 32) _objectsForData:v5 identifier:0];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;
  if ([*(a1 + 32) _useReplacementToImport:v6 into:v8])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v25 = v6;
      v26 = v5;
      v14 = 0;
      v15 = *v30;
      do
      {
        v16 = 0;
        v17 = v14;
        v18 = v10;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v29 + 1) + 8 * v16);
          v20 = *(a1 + 32);
          v28 = v17;
          v10 = [v20 _addObject:v19 toObjects:v18 mustReplace:0 receipt:{&v28, v25, v26}];
          v14 = v28;

          ++v16;
          v17 = v14;
          v18 = v10;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);

      v6 = v25;
      v5 = v26;
    }
  }

  else if ([v6 count])
  {
    v21 = v6;

    v10 = v21;
  }

  v27 = 0;
  v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v27];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)_objectsForData:(void *)a1 identifier:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
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

- (void)_objectsForData:(uint64_t)a3 identifier:(NSObject *)a4 .cold.2(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_error_impl(&dword_1DA7A9000, a4, OS_LOG_TYPE_ERROR, "Unexpected class %{public}@ decocded at %{public}@", a3, 0x16u);
}

- (void)_saveObjects:atPath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "Could not create directory at %{public}@; error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_saveObjects:(void *)a1 atPath:.cold.2(void *a1)
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

- (void)_saveObjects:atPath:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "Could not write objects to %{public}@; error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)migrateStoreAtPath:forKey:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "Could not create directory at %{public}@; error: %{public}@ for migration");
  v2 = *MEMORY[0x1E69E9840];
}

@end