@interface ICMemoryContentKeyStore
- (BOOL)containsKeyForIdentifier:(id)a3 error:(id *)a4;
- (ICMemoryContentKeyStore)init;
- (id)incrementFailureCountForKeyWithIdentifier:(id)a3;
- (id)loadKeyForIdentifier:(id)a3 error:(id *)a4;
- (id)saveKey:(id)a3 forIdentifier:(id)a4 adamID:(id)a5 withRenewalDate:(id)a6 expirationDate:(id)a7 accountDSID:(id)a8 keyServerProtocolType:(int64_t)a9;
- (id)saveKeyEntry:(id)a3;
- (void)enumerateKeyEntriesUsingBlock:(id)a3;
@end

@implementation ICMemoryContentKeyStore

- (id)incrementFailureCountForKeyWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_keyEntries objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[ICContentKeyStoreEntry alloc] initWithIdentifier:v4];
  }

  [(ICContentKeyStoreEntry *)v5 setFailureCount:[(ICContentKeyStoreEntry *)v5 failureCount]+ 1];
  [(NSMutableDictionary *)self->_keyEntries setObject:v5 forKeyedSubscript:v4];

  return 0;
}

- (void)enumerateKeyEntriesUsingBlock:(id)a3
{
  v4 = a3;
  keyEntries = self->_keyEntries;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__ICMemoryContentKeyStore_enumerateKeyEntriesUsingBlock___block_invoke;
  v7[3] = &unk_1E7BF5818;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)keyEntries enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)saveKeyEntry:(id)a3
{
  keyEntries = self->_keyEntries;
  v4 = a3;
  v5 = [v4 identifier];
  [(NSMutableDictionary *)keyEntries setObject:v4 forKeyedSubscript:v5];

  return 0;
}

- (id)saveKey:(id)a3 forIdentifier:(id)a4 adamID:(id)a5 withRenewalDate:(id)a6 expirationDate:(id)a7 accountDSID:(id)a8 keyServerProtocolType:(int64_t)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [[ICContentKeyStoreEntry alloc] initWithIdentifier:v19];
  [(ICContentKeyStoreEntry *)v21 setKeyData:v20];

  [(ICContentKeyStoreEntry *)v21 setRenewalDate:v17];
  [(ICContentKeyStoreEntry *)v21 setExpirationDate:v16];

  [(ICContentKeyStoreEntry *)v21 setAccountDSID:v15];
  [(ICContentKeyStoreEntry *)v21 setAdamID:v18];

  [(ICContentKeyStoreEntry *)v21 setKeyServerProtocolType:a9];
  v22 = [(ICMemoryContentKeyStore *)self saveKeyEntry:v21];
  [(NSMutableDictionary *)self->_keyEntries setObject:v21 forKeyedSubscript:v19];

  return 0;
}

- (id)loadKeyForIdentifier:(id)a3 error:(id *)a4
{
  result = [(NSMutableDictionary *)self->_keyEntries objectForKeyedSubscript:a3];
  if (a4)
  {
    *a4 = 0;
  }

  return result;
}

- (BOOL)containsKeyForIdentifier:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v4 = [(NSMutableDictionary *)self->_keyEntries objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 keyData];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ICMemoryContentKeyStore)init
{
  v6.receiver = self;
  v6.super_class = ICMemoryContentKeyStore;
  v2 = [(ICMemoryContentKeyStore *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
    keyEntries = v2->_keyEntries;
    v2->_keyEntries = v3;
  }

  return v2;
}

@end