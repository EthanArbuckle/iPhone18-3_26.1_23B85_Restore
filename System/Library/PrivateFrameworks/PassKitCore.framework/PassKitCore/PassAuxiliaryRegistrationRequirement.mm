@interface PassAuxiliaryRegistrationRequirement
+ (BOOL)updateAuxiliaryRegistrationRequirement:(id)a3 passPID:(int64_t)a4 isRegistered:(BOOL)a5 inDatabase:(id)a6;
+ (BOOL)updateAuxiliaryRegistrationRequirementsForPassPID:(int64_t)a3 isRegistered:(BOOL)a4 inDatabase:(id)a5;
+ (BOOL)updateRegistrationStatusTo:(BOOL)a3 role:(unint64_t)a4 type:(unint64_t)a5 inDatabase:(id)a6;
+ (id)_predicateForPassPID:(int64_t)a3;
+ (id)_predicateForRole:(unint64_t)a3 type:(unint64_t)a4;
+ (id)_propertyValuesFor:(id)a3;
+ (id)_statusForQuery:(id)a3 inDatabase:(id)a4;
+ (id)auxiliaryRegistrationRequirementStatusForPassPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)auxiliaryRegistrationRequirementStatusForRequirement:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)unregisteredAuxiliaryRegistrationRequirementIdentifiersForPassPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteAuxiliaryRegistrationRequirementsForPassPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertOrUpdateAuxiliaryRegistrationRequirements:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5;
- (PassAuxiliaryRegistrationRequirement)initWithObject:(id)a3 forPassPID:(int64_t)a4 inDatabase:(id)a5;
- (void)updateWithObject:(id)a3;
@end

@implementation PassAuxiliaryRegistrationRequirement

- (PassAuxiliaryRegistrationRequirement)initWithObject:(id)a3 forPassPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() _propertyValuesFor:v9];

  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  [v10 setObjectOrNull:&__kCFBooleanFalse forKey:@"e"];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];

  return v12;
}

- (void)updateWithObject:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _propertyValuesFor:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)unregisteredAuxiliaryRegistrationRequirementIdentifiersForPassPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPassPID:a3];
  v23[0] = v7;
  v8 = [a1 _predicateForUnregistered];
  v23[1] = v8;
  v9 = [NSArray arrayWithObjects:v23 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  v11 = [a1 queryWithDatabase:v6 predicate:v10];

  v12 = objc_alloc_init(NSMutableArray);
  v22[0] = @"d";
  v22[1] = @"f";
  v13 = [NSArray arrayWithObjects:v22 count:2];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100199224;
  v20 = &unk_1008409E0;
  v14 = v12;
  v21 = v14;
  [v11 enumerateProperties:v13 usingBlock:&v17];

  if ([v14 count])
  {
    v15 = [v14 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)auxiliaryRegistrationRequirementStatusForPassPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPassPID:a3];
  v13 = v7;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  v10 = [a1 queryWithDatabase:v6 predicate:v9];
  v11 = [a1 _statusForQuery:v10 inDatabase:v6];

  return v11;
}

+ (id)auxiliaryRegistrationRequirementStatusForRequirement:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 _predicateForPassPID:a4];
  v19[0] = v10;
  v11 = [v9 identifier];

  v12 = [a1 _predicateForIdentifier:v11];
  v19[1] = v12;
  v13 = [NSArray arrayWithObjects:v19 count:2];
  v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

  v15 = [a1 queryWithDatabase:v8 predicate:v14];
  v16 = [a1 _statusForQuery:v15 inDatabase:v8];

  v17 = [v16 firstObject];

  return v17;
}

+ (id)_statusForQuery:(id)a3 inDatabase:(id)a4
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v12[0] = @"d";
  v12[1] = @"e";
  v12[2] = @"f";
  v6 = [NSArray arrayWithObjects:v12 count:3];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10019968C;
  v10[3] = &unk_1008409E0;
  v7 = v5;
  v11 = v7;
  [v4 enumerateProperties:v6 usingBlock:v10];

  if ([v7 count])
  {
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)insertOrUpdateAuxiliaryRegistrationRequirements:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5
{
  v7 = a3;
  v8 = a5;
  v26 = objc_alloc_init(NSMutableSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v27)
  {
    v23 = a4;
    v24 = *v29;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [a1 _predicateForPassPID:a4];
        v33[0] = v12;
        v13 = [a1 _predicateForIdentifier:v11];
        v33[1] = v13;
        v14 = [NSArray arrayWithObjects:v33 count:2];
        v15 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v14];
        v16 = [a1 anyInDatabase:v8 predicate:v15];

        if (v16)
        {
          [(PassAuxiliaryRegistrationRequirement *)v16 updateWithObject:v10];
          a4 = v23;
        }

        else
        {
          a4 = v23;
          v16 = [[PassAuxiliaryRegistrationRequirement alloc] initWithObject:v10 forPassPID:v23 inDatabase:v8];
        }

        [v26 addObject:v11];
      }

      v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v27);
  }

  v17 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"d" values:v26];
  v32[0] = v17;
  v18 = [a1 _predicateForPassPID:a4];
  v32[1] = v18;
  v19 = [NSArray arrayWithObjects:v32 count:2];
  v20 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v19];

  v21 = [a1 queryWithDatabase:v8 predicate:v20];
  [v21 deleteAllEntities];
}

