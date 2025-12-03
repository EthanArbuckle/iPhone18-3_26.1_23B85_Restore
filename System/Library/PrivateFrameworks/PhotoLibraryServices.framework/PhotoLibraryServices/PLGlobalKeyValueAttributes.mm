@interface PLGlobalKeyValueAttributes
+ (id)attributesWithKey:(id)key type:(signed __int16)type includeInMigrationHistory:(BOOL)history anyValueClass:(Class)class;
- (PLGlobalKeyValueAttributes)initWithKey:(id)key type:(signed __int16)type includeInMigrationHistory:(BOOL)history anyValueClass:(Class)class;
@end

@implementation PLGlobalKeyValueAttributes

+ (id)attributesWithKey:(id)key type:(signed __int16)type includeInMigrationHistory:(BOOL)history anyValueClass:(Class)class
{
  historyCopy = history;
  typeCopy = type;
  keyCopy = key;
  v11 = [[self alloc] initWithKey:keyCopy type:typeCopy includeInMigrationHistory:historyCopy anyValueClass:class];

  return v11;
}

- (PLGlobalKeyValueAttributes)initWithKey:(id)key type:(signed __int16)type includeInMigrationHistory:(BOOL)history anyValueClass:(Class)class
{
  keyCopy = key;
  v12 = [(PLGlobalKeyValueAttributes *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
    v13->_type = type;
    v13->_includeInMigrationHistory = history;
    objc_storeStrong(&v13->_anyValueClass, class);
  }

  return v13;
}

@end