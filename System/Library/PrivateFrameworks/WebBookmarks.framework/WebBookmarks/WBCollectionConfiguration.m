@interface WBCollectionConfiguration
+ (id)debugTabCollectionConfiguration;
+ (id)inMemoryBookmarkCollectionConfiguration;
+ (id)inMemoryTabCollectionConfiguration;
+ (id)pptTabCollectionConfiguration;
+ (id)readonlySafariBookmarkCollectionConfiguration;
+ (id)readonlySafariTabCollectionConfiguration;
+ (id)safariBookmarkCollectionConfiguration;
+ (id)safariTabCollectionConfiguration;
+ (id)sharedInMemoryTabCollectionConfigurationWithIdentifier:(id)a3;
- (BOOL)isInMemoryDatabase;
- (WBCollectionConfiguration)initWithCollectionType:(int64_t)a3 databasePath:(id)a4 readonly:(BOOL)a5 createIfNeeded:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation WBCollectionConfiguration

+ (id)readonlySafariBookmarkCollectionConfiguration
{
  v2 = [[a1 alloc] initWithCollectionType:0 databasePath:0 readonly:1];

  return v2;
}

+ (id)safariTabCollectionConfiguration
{
  v2 = [[a1 alloc] initWithCollectionType:1 databasePath:0 readonly:0];
  v3 = [MEMORY[0x277D499F0] currentDevice];
  [v2 setDevice:v3];

  return v2;
}

- (BOOL)isInMemoryDatabase
{
  if ([(NSString *)self->_databasePath isEqualToString:@":memory:"])
  {
    return 1;
  }

  databasePath = self->_databasePath;

  return [(NSString *)databasePath containsString:@"mode=memory"];
}

+ (id)safariBookmarkCollectionConfiguration
{
  v2 = [[a1 alloc] initWithCollectionType:0 databasePath:0 readonly:0];

  return v2;
}

+ (id)inMemoryBookmarkCollectionConfiguration
{
  v2 = [[a1 alloc] initWithCollectionType:0 databasePath:@":memory:" readonly:0];

  return v2;
}

+ (id)readonlySafariTabCollectionConfiguration
{
  v2 = [[a1 alloc] initWithCollectionType:1 databasePath:0 readonly:1 createIfNeeded:1];
  v3 = [MEMORY[0x277D499F0] currentDevice];
  [v2 setDevice:v3];

  return v2;
}

+ (id)inMemoryTabCollectionConfiguration
{
  v2 = [[a1 alloc] initWithCollectionType:1 databasePath:@":memory:" readonly:0];
  v3 = [MEMORY[0x277D499F0] currentDevice];
  [v2 setDevice:v3];

  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  [v2 setIdentifier:v5];

  return v2;
}

+ (id)sharedInMemoryTabCollectionConfigurationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"file:%@?mode=memory&cache=shared", v4];
  v7 = [v5 initWithCollectionType:1 databasePath:v6 readonly:0];

  v8 = [MEMORY[0x277D499F0] currentDevice];
  [v7 setDevice:v8];

  [v7 setIdentifier:v4];

  return v7;
}

+ (id)pptTabCollectionConfiguration
{
  v2 = [[a1 alloc] initWithCollectionType:1 databasePath:@"/var/mobile/Library/Safari/SafariTabsPPT.db" readonly:1];
  v3 = [MEMORY[0x277D499F0] currentDevice];
  [v2 setDevice:v3];

  return v2;
}

+ (id)debugTabCollectionConfiguration
{
  v2 = [a1 safariTabCollectionConfiguration];
  [v2 setStoreOwner:1];
  v3 = [MEMORY[0x277D499F0] currentDevice];
  [v2 setDevice:v3];

  return v2;
}

- (WBCollectionConfiguration)initWithCollectionType:(int64_t)a3 databasePath:(id)a4 readonly:(BOOL)a5 createIfNeeded:(BOOL)a6
{
  v10 = a4;
  v17.receiver = self;
  v17.super_class = WBCollectionConfiguration;
  v11 = [(WBCollectionConfiguration *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_collectionType = a3;
    v11->_createIfNeeded = a6;
    v13 = [v10 copy];
    databasePath = v12->_databasePath;
    v12->_databasePath = v13;

    v12->_isReadonly = a5;
    v12->_skipsExternalNotifications = a3 == 1;
    v12->_storeOwner = 0;
    v15 = v12;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WBCollectionConfiguration alloc] initWithCollectionType:self->_collectionType databasePath:self->_databasePath readonly:self->_isReadonly createIfNeeded:self->_createIfNeeded];
  [(WBCollectionConfiguration *)v4 setSkipsExternalNotifications:self->_skipsExternalNotifications];
  [(WBCollectionConfiguration *)v4 setStoreOwner:self->_storeOwner];
  [(WBCollectionConfiguration *)v4 setDevice:self->_device];
  [(WBCollectionConfiguration *)v4 setIdentifier:self->_identifier];
  return v4;
}

@end