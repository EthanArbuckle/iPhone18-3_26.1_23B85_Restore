@interface PFClientSideEncryptionManager
+ (void)applyOptions:(id)a3 toArchive:(id)a4;
- (BOOL)archiveFileAtURL:(id)a3 outputFileURL:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)createKeychainEntryReturningKeyData:(id *)a3 keyInfo:(id *)a4;
- (BOOL)findExistingKeychainEntryReturningKeyData:(id *)a3 keyInfo:(id *)a4;
- (BOOL)unarchiveDirectoryAtURL:(id)a3 error:(id *)a4;
- (BOOL)unarchiveFileAtURL:(id)a3 outputFileURL:(id)a4 error:(id *)a5;
- (PFClientSideEncryptionManager)initWithProfile:(id)a3;
- (id)configurationForProfile:(id)a3;
- (void)archiveDirectoryAtURL:(id)a3 toOutputURL:(id)a4 dataType:(int64_t)a5 options:(id)a6 entryPredicate:(id)a7 completionHandler:(id)a8;
- (void)shutdownWithCompletionHandler:(id)a3;
- (void)start;
@end

@implementation PFClientSideEncryptionManager

- (BOOL)unarchiveFileAtURL:(id)a3 outputFileURL:(id)a4 error:(id *)a5
{
  v54[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  if (state == 4)
  {
    v11 = [(PFAppleArchiveStream *)[PFAppleArchive alloc] initWithArchiveURL:v8];
    [(PFAppleArchiveStream *)v11 setEncryptionKey:self->_keyData];
    v12 = [(PFAppleArchive *)v11 openForReading:a5];
    v13 = [(NSDictionary *)self->_keyMetadata objectForKeyedSubscript:@"key-creation-date"];
    v14 = [(PFAppleArchiveStream *)v11 encryptedArchiveMetadata];
    v15 = [v14 objectForKeyedSubscript:@"com.apple.photos.backend.client-side-encryption.key-creation-date"];
    v16 = [v14 objectForKeyedSubscript:@"com.apple.photos.backend.client-side-encryption.version"];
    v17 = v16;
    if (!v12)
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        v32 = *a5;
        *buf = 138544130;
        *v47 = v17;
        *&v47[8] = 2114;
        *v48 = v13;
        *&v48[8] = 2114;
        *v49 = v15;
        *&v49[8] = 2112;
        *v50 = v32;
        _os_log_error_impl(&dword_1B35C1000, logHandle, OS_LOG_TYPE_ERROR, "Failed to open single file encrypted archive, version=%{public}@, keychain item creation date=%{public}@, archive key creation date=%{public}@, error: %@", buf, 0x2Au);
      }

      v26 = 0;
      goto LABEL_24;
    }

    v35 = v8;
    v18 = v15;
    v37 = v16;
    v40 = v9;
    context = objc_autoreleasePoolPush();
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v19 = [(PFAppleArchive *)v11 decodeData:&v45 filename:&v44 error:&v43];
    v39 = v45;
    v38 = v44;
    v20 = v43;
    v42 = v20;
    v21 = [(PFAppleArchive *)v11 close:&v42];
    v22 = v42;

    v34 = v19;
    if (v19 && v21)
    {
      v33 = v18;
      v41 = v22;
      v23 = [v39 writeToURL:v40 options:1 error:&v41];
      v24 = v41;

      if (v23)
      {
        v25 = self->_logHandle;
        v17 = v37;
        v8 = v35;
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = 1;
          v9 = v40;
          v15 = v33;
          goto LABEL_20;
        }

        *buf = 138413058;
        *v47 = v38;
        *&v47[8] = 2114;
        *v48 = v37;
        *&v48[8] = 2114;
        *v49 = v13;
        *&v49[8] = 2114;
        v15 = v33;
        *v50 = v33;
        _os_log_debug_impl(&dword_1B35C1000, v25, OS_LOG_TYPE_DEBUG, "Successfully unarchived single file encrypted archive, filename=%@, version=%{public}@, keychain item creation date=%{public}@, archive key creation date=%{public}@", buf, 0x2Au);
        v26 = 1;
LABEL_19:
        v9 = v40;
LABEL_20:

        objc_autoreleasePoolPop(context);
        if (a5 && !v26)
        {
          v30 = v24;
          *a5 = v24;
        }

LABEL_24:
        goto LABEL_25;
      }

      v15 = v18;
      v17 = v37;
    }

    else
    {
      v24 = v22;
      v17 = v37;
      v15 = v18;
    }

    v8 = v35;
    v29 = self->_logHandle;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110402;
      *v47 = v34;
      *&v47[4] = 1024;
      *&v47[6] = v21;
      *v48 = 2114;
      *&v48[2] = v17;
      *v49 = 2114;
      *&v49[2] = v13;
      *v50 = 2114;
      *&v50[2] = v15;
      v51 = 2112;
      v52 = v24;
      _os_log_error_impl(&dword_1B35C1000, v29, OS_LOG_TYPE_ERROR, "Failed to unarchive single file encrypted archive (didDecode=%d, didClose=%d), version=%{public}@, keychain item creation date=%{public}@, archive key creation date=%{public}@, error: %@", buf, 0x36u);
    }

    v26 = 0;
    goto LABEL_19;
  }

  if (a5)
  {
    v27 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A278];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid state %tu", self->_state];
    v54[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    [v27 errorWithDomain:@"com.apple.PhotosFormats" code:500101 userInfo:v13];
    *a5 = v26 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v26 = 0;
LABEL_26:

  return v26;
}

