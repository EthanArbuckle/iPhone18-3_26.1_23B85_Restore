@interface SelectedPaymentOfferInstallment
+ (id)_commonDictionary:(id)dictionary;
+ (id)_predicateForPID:(int64_t)d;
+ (id)anyInDatabase:(id)database pid:(int64_t)pid;
+ (id)insertSelectedPaymentOfferInstallment:(id)installment inDatabase:(id)database;
+ (id)selectedPaymentOfferInstallmentWithPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteSelectedPaymentOfferInstallmentWithPID:(int64_t)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (id)userEnteredAmount;
- (int64_t)selectionType;
@end

@implementation SelectedPaymentOfferInstallment

+ (id)insertSelectedPaymentOfferInstallment:(id)installment inDatabase:(id)database
{
  installmentCopy = installment;
  databaseCopy = database;
  if (installmentCopy)
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
    selfCopy = self;
    v11 = installmentCopy;
    v13 = &v15;
    v12 = databaseCopy;
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

+ (void)deleteSelectedPaymentOfferInstallmentWithPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)selfCopy database];
  [PaymentOfferInstallmentAssessment deleteInstallmentAssessmentForSelectedPaymentOfferInstallmentPID:persistentID inDatabase:database];
  v6.receiver = selfCopy;
  v6.super_class = SelectedPaymentOfferInstallment;
  LOBYTE(selfCopy) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return selfCopy;
}

+ (id)anyInDatabase:(id)database pid:(int64_t)pid
{
  databaseCopy = database;
  v7 = [self _predicateForPID:pid];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

- (int64_t)selectionType
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"selection_type"];
  integerValue = [v2 integerValue];

  return integerValue;
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

+ (id)selectedPaymentOfferInstallmentWithPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  if (v8)
  {
    selectionType = [v8 selectionType];
    v10 = +[PaymentOfferInstallmentAssessment installmentAssessmentForSelectedPaymentOfferInstallmentPID:inDatabase:](PaymentOfferInstallmentAssessment, "installmentAssessmentForSelectedPaymentOfferInstallmentPID:inDatabase:", [v8 persistentID], databaseCopy);
    v11 = v10;
    if (selectionType || v10)
    {
      v13 = [v8 valueForProperty:@"selected_offer_identifier"];
      v14 = v13;
      if (v13)
      {
        selectedOfferIdentifier = v13;
      }

      else
      {
        selectedOfferIdentifier = [v11 selectedOfferIdentifier];
      }

      v16 = selectedOfferIdentifier;

      v17 = [v8 valueForProperty:@"criteria_identifier"];
      v31 = [v8 valueForProperty:@"session_identifier"];
      v33 = [v8 valueForProperty:@"pass_unique_id"];
      v32 = [v8 valueForProperty:@"dpan_identifier"];
      v36 = [v8 valueForProperty:@"pass_serial_number"];
      v35 = [v8 valueForProperty:@"pass_type_identifier"];
      v34 = [v8 valueForProperty:@"primary_account_identifier"];
      v18 = [v8 valueForProperty:@"type"];
      integerValue = [v18 integerValue];

      v20 = [v8 valueForProperty:@"is_preconfigured_offer"];
      bOOLValue = [v20 BOOLValue];

      userEnteredAmount = [v8 userEnteredAmount];
      v23 = [v8 valueForProperty:@"setup_after_purchase_active_duration"];
      integerValue2 = [v23 integerValue];

      v25 = [v8 valueForProperty:@"setup_after_purchase_sticky_duration"];
      integerValue3 = [v25 integerValue];

      _init = [[PKSelectedPaymentOfferInstallment alloc] _init];
      [_init setInstallmentAssessment:v11];
      [_init setSelectedOfferIdentifier:v16];
      [_init setCriteriaIdentifier:v17];
      [_init setSessionIdentifier:v31];
      [_init setType:integerValue];
      [_init setSelectionType:selectionType];
      v27 = [v11 installmentOfferWithIdentifier:v16];
      serviceProviderData = [v27 serviceProviderData];
      [_init setServiceProviderData:serviceProviderData];

      [_init setIsPreconfiguredOffer:bOOLValue];
      [_init setUserEnteredAmount:userEnteredAmount];
      [_init setSetupAfterPurchaseActiveDuration:integerValue2];
      [_init setSetupAfterPurchaseStickyDuration:integerValue3];
      if (v33)
      {
        _init2 = [[PKSelectedPaymentOfferPaymentPassDetails alloc] _init];
        [_init2 setPassUniqueID:v33];
        [_init2 setDpanIdentifier:v32];
        [_init2 setPassSerialNumber:v36];
        [_init2 setPassTypeIdentifier:v35];
        [_init2 setPrimaryAccountIdentifier:v34];
        [_init setPassDetails:_init2];
      }
    }

    else
    {
      _init = 0;
    }
  }

  else
  {
    _init = 0;
  }

  return _init;
}

+ (id)_predicateForPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pid" equalToValue:v3];

  return v4;
}

+ (id)_commonDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dictionaryCopy type]);
  [v4 setObjectOrNull:v5 forKey:@"type"];

  passUniqueID = [dictionaryCopy passUniqueID];
  [v4 setObjectOrNull:passUniqueID forKey:@"pass_unique_id"];

  passDetails = [dictionaryCopy passDetails];
  dpanIdentifier = [passDetails dpanIdentifier];
  [v4 setObjectOrNull:dpanIdentifier forKey:@"dpan_identifier"];

  passDetails2 = [dictionaryCopy passDetails];
  primaryAccountIdentifier = [passDetails2 primaryAccountIdentifier];
  [v4 setObjectOrNull:primaryAccountIdentifier forKey:@"primary_account_identifier"];

  selectedOfferIdentifier = [dictionaryCopy selectedOfferIdentifier];
  [v4 setObjectOrNull:selectedOfferIdentifier forKey:@"selected_offer_identifier"];

  criteriaIdentifier = [dictionaryCopy criteriaIdentifier];
  [v4 setObjectOrNull:criteriaIdentifier forKey:@"criteria_identifier"];

  sessionIdentifier = [dictionaryCopy sessionIdentifier];
  [v4 setObjectOrNull:sessionIdentifier forKey:@"session_identifier"];

  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [dictionaryCopy selectionType]);
  [v4 setObjectOrNull:v14 forKey:@"selection_type"];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [dictionaryCopy isPreconfiguredOffer]);
  [v4 setObjectOrNull:v15 forKey:@"is_preconfigured_offer"];

  userEnteredAmount = [dictionaryCopy userEnteredAmount];
  amount = [userEnteredAmount amount];
  v18 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v18 forKey:@"user_entered_amount_amount"];

  userEnteredAmount2 = [dictionaryCopy userEnteredAmount];
  currency = [userEnteredAmount2 currency];
  [v4 setObjectOrNull:currency forKey:@"user_entered_amount_currency"];

  [dictionaryCopy setupAfterPurchaseActiveDuration];
  v21 = [NSNumber numberWithDouble:?];
  [v4 setObjectOrNull:v21 forKey:@"setup_after_purchase_active_duration"];

  [dictionaryCopy setupAfterPurchaseStickyDuration];
  v23 = v22;

  v24 = [NSNumber numberWithDouble:v23];
  [v4 setObjectOrNull:v24 forKey:@"setup_after_purchase_sticky_duration"];

  return v4;
}

@end