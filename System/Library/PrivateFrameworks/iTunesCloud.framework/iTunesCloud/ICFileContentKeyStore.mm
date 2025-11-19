@interface ICFileContentKeyStore
- (BOOL)containsKeyForIdentifier:(id)a3 error:(id *)a4;
- (ICFileContentKeyStore)initWithPath:(id)a3;
- (id)_filePathForKeyIdentifier:(id)a3;
- (id)_keyEntryForIdentifier:(id)a3 error:(id *)a4;
- (id)incrementFailureCountForKeyWithIdentifier:(id)a3;
- (id)loadKeyForIdentifier:(id)a3 error:(id *)a4;
- (id)removeAllKeys;
- (id)removeKeyForIdentifier:(id)a3;
- (id)saveKey:(id)a3 forIdentifier:(id)a4 adamID:(id)a5 withRenewalDate:(id)a6 expirationDate:(id)a7 accountDSID:(id)a8 keyServerProtocolType:(int64_t)a9;
- (id)saveKeyEntry:(id)a3;
- (void)enumerateKeyEntriesUsingBlock:(id)a3;
@end

@implementation ICFileContentKeyStore

- (id)_filePathForKeyIdentifier:(id)a3
{
  filePath = self->_filePath;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lud.%@", @"ic-key", objc_msgSend(a3, "hash"), @"dat"];
  v5 = [(NSString *)filePath stringByAppendingPathComponent:v4];

  return v5;
}

- (id)_keyEntryForIdentifier:(id)a3 error:(id *)a4
{
  v5 = [(ICFileContentKeyStore *)self _filePathForKeyIdentifier:a3];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
    v16 = 0;
    v10 = [v8 initWithContentsOfURL:v9 error:&v16];
    v11 = v16;

    if (v10)
    {
      v12 = [[ICContentKeyStoreEntry alloc] initWithDictionaryRepresentation:v10];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = v11;
  *a4 = v11;
  v14 = v12;

  return v12;
}

- (id)incrementFailureCountForKeyWithIdentifier:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(ICFileContentKeyStore *)self _keyEntryForIdentifier:v4 error:&v9];
  v6 = v9;
  if (!v6)
  {
    if (!v5)
    {
      v5 = [[ICContentKeyStoreEntry alloc] initWithIdentifier:v4];
    }

    [(ICContentKeyStoreEntry *)v5 setFailureCount:[(ICContentKeyStoreEntry *)v5 failureCount]+ 1];
    v6 = [(ICFileContentKeyStore *)self saveKeyEntry:v5];
  }

  v7 = v6;

  return v7;
}

- (void)enumerateKeyEntriesUsingBlock:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = a3;
  [MEMORY[0x1E696AC08] defaultManager];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v21 = self;
  v4 = [v18 enumeratorAtPath:self->_filePath];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v8 = @"dat";
    v20 = v4;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v23 + 1) + 8 * i) lastPathComponent];
        if ([v10 hasPrefix:@"ic-key"] && objc_msgSend(v10, "hasSuffix:", v8))
        {
          v11 = v8;
          v12 = [(NSString *)v21->_filePath stringByAppendingPathComponent:v10];
          v13 = objc_alloc(MEMORY[0x1E695DF20]);
          v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
          v15 = [v13 initWithContentsOfURL:v14 error:0];

          if (v15)
          {
            v22 = 0;
            v16 = [[ICContentKeyStoreEntry alloc] initWithDictionaryRepresentation:v15];
            v19[2](v19, v16, &v22);
            v17 = v22;

            if (v17)
            {

              v4 = v20;
              goto LABEL_15;
            }
          }

          v8 = v11;
          v4 = v20;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (id)removeAllKeys
{
  v21 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AC08] defaultManager];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v14 = v13 = self;
  v3 = [v14 enumeratorAtPath:self->_filePath];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) lastPathComponent];
        if ([v9 hasPrefix:@"ic-key"] && objc_msgSend(v9, "hasSuffix:", @"dat"))
        {
          v10 = [(NSString *)v13->_filePath stringByAppendingPathComponent:v9];
          v15 = v6;
          [v14 removeItemAtPath:v10 error:&v15];
          v11 = v15;

          v6 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)removeKeyForIdentifier:(id)a3
{
  v3 = [(ICFileContentKeyStore *)self _filePathForKeyIdentifier:a3];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  [v4 removeItemAtPath:v3 error:&v8];
  v5 = v8;
  v6 = v8;

  return v5;
}

- (id)saveKeyEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(ICFileContentKeyStore *)self _filePathForKeyIdentifier:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  [v7 removeItemAtPath:v6 error:0];

  v8 = [v4 dictionaryRepresentation];

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
  v13 = 0;
  [v8 writeToURL:v9 error:&v13];
  v10 = v13;
  v11 = v13;

  return v10;
}

- (id)saveKey:(id)a3 forIdentifier:(id)a4 adamID:(id)a5 withRenewalDate:(id)a6 expirationDate:(id)a7 accountDSID:(id)a8 keyServerProtocolType:(int64_t)a9
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[ICContentKeyStoreEntry alloc] initWithIdentifier:v18];

  [(ICContentKeyStoreEntry *)v20 setKeyData:v19];
  [(ICContentKeyStoreEntry *)v20 setRenewalDate:v16];

  [(ICContentKeyStoreEntry *)v20 setExpirationDate:v15];
  [(ICContentKeyStoreEntry *)v20 setAccountDSID:v14];

  [(ICContentKeyStoreEntry *)v20 setAdamID:v17];
  [(ICContentKeyStoreEntry *)v20 setKeyServerProtocolType:a9];
  v21 = [(ICFileContentKeyStore *)self saveKeyEntry:v20];

  return v21;
}

- (id)loadKeyForIdentifier:(id)a3 error:(id *)a4
{
  v8 = 0;
  v5 = [(ICFileContentKeyStore *)self _keyEntryForIdentifier:a3 error:&v8];
  v6 = v8;
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return v5;
}

- (BOOL)containsKeyForIdentifier:(id)a3 error:(id *)a4
{
  v11 = 0;
  v5 = [(ICFileContentKeyStore *)self _keyEntryForIdentifier:a3 error:&v11];
  v6 = v11;
  if (!v5)
  {
    v8 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = [v5 keyData];
  v8 = v7 != 0;

  if (a4)
  {
LABEL_3:
    v9 = v6;
    *a4 = v6;
  }

LABEL_4:

  return v8;
}

- (ICFileContentKeyStore)initWithPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICFileContentKeyStore;
  v5 = [(ICFileContentKeyStore *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    filePath = v5->_filePath;
    v5->_filePath = v6;
  }

  return v5;
}

@end