- (BOOL)archiveFileAtURL:(id)a3 outputFileURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v39[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  if (state == 4)
  {
    v14 = [(PFAppleArchiveStream *)[PFAppleArchive alloc] initWithArchiveURL:v11];
    [objc_opt_class() applyOptions:v12 toArchive:v14];
    [(PFAppleArchiveStream *)v14 setEncryptionKey:self->_keyData];
    v36[0] = @"com.apple.photos.backend.client-side-encryption.key-creation-date";
    v15 = [(NSDictionary *)self->_keyMetadata objectForKeyedSubscript:@"key-creation-date"];
    v16 = [v15 description];
    v36[1] = @"com.apple.photos.backend.client-side-encryption.version";
    v37[0] = v16;
    v17 = [&unk_1F2AAB488 stringValue];
    v37[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    [(PFAppleArchiveStream *)v14 setEncryptedArchiveMetadata:v18];

    if ([(PFAppleArchive *)v14 openForWriting:a6])
    {
      v19 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10 options:1 error:a6];
      if (v19)
      {
        v20 = [v10 lastPathComponent];
        v21 = [(PFAppleArchive *)v14 encodeData:v19 filename:v20 error:a6];

        if (v21 && [(PFAppleArchive *)v14 close:a6])
        {
          LOBYTE(a6) = 1;
LABEL_16:

          goto LABEL_17;
        }

        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          v26 = *a6;
          *buf = 67109378;
          LODWORD(v35[0]) = v21;
          WORD2(v35[0]) = 2112;
          *(v35 + 6) = v26;
          v27 = "Error archiving single file content (didEncode=%d). Error: %@";
          v28 = logHandle;
          v29 = 18;
LABEL_20:
          _os_log_error_impl(&dword_1B35C1000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
        }
      }

      else
      {
        v30 = self->_logHandle;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v33 = *a6;
          *buf = 138412290;
          v35[0] = v33;
          v27 = "Unable to read single-file encrypted archive input data: %@";
          v28 = v30;
          v29 = 12;
          goto LABEL_20;
        }
      }

      LOBYTE(a6) = 0;
      goto LABEL_16;
    }

    v24 = self->_logHandle;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v32 = *a6;
      *buf = 138412290;
      v35[0] = v32;
      _os_log_error_impl(&dword_1B35C1000, v24, OS_LOG_TYPE_ERROR, "Error opening archive for single file writing: %@", buf, 0xCu);
    }

LABEL_11:
    LOBYTE(a6) = 0;
LABEL_17:

    goto LABEL_18;
  }

  if (a6)
  {
    v22 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A278];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid state %tu", self->_state];
    v39[0] = v14;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    *a6 = [v22 errorWithDomain:@"com.apple.PhotosFormats" code:500101 userInfo:v23];

    goto LABEL_11;
  }