+ (void)deleteAuxiliaryRegistrationRequirementsForPassPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPassPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  [v8 deleteAllEntities];
}

+ (BOOL)updateAuxiliaryRegistrationRequirement:(id)a3 passPID:(int64_t)a4 isRegistered:(BOOL)a5 inDatabase:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v12 = [a1 _predicateForPassPID:a4];
  v22[0] = v12;
  v13 = [v10 identifier];
  v14 = [a1 _predicateForIdentifier:v13];
  v22[1] = v14;
  v15 = [NSArray arrayWithObjects:v22 count:2];
  v16 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v15];

  v17 = [a1 anyInDatabase:v11 predicate:v16];
  if (!v17)
  {
    v17 = [[PassAuxiliaryRegistrationRequirement alloc] initWithObject:v10 forPassPID:a4 inDatabase:v11];
  }

  v18 = [NSNumber numberWithBool:v7];
  if ([(SQLiteEntity *)v17 setValue:v18 forProperty:@"e"])
  {
    v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 registrationBackoffCounter]);
    v20 = [(SQLiteEntity *)v17 setValue:v19 forProperty:@"f"];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)updateAuxiliaryRegistrationRequirementsForPassPID:(int64_t)a3 isRegistered:(BOOL)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a1 _predicateForPassPID:a3];
  v24 = v9;
  v10 = [NSArray arrayWithObjects:&v24 count:1];
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v12 = [a1 queryWithDatabase:v8 predicate:v11];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100199E0C;
  v16[3] = &unk_10084AE48;
  v13 = v8;
  v17 = v13;
  v18 = &v20;
  v19 = a4;
  [v12 enumeratePersistentIDsUsingBlock:v16];
  v14 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v14 & 1;
}

+ (BOOL)updateRegistrationStatusTo:(BOOL)a3 role:(unint64_t)a4 type:(unint64_t)a5 inDatabase:(id)a6
{
  v10 = a6;
  v11 = [a1 _predicateForRole:a4 type:a5];
  if (v11)
  {
    v12 = [a1 queryWithDatabase:v10 predicate:v11];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10019A000;
    v15[3] = &unk_10084AE48;
    v16 = v10;
    v17 = &v19;
    v18 = a3;
    [v12 enumeratePersistentIDsUsingBlock:v15];
    v13 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

+ (id)_predicateForPassPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForRole:(unint64_t)a3 type:(unint64_t)a4
{
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = PKDeviceDecryptionTypeToString();
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"c" equalToValue:v4];
  }

  v6 = PKDeviceSignatureTypeToString();
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"c" equalToValue:v6];

  if (v7)
  {
    v8 = PKAuxiliaryCapabilityRoleToString();
    v9 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v8];
    v13[0] = v9;
    v13[1] = v7;
    v10 = [NSArray arrayWithObjects:v13 count:2];
    v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

    goto LABEL_7;
  }

LABEL_6:
  v11 = 0;
LABEL_7:

  return v11;
}

+ (id)_propertyValuesFor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v3 role];
  v5 = PKAuxiliaryCapabilityRoleToString();
  [v4 setObjectOrNull:v5 forKey:@"b"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 type];
    v6 = PKDeviceSignatureTypeToString();
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    [v3 type];
    v6 = PKDeviceDecryptionTypeToString();
  }

  v7 = v6;
  [v4 setObjectOrNull:v6 forKey:@"c"];

LABEL_6:
  v8 = [v3 identifier];
  [v4 setObjectOrNull:v8 forKey:@"d"];

  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 registrationBackoffCounter]);
  [v4 setObjectOrNull:v9 forKey:@"f"];

  return v4;
}

@end