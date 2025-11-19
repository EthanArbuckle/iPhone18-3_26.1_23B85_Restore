@interface UNCBundleLibrarian
- (BOOL)_isUUIDString:(id)a3;
- (BOOL)_queue_saveDictionary:(id)a3 atPath:(id)a4;
- (UNCBundleLibrarian)initWithDirectory:(id)a3;
- (id)_queue_bundleIdentifierForUniqueIdentifier:(id)a3;
- (id)_queue_dataAtPath:(id)a3;
- (id)_queue_dictionaryAtPath:(id)a3;
- (id)_queue_uniqueIdentifierForBundleIdentifier:(id)a3;
- (id)bundleIdentifierForUniqueIdentifier:(id)a3;
- (id)uniqueIdentifierForBundleIdentifier:(id)a3;
- (void)_queue_addEntryForBundleIdentifier:(id)a3 uniqueIdentifier:(id)a4;
- (void)_queue_loadBundleLibrary;
- (void)_queue_loadBundleLibraryIfNeeded;
- (void)_queue_migrateBundleDirectoriesInDirectory:(id)a3;
- (void)_queue_removeEntryForBundleIdentifier:(id)a3;
- (void)_queue_removeUnknownDirectoriesFromLibrary;
- (void)_queue_removeUnknownDirectoriesInDirectory:(id)a3;
- (void)_removeBundleLibrary;
- (void)bootstrapLibraryForBundleIdentifiers:(id)a3;
- (void)migrateLibraryFromDirectory:(id)a3 toDirectory:(id)a4;
- (void)removeMappingForBundleIdentifier:(id)a3;
@end

@implementation UNCBundleLibrarian

- (void)_queue_loadBundleLibraryIfNeeded
{
  if (!self->_bundleToUUIDMap)
  {
    v4 = objc_autoreleasePoolPush();
    [(UNCBundleLibrarian *)self _queue_loadBundleLibrary];

    objc_autoreleasePoolPop(v4);
  }
}

- (UNCBundleLibrarian)initWithDirectory:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UNCBundleLibrarian;
  v5 = [(UNCBundleLibrarian *)&v13 init];
  if (v5)
  {
    v6 = [v4 stringByAppendingPathComponent:@"Library"];
    v7 = [v6 stringByAppendingPathExtension:@"plist"];
    bundleLibraryPath = v5->_bundleLibraryPath;
    v5->_bundleLibraryPath = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.UserNotificationServer.librarian", v9);
    queue = v5->_queue;
    v5->_queue = v10;
  }

  return v5;
}

- (void)bootstrapLibraryForBundleIdentifiers:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__UNCBundleLibrarian_bootstrapLibraryForBundleIdentifiers___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __59__UNCBundleLibrarian_bootstrapLibraryForBundleIdentifiers___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _queue_loadBundleLibraryIfNeeded];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v17;
    v8 = MEMORY[0x1E6983368];
    *&v4 = 138543618;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [*(*(a1 + 32) + 16) objectForKey:{v10, v15, v16}];
        if (!v11)
        {
          v12 = [MEMORY[0x1E696AFB0] UUID];
          v11 = [v12 UUIDString];

          [*(*(a1 + 32) + 16) setObject:v11 forKey:v10];
          [*(*(a1 + 32) + 24) setObject:v10 forKey:v11];
          v13 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = v10;
            v22 = 2114;
            v23 = v11;
            _os_log_impl(&dword_1DA7A9000, v13, OS_LOG_TYPE_DEFAULT, "Creating library mapping from %{public}@ to %{public}@", buf, 0x16u);
          }

          v6 = 1;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);

    if (v6)
    {
      [*(a1 + 32) _queue_saveDictionary:*(*(a1 + 32) + 16) atPath:*(*(a1 + 32) + 8)];
    }
  }

  else
  {
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)bundleIdentifierForUniqueIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__UNCBundleLibrarian_bundleIdentifierForUniqueIdentifier___block_invoke;
  block[3] = &unk_1E85D6F48;
  v14 = &v15;
  block[4] = self;
  v6 = v4;
  v13 = v6;
  dispatch_sync(queue, block);
  v7 = v16[5];
  if (!v7)
  {
    v8 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v6;
      _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "No bundleID for unique identifier %{public}@", buf, 0xCu);
    }

    v7 = v16[5];
  }

  v9 = v7;

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __58__UNCBundleLibrarian_bundleIdentifierForUniqueIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_bundleIdentifierForUniqueIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)uniqueIdentifierForBundleIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__UNCBundleLibrarian_uniqueIdentifierForBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D7290;
  block[4] = self;
  v6 = v4;
  v13 = v6;
  v14 = &v15;
  dispatch_sync(queue, block);
  v7 = v16[5];
  if (!v7)
  {
    v8 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v6;
      _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "No unique identifier for bundleID %{public}@", buf, 0xCu);
    }

    v7 = v16[5];
  }

  v9 = v7;

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __58__UNCBundleLibrarian_uniqueIdentifierForBundleIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _queue_bundleIdentifierForUniqueIdentifier:*(a1 + 40)];

  if (v2)
  {
    v3 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v13 = 138543362;
      v14 = v4;
      _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "Unique identifier provided when requesting unique identifer for bundle identifier (%{public}@)", &v13, 0xCu);
    }

    v5 = [*(a1 + 40) copy];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = [*(a1 + 32) _queue_uniqueIdentifierForBundleIdentifier:*(a1 + 40)];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
    v12 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)removeMappingForBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__UNCBundleLibrarian_removeMappingForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __55__UNCBundleLibrarian_removeMappingForBundleIdentifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1DA7A9000, v2, OS_LOG_TYPE_DEFAULT, "Removing library mapping for %{public}@", &v6, 0xCu);
  }

  result = [*(a1 + 40) _queue_removeEntryForBundleIdentifier:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)migrateLibraryFromDirectory:(id)a3 toDirectory:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__UNCBundleLibrarian_migrateLibraryFromDirectory_toDirectory___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