LABEL_18:

  return a6;
}

- (BOOL)unarchiveDirectoryAtURL:(id)a3 error:(id *)a4
{
  v43[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  if (state == 4)
  {
    v8 = [(PFAppleArchiveStream *)[PFAppleArchive alloc] initWithArchiveURL:v6];
    [(PFAppleArchiveStream *)v8 setEncryptionKey:self->_keyData];
    v33 = 0;
    v9 = [(PFAppleArchive *)v8 openForReading:&v33];
    v10 = v33;
    v30 = [(NSDictionary *)self->_keyMetadata objectForKeyedSubscript:@"key-creation-date"];
    v11 = [(PFAppleArchiveStream *)v8 encryptedArchiveMetadata];
    v12 = [v11 objectForKeyedSubscript:@"com.apple.photos.backend.client-side-encryption.key-creation-date"];
    v13 = [v11 objectForKeyedSubscript:@"com.apple.photos.backend.client-side-encryption.version"];
    if (v9)
    {
      v32 = v10;
      v29 = [(PFAppleArchive *)v8 decodeContentOfDirectoryWithError:&v32];
      v14 = v32;

      v31 = 0;
      v15 = [(PFAppleArchive *)v8 close:&v31];
      v16 = v31;
      v17 = v16;
      if (v15)
      {
        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138543874;
          v35 = v13;
          v36 = 2114;
          v37 = v30;
          v38 = 2114;
          v39 = v12;
          _os_log_impl(&dword_1B35C1000, logHandle, OS_LOG_TYPE_INFO, "Successfully unarchived directory encrypted archive, version=%{public}@, keychain item creation date=%{public}@, archive key creation date=%{public}@", buf, 0x20u);
        }

        if (v29)
        {
          v19 = 1;
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        if (v14)
        {
          v24 = v14;
        }

        else
        {
          v24 = v16;
        }

        v25 = v24;

        v14 = v25;
      }
    }

    else
    {
      v14 = v10;
    }

    v26 = self->_logHandle;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v35 = v13;
      v36 = 2114;
      v37 = v30;
      v38 = 2114;
      v39 = v12;
      v40 = 2112;
      v41 = v14;
      _os_log_error_impl(&dword_1B35C1000, v26, OS_LOG_TYPE_ERROR, "Failed to unarchive the directory encrypted archive, version=%{public}@, keychain item creation date=%{public}@, archive key creation date=%{public}@, error: %@", buf, 0x2Au);
      if (a4)
      {
        goto LABEL_18;
      }
    }

    else if (a4)
    {
LABEL_18:
      v27 = v14;
      v19 = 0;
      *a4 = v14;
      goto LABEL_21;
    }

    v19 = 0;
    goto LABEL_21;
  }

  v20 = MEMORY[0x1E696ABC0];
  v42 = *MEMORY[0x1E696A278];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid state %tu", self->_state];
  v43[0] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v14 = [v20 errorWithDomain:@"com.apple.PhotosFormats" code:500101 userInfo:v22];

  if (a4)
  {
    v23 = v14;
    v19 = 0;
    *a4 = v14;
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  return v19;
}

- (void)archiveDirectoryAtURL:(id)a3 toOutputURL:(id)a4 dataType:(int64_t)a5 options:(id)a6 entryPredicate:(id)a7 completionHandler:(id)a8
{
  v46[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  if (state == 4)
  {
    v37 = v16;
    v19 = v13;
    v20 = [(PFAppleArchiveStream *)[PFAppleArchive alloc] initWithArchiveURL:v14];
    [objc_opt_class() applyOptions:v15 toArchive:v20];
    [(PFAppleArchiveStream *)v20 setEncryptionKey:self->_keyData];
    v43[0] = @"com.apple.photos.backend.client-side-encryption.key-creation-date";
    v21 = [(NSDictionary *)self->_keyMetadata objectForKeyedSubscript:@"key-creation-date"];
    v22 = [v21 description];
    v43[1] = @"com.apple.photos.backend.client-side-encryption.version";
    v44[0] = v22;
    v23 = [&unk_1F2AAB488 stringValue];
    v44[1] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    [(PFAppleArchiveStream *)v20 setEncryptedArchiveMetadata:v24];

    v40 = 0;
    LODWORD(v24) = [(PFAppleArchive *)v20 openForWriting:&v40];
    v25 = v40;
    v26 = v25;
    if (!v24)
    {
      logHandle = self->_logHandle;
      v13 = v19;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v26;
        _os_log_error_impl(&dword_1B35C1000, logHandle, OS_LOG_TYPE_ERROR, "Error opening archive for directory writing: %@", buf, 0xCu);
      }

      v31 = 0;
      v16 = v37;
      goto LABEL_14;
    }

    v39 = v25;
    v13 = v19;
    v27 = v19;
    v16 = v37;
    v28 = [(PFAppleArchive *)v20 encodeContentOfDirectoryAtURL:v27 entryPredicate:v37 error:&v39];
    v29 = v39;

    if (v28)
    {
      v38 = v29;
      v30 = [(PFAppleArchive *)v20 close:&v38];
      v26 = v38;

      if (v30)
      {
        v31 = 1;
LABEL_14:
        v17[2](v17, v31, v26);

        goto LABEL_15;
      }
    }

    else
    {
      v26 = v29;
    }

    v36 = self->_logHandle;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v26;
      _os_log_error_impl(&dword_1B35C1000, v36, OS_LOG_TYPE_ERROR, "Error archiving the directory content. Error: %@", buf, 0xCu);
    }

    v31 = 0;
    goto LABEL_14;
  }

  v32 = MEMORY[0x1E696ABC0];
  v45 = *MEMORY[0x1E696A278];
  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid state %tu", self->_state];
  v46[0] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  v26 = [v32 errorWithDomain:@"com.apple.PhotosFormats" code:500101 userInfo:v34];

  v17[2](v17, 0, v26);
LABEL_15:
}

