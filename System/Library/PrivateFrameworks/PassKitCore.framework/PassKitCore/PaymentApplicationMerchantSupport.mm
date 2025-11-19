@interface PaymentApplicationMerchantSupport
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)fetchSupportedCountries:(BOOL)a3 forPaymentApplicationPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)insertCountryCodes:(id)a3 supported:(BOOL)a4 withPaymentApplication:(id)a5 inDatabase:(id)a6;
+ (id)predicateForPaymentApplicationPID:(int64_t)a3;
+ (id)predicateForSupported:(BOOL)a3;
+ (id)predicateForSupportedCountries:(BOOL)a3 forPaymentApplication:(id)a4;
+ (id)predicateForSupportedCountries:(BOOL)a3 forPaymentApplicationPID:(int64_t)a4;
+ (id)supportedCountryCodesForPaymentApplication:(id)a3 inDatabase:(id)a4;
+ (id)unsupportedCountryCodesForPaymentApplication:(id)a3 inDatabase:(id)a4;
+ (void)deleteEntitiesForPaymentApplication:(id)a3 inDatabase:(id)a4;
+ (void)deleteSupportedCountryCodes:(BOOL)a3 forPaymentApplication:(id)a4 inDatabase:(id)a5;
+ (void)updateSupportedCountryCodes:(id)a3 forPaymentApplication:(id)a4 inDatabase:(id)a5;
+ (void)updateUnsupportedCountryCodes:(id)a3 forPaymentApplication:(id)a4 inDatabase:(id)a5;
- (PaymentApplicationMerchantSupport)initWithMerchantCountryCode:(id)a3 supported:(BOOL)a4 forPaymentApplication:(id)a5 database:(id)a6;
@end

@implementation PaymentApplicationMerchantSupport

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"payment_application_pid";
  }

  else
  {
    return 0;
  }
}

- (PaymentApplicationMerchantSupport)initWithMerchantCountryCode:(id)a3 supported:(BOOL)a4 forPaymentApplication:(id)a5 database:(id)a6
{
  if (a5)
  {
    v8 = a4;
    v10 = a6;
    v11 = a5;
    v12 = a3;
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = +[NSNull null];
    v15 = [v11 persistentID];

    v16 = [NSNumber numberWithLongLong:v15];
    [v13 setObject:v16 forKeyedSubscript:@"payment_application_pid"];

    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v14;
    }

    [v13 setObject:v17 forKeyedSubscript:@"merchant_country_code"];

    v18 = [NSNumber numberWithBool:v8];
    [v13 setObject:v18 forKeyedSubscript:@"supported"];

    v19 = [(SQLiteEntity *)self initWithPropertyValues:v13 inDatabase:v10];
    self = v19;

    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)supportedCountryCodesForPaymentApplication:(id)a3 inDatabase:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = [a1 supportedCountryCodesForPaymentApplicationPID:objc_msgSend(a3 inDatabase:{"persistentID"), v6}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)unsupportedCountryCodesForPaymentApplication:(id)a3 inDatabase:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = [a1 unsupportedCountryCodesForPaymentApplicationPID:objc_msgSend(a3 inDatabase:{"persistentID"), v6}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fetchSupportedCountries:(BOOL)a3 forPaymentApplicationPID:(int64_t)a4 inDatabase:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [a1 predicateForSupportedCountries:v6 forPaymentApplicationPID:a4];
  v10 = [a1 queryWithDatabase:v8 predicate:v9];

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

+ (void)deleteEntitiesForPaymentApplication:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  [a1 deleteSupportedCountryCodes:1 forPaymentApplication:v7 inDatabase:v6];
  [a1 deleteSupportedCountryCodes:0 forPaymentApplication:v7 inDatabase:v6];
}

+ (void)updateSupportedCountryCodes:(id)a3 forPaymentApplication:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F66D8;
  v12[3] = &unk_100843068;
  v13 = a4;
  v14 = a5;
  v15 = v8;
  v16 = a1;
  v9 = v8;
  v10 = v14;
  v11 = v13;
  sub_1005D4424(v10, v12);
}

+ (void)updateUnsupportedCountryCodes:(id)a3 forPaymentApplication:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F6808;
  v12[3] = &unk_100843068;
  v13 = a4;
  v14 = a5;
  v15 = v8;
  v16 = a1;
  v9 = v8;
  v10 = v14;
  v11 = v13;
  sub_1005D4424(v10, v12);
}

+ (void)deleteSupportedCountryCodes:(BOOL)a3 forPaymentApplication:(id)a4 inDatabase:(id)a5
{
  v6 = a3;
  v8 = a5;
  v10 = [a1 predicateForSupportedCountries:v6 forPaymentApplication:a4];
  v9 = [(SQLiteEntity *)PaymentApplicationMerchantSupport queryWithDatabase:v8 predicate:v10];

  [v9 deleteAllEntities];
}

+ (id)insertCountryCodes:(id)a3 supported:(BOOL)a4 withPaymentApplication:(id)a5 inDatabase:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10 && [v10 count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v10;
    v14 = v10;
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

          v19 = [[a1 alloc] initWithMerchantCountryCode:*(*(&v24 + 1) + 8 * i) supported:v8 forPaymentApplication:v11 database:v12];
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

    v10 = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)predicateForSupportedCountries:(BOOL)a3 forPaymentApplication:(id)a4
{
  if (a4)
  {
    [a1 predicateForSupportedCountries:a3 forPaymentApplicationPID:{objc_msgSend(a4, "persistentID")}];
  }

  else
  {
    +[SQLiteBooleanPredicate falsePredicate];
  }
  v4 = ;

  return v4;
}

+ (id)predicateForSupportedCountries:(BOOL)a3 forPaymentApplicationPID:(int64_t)a4
{
  v4 = a3;
  v6 = [a1 predicateForPaymentApplicationPID:a4];
  v7 = [a1 predicateForSupported:v4];
  v11[0] = v6;
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)predicateForPaymentApplicationPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForSupported:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"supported" equalToValue:v3];

  return v4;
}

@end