void __62__UNCBundleLibrarian_migrateLibraryFromDirectory_toDirectory___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v2 fileExistsAtPath:*(*(a1 + 32) + 8)])
  {
    v3 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 8);
      *buf = 138543362;
      v25 = v4;
      _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "Library exists at %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v5 = [*(a1 + 40) stringByAppendingPathComponent:@"Library"];
    v6 = [v5 stringByAppendingPathExtension:@"plist"];

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v7 fileExistsAtPath:v6];

    if (v8)
    {
      v9 = MEMORY[0x1E6983368];
      v10 = *MEMORY[0x1E6983368];
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = v6;
        _os_log_impl(&dword_1DA7A9000, v10, OS_LOG_TYPE_DEFAULT, "Migrate library from %{public}@", buf, 0xCu);
      }

      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v12 = *(*(a1 + 32) + 8);
      v23 = 0;
      v13 = [v11 moveItemAtPath:v6 toPath:v12 error:&v23];
      v14 = v23;

      if ((v13 & 1) == 0)
      {
        v15 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          v21 = *(*(a1 + 32) + 8);
          *buf = 138543874;
          v25 = v6;
          v26 = 2114;
          v27 = v21;
          v28 = 2114;
          v29 = v14;
          _os_log_error_impl(&dword_1DA7A9000, v15, OS_LOG_TYPE_ERROR, "Could not move %{public}@ to %{public}@ as a part of library migration error: %{public}@", buf, 0x20u);
        }
      }

      v16 = [MEMORY[0x1E696AC08] defaultManager];
      v17 = *(a1 + 40);
      v22 = 0;
      v18 = [v16 removeItemAtPath:v17 error:&v22];
      v19 = v22;

      if ((v18 & 1) == 0 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        __62__UNCBundleLibrarian_migrateLibraryFromDirectory_toDirectory___block_invoke_cold_1((a1 + 40));
      }

      [*(a1 + 32) _queue_removeUnknownDirectoriesFromLibrary];
      [*(a1 + 32) _queue_removeUnknownDirectoriesInDirectory:*(a1 + 48)];
    }

    else
    {
      [*(a1 + 32) _queue_migrateBundleDirectoriesInDirectory:*(a1 + 48)];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_queue_removeUnknownDirectoriesFromLibrary
{
  v22 = *MEMORY[0x1E69E9840];
  [(UNCBundleLibrarian *)self _queue_loadBundleLibraryIfNeeded];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSMutableDictionary *)self->_bundleToUUIDMap allKeys];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    v9 = MEMORY[0x1E6983368];
    *&v6 = 138543362;
    v14 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([(UNCBundleLibrarian *)self _isUUIDString:v11, v14])
        {
          v12 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v20 = v11;
            _os_log_error_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_ERROR, "Removing invalid library mapping for %{public}@", buf, 0xCu);
          }

          [(UNCBundleLibrarian *)self _queue_removeEntryForBundleIdentifier:v11];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_queue_removeUnknownDirectoriesInDirectory:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UNCBundleLibrarian *)self _queue_loadBundleLibraryIfNeeded];
  v23 = [MEMORY[0x1E696AC08] defaultManager];
  v24 = v4;
  v5 = [v23 contentsOfDirectoryAtPath:v4 error:0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = [(NSMutableDictionary *)self->_uuidToBundleMap objectForKey:v10];
        if (v11)
        {
          goto LABEL_7;
        }

        if ([(UNCBundleLibrarian *)self _isUUIDString:v10])
        {
          v11 = [v24 stringByAppendingPathComponent:v10];
          v26 = 0;
          v12 = [MEMORY[0x1E696AC08] defaultManager];
          v13 = [v12 fileExistsAtPath:v11 isDirectory:&v26];
          v14 = v26;

          if (v13 && (v14 & 1) != 0)
          {
            v15 = *MEMORY[0x1E6983368];
            if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v32 = v11;
              _os_log_error_impl(&dword_1DA7A9000, v15, OS_LOG_TYPE_ERROR, "Removing %{public}@ as it is a stale notification source", buf, 0xCu);
            }

            v16 = [v24 stringByAppendingPathComponent:v10];
            v17 = [MEMORY[0x1E696AC08] defaultManager];
            v25 = 0;
            v18 = [v17 removeItemAtPath:v16 error:&v25];
            v19 = v25;

            if ((v18 & 1) == 0)
            {
              v20 = *MEMORY[0x1E6983368];
              if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v32 = v11;
                v33 = 2114;
                v34 = v19;
                _os_log_error_impl(&dword_1DA7A9000, v20, OS_LOG_TYPE_ERROR, "Could not remove %{public}@ in cleanup after library migration error: %{public}@", buf, 0x16u);
              }
            }
          }