- (void)shutdownWithCompletionHandler:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  self->_state = 5;
  os_unfair_lock_unlock(&self->_lock);
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (BOOL)createKeychainEntryReturningKeyData:(id *)a3 keyInfo:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = SecRandomCopyBytes(0, 0x20uLL, bytes);
  if (v7)
  {
    v8 = v7;
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v38) = v8;
      _os_log_error_impl(&dword_1B35C1000, logHandle, OS_LOG_TYPE_ERROR, "Unable to generate random bytes for client side encryption manager key: %d", buf, 8u);
    }

    return 0;
  }

  else
  {
    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:32];
    v12 = *MEMORY[0x1E697B020];
    v13 = *MEMORY[0x1E697AC40];
    v39[0] = *MEMORY[0x1E697AFF8];
    v39[1] = v13;
    keychainAccessGroup = self->_keychainAccessGroup;
    keychainApplicationLabel = self->_keychainApplicationLabel;
    v40[0] = v12;
    v40[1] = keychainApplicationLabel;
    v16 = *MEMORY[0x1E697ABD8];
    v39[2] = *MEMORY[0x1E697ABD0];
    v39[3] = v16;
    v17 = *MEMORY[0x1E697ABE0];
    v40[2] = keychainAccessGroup;
    v40[3] = v17;
    v18 = MEMORY[0x1E695E118];
    v19 = *MEMORY[0x1E697AD30];
    v39[4] = *MEMORY[0x1E697AEB0];
    v39[5] = v19;
    v20 = *MEMORY[0x1E697AD48];
    v40[4] = MEMORY[0x1E695E118];
    v40[5] = v20;
    v39[6] = *MEMORY[0x1E697AD50];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:256];
    v22 = *MEMORY[0x1E697B310];
    v40[6] = v21;
    v40[7] = v18;
    v23 = *MEMORY[0x1E697B3C0];
    v39[7] = v22;
    v39[8] = v23;
    v39[9] = *MEMORY[0x1E697AEA8];
    keychainViewHint = self->_keychainViewHint;
    v40[8] = v11;
    v40[9] = keychainViewHint;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:10];

    result = 0;
    v26 = SecItemAdd(v25, &result);
    v10 = v26 == 0;
    if (v26)
    {
      v27 = v26;
      v28 = self->_logHandle;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v38) = v27;
        _os_log_error_impl(&dword_1B35C1000, v28, OS_LOG_TYPE_ERROR, "Unable to add keychain item: %d", buf, 8u);
      }

      v29 = 0;
    }

    else
    {
      v30 = result;
      v29 = [result objectForKeyedSubscript:*MEMORY[0x1E697ACD0]];
      v31 = self->_logHandle;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v38 = v29;
        _os_log_impl(&dword_1B35C1000, v31, OS_LOG_TYPE_DEFAULT, "Created client side encryption manager key with creation date %{public}@", buf, 0xCu);
      }

      if (a3)
      {
        v32 = v11;
        *a3 = v11;
      }

      if (a4)
      {
        v35 = @"key-creation-date";
        v36 = v29;
        *a4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      }
    }
  }

  return v10;
}

