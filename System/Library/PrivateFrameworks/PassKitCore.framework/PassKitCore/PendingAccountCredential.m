@interface PendingAccountCredential
+ (BOOL)inflatePendingProvisioning:(id)a3 forBasePendingProvisioningPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)_predicateForBasePendingProvisioningPID:(int64_t)a3;
+ (id)_properties;
+ (id)_propertySetters;
+ (id)insertPendingProvisioning:(id)a3 forBasePendingProvisioning:(id)a4 inDatabase:(id)a5;
+ (void)deleteEntitiesForBasePendingProvisioningPID:(int64_t)a3 inDatabase:(id)a4;
- (PendingAccountCredential)initWithPendingProvisioning:(id)a3 forBasePendingProvisioning:(id)a4 inDatabase:(id)a5;
@end

@implementation PendingAccountCredential

- (PendingAccountCredential)initWithPendingProvisioning:(id)a3 forBasePendingProvisioning:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setEntityPIDOrNull:v9 forKey:@"base_pid"];

  v12 = [v10 accountIdentifier];
  [v11 setObjectOrNull:v12 forKey:@"a"];

  [v10 feature];
  v13 = PKFeatureIdentifierToString();
  [v11 setObjectOrNull:v13 forKey:@"b"];

  v14 = [v10 sharingInstanceIdentifier];

  [v11 setObjectOrNull:v14 forKey:@"c"];
  v15 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:v8];

  return v15;
}

+ (id)insertPendingProvisioning:(id)a3 forBasePendingProvisioning:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  if (v8 && v9)
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
    v18 = a1;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    sub_1005D4424(v16, v13);
    v11 = v20[5];

    _Block_object_dispose(&v19, 8);
  }

  return v11;
}

+ (BOOL)inflatePendingProvisioning:(id)a3 forBasePendingProvisioningPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [a1 _predicateForBasePendingProvisioningPID:a4];
    v11 = [(SQLiteEntity *)PendingAccountCredential queryWithDatabase:v9 predicate:v10 orderingProperties:0 orderingDirections:0 limit:1];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v12 = [a1 _properties];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005225C;
    v15[3] = &unk_10083F228;
    v18 = a1;
    v16 = v8;
    v17 = &v19;
    [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:v15];

    v13 = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

+ (void)deleteEntitiesForBasePendingProvisioningPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForBasePendingProvisioningPID:a3];
  v7 = [(SQLiteEntity *)PendingAccountCredential queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForBasePendingProvisioningPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
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