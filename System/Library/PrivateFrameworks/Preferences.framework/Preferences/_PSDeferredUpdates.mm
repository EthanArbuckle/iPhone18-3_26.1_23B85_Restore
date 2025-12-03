@interface _PSDeferredUpdates
+ (id)deferredInvalidationUpdatesWithEntries:(id)entries;
+ (id)deferredUpdatesWithEntries:(id)entries specifierUpdates:(id)updates;
- (_PSDeferredUpdates)initWithSearchEntries:(id)entries specifierUpdates:(id)updates invalidatedSpecifiers:(BOOL)specifiers;
@end

@implementation _PSDeferredUpdates

+ (id)deferredUpdatesWithEntries:(id)entries specifierUpdates:(id)updates
{
  updatesCopy = updates;
  entriesCopy = entries;
  v8 = [[self alloc] initWithSearchEntries:entriesCopy specifierUpdates:updatesCopy invalidatedSpecifiers:0];

  return v8;
}

+ (id)deferredInvalidationUpdatesWithEntries:(id)entries
{
  entriesCopy = entries;
  v5 = [[self alloc] initWithSearchEntries:entriesCopy specifierUpdates:0 invalidatedSpecifiers:1];

  return v5;
}

- (_PSDeferredUpdates)initWithSearchEntries:(id)entries specifierUpdates:(id)updates invalidatedSpecifiers:(BOOL)specifiers
{
  entriesCopy = entries;
  updatesCopy = updates;
  v14.receiver = self;
  v14.super_class = _PSDeferredUpdates;
  v10 = [(_PSDeferredUpdates *)&v14 init];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:entriesCopy];
    searchEntries = v10->_searchEntries;
    v10->_searchEntries = v11;

    objc_storeStrong(&v10->_specifierUpdates, updates);
    v10->_invalidatedSpecifiers = specifiers;
  }

  return v10;
}

@end