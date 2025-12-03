@interface PassLegalAgreement
+ (id)_allProperties;
+ (id)_passLegalAgreementsForQuery:(id)query inDatabase:(id)database;
+ (id)_predicateForPassPID:(int64_t)d;
+ (id)_propertySettersForObject;
+ (id)_propertyValuesFor:(id)for;
+ (id)passLegalAgreementsForPassPID:(int64_t)d inDatabase:(id)database;
+ (id)passLegalAgreementsInDatabase:(id)database;
+ (void)bulkInsertOrUpdate:(id)update passPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteForPassPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdate:(id)update passPID:(int64_t)d inDatabase:(id)database;
- (PassLegalAgreement)initWithObject:(id)object passPID:(int64_t)d inDatabase:(id)database;
- (id)agreement;
- (void)updateWithObject:(id)object;
@end

@implementation PassLegalAgreement

+ (id)_propertySettersForObject
{
  v4[0] = @"identifier";
  v4[1] = @"type";
  v5[0] = &stru_100847088;
  v5[1] = &stru_1008470A8;
  v4[2] = @"agreement_updated";
  v4[3] = @"remove_pass_on_decline";
  v5[2] = &stru_1008470C8;
  v5[3] = &stru_1008470E8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)_allProperties
{
  v4[0] = @"type";
  v4[1] = @"identifier";
  v4[2] = @"agreement_updated";
  v4[3] = @"remove_pass_on_decline";
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (PassLegalAgreement)initWithObject:(id)object passPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  objectCopy = object;
  v10 = [objc_opt_class() _propertyValuesFor:objectCopy];

  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObject:v11 forKeyedSubscript:@"pass_pid"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  return v12;
}

- (void)updateWithObject:(id)object
{
  objectCopy = object;
  v5 = [objc_opt_class() _propertyValuesFor:objectCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)passLegalAgreementsInDatabase:(id)database
{
  databaseCopy = database;
  v5 = [self queryWithDatabase:databaseCopy predicate:0];
  v6 = [self _passLegalAgreementsForQuery:v5 inDatabase:databaseCopy];

  return v6;
}

+ (id)passLegalAgreementsForPassPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPassPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];
  v9 = [self _passLegalAgreementsForQuery:v8 inDatabase:databaseCopy];

  return v9;
}

+ (id)_passLegalAgreementsForQuery:(id)query inDatabase:(id)database
{
  queryCopy = query;
  _propertySettersForObject = [self _propertySettersForObject];
  v7 = objc_alloc_init(NSMutableArray);
  _allProperties = [objc_opt_class() _allProperties];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100115B90;
  v14[3] = &unk_100841618;
  selfCopy = self;
  v15 = _propertySettersForObject;
  v9 = v7;
  v16 = v9;
  v10 = _propertySettersForObject;
  [queryCopy enumerateProperties:_allProperties usingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

+ (void)bulkInsertOrUpdate:(id)update passPID:(int64_t)d inDatabase:(id)database
{
  updateCopy = update;
  databaseCopy = database;
  [self deleteForPassPID:d inDatabase:databaseCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = updateCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [self insertOrUpdate:*(*(&v15 + 1) + 8 * v14) passPID:d inDatabase:{databaseCopy, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

+ (void)insertOrUpdate:(id)update passPID:(int64_t)d inDatabase:(id)database
{
  updateCopy = update;
  databaseCopy = database;
  identifier = [updateCopy identifier];
  v10 = [self _predicateForIdentifier:identifier];

  v11 = [self anyInDatabase:databaseCopy predicate:v10];
  if (v11)
  {
    v12 = v11;
    [(PassLegalAgreement *)v11 updateWithObject:updateCopy];
  }

  else
  {
    v12 = [[PassLegalAgreement alloc] initWithObject:updateCopy passPID:d inDatabase:databaseCopy];
  }
}

+ (void)deleteForPassPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPassPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

- (id)agreement
{
  _initForDatabase = [[PKPassLegalAgreement alloc] _initForDatabase];
  _propertySettersForObject = [objc_opt_class() _propertySettersForObject];
  _allProperties = [objc_opt_class() _allProperties];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100115FBC;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForObject;
  v6 = _initForDatabase;
  v13 = v6;
  v7 = _propertySettersForObject;
  [(SQLiteEntity *)self getValuesForProperties:_allProperties withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_predicateForPassPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_pid" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesFor:(id)for
{
  forCopy = for;
  v4 = objc_alloc_init(NSMutableDictionary);
  identifier = [forCopy identifier];
  [v4 setObjectOrNull:identifier forKey:@"identifier"];

  [forCopy type];
  v6 = PKUserLegalAgreementTypeToString();
  [v4 setObjectOrNull:v6 forKey:@"type"];

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [forCopy agreementUpdated]);
  [v4 setObjectOrNull:v7 forKey:@"agreement_updated"];

  removePassOnDecline = [forCopy removePassOnDecline];
  v9 = [NSNumber numberWithBool:removePassOnDecline];
  [v4 setObjectOrNull:v9 forKey:@"remove_pass_on_decline"];

  return v4;
}

@end