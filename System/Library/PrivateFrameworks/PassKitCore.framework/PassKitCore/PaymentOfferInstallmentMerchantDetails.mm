@interface PaymentOfferInstallmentMerchantDetails
+ (id)_commonDictionary:(id)a3;
+ (id)_predicateForInstallmentAssessmentOfferPID:(int64_t)a3;
+ (id)_propertySetters;
+ (id)merchantDetailsForInstallmentAssessmentOfferPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteMerchantDetailsForInstallmentAssessmentOfferPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertOrUpdateMerchantDetails:(id)a3 forInstallmentAssessmentOfferPID:(int64_t)a4 inDatabase:(id)a5;
- (BOOL)deleteFromDatabase;
- (id)merchantDetails;
@end

@implementation PaymentOfferInstallmentMerchantDetails

+ (void)insertOrUpdateMerchantDetails:(id)a3 forInstallmentAssessmentOfferPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100051818;
  v11[3] = &unk_10083F170;
  v14 = a1;
  v15 = a4;
  v12 = a5;
  v13 = v8;
  v9 = v8;
  v10 = v12;
  sub_1005D4424(v10, v11);
}

+ (void)deleteMerchantDetailsForInstallmentAssessmentOfferPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForInstallmentAssessmentOfferPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  [v8 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v2 = self;
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)v2 database];
  [PaymentOfferDynamicContentIcon deleteIconForTablePID:v3 type:3 inDatabase:v4];
  v6.receiver = v2;
  v6.super_class = PaymentOfferInstallmentMerchantDetails;
  LOBYTE(v2) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return v2;
}

+ (id)merchantDetailsForInstallmentAssessmentOfferPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForInstallmentAssessmentOfferPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 merchantDetails];

  return v9;
}

- (id)merchantDetails
{
  v3 = [[PKPaymentOfferInstallmentMerchantDetails alloc] _init];
  v4 = [objc_opt_class() _propertySetters];
  v5 = [(SQLiteEntity *)self persistentID];
  v6 = [(SQLiteEntity *)self database];
  v7 = [v4 allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100051BE4;
  v14[3] = &unk_10083F198;
  v14[4] = self;
  v15 = v4;
  v8 = v3;
  v17 = v6;
  v18 = v5;
  v16 = v8;
  v9 = v6;
  v10 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v7 withApplier:v14];

  v11 = v17;
  v12 = v8;

  return v8;
}

+ (id)_predicateForInstallmentAssessmentOfferPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"installment_assessment_offer_pid" equalToValue:v3];

  return v4;
}

+ (id)_propertySetters
{
  v4 = @"merchant_name";
  v5 = &stru_10083F1D8;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)_commonDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 merchantName];

  [v4 setObjectOrNull:v5 forKey:@"merchant_name"];

  return v4;
}

@end