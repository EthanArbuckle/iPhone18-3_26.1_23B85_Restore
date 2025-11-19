@interface SelectedPaymentOfferInstallment
+ (id)_commonDictionary:(id)a3;
+ (id)_predicateForPID:(int64_t)a3;
+ (id)anyInDatabase:(id)a3 pid:(int64_t)a4;
+ (id)insertSelectedPaymentOfferInstallment:(id)a3 inDatabase:(id)a4;
+ (id)selectedPaymentOfferInstallmentWithPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteSelectedPaymentOfferInstallmentWithPID:(int64_t)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (id)userEnteredAmount;
- (int64_t)selectionType;
@end

@implementation SelectedPaymentOfferInstallment

+ (id)insertSelectedPaymentOfferInstallment:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100005B30;
    v19 = sub_10000B1A4;
    v20 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100134540;
    v10[3] = &unk_100847E48;
    v14 = a1;
    v11 = v6;
    v13 = &v15;
    v12 = v7;
    sub_1005D4424(v12, v10);
    v8 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)deleteSelectedPaymentOfferInstallmentWithPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  [v8 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v2 = self;
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)v2 database];
  [PaymentOfferInstallmentAssessment deleteInstallmentAssessmentForSelectedPaymentOfferInstallmentPID:v3 inDatabase:v4];
  v6.receiver = v2;
  v6.super_class = SelectedPaymentOfferInstallment;
  LOBYTE(v2) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return v2;
}

+ (id)anyInDatabase:(id)a3 pid:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPID:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

- (int64_t)selectionType
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"selection_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)userEnteredAmount
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"user_entered_amount_amount"];
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();

  v5 = [(SQLiteEntity *)self valueForProperty:@"user_entered_amount_currency"];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = PKCurrencyAmountMake();
  }

  return v8;
}

+ (id)selectedPaymentOfferInstallmentWithPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  if (v8)
  {
    v9 = [v8 selectionType];
    v10 = +[PaymentOfferInstallmentAssessment installmentAssessmentForSelectedPaymentOfferInstallmentPID:inDatabase:](PaymentOfferInstallmentAssessment, "installmentAssessmentForSelectedPaymentOfferInstallmentPID:inDatabase:", [v8 persistentID], v6);
    v11 = v10;
    if (v9 || v10)
    {
      v13 = [v8 valueForProperty:@"selected_offer_identifier"];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [v11 selectedOfferIdentifier];
      }

      v16 = v15;

      v17 = [v8 valueForProperty:@"criteria_identifier"];
      v31 = [v8 valueForProperty:@"session_identifier"];
      v33 = [v8 valueForProperty:@"pass_unique_id"];
      v32 = [v8 valueForProperty:@"dpan_identifier"];
      v36 = [v8 valueForProperty:@"pass_serial_number"];
      v35 = [v8 valueForProperty:@"pass_type_identifier"];
      v34 = [v8 valueForProperty:@"primary_account_identifier"];
      v18 = [v8 valueForProperty:@"type"];
      v19 = [v18 integerValue];

      v20 = [v8 valueForProperty:@"is_preconfigured_offer"];
      v21 = [v20 BOOLValue];

      v22 = [v8 userEnteredAmount];
      v23 = [v8 valueForProperty:@"setup_after_purchase_active_duration"];
      v24 = [v23 integerValue];

      v25 = [v8 valueForProperty:@"setup_after_purchase_sticky_duration"];
      v26 = [v25 integerValue];

      v12 = [[PKSelectedPaymentOfferInstallment alloc] _init];
      [v12 setInstallmentAssessment:v11];
      [v12 setSelectedOfferIdentifier:v16];
      [v12 setCriteriaIdentifier:v17];
      [v12 setSessionIdentifier:v31];
      [v12 setType:v19];
      [v12 setSelectionType:v9];
      v27 = [v11 installmentOfferWithIdentifier:v16];
      v28 = [v27 serviceProviderData];
      [v12 setServiceProviderData:v28];

      [v12 setIsPreconfiguredOffer:v21];
      [v12 setUserEnteredAmount:v22];
      [v12 setSetupAfterPurchaseActiveDuration:v24];
      [v12 setSetupAfterPurchaseStickyDuration:v26];
      if (v33)
      {
        v29 = [[PKSelectedPaymentOfferPaymentPassDetails alloc] _init];
        [v29 setPassUniqueID:v33];
        [v29 setDpanIdentifier:v32];
        [v29 setPassSerialNumber:v36];
        [v29 setPassTypeIdentifier:v35];
        [v29 setPrimaryAccountIdentifier:v34];
        [v12 setPassDetails:v29];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_predicateForPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pid" equalToValue:v3];

  return v4;
}

+ (id)_commonDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 type]);
  [v4 setObjectOrNull:v5 forKey:@"type"];

  v6 = [v3 passUniqueID];
  [v4 setObjectOrNull:v6 forKey:@"pass_unique_id"];

  v7 = [v3 passDetails];
  v8 = [v7 dpanIdentifier];
  [v4 setObjectOrNull:v8 forKey:@"dpan_identifier"];

  v9 = [v3 passDetails];
  v10 = [v9 primaryAccountIdentifier];
  [v4 setObjectOrNull:v10 forKey:@"primary_account_identifier"];

  v11 = [v3 selectedOfferIdentifier];
  [v4 setObjectOrNull:v11 forKey:@"selected_offer_identifier"];

  v12 = [v3 criteriaIdentifier];
  [v4 setObjectOrNull:v12 forKey:@"criteria_identifier"];

  v13 = [v3 sessionIdentifier];
  [v4 setObjectOrNull:v13 forKey:@"session_identifier"];

  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 selectionType]);
  [v4 setObjectOrNull:v14 forKey:@"selection_type"];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isPreconfiguredOffer]);
  [v4 setObjectOrNull:v15 forKey:@"is_preconfigured_offer"];

  v16 = [v3 userEnteredAmount];
  v17 = [v16 amount];
  v18 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v18 forKey:@"user_entered_amount_amount"];

  v19 = [v3 userEnteredAmount];
  v20 = [v19 currency];
  [v4 setObjectOrNull:v20 forKey:@"user_entered_amount_currency"];

  [v3 setupAfterPurchaseActiveDuration];
  v21 = [NSNumber numberWithDouble:?];
  [v4 setObjectOrNull:v21 forKey:@"setup_after_purchase_active_duration"];

  [v3 setupAfterPurchaseStickyDuration];
  v23 = v22;

  v24 = [NSNumber numberWithDouble:v23];
  [v4 setObjectOrNull:v24 forKey:@"setup_after_purchase_sticky_duration"];

  return v4;
}

@end