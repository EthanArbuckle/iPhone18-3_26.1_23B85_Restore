@interface WBCollectionConfiguration
+ (id)debugTabCollectionConfiguration;
+ (id)inMemoryBookmarkCollectionConfiguration;
+ (id)inMemoryTabCollectionConfiguration;
+ (id)pptTabCollectionConfiguration;
+ (id)readonlySafariBookmarkCollectionConfiguration;
+ (id)readonlySafariTabCollectionConfiguration;
+ (id)safariBookmarkCollectionConfiguration;
+ (id)safariTabCollectionConfiguration;
+ (id)sharedInMemoryTabCollectionConfigurationWithIdentifier:(id)identifier;
- (BOOL)isInMemoryDatabase;
- (WBCollectionConfiguration)initWithCollectionType:(int64_t)type databasePath:(id)path readonly:(BOOL)readonly createIfNeeded:(BOOL)needed;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation WBCollectionConfiguration

+ (id)readonlySafariBookmarkCollectionConfiguration
{
  v2 = [[self alloc] initWithCollectionType:0 databasePath:0 readonly:1];

  return v2;
}

+ (id)safariTabCollectionConfiguration
{
  v2 = [[self alloc] initWithCollectionType:1 databasePath:0 readonly:0];
  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  [v2 setDevice:currentDevice];

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
  v2 = [[self alloc] initWithCollectionType:0 databasePath:0 readonly:0];

  return v2;
}

+ (id)inMemoryBookmarkCollectionConfiguration
{
  v2 = [[self alloc] initWithCollectionType:0 databasePath:@":memory:" readonly:0];

  return v2;
}

+ (id)readonlySafariTabCollectionConfiguration
{
  v2 = [[self alloc] initWithCollectionType:1 databasePath:0 readonly:1 createIfNeeded:1];
  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  [v2 setDevice:currentDevice];

  return v2;
}

+ (id)inMemoryTabCollectionConfiguration
{
  v2 = [[self alloc] initWithCollectionType:1 databasePath:@":memory:" readonly:0];
  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  [v2 setDevice:currentDevice];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v2 setIdentifier:uUIDString];

  return v2;
}

+ (id)sharedInMemoryTabCollectionConfigurationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self alloc];
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"file:%@?mode=memory&cache=shared", identifierCopy];
  v7 = [v5 initWithCollectionType:1 databasePath:identifierCopy readonly:0];

  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  [v7 setDevice:currentDevice];

  [v7 setIdentifier:identifierCopy];

  return v7;
}

+ (id)pptTabCollectionConfiguration
{
  v2 = [[self alloc] initWithCollectionType:1 databasePath:@"/var/mobile/Library/Safari/SafariTabsPPT.db" readonly:1];
  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  [v2 setDevice:currentDevice];

  return v2;
}

+ (id)debugTabCollectionConfiguration
{
  safariTabCollectionConfiguration = [self safariTabCollectionConfiguration];
  [safariTabCollectionConfiguration setStoreOwner:1];
  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  [safariTabCollectionConfiguration setDevice:currentDevice];

  return safariTabCollectionConfiguration;
}

- (WBCollectionConfiguration)initWithCollectionType:(int64_t)type databasePath:(id)path readonly:(BOOL)readonly createIfNeeded:(BOOL)needed
{
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = WBCollectionConfiguration;
  v11 = [(WBCollectionConfiguration *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_collectionType = type;
    v11->_createIfNeeded = needed;
    v13 = [pathCopy copy];
    databasePath = v12->_databasePath;
    v12->_databasePath = v13;

    v12->_isReadonly = readonly;
    v12->_skipsExternalNotifications = type == 1;
    v12->_storeOwner = 0;
    v15 = v12;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WBCollectionConfiguration alloc] initWithCollectionType:self->_collectionType databasePath:self->_databasePath readonly:self->_isReadonly createIfNeeded:self->_createIfNeeded];
  [(WBCollectionConfiguration *)v4 setSkipsExternalNotifications:self->_skipsExternalNotifications];
  [(WBCollectionConfiguration *)v4 setStoreOwner:self->_storeOwner];
  [(WBCollectionConfiguration *)v4 setDevice:self->_device];
  [(WBCollectionConfiguration *)v4 setIdentifier:self->_identifier];
  return v4;
}

@end