@interface SavingsAccountDetails
+ (id)_commonDictionaryForSavingsDetails:(id)details;
+ (id)_predicateForAccountPID:(int64_t)d;
+ (id)_propertySettersForSavingsAccountDetails;
+ (id)accountDetailsForAccountPID:(int64_t)d inDatabase:(id)database;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertOrUpdateSavingsAccountDetails:(id)details forAccountPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteSavingsAccountDetailsForAccountPID:(int64_t)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (SavingsAccountDetails)initWithSavingsAccountDetails:(id)details forAccountPID:(int64_t)d inDatabase:(id)database;
- (id)accountDetails;
- (void)updateWithDetails:(id)details;
@end

@implementation SavingsAccountDetails

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"a";
  }

  else
  {
    return 0;
  }
}

- (SavingsAccountDetails)initWithSavingsAccountDetails:(id)details forAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  savingsDetails = [details savingsDetails];
  v10 = [objc_opt_class() _commonDictionaryForSavingsDetails:savingsDetails];
  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  persistentID = [(SQLiteEntity *)v12 persistentID];
  accountSummary = [savingsDetails accountSummary];
  v15 = [SavingsAccountSummary insertSavingsAccountSummary:accountSummary forSavingsAccountDetailsPID:persistentID inDatabase:databaseCopy];

  fccStepUpDetails = [savingsDetails fccStepUpDetails];
  if (fccStepUpDetails)
  {
    v17 = [SavingsAccountStepUpDetails insertSavingsAccountStepUpDetails:fccStepUpDetails forSavingsAccountDetailsPID:persistentID inDatabase:databaseCopy];
  }

  else
  {
    [SavingsAccountStepUpDetails deleteSavingsAccountStepUpForSavingsAccountDetailsPID:persistentID inDatabase:databaseCopy];
  }

  return v12;
}

+ (id)insertOrUpdateSavingsAccountDetails:(id)details forAccountPID:(int64_t)d inDatabase:(id)database
{
  detailsCopy = details;
  databaseCopy = database;
  v10 = [self _predicateForAccountPID:d];
  v11 = [self anyInDatabase:databaseCopy predicate:v10];

  if (v11)
  {
    [v11 updateWithDetails:detailsCopy];
  }

  else
  {
    v11 = [objc_alloc(objc_opt_class()) initWithSavingsAccountDetails:detailsCopy forAccountPID:d inDatabase:databaseCopy];
  }

  return v11;
}

+ (void)deleteSavingsAccountDetailsForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  [v8 deleteFromDatabase];
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)selfCopy database];
  [SavingsAccountSummary deleteSavingsAccountSummaryForSavingsAccountDetailsPID:persistentID inDatabase:database];
  [SavingsAccountStepUpDetails deleteSavingsAccountStepUpForSavingsAccountDetailsPID:persistentID inDatabase:database];
  v6.receiver = selfCopy;
  v6.super_class = SavingsAccountDetails;
  LOBYTE(selfCopy) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return selfCopy;
}

+ (id)accountDetailsForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  accountDetails = [v8 accountDetails];

  return accountDetails;
}

- (void)updateWithDetails:(id)details
{
  savingsDetails = [details savingsDetails];
  v4 = [objc_opt_class() _commonDictionaryForSavingsDetails:savingsDetails];
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  accountSummary = [savingsDetails accountSummary];
  [SavingsAccountSummary updateSavingsAccountSummary:accountSummary forSavingsAccountDetailsPID:persistentID inDatabase:database];

  fccStepUpDetails = [savingsDetails fccStepUpDetails];
  if (fccStepUpDetails)
  {
    [SavingsAccountStepUpDetails updateSavingsAccountStepUpDetails:fccStepUpDetails forSavingsAccountDetailsPID:persistentID inDatabase:database];
  }

  else
  {
    [SavingsAccountStepUpDetails deleteSavingsAccountStepUpForSavingsAccountDetailsPID:persistentID inDatabase:database];
  }

  [(SQLiteEntity *)self setValuesWithDictionary:v4];
}

