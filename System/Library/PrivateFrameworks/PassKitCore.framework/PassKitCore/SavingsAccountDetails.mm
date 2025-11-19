@interface SavingsAccountDetails
+ (id)_commonDictionaryForSavingsDetails:(id)a3;
+ (id)_predicateForAccountPID:(int64_t)a3;
+ (id)_propertySettersForSavingsAccountDetails;
+ (id)accountDetailsForAccountPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertOrUpdateSavingsAccountDetails:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)deleteSavingsAccountDetailsForAccountPID:(int64_t)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (SavingsAccountDetails)initWithSavingsAccountDetails:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5;
- (id)accountDetails;
- (void)updateWithDetails:(id)a3;
@end

@implementation SavingsAccountDetails

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"a";
  }

  else
  {
    return 0;
  }
}

- (SavingsAccountDetails)initWithSavingsAccountDetails:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a3 savingsDetails];
  v10 = [objc_opt_class() _commonDictionaryForSavingsDetails:v9];
  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];
  v13 = [(SQLiteEntity *)v12 persistentID];
  v14 = [v9 accountSummary];
  v15 = [SavingsAccountSummary insertSavingsAccountSummary:v14 forSavingsAccountDetailsPID:v13 inDatabase:v8];

  v16 = [v9 fccStepUpDetails];
  if (v16)
  {
    v17 = [SavingsAccountStepUpDetails insertSavingsAccountStepUpDetails:v16 forSavingsAccountDetailsPID:v13 inDatabase:v8];
  }

  else
  {
    [SavingsAccountStepUpDetails deleteSavingsAccountStepUpForSavingsAccountDetailsPID:v13 inDatabase:v8];
  }

  return v12;
}

+ (id)insertOrUpdateSavingsAccountDetails:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _predicateForAccountPID:a4];
  v11 = [a1 anyInDatabase:v9 predicate:v10];

  if (v11)
  {
    [v11 updateWithDetails:v8];
  }

  else
  {
    v11 = [objc_alloc(objc_opt_class()) initWithSavingsAccountDetails:v8 forAccountPID:a4 inDatabase:v9];
  }

  return v11;
}

+ (void)deleteSavingsAccountDetailsForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  [v8 deleteFromDatabase];
}

- (BOOL)deleteFromDatabase
{
  v2 = self;
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)v2 database];
  [SavingsAccountSummary deleteSavingsAccountSummaryForSavingsAccountDetailsPID:v3 inDatabase:v4];
  [SavingsAccountStepUpDetails deleteSavingsAccountStepUpForSavingsAccountDetailsPID:v3 inDatabase:v4];
  v6.receiver = v2;
  v6.super_class = SavingsAccountDetails;
  LOBYTE(v2) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return v2;
}

+ (id)accountDetailsForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 accountDetails];

  return v9;
}

- (void)updateWithDetails:(id)a3
{
  v9 = [a3 savingsDetails];
  v4 = [objc_opt_class() _commonDictionaryForSavingsDetails:v9];
  v5 = [(SQLiteEntity *)self persistentID];
  v6 = [(SQLiteEntity *)self database];
  v7 = [v9 accountSummary];
  [SavingsAccountSummary updateSavingsAccountSummary:v7 forSavingsAccountDetailsPID:v5 inDatabase:v6];

  v8 = [v9 fccStepUpDetails];
  if (v8)
  {
    [SavingsAccountStepUpDetails updateSavingsAccountStepUpDetails:v8 forSavingsAccountDetailsPID:v5 inDatabase:v6];
  }

  else
  {
    [SavingsAccountStepUpDetails deleteSavingsAccountStepUpForSavingsAccountDetailsPID:v5 inDatabase:v6];
  }

  [(SQLiteEntity *)self setValuesWithDictionary:v4];
}

+ (id)_predicateForAccountPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
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
  v4 = [objc_opt_class() _propertySettersForSavingsAccountDetails];
  v5 = [v4 allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100102E2C;
  v14[3] = &unk_10083BEE0;
  v14[4] = self;
  v15 = v4;
  v16 = v3;
  v6 = v3;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v14];

  v8 = [(SQLiteEntity *)self persistentID];
  v9 = [(SQLiteEntity *)self database];
  v10 = [SavingsAccountSummary savingsAccountSummaryForSavingsAccountDetailsPID:v8 inDatabase:v9];
  [v6 setAccountSummary:v10];

  v11 = [SavingsAccountStepUpDetails savingsAccountStepUpDetailsForSavingsAccountDetailsPID:v8 inDatabase:v9];
  [v6 setFccStepUpDetails:v11];

  v12 = [[PKAccountDetails alloc] initWithSavingsDetails:v6];

  return v12;
}

+ (id)_commonDictionaryForSavingsDetails:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 lastUpdatedDate];
  v6 = _SQLValueForDate();
  [v4 setObjectOrNull:v6 forKey:@"b"];

  v7 = [v3 createdDate];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"c"];

  v9 = [v3 countryCode];
  [v4 setObjectOrNull:v9 forKey:@"d"];

  v10 = [v3 currencyCode];
  [v4 setObjectOrNull:v10 forKey:@"e"];

  v11 = [v3 productTimeZone];
  v12 = [v11 name];
  [v4 setObjectOrNull:v12 forKey:@"f"];

  [v4 setBool:objc_msgSend(v3 forKey:{"moreInfoRequired"), @"g"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"fccStepUpRequired"), @"fcc_step_up_required"}];
  [v4 setBool:objc_msgSend(v3 forKey:{"termsAcceptanceRequired"), @"h"}];
  v13 = [v3 termsIdentifier];
  [v4 setObjectOrNull:v13 forKey:@"i"];

  v14 = [v3 privacyPolicyURL];
  v15 = _SQLValueForURL();
  [v4 setObjectOrNull:v15 forKey:@"k"];

  v16 = [v3 businessChatIdentifier];
  [v4 setObjectOrNull:v16 forKey:@"l"];

  v17 = [v3 contactWebsite];
  v18 = _SQLValueForURL();
  [v4 setObjectOrNull:v18 forKey:@"m"];

  v19 = [v3 contactNumber];
  [v4 setObjectOrNull:v19 forKey:@"n"];

  v20 = [v3 routingNumber];
  [v4 setObjectOrNull:v20 forKey:@"o"];

  v21 = [v3 accountNumber];

  [v4 setObjectOrNull:v21 forKey:@"p"];

  return v4;
}

@end