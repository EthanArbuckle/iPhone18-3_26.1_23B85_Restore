@interface PLEmailAddressManager
- (PLEmailAddressManager)initWithPathManager:(id)a3 lazyAssetsdClient:(id)a4;
- (id)emailAddressForKey:(id)a3;
- (id)keyForEmailAddress:(id)a3;
- (void)_loadDictionariesIfNeeded;
@end

@implementation PLEmailAddressManager

- (void)_loadDictionariesIfNeeded
{
  if (!self->_keysForEmails)
  {
    v18 = v2;
    v19 = v3;
    if ([MEMORY[0x1E69BF2F0] isEntitledForPhotoKit])
    {
      v5 = MEMORY[0x1E695DF20];
      v6 = [(PLEmailAddressManager *)self plistPath];
      v7 = [v5 dictionaryWithContentsOfFile:v6];
      v8 = [v7 mutableCopy];
      keysForEmails = self->_keysForEmails;
      self->_keysForEmails = v8;
    }

    else
    {
      v10 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Could not read dictionary; missing required entitlement", buf, 2u);
      }
    }

    if (!self->_keysForEmails)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = self->_keysForEmails;
      self->_keysForEmails = v11;
    }

    self->_maxKey = 1;
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_keysForEmails, "count")}];
    emailsForKey = self->_emailsForKey;
    self->_emailsForKey = v13;

    v15 = self->_keysForEmails;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__PLEmailAddressManager__loadDictionariesIfNeeded__block_invoke;
    v16[3] = &unk_1E75746B8;
    v16[4] = self;
    [(NSMutableDictionary *)v15 enumerateKeysAndObjectsUsingBlock:v16];
  }
}

void __50__PLEmailAddressManager__loadDictionariesIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 intValue];
  v7 = *(a1 + 32);
  if (v6 > *(v7 + 24))
  {
    *(v7 + 24) = v6;
    v7 = *(a1 + 32);
  }

  v8 = *(v7 + 16);
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  [v8 setObject:v5 forKey:v9];
}

- (id)emailAddressForKey:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4 || [v4 intValue] == -1)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v6 = self;
  objc_sync_enter(v6);
  [(PLEmailAddressManager *)v6 _loadDictionariesIfNeeded];
  v7 = [(NSMutableDictionary *)v6->_emailsForKey objectForKey:v5];
  objc_sync_exit(v6);

  if (!v7)
  {
    if (PLIsAssetsd())
    {
      v8 = v6;
      objc_sync_enter(v8);
      v7 = [(NSMutableDictionary *)v6->_emailsForKey objectForKey:v5];
      objc_sync_exit(v8);
    }

    else
    {
      v9 = [(PLEmailAddressManager *)v6 assetsdClient];
      v10 = [v9 cloudInternalClient];
      v15 = 0;
      v7 = [v10 emailAddressForKey:objc_msgSend(v5 error:{"intValue"), &v15}];
      v11 = v15;

      if (v7)
      {
        v12 = v6;
        objc_sync_enter(v12);
        [(objc_class *)v12[1].isa setObject:v5 forKey:v7];
        [(NSMutableDictionary *)v6->_emailsForKey setObject:v7 forKey:v5];
        objc_sync_exit(v12);
      }

      else
      {
        v12 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v17 = v5;
          v18 = 2112;
          v19 = v11;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Error getting email address from key: %@, error: %@", buf, 0x16u);
        }
      }
    }

    if (!v7)
    {
      v13 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Could not find email address for key %@", buf, 0xCu);
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  return v7;
}

- (id)keyForEmailAddress:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = 0;
    goto LABEL_27;
  }

  v5 = self;
  objc_sync_enter(v5);
  [(PLEmailAddressManager *)v5 _loadDictionariesIfNeeded];
  v6 = [(NSMutableDictionary *)v5->_keysForEmails objectForKey:v4];
  objc_sync_exit(v5);

  if (!v6)
  {
    if (PLIsAssetsd())
    {
      v7 = v5;
      objc_sync_enter(v7);
      v6 = [(NSMutableDictionary *)v5->_keysForEmails objectForKey:v4];
      if (!v6)
      {
        v8 = MEMORY[0x1E696AD98];
        ++v7->_maxKey;
        v6 = [v8 numberWithInt:?];
        [(NSMutableDictionary *)v5->_keysForEmails setObject:v6 forKey:v4];
        [(NSMutableDictionary *)v7->_emailsForKey setObject:v4 forKey:v6];
        v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5->_keysForEmails format:100 options:0 error:0];
        v10 = [(PLEmailAddressManager *)v7 plistPath];
        if (([v9 writeToFile:v10 options:1073741825 error:0] & 1) == 0)
        {
          v11 = objc_opt_new();
          v12 = [(PLEmailAddressManager *)v10 stringByDeletingLastPathComponent];
          v25 = 0;
          v13 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v25];
          v14 = v25;

          if (!v13 || (v24 = v14, v15 = [v9 writeToFile:v10 options:1073741825 error:&v24], v16 = v24, v14, v14 = v16, (v15 & 1) == 0))
          {
            v17 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v28 = v10;
              v29 = 2112;
              v30 = v14;
              _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "##### Failed to write %@ at %@", buf, 0x16u);
            }
          }
        }
      }

      objc_sync_exit(v7);
      goto LABEL_22;
    }

    v18 = [(PLEmailAddressManager *)v5 assetsdClient];
    v19 = [v18 cloudInternalClient];
    v26 = 0;
    v20 = [v19 keyForEmailAddress:v4 error:&v26];
    v7 = v26;

    if (v7)
    {
      v21 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v7;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Error getting key from email address: %@", buf, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      if (v20 == -1)
      {
        v6 = 0;
        goto LABEL_22;
      }

      v6 = [MEMORY[0x1E696AD98] numberWithInt:v20];
      v21 = v5;
      objc_sync_enter(v21);
      [(NSMutableDictionary *)v5->_keysForEmails setObject:v6 forKey:v4];
      [(objc_class *)v21[2].isa setObject:v4 forKey:v6];
      objc_sync_exit(v21);
    }

LABEL_22:
  }

  if ([v6 intValue] == -1)
  {
    v22 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Returning invalid keyValue of -1", buf, 2u);
    }
  }

LABEL_27:

  return v6;
}

- (PLEmailAddressManager)initWithPathManager:(id)a3 lazyAssetsdClient:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLEmailAddressManager.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PLEmailAddressManager.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"lazyAssetsdClient"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = PLEmailAddressManager;
  v11 = [(PLEmailAddressManager *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pathManager, a3);
    objc_storeStrong(&v12->_lazyAssetsdClient, a4);
  }

  return v12;
}

@end