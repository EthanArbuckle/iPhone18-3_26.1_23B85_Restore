@interface PersistentStoreConfiguration
- (PersistentStoreConfiguration)initWithStoreType:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation PersistentStoreConfiguration

- (PersistentStoreConfiguration)initWithStoreType:(int)type
{
  v9.receiver = self;
  v9.super_class = PersistentStoreConfiguration;
  v4 = [(PersistentStoreConfiguration *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_storeType = type;
    if (!type)
    {
      v4->_databaseFileName = [[NSString alloc] initWithString:@"itunesstored2.sqlitedb"];
      v6 = [[NSArray alloc] initWithObjects:{@"itunesstored", @"itunesstored.2.0", @"itunesstored.3.0", @"itunesstored.4.0", @"itunesstored.5", @"itunesstored.6", @"itunesstored.7", @"itunesstored.7.1", @"itunesstored.8", @"itunesstored.8.1", @"itunesstored.8.3", @"itunesstored.10.3", 0}];
      v7 = @"itunesstored.momd";
      goto LABEL_6;
    }

    if (type == 1)
    {
      v4->_databaseFileName = [[NSString alloc] initWithString:@"itunesstored_private.sqlitedb"];
      v6 = [[NSArray alloc] initWithObjects:{@"itunesstored_private", @"itunesstored_private.2.0", 0}];
      v7 = @"itunesstored_private.momd";
LABEL_6:
      v5->_legacyModelVersionIdentifiers = v6;
      v5->_modelFileName = [[NSString alloc] initWithString:v7];
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PersistentStoreConfiguration;
  [(PersistentStoreConfiguration *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSString *)self->_databaseFileName copyWithZone:zone];
  v5[2] = [(NSArray *)self->_legacyModelVersionIdentifiers copyWithZone:zone];
  v5[3] = [(NSString *)self->_modelFileName copyWithZone:zone];
  *(v5 + 8) = self->_storeType;
  return v5;
}

@end