LABEL_7:
        }

        ++v9;
      }

      while (v7 != v9);
      v21 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
      v7 = v21;
    }

    while (v21);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_queue_migrateBundleDirectoriesInDirectory:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E6983368];
  v6 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v45 = v4;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "Migrate library from bundle directory struction %{public}@", buf, 0xCu);
  }

  [(UNCBundleLibrarian *)self _queue_loadBundleLibraryIfNeeded];
  v33 = [MEMORY[0x1E696AC08] defaultManager];
  [v33 contentsOfDirectoryAtPath:v4 error:0];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v7 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    v34 = v4;
    v35 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_uuidToBundleMap objectForKey:v11];
        if (v12)
        {
          v13 = v12;
          v14 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v45 = v11;
            _os_log_impl(&dword_1DA7A9000, v14, OS_LOG_TYPE_DEFAULT, "Do not migrate directory %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v39 = 0;
          v15 = [v4 stringByAppendingPathComponent:v11];
          v16 = [MEMORY[0x1E696AC08] defaultManager];
          v17 = [v16 fileExistsAtPath:v15 isDirectory:&v39];
          v18 = v39;

          if (v17 && (v18 & 1) != 0)
          {
            if ([(UNCBundleLibrarian *)self _isUUIDString:v11])
            {
              v19 = *v5;
              if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v45 = v15;
                _os_log_error_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_ERROR, "Removing %{public}@ as it is a stale notification source", buf, 0xCu);
              }

              v20 = [MEMORY[0x1E696AC08] defaultManager];
              v38 = 0;
              v21 = [v20 removeItemAtPath:v15 error:&v38];
              v22 = v38;

              if ((v21 & 1) == 0)
              {
                v23 = *MEMORY[0x1E6983368];
                if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v45 = v15;
                  v46 = 2114;
                  v47 = v22;
                  _os_log_error_impl(&dword_1DA7A9000, v23, OS_LOG_TYPE_ERROR, "Could not remove %{public}@ in cleanup after library migration error: %{public}@", buf, 0x16u);
                }
              }

              v13 = 0;
            }

            else
            {
              v13 = v11;
              v25 = [(UNCBundleLibrarian *)self _queue_uniqueIdentifierForBundleIdentifier:v13];
              v26 = *v5;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v45 = v13;
                v46 = 2114;
                v47 = v25;
                _os_log_impl(&dword_1DA7A9000, v26, OS_LOG_TYPE_DEFAULT, "Migrate directory from %{public}@ to %{public}@", buf, 0x16u);
              }

              v27 = [v4 stringByAppendingPathComponent:v25];
              v28 = [MEMORY[0x1E696AC08] defaultManager];
              v37 = 0;
              v29 = [v28 moveItemAtPath:v15 toPath:v27 error:&v37];
              v30 = v37;

              if ((v29 & 1) == 0)
              {
                v31 = *MEMORY[0x1E6983368];
                if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  v45 = v15;
                  v46 = 2114;
                  v47 = v27;
                  v48 = 2114;
                  v49 = v30;
                  _os_log_error_impl(&dword_1DA7A9000, v31, OS_LOG_TYPE_ERROR, "Could not move %{public}@ to %{public}@ as a part of library migration error: %{public}@", buf, 0x20u);
                }
              }

              v4 = v34;
            }

            v5 = MEMORY[0x1E6983368];
          }

          else
          {
            v24 = *v5;
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v45 = v11;
              _os_log_impl(&dword_1DA7A9000, v24, OS_LOG_TYPE_DEFAULT, "Do not migrate file %{public}@", buf, 0xCu);
            }

            v13 = 0;
          }

          v9 = v35;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v8);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_removeBundleLibrary
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__UNCBundleLibrarian__removeBundleLibrary__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __42__UNCBundleLibrarian__removeBundleLibrary__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = *(a1 + 32);
  v3 = a1 + 32;
  if ([v2 fileExistsAtPath:*(v4 + 8)])
  {
    v5 = *(*v3 + 8);
    v8 = 0;
    v6 = [v2 removeItemAtPath:v5 error:&v8];
    v7 = v8;
    if ((v6 & 1) == 0 && os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
    {
      __42__UNCBundleLibrarian__removeBundleLibrary__block_invoke_cold_1(v3);
    }
  }
}