- (BOOL)findExistingKeychainEntryReturningKeyData:(id *)a3 keyInfo:(id *)a4
{
  v31[7] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E697B020];
  v8 = *MEMORY[0x1E697AC40];
  v30[0] = *MEMORY[0x1E697AFF8];
  v30[1] = v8;
  keychainAccessGroup = self->_keychainAccessGroup;
  keychainApplicationLabel = self->_keychainApplicationLabel;
  v31[0] = v7;
  v31[1] = keychainApplicationLabel;
  v11 = *MEMORY[0x1E697AEB0];
  v30[2] = *MEMORY[0x1E697ABD0];
  v30[3] = v11;
  v31[2] = keychainAccessGroup;
  v31[3] = MEMORY[0x1E695E118];
  v12 = *MEMORY[0x1E697B310];
  v30[4] = *MEMORY[0x1E697B318];
  v30[5] = v12;
  v31[4] = MEMORY[0x1E695E118];
  v31[5] = MEMORY[0x1E695E118];
  v30[6] = *MEMORY[0x1E697AEA8];
  v31[6] = self->_keychainViewHint;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:7];
  result = 0;
  v14 = SecItemCopyMatching(v13, &result);
  v15 = result;
  if (v14 || !result)
  {
    logHandle = self->_logHandle;
    if (v14 == -25300)
    {
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, logHandle, OS_LOG_TYPE_INFO, "No existing client side encryption manager keychain item exists", buf, 2u);
      }
    }

    else if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      LODWORD(v29[0]) = v14;
      WORD2(v29[0]) = 2048;
      *(v29 + 6) = v15;
      _os_log_error_impl(&dword_1B35C1000, logHandle, OS_LOG_TYPE_ERROR, "Error querying for existing client side encryption manager keychain item: %d, %p", buf, 0x12u);
    }

    v20 = 0;
  }

  else
  {
    v16 = [result objectForKeyedSubscript:*MEMORY[0x1E697ACD0]];
    v17 = self->_logHandle;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v29[0] = v16;
      _os_log_impl(&dword_1B35C1000, v17, OS_LOG_TYPE_INFO, "Found existing client side encryption manager keychain item with creation date %{public}@", buf, 0xCu);
    }

    v18 = [v15 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    v19 = v18;
    v20 = v18 != 0;
    if (v18)
    {
      if (a3)
      {
        v21 = v18;
        *a3 = v19;
      }

      if (a4)
      {
        v26 = @"key-creation-date";
        v27 = v16;
        *a4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      }
    }

    else
    {
      v23 = self->_logHandle;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v29[0] = v16;
        _os_log_error_impl(&dword_1B35C1000, v23, OS_LOG_TYPE_ERROR, "Unexpected missing key data in existing keychain item with creation date %{public}@", buf, 0xCu);
      }
    }
  }

  return v20;
}

