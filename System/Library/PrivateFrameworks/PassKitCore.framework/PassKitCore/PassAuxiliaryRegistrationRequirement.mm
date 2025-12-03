@interface PassAuxiliaryRegistrationRequirement
+ (BOOL)updateAuxiliaryRegistrationRequirement:(id)requirement passPID:(int64_t)d isRegistered:(BOOL)registered inDatabase:(id)database;
+ (BOOL)updateAuxiliaryRegistrationRequirementsForPassPID:(int64_t)d isRegistered:(BOOL)registered inDatabase:(id)database;
+ (BOOL)updateRegistrationStatusTo:(BOOL)to role:(unint64_t)role type:(unint64_t)type inDatabase:(id)database;
+ (id)_predicateForPassPID:(int64_t)d;
+ (id)_predicateForRole:(unint64_t)role type:(unint64_t)type;
+ (id)_propertyValuesFor:(id)for;
+ (id)_statusForQuery:(id)query inDatabase:(id)database;
+ (id)auxiliaryRegistrationRequirementStatusForPassPID:(int64_t)d inDatabase:(id)database;
+ (id)auxiliaryRegistrationRequirementStatusForRequirement:(id)requirement passPID:(int64_t)d inDatabase:(id)database;
+ (id)unregisteredAuxiliaryRegistrationRequirementIdentifiersForPassPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteAuxiliaryRegistrationRequirementsForPassPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdateAuxiliaryRegistrationRequirements:(id)requirements passPID:(int64_t)d inDatabase:(id)database;
- (PassAuxiliaryRegistrationRequirement)initWithObject:(id)object forPassPID:(int64_t)d inDatabase:(id)database;
- (void)updateWithObject:(id)object;
@end

@implementation PassAuxiliaryRegistrationRequirement

- (PassAuxiliaryRegistrationRequirement)initWithObject:(id)object forPassPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  objectCopy = object;
  v10 = [objc_opt_class() _propertyValuesFor:objectCopy];

  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  [v10 setObjectOrNull:&__kCFBooleanFalse forKey:@"e"];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];

  return v12;
}

- (void)updateWithObject:(id)object
{
  objectCopy = object;
  v5 = [objc_opt_class() _propertyValuesFor:objectCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)unregisteredAuxiliaryRegistrationRequirementIdentifiersForPassPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPassPID:d];
  v23[0] = v7;
  _predicateForUnregistered = [self _predicateForUnregistered];
  v23[1] = _predicateForUnregistered;
  v9 = [NSArray arrayWithObjects:v23 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  v11 = [self queryWithDatabase:databaseCopy predicate:v10];

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

+ (id)auxiliaryRegistrationRequirementStatusForPassPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPassPID:d];
  v13 = v7;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  v10 = [self queryWithDatabase:databaseCopy predicate:v9];
  v11 = [self _statusForQuery:v10 inDatabase:databaseCopy];

  return v11;
}

+ (id)auxiliaryRegistrationRequirementStatusForRequirement:(id)requirement passPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  requirementCopy = requirement;
  v10 = [self _predicateForPassPID:d];
  v19[0] = v10;
  identifier = [requirementCopy identifier];

  v12 = [self _predicateForIdentifier:identifier];
  v19[1] = v12;
  v13 = [NSArray arrayWithObjects:v19 count:2];
  v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

  v15 = [self queryWithDatabase:databaseCopy predicate:v14];
  v16 = [self _statusForQuery:v15 inDatabase:databaseCopy];

  firstObject = [v16 firstObject];

  return firstObject;
}

