@interface MBManifest
+ (MBManifest)manifestWithProperties:(id)a3 database:(id)a4 databaseIndex:(id)a5;
- (MBDatabaseIndex)databaseIndex;
- (MBManifest)initWithProperties:(id)a3 database:(id)a4 databaseIndex:(id)a5;
- (id)fileWithID:(id)a3;
- (void)buildIndexFromDatabaseIfNeeded;
@end

@implementation MBManifest

+ (MBManifest)manifestWithProperties:(id)a3 database:(id)a4 databaseIndex:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MBManifest alloc] initWithProperties:v9 database:v8 databaseIndex:v7];

  return v10;
}

- (MBManifest)initWithProperties:(id)a3 database:(id)a4 databaseIndex:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10009E2C4(a2, self);
    if (v11)
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
    objc_storeStrong(&v13->_properties, a3);
    objc_storeStrong(&v14->_database, a4);
    objc_storeStrong(&v14->_databaseIndex, a5);
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

- (id)fileWithID:(id)a3
{
  v4 = a3;
  databaseIndex = self->_databaseIndex;
  if (!databaseIndex)
  {
    sub_10009E41C();
    databaseIndex = v18;
  }

  v6 = [(MBDatabaseIndex *)databaseIndex offsetForFileID:v4];
  if (v6 < 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MBDatabase *)self->_database fileAtOffset:v6];
    v8 = [v7 fileID];
    v9 = [v8 isEqualToFileID:v4];

    if ((v9 & 1) == 0)
    {
      v10 = [MBException alloc];
      v11 = [v7 domain];
      v12 = [v11 name];
      v13 = [v7 relativePath];
      v14 = [v7 fileID];
      v15 = [v10 initWithCode:11 format:{@"File ID doesn't match index: %@-%@ (%@ vs %@)", v12, v13, v14, v4}];
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