- (void)start
{
  os_unfair_lock_lock(&self->_lock);
  v15 = 0;
  v16 = 0;
  v3 = [(PFClientSideEncryptionManager *)self findExistingKeychainEntryReturningKeyData:&v16 keyInfo:&v15];
  v4 = v16;
  v5 = v15;
  v6 = v5;
  if (v3)
  {
    v7 = v5;
    v8 = v4;
LABEL_5:
    objc_storeStrong(&self->_keyData, v4);
    objc_storeStrong(&self->_keyMetadata, v6);
    v10 = 4;
    goto LABEL_9;
  }

  v13 = v5;
  v14 = v4;
  v9 = [(PFClientSideEncryptionManager *)self createKeychainEntryReturningKeyData:&v14 keyInfo:&v13];
  v8 = v14;

  v7 = v13;
  if (v9)
  {
    v6 = v7;
    v4 = v8;
    goto LABEL_5;
  }

  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&dword_1B35C1000, logHandle, OS_LOG_TYPE_ERROR, "Unable to find or create client side encryption manager key", v12, 2u);
  }

  v10 = 1;
LABEL_9:
  self->_state = v10;
  os_unfair_lock_unlock(&self->_lock);
}

- (id)configurationForProfile:(id)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  v21[0] = @"Photos";
  v19[0] = @"keychainAccessGroup";
  v19[1] = @"keychainViewHint";
  v3 = *MEMORY[0x1E697AF38];
  v20[0] = @"com.apple.photos.client-side-encryption-manager";
  v20[1] = v3;
  v19[2] = @"applicationLabel";
  v20[2] = @"com.apple.photos.client-side-encryption-manager";
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v20 forKeys:v19 count:3];
  v22[0] = v6;
  v21[1] = @"PhotosUnitTest";
  v17[0] = @"keychainAccessGroup";
  v17[1] = @"keychainViewHint";
  v18[0] = @"com.apple.photos.client-side-encryption-manager.unit-test";
  v18[1] = v3;
  v17[2] = @"applicationLabel";
  v18[2] = @"com.apple.photos.client-side-encryption-manager.unit-test";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v22[1] = v7;
  v21[2] = @"PhotosCloudPhotoD";
  v15[0] = @"keychainAccessGroup";
  v15[1] = @"keychainViewHint";
  v16[0] = @"com.apple.photos.client-side-encryption-manager";
  v16[1] = v3;
  v15[2] = @"applicationLabel";
  v16[2] = @"com.apple.photos.client-side-encryption-manager.cloudphotod";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v22[2] = v8;
  v21[3] = @"MediaAnalysis";
  v13[0] = @"keychainAccessGroup";
  v13[1] = @"keychainViewHint";
  v14[0] = @"com.apple.mediaanalysisd.client-side-encryption-manager";
  v14[1] = v3;
  v13[2] = @"applicationLabel";
  v14[2] = @"com.apple.mediaanalysisd.client-side-encryption-manager";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v22[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v11 = [v10 objectForKeyedSubscript:v5];

  return v11;
}

- (PFClientSideEncryptionManager)initWithProfile:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PFClientSideEncryptionManager;
  v5 = [(PFClientSideEncryptionManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(PFClientSideEncryptionManager *)v5 configurationForProfile:v4];
    v8 = [v7 objectForKeyedSubscript:@"keychainAccessGroup"];
    keychainAccessGroup = v6->_keychainAccessGroup;
    v6->_keychainAccessGroup = v8;

    v10 = [v7 objectForKeyedSubscript:@"applicationLabel"];
    keychainApplicationLabel = v6->_keychainApplicationLabel;
    v6->_keychainApplicationLabel = v10;

    v12 = [v7 objectForKeyedSubscript:@"keychainViewHint"];
    keychainViewHint = v6->_keychainViewHint;
    v6->_keychainViewHint = v12;

    v6->_state = 0;
    v6->_lock._os_unfair_lock_opaque = 0;
    v14 = os_log_create("com.apple.photos.backend", "ClientSideEncryptionManager");
    logHandle = v6->_logHandle;
    v6->_logHandle = v14;
  }

  return v6;
}

+ (void)applyOptions:(id)a3 toArchive:(id)a4
{
  v7 = a4;
  v5 = [a3 objectForKeyedSubscript:@"PFClientSideEncryptionManagerOptionCompressionKey"];
  v6 = v5;
  if (v5)
  {
    [v7 setCompression:{objc_msgSend(v5, "integerValue")}];
  }
}

@end