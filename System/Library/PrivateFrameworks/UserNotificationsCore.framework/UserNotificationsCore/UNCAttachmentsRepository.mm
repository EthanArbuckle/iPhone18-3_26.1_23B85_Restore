@interface UNCAttachmentsRepository
+ (id)_sha1HashOfFileAtURL:(id)a3;
- (BOOL)isRepositoryURL:(id)a3;
- (BOOL)isValidRepositoryURL:(id)a3 forBundleIdentifier:(id)a4;
- (UNCAttachmentsRepository)initWithDirectory:(id)a3 librarian:(id)a4;
- (id)_attachmentDirectoryForBundleIdentifier:(id)a3;
- (id)_claimedRepositoryURLsForBundleIdentifier:(id)a3;
- (id)_fileURLForDigestString:(id)a3 extension:(id)a4 bundleIdentifier:(id)a5;
- (id)bundleIdentifiersClaimingAttachments;
- (id)moveFileIntoRepositoryFromFileURL:(id)a3 forNotificationIdentifier:(id)a4 bundleIdentifier:(id)a5;
- (unint64_t)_addReferencesToRepositoryURL:(id)a3 forNotificationIdentifier:(id)a4 bundleIdentifier:(id)a5;
- (unint64_t)_removeReferencesToRepositoryURL:(id)a3 forNotificationIdentifier:(id)a4 bundleIdentifier:(id)a5;
- (unint64_t)_transformNotificationIdentifiersForRepositoryURL:(id)a3 bundleIdentifier:(id)a4 usingTransformBlock:(id)a5;
- (void)_performAttachmentFilesMigration;
- (void)_performAttachmentRepositoryKeyMigration;
- (void)_removeRepositoryURL:(id)a3;
- (void)_transformAttachmentsForBundleIdentifier:(id)a3 usingTransformBlock:(id)a4;
- (void)deleteAllFilesForBundleIdentifier:(id)a3;
- (void)ensureIntegrityUsingNotificationIdentifiersForBundleIdentifiers:(id)a3;
- (void)performMigration;
- (void)removeReferenceToRepositoryURL:(id)a3 forNotificationIdentifier:(id)a4 bundleIdentifier:(id)a5;
@end

@implementation UNCAttachmentsRepository

- (UNCAttachmentsRepository)initWithDirectory:(id)a3 librarian:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UNCAttachmentsRepository;
  v8 = [(UNCAttachmentsRepository *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    directoryURL = v8->_directoryURL;
    v8->_directoryURL = v9;

    objc_storeStrong(&v8->_librarian, a4);
    v11 = [[UNCKeyedDictionaryRepository alloc] initWithDirectory:v6 fileName:@"AttachmentsList" pathExtension:@"plist" librarian:v7];
    referencesRepository = v8->_referencesRepository;
    v8->_referencesRepository = v11;
  }

  return v8;
}

- (id)bundleIdentifiersClaimingAttachments
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 contentsOfDirectoryAtURL:self->_directoryURL includingPropertiesForKeys:0 options:0 error:0];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__UNCAttachmentsRepository_bundleIdentifiersClaimingAttachments__block_invoke;
  v9[3] = &unk_1E85D7978;
  v10 = v5;
  v11 = self;
  v6 = v5;
  v7 = [v4 bs_mapNoNulls:v9];

  return v7;
}

