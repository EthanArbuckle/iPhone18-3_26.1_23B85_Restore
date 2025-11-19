@interface PendingCarKeyProvisioning
+ (BOOL)inflatePendingProvisioning:(id)a3 forBasePendingProvisioningPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)_predicateForBasePendingProvisioningPID:(int64_t)a3;
+ (id)_properties;
+ (id)_propertySetters;
+ (id)insertPendingProvisioning:(id)a3 forBasePendingProvisioning:(id)a4 inDatabase:(id)a5;
+ (void)deleteEntitiesForBasePendingProvisioningPID:(int64_t)a3 inDatabase:(id)a4;
- (PendingCarKeyProvisioning)initWithPendingProvisioning:(id)a3 forBasePendingProvisioning:(id)a4 inDatabase:(id)a5;
@end

@implementation PendingCarKeyProvisioning

- (PendingCarKeyProvisioning)initWithPendingProvisioning:(id)a3 forBasePendingProvisioning:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setEntityPIDOrNull:v9 forKey:@"base_pid"];

  v12 = [v10 configuration];

  v13 = [v12 manufacturerIdentifier];
  [v11 setObjectOrNull:v13 forKey:@"a"];

  v14 = [v12 issuerIdentifier];
  [v11 setObjectOrNull:v14 forKey:@"b"];

  v15 = [v12 provisioningTemplateIdentifier];
  [v11 setObjectOrNull:v15 forKey:@"c"];

  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 supportedRadioTechnologies]);
  [v11 setObjectOrNull:v16 forKey:@"d"];

  v17 = [v12 productPlanIdentifier];
  [v11 setObjectOrNull:v17 forKey:@"e"];

  v18 = [v12 vehicleName];
  [v11 setObjectOrNull:v18 forKey:@"f"];

  v19 = [v12 pairedReaderIdentifier];
  [v11 setObjectOrNull:v19 forKey:@"g"];

  v20 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:v8];
  return v20;
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
    v22 = sub_1000059E0;
    v23 = sub_10000B0FC;
    v24 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100078F18;
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
    v11 = [(SQLiteEntity *)PendingCarKeyProvisioning queryWithDatabase:v9 predicate:v10 orderingProperties:0 orderingDirections:0 limit:1];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v12 = [a1 _properties];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000790E4;
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
  v7 = [(SQLiteEntity *)PendingCarKeyProvisioning queryWithDatabase:v6 predicate:v8];

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