- (id)_queue_bundleIdentifierForUniqueIdentifier:(id)a3
{
  v4 = a3;
  [(UNCBundleLibrarian *)self _queue_loadBundleLibraryIfNeeded];
  v5 = [(NSMutableDictionary *)self->_uuidToBundleMap objectForKey:v4];

  return v5;
}

- (id)_queue_uniqueIdentifierForBundleIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UNCBundleLibrarian *)self _queue_loadBundleLibraryIfNeeded];
  v5 = [(NSMutableDictionary *)self->_bundleToUUIDMap objectForKey:v4];
  v6 = v5;
  if (v4 && !v5)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v7 UUIDString];

    v8 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = v4;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "No unique identifier for bundleID %{public}@ found; adding a mapping to %{public}@", &v11, 0x16u);
    }

    [(UNCBundleLibrarian *)self _queue_addEntryForBundleIdentifier:v4 uniqueIdentifier:v6];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_queue_loadBundleLibrary
{
  v3 = [(UNCBundleLibrarian *)self _queue_dictionaryAtPath:self->_bundleLibraryPath];
  v4 = [v3 mutableCopy];
  bundleToUUIDMap = self->_bundleToUUIDMap;
  self->_bundleToUUIDMap = v4;

  v6 = self->_bundleToUUIDMap;
  if (v6)
  {
    v18 = [(NSMutableDictionary *)v6 allKeys];
    v7 = self->_bundleToUUIDMap;
    v8 = [MEMORY[0x1E695DFB0] null];
    v9 = [(NSMutableDictionary *)v7 objectsForKeys:v18 notFoundMarker:v8];

    v10 = [MEMORY[0x1E695DF90] dictionaryWithObjects:v18 forKeys:v9];
    uuidToBundleMap = self->_uuidToBundleMap;
    self->_uuidToBundleMap = v10;
  }

  else
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = self->_bundleToUUIDMap;
    self->_bundleToUUIDMap = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    v15 = self->_uuidToBundleMap;
    self->_uuidToBundleMap = v14;

    bundleLibraryPath = self->_bundleLibraryPath;
    v16 = self->_bundleToUUIDMap;

    [(UNCBundleLibrarian *)self _queue_saveDictionary:v16 atPath:bundleLibraryPath];
  }
}