id __64__UNCAttachmentsRepository_bundleIdentifiersClaimingAttachments__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 URLByAppendingPathComponent:@"Attachments"];
  v5 = *(a1 + 32);
  v6 = [v4 path];
  LODWORD(v5) = [v5 fileExistsAtPath:v6];

  if (v5)
  {
    v7 = *(*(a1 + 40) + 24);
    v8 = [v3 lastPathComponent];
    v9 = [v7 bundleIdentifierForUniqueIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_claimedRepositoryURLsForBundleIdentifier:(id)a3
{
  v3 = [(UNCAttachmentsRepository *)self _attachmentDirectoryForBundleIdentifier:a3];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:0 error:0];

  v6 = [v5 bs_mapNoNulls:&__block_literal_global_15];

  return v6;
}

- (BOOL)isRepositoryURL:(id)a3
{
  v8 = 2;
  v4 = MEMORY[0x1E696AC08];
  v5 = a3;
  v6 = [v4 defaultManager];
  [v6 getRelationship:&v8 ofDirectoryAtURL:self->_directoryURL toItemAtURL:v5 error:0];

  return v8 == 0;
}

- (BOOL)isValidRepositoryURL:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v6 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = [(UNCAttachmentsRepository *)self _attachmentDirectoryForBundleIdentifier:v7];
    v14 = 2;
    [v8 getRelationship:&v14 ofDirectoryAtURL:v11 toItemAtURL:v6 error:0];
    v12 = v14 == 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)moveFileIntoRepositoryFromFileURL:(id)a3 forNotificationIdentifier:(id)a4 bundleIdentifier:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_opt_class() _sha1HashOfFileAtURL:v8];
  if (v11)
  {
    v35 = v9;
    v12 = [MEMORY[0x1E696AEC0] unc_stringWithDigestOfSHA1Hash:v11];
    v13 = [v8 pathExtension];
    v34 = v12;
    v14 = [(UNCAttachmentsRepository *)self _fileURLForDigestString:v12 extension:v13 bundleIdentifier:v10];
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [v14 path];
    v17 = [v15 fileExistsAtPath:v16];

    if (v17)
    {
      v18 = *MEMORY[0x1E6983340];
      if (os_log_type_enabled(*MEMORY[0x1E6983340], OS_LOG_TYPE_ERROR))
      {
        [UNCAttachmentsRepository moveFileIntoRepositoryFromFileURL:v8 forNotificationIdentifier:v18 bundleIdentifier:?];
      }

      v19 = [MEMORY[0x1E696AC08] defaultManager];
      [v19 removeItemAtURL:v8 error:0];

      v20 = v14;
      goto LABEL_20;
    }

    v22 = [(UNCAttachmentsRepository *)self _attachmentDirectoryForBundleIdentifier:v10];
    v23 = [MEMORY[0x1E696AC08] defaultManager];
    [v23 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:0];

    v24 = *MEMORY[0x1E695DB80];
    v37 = 0;
    LOBYTE(v23) = [v22 setResourceValue:MEMORY[0x1E695E118] forKey:v24 error:&v37];
    v25 = v37;
    if ((v23 & 1) == 0 && os_log_type_enabled(*MEMORY[0x1E6983340], OS_LOG_TYPE_ERROR))
    {
      [UNCFileHandleContentProtectionStrategy _excludeItemFromBackupAtPath:];
    }

    v26 = [MEMORY[0x1E696AC08] defaultManager];
    v36 = v25;
    v27 = [v26 moveItemAtURL:v8 toURL:v14 error:&v36];
    v33 = v36;

    if (v27)
    {
      v9 = v35;
      v28 = [(UNCAttachmentsRepository *)self _addReferencesToRepositoryURL:v14 forNotificationIdentifier:v35 bundleIdentifier:v10];
      v29 = *MEMORY[0x1E6983340];
      if (os_log_type_enabled(*MEMORY[0x1E6983340], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v39 = v14;
        v40 = 2112;
        v41 = v35;
        v42 = 2048;
        v43 = v28;
        _os_log_impl(&dword_1DA7A9000, v29, OS_LOG_TYPE_DEFAULT, "Added reference to repository URL '%@' for notification identifier '%@' (refcount %lu)", buf, 0x20u);
      }

      v20 = v14;
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x1E6983340], OS_LOG_TYPE_ERROR))
      {
        v30 = v33;
        [UNCAttachmentsRepository moveFileIntoRepositoryFromFileURL:forNotificationIdentifier:bundleIdentifier:];
        v20 = 0;
        v9 = v35;
        goto LABEL_19;
      }

      v20 = 0;
      v9 = v35;
    }

    v30 = v33;
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v21 = *MEMORY[0x1E6983340];
  if (os_log_type_enabled(*MEMORY[0x1E6983340], OS_LOG_TYPE_ERROR))
  {
    [UNCAttachmentsRepository moveFileIntoRepositoryFromFileURL:v8 forNotificationIdentifier:v21 bundleIdentifier:?];
  }

  v20 = 0;
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)removeReferenceToRepositoryURL:(id)a3 forNotificationIdentifier:(id)a4 bundleIdentifier:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(UNCAttachmentsRepository *)self isValidRepositoryURL:v8 forBundleIdentifier:v10])
  {
    v11 = [(UNCAttachmentsRepository *)self _removeReferencesToRepositoryURL:v8 forNotificationIdentifier:v9 bundleIdentifier:v10];
    if (!v11)
    {
      [(UNCAttachmentsRepository *)self _removeRepositoryURL:v8];
    }

    v12 = *MEMORY[0x1E6983340];
    if (os_log_type_enabled(*MEMORY[0x1E6983340], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_DEFAULT, "Removed reference to repository URL '%@' for notification identifier '%@' (refcount %lu)", &v15, 0x20u);
    }
  }

  else
  {
    v13 = *MEMORY[0x1E6983340];
    if (os_log_type_enabled(*MEMORY[0x1E6983340], OS_LOG_TYPE_ERROR))
    {
      [UNCAttachmentsRepository removeReferenceToRepositoryURL:v8 forNotificationIdentifier:v9 bundleIdentifier:v13];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_removeRepositoryURL:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E6983340];
  if (os_log_type_enabled(*MEMORY[0x1E6983340], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_DEFAULT, "Removing repository URL '%@' as no notifications reference it", &v7, 0xCu);
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  [v5 removeItemAtURL:v3 error:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllFilesForBundleIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6983340];
  if (os_log_type_enabled(*MEMORY[0x1E6983340], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "Removing all attachments for bundle '%@'", &v9, 0xCu);
  }

  [(UNCAttachmentsRepository *)self _removeAllReferencesForBundleIdentifier:v4];
  v6 = [(UNCAttachmentsRepository *)self _attachmentDirectoryForBundleIdentifier:v4];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  [v7 removeItemAtURL:v6 error:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_addReferencesToRepositoryURL:(id)a3 forNotificationIdentifier:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__UNCAttachmentsRepository__addReferencesToRepositoryURL_forNotificationIdentifier_bundleIdentifier___block_invoke;
  v12[3] = &unk_1E85D79C0;
  v13 = v8;
  v9 = v8;
  v10 = [(UNCAttachmentsRepository *)self _transformNotificationIdentifiersForRepositoryURL:a3 bundleIdentifier:a5 usingTransformBlock:v12];

  return v10;
}

- (unint64_t)_removeReferencesToRepositoryURL:(id)a3 forNotificationIdentifier:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__UNCAttachmentsRepository__removeReferencesToRepositoryURL_forNotificationIdentifier_bundleIdentifier___block_invoke;
  v12[3] = &unk_1E85D79C0;
  v13 = v8;
  v9 = v8;
  v10 = [(UNCAttachmentsRepository *)self _transformNotificationIdentifiersForRepositoryURL:a3 bundleIdentifier:a5 usingTransformBlock:v12];

  return v10;
}

id __104__UNCAttachmentsRepository__removeReferencesToRepositoryURL_forNotificationIdentifier_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 removeObject:*(a1 + 32)];

  return v3;
}

