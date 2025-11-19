@interface PLGlobalKeyValueAttributes
+ (id)attributesWithKey:(id)a3 type:(signed __int16)a4 includeInMigrationHistory:(BOOL)a5 anyValueClass:(Class)a6;
- (PLGlobalKeyValueAttributes)initWithKey:(id)a3 type:(signed __int16)a4 includeInMigrationHistory:(BOOL)a5 anyValueClass:(Class)a6;
@end

@implementation PLGlobalKeyValueAttributes

+ (id)attributesWithKey:(id)a3 type:(signed __int16)a4 includeInMigrationHistory:(BOOL)a5 anyValueClass:(Class)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithKey:v10 type:v8 includeInMigrationHistory:v7 anyValueClass:a6];

  return v11;
}

- (PLGlobalKeyValueAttributes)initWithKey:(id)a3 type:(signed __int16)a4 includeInMigrationHistory:(BOOL)a5 anyValueClass:(Class)a6
{
  v11 = a3;
  v12 = [(PLGlobalKeyValueAttributes *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, a3);
    v13->_type = a4;
    v13->_includeInMigrationHistory = a5;
    objc_storeStrong(&v13->_anyValueClass, a6);
  }

  return v13;
}

@end