@interface ICFileContentKeyStore
- (BOOL)containsKeyForIdentifier:(id)identifier error:(id *)error;
- (ICFileContentKeyStore)initWithPath:(id)path;
- (id)_filePathForKeyIdentifier:(id)identifier;
- (id)_keyEntryForIdentifier:(id)identifier error:(id *)error;
- (id)incrementFailureCountForKeyWithIdentifier:(id)identifier;
- (id)loadKeyForIdentifier:(id)identifier error:(id *)error;
- (id)removeAllKeys;
- (id)removeKeyForIdentifier:(id)identifier;
- (id)saveKey:(id)key forIdentifier:(id)identifier adamID:(id)d withRenewalDate:(id)date expirationDate:(id)expirationDate accountDSID:(id)iD keyServerProtocolType:(int64_t)type;
- (id)saveKeyEntry:(id)entry;
- (void)enumerateKeyEntriesUsingBlock:(id)block;
@end

@implementation ICFileContentKeyStore

- (id)_filePathForKeyIdentifier:(id)identifier
{
  filePath = self->_filePath;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lud.%@", @"ic-key", objc_msgSend(identifier, "hash"), @"dat"];
  v5 = [(NSString *)filePath stringByAppendingPathComponent:v4];

  return v5;
}

- (id)_keyEntryForIdentifier:(id)identifier error:(id *)error
{
  v5 = [(ICFileContentKeyStore *)self _filePathForKeyIdentifier:identifier];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

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
  *error = v11;
  v14 = v12;

  return v12;
}

- (id)incrementFailureCountForKeyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v5 = [(ICFileContentKeyStore *)self _keyEntryForIdentifier:identifierCopy error:&v9];
  v6 = v9;
  if (!v6)
  {
    if (!v5)
    {
      v5 = [[ICContentKeyStoreEntry alloc] initWithIdentifier:identifierCopy];
    }

    [(ICContentKeyStoreEntry *)v5 setFailureCount:[(ICContentKeyStoreEntry *)v5 failureCount]+ 1];
    v6 = [(ICFileContentKeyStore *)self saveKeyEntry:v5];
  }

  v7 = v6;

  return v7;
}

- (void)enumerateKeyEntriesUsingBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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

        lastPathComponent = [*(*(&v23 + 1) + 8 * i) lastPathComponent];
        if ([lastPathComponent hasPrefix:@"ic-key"] && objc_msgSend(lastPathComponent, "hasSuffix:", v8))
        {
          v11 = v8;
          v12 = [(NSString *)v21->_filePath stringByAppendingPathComponent:lastPathComponent];
          v13 = objc_alloc(MEMORY[0x1E695DF20]);
          v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
          v15 = [v13 initWithContentsOfURL:v14 error:0];

          if (v15)
          {
            v22 = 0;
            v16 = [[ICContentKeyStoreEntry alloc] initWithDictionaryRepresentation:v15];
            blockCopy[2](blockCopy, v16, &v22);
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

        lastPathComponent = [*(*(&v16 + 1) + 8 * i) lastPathComponent];
        if ([lastPathComponent hasPrefix:@"ic-key"] && objc_msgSend(lastPathComponent, "hasSuffix:", @"dat"))
        {
          v10 = [(NSString *)v13->_filePath stringByAppendingPathComponent:lastPathComponent];
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

- (id)removeKeyForIdentifier:(id)identifier
{
  v3 = [(ICFileContentKeyStore *)self _filePathForKeyIdentifier:identifier];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  [defaultManager removeItemAtPath:v3 error:&v8];
  v5 = v8;
  v6 = v8;

  return v5;
}

- (id)saveKeyEntry:(id)entry
{
  entryCopy = entry;
  identifier = [entryCopy identifier];
  v6 = [(ICFileContentKeyStore *)self _filePathForKeyIdentifier:identifier];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtPath:v6 error:0];

  dictionaryRepresentation = [entryCopy dictionaryRepresentation];

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
  v13 = 0;
  [dictionaryRepresentation writeToURL:v9 error:&v13];
  v10 = v13;
  v11 = v13;

  return v10;
}

- (id)saveKey:(id)key forIdentifier:(id)identifier adamID:(id)d withRenewalDate:(id)date expirationDate:(id)expirationDate accountDSID:(id)iD keyServerProtocolType:(int64_t)type
{
  iDCopy = iD;
  expirationDateCopy = expirationDate;
  dateCopy = date;
  dCopy = d;
  identifierCopy = identifier;
  keyCopy = key;
  v20 = [[ICContentKeyStoreEntry alloc] initWithIdentifier:identifierCopy];

  [(ICContentKeyStoreEntry *)v20 setKeyData:keyCopy];
  [(ICContentKeyStoreEntry *)v20 setRenewalDate:dateCopy];

  [(ICContentKeyStoreEntry *)v20 setExpirationDate:expirationDateCopy];
  [(ICContentKeyStoreEntry *)v20 setAccountDSID:iDCopy];

  [(ICContentKeyStoreEntry *)v20 setAdamID:dCopy];
  [(ICContentKeyStoreEntry *)v20 setKeyServerProtocolType:type];
  v21 = [(ICFileContentKeyStore *)self saveKeyEntry:v20];

  return v21;
}

- (id)loadKeyForIdentifier:(id)identifier error:(id *)error
{
  v8 = 0;
  v5 = [(ICFileContentKeyStore *)self _keyEntryForIdentifier:identifier error:&v8];
  v6 = v8;
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return v5;
}

- (BOOL)containsKeyForIdentifier:(id)identifier error:(id *)error
{
  v11 = 0;
  v5 = [(ICFileContentKeyStore *)self _keyEntryForIdentifier:identifier error:&v11];
  v6 = v11;
  if (!v5)
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  keyData = [v5 keyData];
  v8 = keyData != 0;

  if (error)
  {
LABEL_3:
    v9 = v6;
    *error = v6;
  }

LABEL_4:

  return v8;
}

- (ICFileContentKeyStore)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = ICFileContentKeyStore;
  v5 = [(ICFileContentKeyStore *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    filePath = v5->_filePath;
    v5->_filePath = v6;
  }

  return v5;
}

@end