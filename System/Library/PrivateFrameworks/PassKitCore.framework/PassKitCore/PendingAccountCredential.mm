@interface PendingAccountCredential
+ (BOOL)inflatePendingProvisioning:(id)provisioning forBasePendingProvisioningPID:(int64_t)d inDatabase:(id)database;
+ (id)_predicateForBasePendingProvisioningPID:(int64_t)d;
+ (id)_properties;
+ (id)_propertySetters;
+ (id)insertPendingProvisioning:(id)provisioning forBasePendingProvisioning:(id)pendingProvisioning inDatabase:(id)database;
+ (void)deleteEntitiesForBasePendingProvisioningPID:(int64_t)d inDatabase:(id)database;
- (PendingAccountCredential)initWithPendingProvisioning:(id)provisioning forBasePendingProvisioning:(id)pendingProvisioning inDatabase:(id)database;
@end

@implementation PendingAccountCredential

- (PendingAccountCredential)initWithPendingProvisioning:(id)provisioning forBasePendingProvisioning:(id)pendingProvisioning inDatabase:(id)database
{
  databaseCopy = database;
  pendingProvisioningCopy = pendingProvisioning;
  provisioningCopy = provisioning;
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setEntityPIDOrNull:pendingProvisioningCopy forKey:@"base_pid"];

  accountIdentifier = [provisioningCopy accountIdentifier];
  [v11 setObjectOrNull:accountIdentifier forKey:@"a"];

  [provisioningCopy feature];
  v13 = PKFeatureIdentifierToString();
  [v11 setObjectOrNull:v13 forKey:@"b"];

  sharingInstanceIdentifier = [provisioningCopy sharingInstanceIdentifier];

  [v11 setObjectOrNull:sharingInstanceIdentifier forKey:@"c"];
  v15 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:databaseCopy];

  return v15;
}

+ (id)insertPendingProvisioning:(id)provisioning forBasePendingProvisioning:(id)pendingProvisioning inDatabase:(id)database
{
  provisioningCopy = provisioning;
  pendingProvisioningCopy = pendingProvisioning;
  databaseCopy = database;
  v11 = 0;
  if (provisioningCopy && pendingProvisioningCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_1000059B0;
    v23 = sub_10000B0E4;
    v24 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100052090;
    v13[3] = &unk_10083F200;
    v17 = &v19;
    selfCopy = self;
    v14 = provisioningCopy;
    v15 = pendingProvisioningCopy;
    v16 = databaseCopy;
    sub_1005D4424(v16, v13);
    v11 = v20[5];

    _Block_object_dispose(&v19, 8);
  }

  return v11;
}

+ (BOOL)inflatePendingProvisioning:(id)provisioning forBasePendingProvisioningPID:(int64_t)d inDatabase:(id)database
{
  provisioningCopy = provisioning;
  databaseCopy = database;
  if (provisioningCopy)
  {
    v10 = [self _predicateForBasePendingProvisioningPID:d];
    v11 = [(SQLiteEntity *)PendingAccountCredential queryWithDatabase:databaseCopy predicate:v10 orderingProperties:0 orderingDirections:0 limit:1];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    _properties = [self _properties];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005225C;
    v15[3] = &unk_10083F228;
    selfCopy = self;
    v16 = provisioningCopy;
    v17 = &v19;
    [v11 enumeratePersistentIDsAndProperties:_properties usingBlock:v15];

    v13 = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

+ (void)deleteEntitiesForBasePendingProvisioningPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForBasePendingProvisioningPID:d];
  v7 = [(SQLiteEntity *)PendingAccountCredential queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForBasePendingProvisioningPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"base_pid" equalToValue:v3];

  return v4;
}

+ (id)_properties
{
  v4[0] = @"a";
  v4[1] = @"b";
  v4[2] = @"c";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)_propertySetters
{
  v4[0] = @"a";
  v4[1] = @"b";
  v5[0] = &stru_10083F268;
  v5[1] = &stru_10083F288;
  v4[2] = @"c";
  v5[2] = &stru_10083F2A8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end