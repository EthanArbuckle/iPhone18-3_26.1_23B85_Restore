@interface MBManifest
+ (MBManifest)manifestWithProperties:(id)properties database:(id)database databaseIndex:(id)index;
- (MBDatabaseIndex)databaseIndex;
- (MBManifest)initWithProperties:(id)properties database:(id)database databaseIndex:(id)index;
- (id)fileWithID:(id)d;
- (void)buildIndexFromDatabaseIfNeeded;
@end

@implementation MBManifest

+ (MBManifest)manifestWithProperties:(id)properties database:(id)database databaseIndex:(id)index
{
  indexCopy = index;
  databaseCopy = database;
  propertiesCopy = properties;
  v10 = [[MBManifest alloc] initWithProperties:propertiesCopy database:databaseCopy databaseIndex:indexCopy];

  return v10;
}

- (MBManifest)initWithProperties:(id)properties database:(id)database databaseIndex:(id)index
{
  propertiesCopy = properties;
  databaseCopy = database;
  indexCopy = index;
  if (propertiesCopy)
  {
    if (databaseCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10009E2C4(a2, self);
    if (databaseCopy)
    {
      goto LABEL_3;
    }
  }

  sub_10009E338(a2, self);
LABEL_3:
  v16.receiver = self;
  v16.super_class = MBManifest;
  v13 = [(MBManifest *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_properties, properties);
    objc_storeStrong(&v14->_database, database);
    objc_storeStrong(&v14->_databaseIndex, index);
  }

  return v14;
}

- (MBDatabaseIndex)databaseIndex
{
  databaseIndex = self->_databaseIndex;
  if (databaseIndex)
  {
  }

  else
  {
    sub_10009E3AC();
    databaseIndex = v5;
  }

  return databaseIndex;
}

- (id)fileWithID:(id)d
{
  dCopy = d;
  databaseIndex = self->_databaseIndex;
  if (!databaseIndex)
  {
    sub_10009E41C();
    databaseIndex = v18;
  }

  v6 = [(MBDatabaseIndex *)databaseIndex offsetForFileID:dCopy];
  if (v6 < 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MBDatabase *)self->_database fileAtOffset:v6];
    fileID = [v7 fileID];
    v9 = [fileID isEqualToFileID:dCopy];

    if ((v9 & 1) == 0)
    {
      v10 = [MBException alloc];
      domain = [v7 domain];
      name = [domain name];
      relativePath = [v7 relativePath];
      fileID2 = [v7 fileID];
      v15 = [v10 initWithCode:11 format:{@"File ID doesn't match index: %@-%@ (%@ vs %@)", name, relativePath, fileID2, dCopy}];
      v16 = v15;

      objc_exception_throw(v15);
    }
  }

  return v7;
}

- (void)buildIndexFromDatabaseIfNeeded
{
  if (!self->_databaseIndex)
  {
    v9 = v2;
    v10 = v3;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Building index from database", v8, 2u);
      _MBLog();
    }

    v6 = [(MBDatabase *)self->_database indexFromDatabaseIgnoringTruncation:0];
    databaseIndex = self->_databaseIndex;
    self->_databaseIndex = v6;
  }
}

@end