+ (id)_predicateForAccountPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertySettersForSavingsAccountDetails
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_100846138;
  v5[1] = &stru_100846158;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_100846178;
  v5[3] = &stru_100846198;
  v4[4] = @"f";
  v4[5] = @"g";
  v5[4] = &stru_1008461B8;
  v5[5] = &stru_1008461D8;
  v4[6] = @"h";
  v4[7] = @"i";
  v5[6] = &stru_1008461F8;
  v5[7] = &stru_100846218;
  v4[8] = @"k";
  v4[9] = @"l";
  v5[8] = &stru_100846238;
  v5[9] = &stru_100846258;
  v4[10] = @"m";
  v4[11] = @"n";
  v5[10] = &stru_100846278;
  v5[11] = &stru_100846298;
  v4[12] = @"o";
  v4[13] = @"p";
  v5[12] = &stru_1008462B8;
  v5[13] = &stru_1008462D8;
  v4[14] = @"fcc_step_up_required";
  v5[14] = &stru_1008462F8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:15];

  return v2;
}

- (id)accountDetails
{
  v3 = objc_alloc_init(PKSavingsAccountDetails);
  _propertySettersForSavingsAccountDetails = [objc_opt_class() _propertySettersForSavingsAccountDetails];
  allKeys = [_propertySettersForSavingsAccountDetails allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100102E2C;
  v14[3] = &unk_10083BEE0;
  v14[4] = self;
  v15 = _propertySettersForSavingsAccountDetails;
  v16 = v3;
  v6 = v3;
  v7 = _propertySettersForSavingsAccountDetails;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v14];

  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  v10 = [SavingsAccountSummary savingsAccountSummaryForSavingsAccountDetailsPID:persistentID inDatabase:database];
  [v6 setAccountSummary:v10];

  v11 = [SavingsAccountStepUpDetails savingsAccountStepUpDetailsForSavingsAccountDetailsPID:persistentID inDatabase:database];
  [v6 setFccStepUpDetails:v11];

  v12 = [[PKAccountDetails alloc] initWithSavingsDetails:v6];

  return v12;
}

+ (id)_commonDictionaryForSavingsDetails:(id)details
{
  detailsCopy = details;
  v4 = objc_alloc_init(NSMutableDictionary);
  lastUpdatedDate = [detailsCopy lastUpdatedDate];
  v6 = _SQLValueForDate();
  [v4 setObjectOrNull:v6 forKey:@"b"];

  createdDate = [detailsCopy createdDate];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"c"];

  countryCode = [detailsCopy countryCode];
  [v4 setObjectOrNull:countryCode forKey:@"d"];

  currencyCode = [detailsCopy currencyCode];
  [v4 setObjectOrNull:currencyCode forKey:@"e"];

  productTimeZone = [detailsCopy productTimeZone];
  name = [productTimeZone name];
  [v4 setObjectOrNull:name forKey:@"f"];

  [v4 setBool:objc_msgSend(detailsCopy forKey:{"moreInfoRequired"), @"g"}];
  [v4 setBool:objc_msgSend(detailsCopy forKey:{"fccStepUpRequired"), @"fcc_step_up_required"}];
  [v4 setBool:objc_msgSend(detailsCopy forKey:{"termsAcceptanceRequired"), @"h"}];
  termsIdentifier = [detailsCopy termsIdentifier];
  [v4 setObjectOrNull:termsIdentifier forKey:@"i"];

  privacyPolicyURL = [detailsCopy privacyPolicyURL];
  v15 = _SQLValueForURL();
  [v4 setObjectOrNull:v15 forKey:@"k"];

  businessChatIdentifier = [detailsCopy businessChatIdentifier];
  [v4 setObjectOrNull:businessChatIdentifier forKey:@"l"];

  contactWebsite = [detailsCopy contactWebsite];
  v18 = _SQLValueForURL();
  [v4 setObjectOrNull:v18 forKey:@"m"];

  contactNumber = [detailsCopy contactNumber];
  [v4 setObjectOrNull:contactNumber forKey:@"n"];

  routingNumber = [detailsCopy routingNumber];
  [v4 setObjectOrNull:routingNumber forKey:@"o"];

  accountNumber = [detailsCopy accountNumber];

  [v4 setObjectOrNull:accountNumber forKey:@"p"];

  return v4;
}

@end