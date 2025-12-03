@interface STPersistentTransportServiceMessageLedger
- (STPersistentTransportServiceMessageLedger)initWithKeyValueStore:(id)store;
- (id)addressesFromItem:(id)item inState:(int64_t)state;
- (id)fetchItemWithMessageIdentifier:(id)identifier;
- (void)_enumerateItemsWithState:(id)state usingBlock:(id)block;
- (void)enumerateItemsWithState:(int64_t)state usingBlock:(id)block;
- (void)removeItemWithMessageIdentifier:(id)identifier;
- (void)setItem:(id)item forMessageIdentifier:(id)identifier;
@end

@implementation STPersistentTransportServiceMessageLedger

- (STPersistentTransportServiceMessageLedger)initWithKeyValueStore:(id)store
{
  v9.receiver = self;
  v9.super_class = STPersistentTransportServiceMessageLedger;
  storeCopy = store;
  v4 = [(STPersistentTransportServiceMessageLedger *)&v9 init];
  v5 = [STCachingCodableStore alloc];
  v6 = [(STCachingCodableStore *)v5 initWithKeyValueStore:storeCopy cacheSize:0 valueClass:objc_opt_class(), v9.receiver, v9.super_class];

  keyValueStore = v4->_keyValueStore;
  v4->_keyValueStore = v6;

  return v4;
}

- (void)setItem:(id)item forMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  itemCopy = item;
  keyValueStore = [(STPersistentTransportServiceMessageLedger *)self keyValueStore];
  uUIDString = [identifierCopy UUIDString];

  [keyValueStore persistValue:itemCopy forKey:uUIDString];
}

- (void)removeItemWithMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyValueStore = [(STPersistentTransportServiceMessageLedger *)self keyValueStore];
  uUIDString = [identifierCopy UUIDString];

  [keyValueStore removeValueForKey:uUIDString];
}

- (id)fetchItemWithMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyValueStore = [(STPersistentTransportServiceMessageLedger *)self keyValueStore];
  uUIDString = [identifierCopy UUIDString];

  v7 = [keyValueStore readValueForKey:uUIDString];

  return v7;
}

- (void)enumerateItemsWithState:(int64_t)state usingBlock:(id)block
{
  blockCopy = block;
  v7 = [NSNumber numberWithInteger:state];
  [(STPersistentTransportServiceMessageLedger *)self _enumerateItemsWithState:v7 usingBlock:blockCopy];
}

- (void)_enumerateItemsWithState:(id)state usingBlock:(id)block
{
  stateCopy = state;
  blockCopy = block;
  keyValueStore = [(STPersistentTransportServiceMessageLedger *)self keyValueStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000531D8;
  v11[3] = &unk_1001A48B8;
  v12 = stateCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = stateCopy;
  [keyValueStore enumerateKeysAndValuesUsingBlock:v11];
}

- (id)addressesFromItem:(id)item inState:(int64_t)state
{
  itemCopy = item;
  v6 = objc_opt_new();
  statusesByAddress = [itemCopy statusesByAddress];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10005338C;
  v14 = &unk_1001A48E0;
  v15 = v6;
  stateCopy = state;
  v8 = v6;
  [statusesByAddress enumerateKeysAndObjectsUsingBlock:&v11];

  v9 = [v8 copy];

  return v9;
}

@end