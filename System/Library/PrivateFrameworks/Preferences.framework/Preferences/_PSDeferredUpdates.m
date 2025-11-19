@interface _PSDeferredUpdates
+ (id)deferredInvalidationUpdatesWithEntries:(id)a3;
+ (id)deferredUpdatesWithEntries:(id)a3 specifierUpdates:(id)a4;
- (_PSDeferredUpdates)initWithSearchEntries:(id)a3 specifierUpdates:(id)a4 invalidatedSpecifiers:(BOOL)a5;
@end

@implementation _PSDeferredUpdates

+ (id)deferredUpdatesWithEntries:(id)a3 specifierUpdates:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithSearchEntries:v7 specifierUpdates:v6 invalidatedSpecifiers:0];

  return v8;
}

+ (id)deferredInvalidationUpdatesWithEntries:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSearchEntries:v4 specifierUpdates:0 invalidatedSpecifiers:1];

  return v5;
}

- (_PSDeferredUpdates)initWithSearchEntries:(id)a3 specifierUpdates:(id)a4 invalidatedSpecifiers:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = _PSDeferredUpdates;
  v10 = [(_PSDeferredUpdates *)&v14 init];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v8];
    searchEntries = v10->_searchEntries;
    v10->_searchEntries = v11;

    objc_storeStrong(&v10->_specifierUpdates, a4);
    v10->_invalidatedSpecifiers = a5;
  }

  return v10;
}

@end