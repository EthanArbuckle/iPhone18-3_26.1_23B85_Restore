@interface UserLegalAgreementConsent
+ (id)_allProperties;
+ (id)_propertySettersForObject;
+ (id)_propertyValuesFor:(id)a3;
+ (id)_userLegalAgreementConsentsForQuery:(id)a3 inDatabase:(id)a4;
+ (id)userLegalAgreementConsentsForPassUniqueID:(id)a3 inDatabase:(id)a4;
+ (id)userLegalAgreementConsentsInDatabase:(id)a3;
+ (void)deleteForPassUniqueID:(id)a3 inDatabase:(id)a4;
+ (void)insertOrUpdate:(id)a3 inDatabase:(id)a4;
- (UserLegalAgreementConsent)initWithObject:(id)a3 inDatabase:(id)a4;
- (id)agreement;
- (void)updateWithObject:(id)a3;
@end

@implementation UserLegalAgreementConsent

+ (id)_propertySettersForObject
{
  v4[0] = @"identifier";
  v4[1] = @"pass_unique_identifier";
  v5[0] = &stru_100841658;
  v5[1] = &stru_100841678;
  v4[2] = @"type";
  v4[3] = @"name";
  v5[2] = &stru_100841698;
  v5[3] = &stru_1008416B8;
  v4[4] = @"version";
  v4[5] = @"agreement_url";
  v5[4] = &stru_1008416D8;
  v5[5] = &stru_1008416F8;
  v4[6] = @"user_consented";
  v5[6] = &stru_100841718;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];

  return v2;
}

+ (id)_allProperties
{
  v4[0] = @"identifier";
  v4[1] = @"pass_unique_identifier";
  v4[2] = @"type";
  v4[3] = @"name";
  v4[4] = @"version";
  v4[5] = @"agreement_url";
  v4[6] = @"user_consented";
  v2 = [NSArray arrayWithObjects:v4 count:7];

  return v2;
}

- (UserLegalAgreementConsent)initWithObject:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _propertyValuesFor:v7];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];
  return v9;
}

- (void)updateWithObject:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _propertyValuesFor:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)userLegalAgreementConsentsInDatabase:(id)a3
{
  v4 = a3;
  v5 = [a1 queryWithDatabase:v4 predicate:0];
  v6 = [a1 _userLegalAgreementConsentsForQuery:v5 inDatabase:v4];

  return v6;
}

+ (id)userLegalAgreementConsentsForPassUniqueID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPassUniqueIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];
  v9 = [a1 _userLegalAgreementConsentsForQuery:v8 inDatabase:v6];

  return v9;
}

+ (id)_userLegalAgreementConsentsForQuery:(id)a3 inDatabase:(id)a4
{
  v5 = a3;
  v6 = [a1 _propertySettersForObject];
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [objc_opt_class() _allProperties];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000993D8;
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

+ (void)insertOrUpdate:(id)a3 inDatabase:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 identifier];
  v8 = [a1 _predicateForIdentifier:v7];

  v9 = [a1 anyInDatabase:v6 predicate:v8];
  if (v9)
  {
    v10 = v9;
    [(UserLegalAgreementConsent *)v9 updateWithObject:v11];
  }

  else
  {
    v10 = [[UserLegalAgreementConsent alloc] initWithObject:v11 inDatabase:v6];
  }
}

+ (void)deleteForPassUniqueID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPassUniqueIdentifier:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

- (id)agreement
{
  v3 = [[PKUserLegalAgreementConsent alloc] _initForDatabase];
  v4 = [objc_opt_class() _propertySettersForObject];
  v5 = [objc_opt_class() _allProperties];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000996C4;
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

+ (id)_propertyValuesFor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 identifier];
  [v4 setObjectOrNull:v5 forKey:@"identifier"];

  v6 = [v3 passUniqueID];
  [v4 setObjectOrNull:v6 forKey:@"pass_unique_identifier"];

  [v3 type];
  v7 = PKUserLegalAgreementTypeToString();
  [v4 setObjectOrNull:v7 forKey:@"type"];

  v8 = [v3 name];
  [v4 setObjectOrNull:v8 forKey:@"name"];

  v9 = [v3 version];
  [v4 setObjectOrNull:v9 forKey:@"version"];

  v10 = [v3 agreementUrl];
  v11 = [v10 absoluteString];
  [v4 setObjectOrNull:v11 forKey:@"agreement_url"];

  v12 = [v3 userConsented];
  v13 = [NSNumber numberWithBool:v12];
  [v4 setObjectOrNull:v13 forKey:@"user_consented"];

  return v4;
}

@end