- (void)_transformAttachmentsForBundleIdentifier:(id)a3 usingTransformBlock:(id)a4
{
  v13 = a3;
  referencesRepository = self->_referencesRepository;
  v7 = a4;
  v8 = [(UNCKeyedDictionaryRepository *)referencesRepository dictionaryForKey:v13];
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF20] dictionary];
  }

  v9 = v7[2](v7, v8);

  v10 = [v9 copy];
  v11 = [v10 count];
  v12 = self->_referencesRepository;
  if (v11)
  {
    [(UNCKeyedDictionaryRepository *)v12 setDictionary:v10 forKey:v13];
  }

  else
  {
    [(UNCKeyedDictionaryRepository *)v12 removeDictionaryForKey:v13];
  }
}

- (unint64_t)_transformNotificationIdentifiersForRepositoryURL:(id)a3 bundleIdentifier:(id)a4 usingTransformBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __115__UNCAttachmentsRepository__transformNotificationIdentifiersForRepositoryURL_bundleIdentifier_usingTransformBlock___block_invoke;
  v15[3] = &unk_1E85D7A08;
  v11 = v8;
  v16 = v11;
  v12 = v10;
  v17 = v12;
  v18 = &v19;
  [(UNCAttachmentsRepository *)self _transformAttachmentsForBundleIdentifier:v9 usingTransformBlock:v15];
  v13 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v13;
}

