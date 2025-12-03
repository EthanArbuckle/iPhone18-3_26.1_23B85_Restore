@interface BMSyncDatabaseCustomFunctionMigration
- (BMSyncDatabaseCustomFunctionMigration)initWithCustomFunctionName:(id)name;
@end

@implementation BMSyncDatabaseCustomFunctionMigration

- (BMSyncDatabaseCustomFunctionMigration)initWithCustomFunctionName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = BMSyncDatabaseCustomFunctionMigration;
  v6 = [(BMSyncDatabaseCustomFunctionMigration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customFunctionName, name);
  }

  return v7;
}

@end