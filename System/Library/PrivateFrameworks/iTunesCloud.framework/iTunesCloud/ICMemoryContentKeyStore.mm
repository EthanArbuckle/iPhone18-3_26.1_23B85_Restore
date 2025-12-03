@interface ICMemoryContentKeyStore
- (BOOL)containsKeyForIdentifier:(id)identifier error:(id *)error;
- (ICMemoryContentKeyStore)init;
- (id)incrementFailureCountForKeyWithIdentifier:(id)identifier;
- (id)loadKeyForIdentifier:(id)identifier error:(id *)error;
- (id)saveKey:(id)key forIdentifier:(id)identifier adamID:(id)d withRenewalDate:(id)date expirationDate:(id)expirationDate accountDSID:(id)iD keyServerProtocolType:(int64_t)type;
- (id)saveKeyEntry:(id)entry;
- (void)enumerateKeyEntriesUsingBlock:(id)block;
@end

@implementation ICMemoryContentKeyStore

- (id)incrementFailureCountForKeyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_keyEntries objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v5 = [[ICContentKeyStoreEntry alloc] initWithIdentifier:identifierCopy];
  }

  [(ICContentKeyStoreEntry *)v5 setFailureCount:[(ICContentKeyStoreEntry *)v5 failureCount]+ 1];
  [(NSMutableDictionary *)self->_keyEntries setObject:v5 forKeyedSubscript:identifierCopy];

  return 0;
}

- (void)enumerateKeyEntriesUsingBlock:(id)block
{
  blockCopy = block;
  keyEntries = self->_keyEntries;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__ICMemoryContentKeyStore_enumerateKeyEntriesUsingBlock___block_invoke;
  v7[3] = &unk_1E7BF5818;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)keyEntries enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)saveKeyEntry:(id)entry
{
  keyEntries = self->_keyEntries;
  entryCopy = entry;
  identifier = [entryCopy identifier];
  [(NSMutableDictionary *)keyEntries setObject:entryCopy forKeyedSubscript:identifier];

  return 0;
}

- (id)saveKey:(id)key forIdentifier:(id)identifier adamID:(id)d withRenewalDate:(id)date expirationDate:(id)expirationDate accountDSID:(id)iD keyServerProtocolType:(int64_t)type
{
  iDCopy = iD;
  expirationDateCopy = expirationDate;
  dateCopy = date;
  dCopy = d;
  identifierCopy = identifier;
  keyCopy = key;
  v21 = [[ICContentKeyStoreEntry alloc] initWithIdentifier:identifierCopy];
  [(ICContentKeyStoreEntry *)v21 setKeyData:keyCopy];

  [(ICContentKeyStoreEntry *)v21 setRenewalDate:dateCopy];
  [(ICContentKeyStoreEntry *)v21 setExpirationDate:expirationDateCopy];

  [(ICContentKeyStoreEntry *)v21 setAccountDSID:iDCopy];
  [(ICContentKeyStoreEntry *)v21 setAdamID:dCopy];

  [(ICContentKeyStoreEntry *)v21 setKeyServerProtocolType:type];
  v22 = [(ICMemoryContentKeyStore *)self saveKeyEntry:v21];
  [(NSMutableDictionary *)self->_keyEntries setObject:v21 forKeyedSubscript:identifierCopy];

  return 0;
}

- (id)loadKeyForIdentifier:(id)identifier error:(id *)error
{
  result = [(NSMutableDictionary *)self->_keyEntries objectForKeyedSubscript:identifier];
  if (error)
  {
    *error = 0;
  }

  return result;
}

- (BOOL)containsKeyForIdentifier:(id)identifier error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v4 = [(NSMutableDictionary *)self->_keyEntries objectForKeyedSubscript:identifier];
  v5 = v4;
  if (v4)
  {
    keyData = [v4 keyData];
    v7 = keyData != 0;
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