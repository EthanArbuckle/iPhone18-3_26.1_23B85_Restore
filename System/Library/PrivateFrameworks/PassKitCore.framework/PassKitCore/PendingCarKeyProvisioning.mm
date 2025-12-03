@interface PendingCarKeyProvisioning
+ (BOOL)inflatePendingProvisioning:(id)provisioning forBasePendingProvisioningPID:(int64_t)d inDatabase:(id)database;
+ (id)_predicateForBasePendingProvisioningPID:(int64_t)d;
+ (id)_properties;
+ (id)_propertySetters;
+ (id)insertPendingProvisioning:(id)provisioning forBasePendingProvisioning:(id)pendingProvisioning inDatabase:(id)database;
+ (void)deleteEntitiesForBasePendingProvisioningPID:(int64_t)d inDatabase:(id)database;
- (PendingCarKeyProvisioning)initWithPendingProvisioning:(id)provisioning forBasePendingProvisioning:(id)pendingProvisioning inDatabase:(id)database;
@end

@implementation PendingCarKeyProvisioning

- (PendingCarKeyProvisioning)initWithPendingProvisioning:(id)provisioning forBasePendingProvisioning:(id)pendingProvisioning inDatabase:(id)database
{
  databaseCopy = database;
  pendingProvisioningCopy = pendingProvisioning;
  provisioningCopy = provisioning;
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setEntityPIDOrNull:pendingProvisioningCopy forKey:@"base_pid"];

  configuration = [provisioningCopy configuration];

  manufacturerIdentifier = [configuration manufacturerIdentifier];
  [v11 setObjectOrNull:manufacturerIdentifier forKey:@"a"];

  issuerIdentifier = [configuration issuerIdentifier];
  [v11 setObjectOrNull:issuerIdentifier forKey:@"b"];

  provisioningTemplateIdentifier = [configuration provisioningTemplateIdentifier];
  [v11 setObjectOrNull:provisioningTemplateIdentifier forKey:@"c"];

  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [configuration supportedRadioTechnologies]);
  [v11 setObjectOrNull:v16 forKey:@"d"];

  productPlanIdentifier = [configuration productPlanIdentifier];
  [v11 setObjectOrNull:productPlanIdentifier forKey:@"e"];

  vehicleName = [configuration vehicleName];
  [v11 setObjectOrNull:vehicleName forKey:@"f"];

  pairedReaderIdentifier = [configuration pairedReaderIdentifier];
  [v11 setObjectOrNull:pairedReaderIdentifier forKey:@"g"];

  v20 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:databaseCopy];
  return v20;
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
    v22 = sub_1000059E0;
    v23 = sub_10000B0FC;
    v24 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100078F18;
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
    v11 = [(SQLiteEntity *)PendingCarKeyProvisioning queryWithDatabase:databaseCopy predicate:v10 orderingProperties:0 orderingDirections:0 limit:1];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    _properties = [self _properties];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000790E4;
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
  v7 = [(SQLiteEntity *)PendingCarKeyProvisioning queryWithDatabase:databaseCopy predicate:v8];

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
  v4[3] = @"d";
  v4[4] = @"e";
  v4[5] = @"f";
  v4[6] = @"g";
  v2 = [NSArray arrayWithObjects:v4 count:7];

  return v2;
}

+ (id)_propertySetters
{
  v4[0] = @"a";
  v4[1] = @"b";
  v5[0] = &stru_100840A20;
  v5[1] = &stru_100840A40;
  v4[2] = @"c";
  v4[3] = @"d";
  v5[2] = &stru_100840A60;
  v5[3] = &stru_100840A80;
  v4[4] = @"e";
  v4[5] = @"f";
  v5[4] = &stru_100840AA0;
  v5[5] = &stru_100840AC0;
  v4[6] = @"g";
  v5[6] = &stru_100840AE0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];

  return v2;
}

@end