- (void)_queue_addEntryForBundleIdentifier:(id)a3 uniqueIdentifier:(id)a4
{
  bundleToUUIDMap = self->_bundleToUUIDMap;
  v7 = a4;
  v8 = a3;
  [(NSMutableDictionary *)bundleToUUIDMap setObject:v7 forKey:v8];
  [(NSMutableDictionary *)self->_uuidToBundleMap setObject:v8 forKey:v7];

  bundleLibraryPath = self->_bundleLibraryPath;
  v9 = self->_bundleToUUIDMap;

  [(UNCBundleLibrarian *)self _queue_saveDictionary:v9 atPath:bundleLibraryPath];
}

- (void)_queue_removeEntryForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UNCBundleLibrarian *)self _queue_uniqueIdentifierForBundleIdentifier:v4];
  [(NSMutableDictionary *)self->_bundleToUUIDMap removeObjectForKey:v4];

  [(NSMutableDictionary *)self->_uuidToBundleMap removeObjectForKey:v5];
  [(UNCBundleLibrarian *)self _queue_saveDictionary:self->_bundleToUUIDMap atPath:self->_bundleLibraryPath];
}

- (id)_queue_dictionaryAtPath:(id)a3
{
  v4 = a3;
  v5 = [(UNCBundleLibrarian *)self _queue_dataAtPath:v4];
  if (!v5)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v6 = MEMORY[0x1E696ACD0];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:0];

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = *MEMORY[0x1E6983368];
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [(UNCBundleLibrarian *)v11 _queue_dictionaryAtPath:v10, v4];
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v10;
}

- (id)_queue_dataAtPath:(id)a3
{
  v3 = a3;
  v7 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3 options:0 error:&v7];
  v5 = v7;
  if (!v4 && os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
  {
    [UNCBundleLibrarian _queue_dataAtPath:];
  }

  return v4;
}

- (BOOL)_queue_saveDictionary:(id)a3 atPath:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E6983368];
  v8 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543618;
    v26 = v6;
    v27 = 2048;
    v28 = [v5 count];
    _os_log_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_DEFAULT, "Saving file at %{public}@ with %lu items", buf, 0x16u);
  }

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v6 stringByDeletingLastPathComponent];
  if (([v10 fileExistsAtPath:v11] & 1) == 0)
  {
    v24 = 0;
    v12 = [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v24];
    v13 = v24;
    if ((v12 & 1) == 0 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      [UNCBundleLibrarian _queue_saveDictionary:atPath:];
    }
  }

  v23 = 0;
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v23];
  v15 = v23;
  v16 = v15;
  if (v14)
  {
    v22 = v15;
    v17 = [v14 writeToFile:v6 options:268435457 error:&v22];
    v18 = v22;

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
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      [UNCBundleLibrarian _queue_saveDictionary:atPath:];
    }

    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)_isUUIDString:(id)a3
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  return v5 != 0;
}

void __62__UNCBundleLibrarian_migrateLibraryFromDirectory_toDirectory___block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v1;
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v1, v2, "Could not remove %{public}@ in cleanup after library migration error: %{public}@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x1E69E9840];
}

void __42__UNCBundleLibrarian__removeBundleLibrary__block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(*a1 + 8);
  OUTLINED_FUNCTION_2_0();
  *v5 = v1;
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v1, v2, "Could not remove bundle library at %{public}@; error: %{public}@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_queue_dictionaryAtPath:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = a2;
    OUTLINED_FUNCTION_2_0();
    v8 = v3;
    _os_log_error_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_ERROR, "Exception caught data at %{public}@; exception: %{public}@", &v6, 0x16u);
  }

  objc_end_catch();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_queue_dictionaryAtPath:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
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

- (void)_queue_dataAtPath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "No data found at %{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_queue_saveDictionary:atPath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "Could not create directory at %{public}@; error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_queue_saveDictionary:(uint64_t)a3 atPath:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_begin_catch(a1);
  v5 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
  {
    v7 = 138543618;
    v8 = a3;
    OUTLINED_FUNCTION_2_0();
    v9 = v4;
    _os_log_error_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_ERROR, "Unable to archive objects at %{public}@: %{public}@", &v7, 0x16u);
  }

  objc_end_catch();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_queue_saveDictionary:atPath:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "Could not write objects to %{public}@; error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_queue_saveDictionary:atPath:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "Could not encode object data at %{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end