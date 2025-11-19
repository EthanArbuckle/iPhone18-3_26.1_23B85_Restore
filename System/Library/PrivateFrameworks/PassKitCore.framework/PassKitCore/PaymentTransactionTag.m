@interface PaymentTransactionTag
+ (id)_predicateForCurrentLocale;
+ (id)_predicateForPaymentTransactionPID:(int64_t)a3;
+ (id)_propertySettersForPaymentTransactionTag;
+ (id)_tagsFromQuery:(id)a3;
+ (id)allTagsWithTitlesInDatabase:(id)a3;
+ (id)compoundTagsInDatabase:(id)a3 tagType:(unint64_t)a4 limit:(unint64_t)a5;
+ (id)paymentTransactionTagsForPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteAllPaymentTransactionTagsInDatabase:(id)a3;
+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertPaymentTransactionTags:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5;
@end

@implementation PaymentTransactionTag

+ (void)insertPaymentTransactionTags:(id)a3 forPaymentTransactionPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100095034;
  v29[3] = &unk_1008414E0;
  v24 = a1;
  v31 = a1;
  v32 = a4;
  v9 = a4;
  v30 = a5;
  v10 = v30;
  sub_1005D4424(v30, v29);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        v16 = objc_alloc_init(NSMutableDictionary);
        v17 = [NSNumber numberWithLongLong:v9];
        [v16 setObject:v17 forKey:@"payment_transaction_pid"];

        v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 type]);
        [v16 setObject:v18 forKey:@"type"];

        v19 = [v15 rank];
        v20 = PKCurrencyDecimalToStorageNumber();
        [v16 setObjectOrNull:v20 forKey:@"rank"];

        v21 = [v15 localizedTitle];
        [v16 setObjectOrNull:v21 forKey:@"localized_title"];

        v22 = [v15 localeIdentifier];
        [v16 setObjectOrNull:v22 forKey:@"locale_identifier"];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v12);
  }
}

+ (id)paymentTransactionTagsForPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForCurrentLocale];
  v17[0] = v7;
  v8 = [SQLiteNullPredicate isNullPredicateWithProperty:@"locale_identifier"];
  v17[1] = v8;
  v9 = [NSArray arrayWithObjects:v17 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v9];
  v18[0] = v10;
  v11 = [a1 _predicateForPaymentTransactionPID:a3];
  v18[1] = v11;
  v12 = [NSArray arrayWithObjects:v18 count:2];
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

  v14 = [a1 queryWithDatabase:v6 predicate:v13];

  v15 = [a1 _tagsFromQuery:v14];

  return v15;
}

+ (id)allTagsWithTitlesInDatabase:(id)a3
{
  v4 = a3;
  v5 = [a1 _predicateForCurrentLocale];
  v10[0] = @"type";
  v10[1] = @"localized_title";
  v6 = [NSArray arrayWithObjects:v10 count:2];
  v7 = [a1 queryWithDatabase:v4 predicate:v5 orderingProperties:0 orderingDirections:0 limit:0 groupingProperties:v6];

  v8 = [a1 _tagsFromQuery:v7];

  return v8;
}

+ (id)compoundTagsInDatabase:(id)a3 tagType:(unint64_t)a4 limit:(unint64_t)a5
{
  v8 = a3;
  v9 = [NSNumber numberWithUnsignedInteger:a4];
  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v9];
  v15[0] = @"type";
  v15[1] = @"localized_title";
  v11 = [NSArray arrayWithObjects:v15 count:2];
  v12 = [a1 queryWithDatabase:v8 predicate:v10 orderingProperties:0 orderingDirections:0 limit:a5 groupingProperties:v11];

  v13 = [a1 _tagsFromQuery:v12];

  return v13;
}

+ (id)_tagsFromQuery:(id)a3
{
  v4 = a3;
  v5 = [a1 _propertySettersForPaymentTransactionTag];
  v6 = objc_alloc_init(NSMutableSet);
  v7 = [v5 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100095578;
  v12[3] = &unk_10083C998;
  v15 = a1;
  v13 = v5;
  v8 = v6;
  v14 = v8;
  v9 = v5;
  [v4 enumeratePersistentIDsAndProperties:v7 usingBlock:v12];

  if ([v8 count])
  {
    v10 = [v8 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPaymentTransactionPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteAllPaymentTransactionTagsInDatabase:(id)a3
{
  v4 = a3;
  v5 = +[SQLiteBooleanPredicate truePredicate];
  v6 = [a1 queryWithDatabase:v4 predicate:v5];

  [v6 deleteAllEntities];
}

+ (id)_predicateForCurrentLocale
{
  v2 = +[NSLocale currentLocale];
  v3 = [v2 localeIdentifier];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"locale_identifier" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPaymentTransactionPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_transaction_pid" equalToValue:v3];

  return v4;
}

+ (id)_propertySettersForPaymentTransactionTag
{
  v4[0] = @"type";
  v4[1] = @"rank";
  v5[0] = &stru_100841520;
  v5[1] = &stru_100841540;
  v4[2] = @"localized_title";
  v4[3] = @"locale_identifier";
  v5[2] = &stru_100841560;
  v5[3] = &stru_100841580;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

@end