id __115__UNCAttachmentsRepository__transformNotificationIdentifiersForRepositoryURL_bundleIdentifier_usingTransformBlock___block_invoke(void *a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [v3 objectForKey:a1[4]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  v7 = v6;

  v8 = (*(a1[5] + 16))();
  v9 = [v8 copy];

  *(*(a1[6] + 8) + 24) = [v9 count];
  if (*(*(a1[6] + 8) + 24))
  {
    [v3 setObject:v9 forKey:a1[4]];
  }

  else
  {
    [v3 removeObjectForKey:a1[4]];
  }

  return v3;
}

- (void)performMigration
{
  [(UNCAttachmentsRepository *)self _performAttachmentFilesMigration];

  [(UNCAttachmentsRepository *)self _performAttachmentRepositoryKeyMigration];
}

- (void)_performAttachmentFilesMigration
{
  v46[4] = *MEMORY[0x1E69E9840];
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  v46[0] = v3;
  v46[1] = @"SpringBoard";
  v46[2] = @"PushStore";
  v46[3] = @"Attachments";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:v4];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:0 error:0];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v5 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v30 = v5;
    v31 = v4;
    v32 = v3;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v7;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    v12 = MEMORY[0x1E6983380];
    if (v11)
    {
      v13 = v11;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v18 = [v16 lastPathComponent];
          v19 = [(NSURL *)self->_directoryURL URLByAppendingPathComponent:v18];
          v20 = [v19 URLByAppendingPathComponent:@"Attachments"];

          v21 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v42 = v16;
            v43 = 2114;
            v44 = v20;
            _os_log_impl(&dword_1DA7A9000, v21, OS_LOG_TYPE_DEFAULT, "Move attachments directory from '%{public}@' to '%{public}@'", buf, 0x16u);
          }

          v36 = 0;
          v22 = [v8 moveItemAtURL:v16 toURL:v20 error:&v36];
          v23 = v36;
          if ((v22 & 1) == 0)
          {
            v24 = *v12;
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v42 = v20;
              v43 = 2114;
              v44 = v23;
              _os_log_impl(&dword_1DA7A9000, v24, OS_LOG_TYPE_DEFAULT, "Moving attachment bundle directory to '%{public}@' failed: %{public}@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v17);
        }

        v13 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v13);
    }

    v35 = 0;
    v5 = v30;
    v25 = [v8 removeItemAtURL:v30 error:&v35];
    v26 = v35;
    if ((v25 & 1) == 0)
    {
      v27 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v42 = v30;
        v43 = 2114;
        v44 = v26;
        _os_log_impl(&dword_1DA7A9000, v27, OS_LOG_TYPE_DEFAULT, "Removing attachments directory '%{public}@' failed: %{public}@", buf, 0x16u);
      }
    }

    v4 = v31;
    v3 = v32;
    v7 = v29;
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_performAttachmentRepositoryKeyMigration
{
  v46 = *MEMORY[0x1E69E9840];
  v28 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  [(NSURL *)self->_directoryURL path];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = v43 = 0u;
  v32 = v3;
  obj = [v3 enumeratorAtPath:?];
  v4 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v31 stringByAppendingPathComponent:v8];
        v11 = [v10 stringByAppendingPathComponent:@"AttachmentsList"];
        v12 = [v11 stringByAppendingPathExtension:@"plist"];

        if ([v32 fileExistsAtPath:v12])
        {
          [v28 addObject:v8];
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v5);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = v28;
  v13 = [v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    obja = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != obja)
        {
          objc_enumerationMutation(v27);
        }

        v16 = *(*(&v36 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        v18 = [(UNCBundleLibrarian *)self->_librarian bundleIdentifierForUniqueIdentifier:v16];
        if (v18)
        {
          v19 = [(UNCAttachmentsRepository *)self _attachmentDirectoryForBundleIdentifier:v18];
          v20 = [(UNCKeyedDictionaryRepository *)self->_referencesRepository dictionaryForKey:v18];
          v21 = [MEMORY[0x1E695DF90] dictionary];
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __68__UNCAttachmentsRepository__performAttachmentRepositoryKeyMigration__block_invoke;
          v33[3] = &unk_1E85D7A30;
          v34 = v19;
          v35 = v21;
          v22 = v21;
          v23 = v19;
          [v20 enumerateKeysAndObjectsUsingBlock:v33];
          referencesRepository = self->_referencesRepository;
          v25 = [v22 copy];
          [(UNCKeyedDictionaryRepository *)referencesRepository setDictionary:v25 forKey:v18];
        }

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v14 != v15);
      v14 = [v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v14);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __68__UNCAttachmentsRepository__performAttachmentRepositoryKeyMigration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = [a2 lastPathComponent];
  v6 = [*(a1 + 32) URLByAppendingPathComponent:v7];
  [*(a1 + 40) setObject:v5 forKey:v6];
}

