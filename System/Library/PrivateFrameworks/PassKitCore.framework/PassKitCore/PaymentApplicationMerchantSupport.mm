@interface PaymentApplicationMerchantSupport
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)fetchSupportedCountries:(BOOL)countries forPaymentApplicationPID:(int64_t)d inDatabase:(id)database;
+ (id)insertCountryCodes:(id)codes supported:(BOOL)supported withPaymentApplication:(id)application inDatabase:(id)database;
+ (id)predicateForPaymentApplicationPID:(int64_t)d;
+ (id)predicateForSupported:(BOOL)supported;
+ (id)predicateForSupportedCountries:(BOOL)countries forPaymentApplication:(id)application;
+ (id)predicateForSupportedCountries:(BOOL)countries forPaymentApplicationPID:(int64_t)d;
+ (id)supportedCountryCodesForPaymentApplication:(id)application inDatabase:(id)database;
+ (id)unsupportedCountryCodesForPaymentApplication:(id)application inDatabase:(id)database;
+ (void)deleteEntitiesForPaymentApplication:(id)application inDatabase:(id)database;
+ (void)deleteSupportedCountryCodes:(BOOL)codes forPaymentApplication:(id)application inDatabase:(id)database;
+ (void)updateSupportedCountryCodes:(id)codes forPaymentApplication:(id)application inDatabase:(id)database;
+ (void)updateUnsupportedCountryCodes:(id)codes forPaymentApplication:(id)application inDatabase:(id)database;
- (PaymentApplicationMerchantSupport)initWithMerchantCountryCode:(id)code supported:(BOOL)supported forPaymentApplication:(id)application database:(id)database;
@end

@implementation PaymentApplicationMerchantSupport

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"payment_application_pid";
  }

  else
  {
    return 0;
  }
}

- (PaymentApplicationMerchantSupport)initWithMerchantCountryCode:(id)code supported:(BOOL)supported forPaymentApplication:(id)application database:(id)database
{
  if (application)
  {
    supportedCopy = supported;
    databaseCopy = database;
    applicationCopy = application;
    codeCopy = code;
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = +[NSNull null];
    persistentID = [applicationCopy persistentID];

    v16 = [NSNumber numberWithLongLong:persistentID];
    [v13 setObject:v16 forKeyedSubscript:@"payment_application_pid"];

    if (codeCopy)
    {
      v17 = codeCopy;
    }

    else
    {
      v17 = v14;
    }

    [v13 setObject:v17 forKeyedSubscript:@"merchant_country_code"];

    v18 = [NSNumber numberWithBool:supportedCopy];
    [v13 setObject:v18 forKeyedSubscript:@"supported"];

    v19 = [(SQLiteEntity *)self initWithPropertyValues:v13 inDatabase:databaseCopy];
    self = v19;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)supportedCountryCodesForPaymentApplication:(id)application inDatabase:(id)database
{
  if (application)
  {
    databaseCopy = database;
    v7 = [self supportedCountryCodesForPaymentApplicationPID:objc_msgSend(application inDatabase:{"persistentID"), databaseCopy}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)unsupportedCountryCodesForPaymentApplication:(id)application inDatabase:(id)database
{
  if (application)
  {
    databaseCopy = database;
    v7 = [self unsupportedCountryCodesForPaymentApplicationPID:objc_msgSend(application inDatabase:{"persistentID"), databaseCopy}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fetchSupportedCountries:(BOOL)countries forPaymentApplicationPID:(int64_t)d inDatabase:(id)database
{
  countriesCopy = countries;
  databaseCopy = database;
  v9 = [self predicateForSupportedCountries:countriesCopy forPaymentApplicationPID:d];
  v10 = [self queryWithDatabase:databaseCopy predicate:v9];

  v11 = objc_alloc_init(NSMutableArray);
  v18 = @"merchant_country_code";
  v12 = [NSArray arrayWithObjects:&v18 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F64D0;
  v16[3] = &unk_100840B08;
  v13 = v11;
  v17 = v13;
  [v10 enumeratePersistentIDsAndProperties:v12 usingBlock:v16];

  if ([v13 count])
  {
    v14 = [v13 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)deleteEntitiesForPaymentApplication:(id)application inDatabase:(id)database
{
  databaseCopy = database;
  applicationCopy = application;
  [self deleteSupportedCountryCodes:1 forPaymentApplication:applicationCopy inDatabase:databaseCopy];
  [self deleteSupportedCountryCodes:0 forPaymentApplication:applicationCopy inDatabase:databaseCopy];
}

+ (void)updateSupportedCountryCodes:(id)codes forPaymentApplication:(id)application inDatabase:(id)database
{
  codesCopy = codes;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F66D8;
  v12[3] = &unk_100843068;
  applicationCopy = application;
  databaseCopy = database;
  v15 = codesCopy;
  selfCopy = self;
  v9 = codesCopy;
  v10 = databaseCopy;
  v11 = applicationCopy;
  sub_1005D4424(v10, v12);
}

+ (void)updateUnsupportedCountryCodes:(id)codes forPaymentApplication:(id)application inDatabase:(id)database
{
  codesCopy = codes;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F6808;
  v12[3] = &unk_100843068;
  applicationCopy = application;
  databaseCopy = database;
  v15 = codesCopy;
  selfCopy = self;
  v9 = codesCopy;
  v10 = databaseCopy;
  v11 = applicationCopy;
  sub_1005D4424(v10, v12);
}

+ (void)deleteSupportedCountryCodes:(BOOL)codes forPaymentApplication:(id)application inDatabase:(id)database
{
  codesCopy = codes;
  databaseCopy = database;
  v10 = [self predicateForSupportedCountries:codesCopy forPaymentApplication:application];
  v9 = [(SQLiteEntity *)PaymentApplicationMerchantSupport queryWithDatabase:databaseCopy predicate:v10];

  [v9 deleteAllEntities];
}

+ (id)insertCountryCodes:(id)codes supported:(BOOL)supported withPaymentApplication:(id)application inDatabase:(id)database
{
  supportedCopy = supported;
  codesCopy = codes;
  applicationCopy = application;
  databaseCopy = database;
  if (codesCopy && [codesCopy count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(codesCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = codesCopy;
    v14 = codesCopy;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[self alloc] initWithMerchantCountryCode:*(*(&v24 + 1) + 8 * i) supported:supportedCopy forPaymentApplication:applicationCopy database:databaseCopy];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    if ([v13 count])
    {
      v20 = v13;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    codesCopy = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)predicateForSupportedCountries:(BOOL)countries forPaymentApplication:(id)application
{
  if (application)
  {
    [self predicateForSupportedCountries:countries forPaymentApplicationPID:{objc_msgSend(application, "persistentID")}];
  }

  else
  {
    +[SQLiteBooleanPredicate falsePredicate];
  }
  v4 = ;

  return v4;
}

+ (id)predicateForSupportedCountries:(BOOL)countries forPaymentApplicationPID:(int64_t)d
{
  countriesCopy = countries;
  v6 = [self predicateForPaymentApplicationPID:d];
  v7 = [self predicateForSupported:countriesCopy];
  v11[0] = v6;
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)predicateForPaymentApplicationPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForSupported:(BOOL)supported
{
  v3 = [NSNumber numberWithBool:supported];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"supported" equalToValue:v3];

  return v4;
}

@end