+ (id)_statusForQuery:(id)query inDatabase:(id)database
{
  queryCopy = query;
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
  [queryCopy enumerateProperties:v6 usingBlock:v10];

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

+ (void)insertOrUpdateAuxiliaryRegistrationRequirements:(id)requirements passPID:(int64_t)d inDatabase:(id)database
{
  requirementsCopy = requirements;
  databaseCopy = database;
  v26 = objc_alloc_init(NSMutableSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = requirementsCopy;
  v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v27)
  {
    dCopy = d;
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
        identifier = [v10 identifier];
        v12 = [self _predicateForPassPID:d];
        v33[0] = v12;
        v13 = [self _predicateForIdentifier:identifier];
        v33[1] = v13;
        v14 = [NSArray arrayWithObjects:v33 count:2];
        v15 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v14];
        v16 = [self anyInDatabase:databaseCopy predicate:v15];

        if (v16)
        {
          [(PassAuxiliaryRegistrationRequirement *)v16 updateWithObject:v10];
          d = dCopy;
        }

        else
        {
          d = dCopy;
          v16 = [[PassAuxiliaryRegistrationRequirement alloc] initWithObject:v10 forPassPID:dCopy inDatabase:databaseCopy];
        }

        [v26 addObject:identifier];
      }

      v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v27);
  }

  v17 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"d" values:v26];
  v32[0] = v17;
  v18 = [self _predicateForPassPID:d];
  v32[1] = v18;
  v19 = [NSArray arrayWithObjects:v32 count:2];
  v20 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v19];

  v21 = [self queryWithDatabase:databaseCopy predicate:v20];
  [v21 deleteAllEntities];
}

+ (void)deleteAuxiliaryRegistrationRequirementsForPassPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPassPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

+ (BOOL)updateAuxiliaryRegistrationRequirement:(id)requirement passPID:(int64_t)d isRegistered:(BOOL)registered inDatabase:(id)database
{
  registeredCopy = registered;
  requirementCopy = requirement;
  databaseCopy = database;
  v12 = [self _predicateForPassPID:d];
  v22[0] = v12;
  identifier = [requirementCopy identifier];
  v14 = [self _predicateForIdentifier:identifier];
  v22[1] = v14;
  v15 = [NSArray arrayWithObjects:v22 count:2];
  v16 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v15];

  v17 = [self anyInDatabase:databaseCopy predicate:v16];
  if (!v17)
  {
    v17 = [[PassAuxiliaryRegistrationRequirement alloc] initWithObject:requirementCopy forPassPID:d inDatabase:databaseCopy];
  }

  v18 = [NSNumber numberWithBool:registeredCopy];
  if ([(SQLiteEntity *)v17 setValue:v18 forProperty:@"e"])
  {
    v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [requirementCopy registrationBackoffCounter]);
    v20 = [(SQLiteEntity *)v17 setValue:v19 forProperty:@"f"];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)updateAuxiliaryRegistrationRequirementsForPassPID:(int64_t)d isRegistered:(BOOL)registered inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [self _predicateForPassPID:d];
  v24 = v9;
  v10 = [NSArray arrayWithObjects:&v24 count:1];
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v12 = [self queryWithDatabase:databaseCopy predicate:v11];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100199E0C;
  v16[3] = &unk_10084AE48;
  v13 = databaseCopy;
  v17 = v13;
  v18 = &v20;
  registeredCopy = registered;
  [v12 enumeratePersistentIDsUsingBlock:v16];
  v14 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v14 & 1;
}

+ (BOOL)updateRegistrationStatusTo:(BOOL)to role:(unint64_t)role type:(unint64_t)type inDatabase:(id)database
{
  databaseCopy = database;
  v11 = [self _predicateForRole:role type:type];
  if (v11)
  {
    v12 = [self queryWithDatabase:databaseCopy predicate:v11];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10019A000;
    v15[3] = &unk_10084AE48;
    v16 = databaseCopy;
    v17 = &v19;
    toCopy = to;
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

+ (id)_predicateForPassPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForRole:(unint64_t)role type:(unint64_t)type
{
  if (role != 2)
  {
    if (role != 1)
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

+ (id)_propertyValuesFor:(id)for
{
  forCopy = for;
  v4 = objc_alloc_init(NSMutableDictionary);
  [forCopy role];
  v5 = PKAuxiliaryCapabilityRoleToString();
  [v4 setObjectOrNull:v5 forKey:@"b"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [forCopy type];
    v6 = PKDeviceSignatureTypeToString();
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    [forCopy type];
    v6 = PKDeviceDecryptionTypeToString();
  }

  v7 = v6;
  [v4 setObjectOrNull:v6 forKey:@"c"];

LABEL_6:
  identifier = [forCopy identifier];
  [v4 setObjectOrNull:identifier forKey:@"d"];

  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [forCopy registrationBackoffCounter]);
  [v4 setObjectOrNull:v9 forKey:@"f"];

  return v4;
}

@end