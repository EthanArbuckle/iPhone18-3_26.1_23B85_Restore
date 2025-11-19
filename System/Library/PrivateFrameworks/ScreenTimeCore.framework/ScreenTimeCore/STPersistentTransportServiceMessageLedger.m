@interface STPersistentTransportServiceMessageLedger
- (STPersistentTransportServiceMessageLedger)initWithKeyValueStore:(id)a3;
- (id)addressesFromItem:(id)a3 inState:(int64_t)a4;
- (id)fetchItemWithMessageIdentifier:(id)a3;
- (void)_enumerateItemsWithState:(id)a3 usingBlock:(id)a4;
- (void)enumerateItemsWithState:(int64_t)a3 usingBlock:(id)a4;
- (void)removeItemWithMessageIdentifier:(id)a3;
- (void)setItem:(id)a3 forMessageIdentifier:(id)a4;
@end

@implementation STPersistentTransportServiceMessageLedger

- (STPersistentTransportServiceMessageLedger)initWithKeyValueStore:(id)a3
{
  v9.receiver = self;
  v9.super_class = STPersistentTransportServiceMessageLedger;
  v3 = a3;
  v4 = [(STPersistentTransportServiceMessageLedger *)&v9 init];
  v5 = [STCachingCodableStore alloc];
  v6 = [(STCachingCodableStore *)v5 initWithKeyValueStore:v3 cacheSize:0 valueClass:objc_opt_class(), v9.receiver, v9.super_class];

  keyValueStore = v4->_keyValueStore;
  v4->_keyValueStore = v6;

  return v4;
}

- (void)setItem:(id)a3 forMessageIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(STPersistentTransportServiceMessageLedger *)self keyValueStore];
  v8 = [v6 UUIDString];

  [v9 persistValue:v7 forKey:v8];
}

- (void)removeItemWithMessageIdentifier:(id)a3
{
  v4 = a3;
  v6 = [(STPersistentTransportServiceMessageLedger *)self keyValueStore];
  v5 = [v4 UUIDString];

  [v6 removeValueForKey:v5];
}

- (id)fetchItemWithMessageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(STPersistentTransportServiceMessageLedger *)self keyValueStore];
  v6 = [v4 UUIDString];

  v7 = [v5 readValueForKey:v6];

  return v7;
}

- (void)enumerateItemsWithState:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [NSNumber numberWithInteger:a3];
  [(STPersistentTransportServiceMessageLedger *)self _enumerateItemsWithState:v7 usingBlock:v6];
}

- (void)_enumerateItemsWithState:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STPersistentTransportServiceMessageLedger *)self keyValueStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000531D8;
  v11[3] = &unk_1001A48B8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateKeysAndValuesUsingBlock:v11];
}

- (id)addressesFromItem:(id)a3 inState:(int64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 statusesByAddress];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10005338C;
  v14 = &unk_1001A48E0;
  v15 = v6;
  v16 = a4;
  v8 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:&v11];

  v9 = [v8 copy];

  return v9;
}

@end