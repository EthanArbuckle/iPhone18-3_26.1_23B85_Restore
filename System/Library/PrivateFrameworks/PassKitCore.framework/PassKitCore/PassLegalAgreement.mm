@interface PassLegalAgreement
+ (id)_allProperties;
+ (id)_passLegalAgreementsForQuery:(id)a3 inDatabase:(id)a4;
+ (id)_predicateForPassPID:(int64_t)a3;
+ (id)_propertySettersForObject;
+ (id)_propertyValuesFor:(id)a3;
+ (id)passLegalAgreementsForPassPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)passLegalAgreementsInDatabase:(id)a3;
+ (void)bulkInsertOrUpdate:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)deleteForPassPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertOrUpdate:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5;
- (PassLegalAgreement)initWithObject:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5;
- (id)agreement;
- (void)updateWithObject:(id)a3;
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

- (PassLegalAgreement)initWithObject:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() _propertyValuesFor:v9];

  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObject:v11 forKeyedSubscript:@"pass_pid"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];
  return v12;
}

- (void)updateWithObject:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _propertyValuesFor:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)passLegalAgreementsInDatabase:(id)a3
{
  v4 = a3;
  v5 = [a1 queryWithDatabase:v4 predicate:0];
  v6 = [a1 _passLegalAgreementsForQuery:v5 inDatabase:v4];

  return v6;
}

+ (id)passLegalAgreementsForPassPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPassPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];
  v9 = [a1 _passLegalAgreementsForQuery:v8 inDatabase:v6];

  return v9;
}

+ (id)_passLegalAgreementsForQuery:(id)a3 inDatabase:(id)a4
{
  v5 = a3;
  v6 = [a1 _propertySettersForObject];
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [objc_opt_class() _allProperties];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100115B90;
  v14[3] = &unk_100841618;
  v17 = a1;
  v15 = v6;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  [v5 enumerateProperties:v8 usingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

+ (void)bulkInsertOrUpdate:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  [a1 deleteForPassPID:a4 inDatabase:v9];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v8;
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

        [a1 insertOrUpdate:*(*(&v15 + 1) + 8 * v14) passPID:a4 inDatabase:{v9, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

+ (void)insertOrUpdate:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5
{
  v13 = a3;
  v8 = a5;
  v9 = [v13 identifier];
  v10 = [a1 _predicateForIdentifier:v9];

  v11 = [a1 anyInDatabase:v8 predicate:v10];
  if (v11)
  {
    v12 = v11;
    [(PassLegalAgreement *)v11 updateWithObject:v13];
  }

  else
  {
    v12 = [[PassLegalAgreement alloc] initWithObject:v13 passPID:a4 inDatabase:v8];
  }
}

+ (void)deleteForPassPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPassPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

- (id)agreement
{
  v3 = [[PKPassLegalAgreement alloc] _initForDatabase];
  v4 = [objc_opt_class() _propertySettersForObject];
  v5 = [objc_opt_class() _allProperties];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100115FBC;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_predicateForPassPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_pid" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesFor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 identifier];
  [v4 setObjectOrNull:v5 forKey:@"identifier"];

  [v3 type];
  v6 = PKUserLegalAgreementTypeToString();
  [v4 setObjectOrNull:v6 forKey:@"type"];

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 agreementUpdated]);
  [v4 setObjectOrNull:v7 forKey:@"agreement_updated"];

  v8 = [v3 removePassOnDecline];
  v9 = [NSNumber numberWithBool:v8];
  [v4 setObjectOrNull:v9 forKey:@"remove_pass_on_decline"];

  return v4;
}

@end