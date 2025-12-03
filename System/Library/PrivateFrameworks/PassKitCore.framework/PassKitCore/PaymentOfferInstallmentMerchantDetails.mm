@interface PaymentOfferInstallmentMerchantDetails
+ (id)_commonDictionary:(id)dictionary;
+ (id)_predicateForInstallmentAssessmentOfferPID:(int64_t)d;
+ (id)_propertySetters;
+ (id)merchantDetailsForInstallmentAssessmentOfferPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteMerchantDetailsForInstallmentAssessmentOfferPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdateMerchantDetails:(id)details forInstallmentAssessmentOfferPID:(int64_t)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (id)merchantDetails;
@end

@implementation PaymentOfferInstallmentMerchantDetails

+ (void)insertOrUpdateMerchantDetails:(id)details forInstallmentAssessmentOfferPID:(int64_t)d inDatabase:(id)database
{
  detailsCopy = details;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100051818;
  v11[3] = &unk_10083F170;
  selfCopy = self;
  dCopy = d;
  databaseCopy = database;
  v13 = detailsCopy;
  v9 = detailsCopy;
  v10 = databaseCopy;
  sub_1005D4424(v10, v11);
}

+ (void)deleteMerchantDetailsForInstallmentAssessmentOfferPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForInstallmentAssessmentOfferPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)selfCopy database];
  [PaymentOfferDynamicContentIcon deleteIconForTablePID:persistentID type:3 inDatabase:database];
  v6.receiver = selfCopy;
  v6.super_class = PaymentOfferInstallmentMerchantDetails;
  LOBYTE(selfCopy) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return selfCopy;
}

+ (id)merchantDetailsForInstallmentAssessmentOfferPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForInstallmentAssessmentOfferPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  merchantDetails = [v8 merchantDetails];

  return merchantDetails;
}

- (id)merchantDetails
{
  _init = [[PKPaymentOfferInstallmentMerchantDetails alloc] _init];
  _propertySetters = [objc_opt_class() _propertySetters];
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  allKeys = [_propertySetters allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100051BE4;
  v14[3] = &unk_10083F198;
  v14[4] = self;
  v15 = _propertySetters;
  v8 = _init;
  v17 = database;
  v18 = persistentID;
  v16 = v8;
  v9 = database;
  v10 = _propertySetters;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v14];

  v11 = v17;
  v12 = v8;

  return v8;
}

+ (id)_predicateForInstallmentAssessmentOfferPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
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

+ (id)_commonDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(NSMutableDictionary);
  merchantName = [dictionaryCopy merchantName];

  [v4 setObjectOrNull:merchantName forKey:@"merchant_name"];

  return v4;
}

@end