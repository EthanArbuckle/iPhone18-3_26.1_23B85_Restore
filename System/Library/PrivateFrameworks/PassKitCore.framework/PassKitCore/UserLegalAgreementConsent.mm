@interface UserLegalAgreementConsent
+ (id)_allProperties;
+ (id)_propertySettersForObject;
+ (id)_propertyValuesFor:(id)for;
+ (id)_userLegalAgreementConsentsForQuery:(id)query inDatabase:(id)database;
+ (id)userLegalAgreementConsentsForPassUniqueID:(id)d inDatabase:(id)database;
+ (id)userLegalAgreementConsentsInDatabase:(id)database;
+ (void)deleteForPassUniqueID:(id)d inDatabase:(id)database;
+ (void)insertOrUpdate:(id)update inDatabase:(id)database;
- (UserLegalAgreementConsent)initWithObject:(id)object inDatabase:(id)database;
- (id)agreement;
- (void)updateWithObject:(id)object;
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

- (UserLegalAgreementConsent)initWithObject:(id)object inDatabase:(id)database
{
  databaseCopy = database;
  objectCopy = object;
  v8 = [objc_opt_class() _propertyValuesFor:objectCopy];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  return v9;
}

- (void)updateWithObject:(id)object
{
  objectCopy = object;
  v5 = [objc_opt_class() _propertyValuesFor:objectCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)userLegalAgreementConsentsInDatabase:(id)database
{
  databaseCopy = database;
  v5 = [self queryWithDatabase:databaseCopy predicate:0];
  v6 = [self _userLegalAgreementConsentsForQuery:v5 inDatabase:databaseCopy];

  return v6;
}

+ (id)userLegalAgreementConsentsForPassUniqueID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPassUniqueIdentifier:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];
  v9 = [self _userLegalAgreementConsentsForQuery:v8 inDatabase:databaseCopy];

  return v9;
}

+ (id)_userLegalAgreementConsentsForQuery:(id)query inDatabase:(id)database
{
  queryCopy = query;
  _propertySettersForObject = [self _propertySettersForObject];
  v7 = objc_alloc_init(NSMutableArray);
  _allProperties = [objc_opt_class() _allProperties];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000993D8;
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

+ (void)insertOrUpdate:(id)update inDatabase:(id)database
{
  updateCopy = update;
  databaseCopy = database;
  identifier = [updateCopy identifier];
  v8 = [self _predicateForIdentifier:identifier];

  v9 = [self anyInDatabase:databaseCopy predicate:v8];
  if (v9)
  {
    v10 = v9;
    [(UserLegalAgreementConsent *)v9 updateWithObject:updateCopy];
  }

  else
  {
    v10 = [[UserLegalAgreementConsent alloc] initWithObject:updateCopy inDatabase:databaseCopy];
  }
}

+ (void)deleteForPassUniqueID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPassUniqueIdentifier:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

- (id)agreement
{
  _initForDatabase = [[PKUserLegalAgreementConsent alloc] _initForDatabase];
  _propertySettersForObject = [objc_opt_class() _propertySettersForObject];
  _allProperties = [objc_opt_class() _allProperties];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000996C4;
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

+ (id)_propertyValuesFor:(id)for
{
  forCopy = for;
  v4 = objc_alloc_init(NSMutableDictionary);
  identifier = [forCopy identifier];
  [v4 setObjectOrNull:identifier forKey:@"identifier"];

  passUniqueID = [forCopy passUniqueID];
  [v4 setObjectOrNull:passUniqueID forKey:@"pass_unique_identifier"];

  [forCopy type];
  v7 = PKUserLegalAgreementTypeToString();
  [v4 setObjectOrNull:v7 forKey:@"type"];

  name = [forCopy name];
  [v4 setObjectOrNull:name forKey:@"name"];

  version = [forCopy version];
  [v4 setObjectOrNull:version forKey:@"version"];

  agreementUrl = [forCopy agreementUrl];
  absoluteString = [agreementUrl absoluteString];
  [v4 setObjectOrNull:absoluteString forKey:@"agreement_url"];

  userConsented = [forCopy userConsented];
  v13 = [NSNumber numberWithBool:userConsented];
  [v4 setObjectOrNull:v13 forKey:@"user_consented"];

  return v4;
}

@end