- (void)ensureIntegrityUsingNotificationIdentifiersForBundleIdentifiers:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCAttachmentsRepository *)self bundleIdentifiersClaimingAttachments];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        v12 = v11;
        if (v11)
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __92__UNCAttachmentsRepository_ensureIntegrityUsingNotificationIdentifiersForBundleIdentifiers___block_invoke;
          v14[3] = &unk_1E85D7A80;
          v14[4] = self;
          v14[5] = v10;
          v15 = v11;
          [(UNCAttachmentsRepository *)self _transformAttachmentsForBundleIdentifier:v10 usingTransformBlock:v14];
        }

        else
        {
          [(UNCAttachmentsRepository *)self deleteAllFilesForBundleIdentifier:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

id __92__UNCAttachmentsRepository_ensureIntegrityUsingNotificationIdentifiersForBundleIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _claimedRepositoryURLsForBundleIdentifier:*(a1 + 40)];
  v22 = [MEMORY[0x1E695DF90] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        if ([v4 containsObject:v10])
        {
          v11 = [v5 objectForKey:v10];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __92__UNCAttachmentsRepository_ensureIntegrityUsingNotificationIdentifiersForBundleIdentifiers___block_invoke_2;
          v27[3] = &unk_1E85D7A58;
          v28 = *(a1 + 48);
          v12 = [v11 bs_filter:v27];
          if ([v12 count])
          {
            [v22 setObject:v12 forKey:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v13 = [v22 allKeys];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        if (([v13 containsObject:v19] & 1) == 0)
        {
          [*(a1 + 32) _removeRepositoryURL:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)_fileURLForDigestString:(id)a3 extension:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(UNCAttachmentsRepository *)self _attachmentDirectoryForBundleIdentifier:a5];
  v11 = [v10 URLByAppendingPathComponent:v9];

  v12 = [v11 URLByAppendingPathExtension:v8];

  return v12;
}

- (id)_attachmentDirectoryForBundleIdentifier:(id)a3
{
  v4 = [(UNCBundleLibrarian *)self->_librarian uniqueIdentifierForBundleIdentifier:a3];
  v5 = [(NSURL *)self->_directoryURL URLByAppendingPathComponent:v4 isDirectory:1];
  v6 = [v5 URLByAppendingPathComponent:@"Attachments"];

  return v6;
}

+ (id)_sha1HashOfFileAtURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v3 error:0];
  if (v4)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v13 = 0;
    v5 = [v4 readDataUpToLength:1024 error:&v13];
    v6 = v13;
    v7 = v6;
    if (v5)
    {
      while ([v5 length])
      {
        CC_SHA1_Update(&c, [v5 bytes], objc_msgSend(v5, "length"));
        v13 = 0;
        v8 = [v4 readDataUpToLength:1024 error:&v13];
        v9 = v13;

        v7 = v9;
        v5 = v8;
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      v11 = [MEMORY[0x1E695DF88] dataWithLength:20];
      CC_SHA1_Final([v11 mutableBytes], &c);
    }

    else
    {
      v9 = v6;
LABEL_8:
      if (os_log_type_enabled(*MEMORY[0x1E6983340], OS_LOG_TYPE_ERROR))
      {
        +[UNCAttachmentsRepository _sha1HashOfFileAtURL:];
      }

      v5 = 0;
      v11 = 0;
      v7 = v9;
    }

    [v4 closeFile];
    v10 = [v11 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)moveFileIntoRepositoryFromFileURL:forNotificationIdentifier:bundleIdentifier:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "File at '%@' was not moved into the repository correctly, error=%{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)moveFileIntoRepositoryFromFileURL:(uint64_t)a1 forNotificationIdentifier:(NSObject *)a2 bundleIdentifier:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "File at '%@' already exists in the repository", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)moveFileIntoRepositoryFromFileURL:(uint64_t)a1 forNotificationIdentifier:(NSObject *)a2 bundleIdentifier:.cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "Could not hash file at '%@'", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)removeReferenceToRepositoryURL:(uint64_t)a1 forNotificationIdentifier:(uint64_t)a2 bundleIdentifier:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, a2, a3, "Attempted to remove reference for repository URL '%@' for notification identifier '%@' but this isn't in the repository", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)_sha1HashOfFileAtURL:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "Could not read file at '%{public}@': error=%{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end