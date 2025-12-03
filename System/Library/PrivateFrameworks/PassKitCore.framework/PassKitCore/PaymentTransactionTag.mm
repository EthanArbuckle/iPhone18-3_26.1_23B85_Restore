@interface PaymentTransactionTag
+ (id)_predicateForCurrentLocale;
+ (id)_predicateForPaymentTransactionPID:(int64_t)d;
+ (id)_propertySettersForPaymentTransactionTag;
+ (id)_tagsFromQuery:(id)query;
+ (id)allTagsWithTitlesInDatabase:(id)database;
+ (id)compoundTagsInDatabase:(id)database tagType:(unint64_t)type limit:(unint64_t)limit;
+ (id)paymentTransactionTagsForPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteAllPaymentTransactionTagsInDatabase:(id)database;
+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (void)insertPaymentTransactionTags:(id)tags forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
@end

@implementation PaymentTransactionTag

+ (void)insertPaymentTransactionTags:(id)tags forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  tagsCopy = tags;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100095034;
  v29[3] = &unk_1008414E0;
  selfCopy = self;
  selfCopy2 = self;
  dCopy = d;
  dCopy2 = d;
  databaseCopy = database;
  v10 = databaseCopy;
  sub_1005D4424(databaseCopy, v29);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = tagsCopy;
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
        v17 = [NSNumber numberWithLongLong:dCopy2];
        [v16 setObject:v17 forKey:@"payment_transaction_pid"];

        v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 type]);
        [v16 setObject:v18 forKey:@"type"];

        rank = [v15 rank];
        v20 = PKCurrencyDecimalToStorageNumber();
        [v16 setObjectOrNull:v20 forKey:@"rank"];

        localizedTitle = [v15 localizedTitle];
        [v16 setObjectOrNull:localizedTitle forKey:@"localized_title"];

        localeIdentifier = [v15 localeIdentifier];
        [v16 setObjectOrNull:localeIdentifier forKey:@"locale_identifier"];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v12);
  }
}

+ (id)paymentTransactionTagsForPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  _predicateForCurrentLocale = [self _predicateForCurrentLocale];
  v17[0] = _predicateForCurrentLocale;
  v8 = [SQLiteNullPredicate isNullPredicateWithProperty:@"locale_identifier"];
  v17[1] = v8;
  v9 = [NSArray arrayWithObjects:v17 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v9];
  v18[0] = v10;
  v11 = [self _predicateForPaymentTransactionPID:d];
  v18[1] = v11;
  v12 = [NSArray arrayWithObjects:v18 count:2];
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

  v14 = [self queryWithDatabase:databaseCopy predicate:v13];

  v15 = [self _tagsFromQuery:v14];

  return v15;
}

+ (id)allTagsWithTitlesInDatabase:(id)database
{
  databaseCopy = database;
  _predicateForCurrentLocale = [self _predicateForCurrentLocale];
  v10[0] = @"type";
  v10[1] = @"localized_title";
  v6 = [NSArray arrayWithObjects:v10 count:2];
  v7 = [self queryWithDatabase:databaseCopy predicate:_predicateForCurrentLocale orderingProperties:0 orderingDirections:0 limit:0 groupingProperties:v6];

  v8 = [self _tagsFromQuery:v7];

  return v8;
}

+ (id)compoundTagsInDatabase:(id)database tagType:(unint64_t)type limit:(unint64_t)limit
{
  databaseCopy = database;
  v9 = [NSNumber numberWithUnsignedInteger:type];
  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v9];
  v15[0] = @"type";
  v15[1] = @"localized_title";
  v11 = [NSArray arrayWithObjects:v15 count:2];
  v12 = [self queryWithDatabase:databaseCopy predicate:v10 orderingProperties:0 orderingDirections:0 limit:limit groupingProperties:v11];

  v13 = [self _tagsFromQuery:v12];

  return v13;
}

+ (id)_tagsFromQuery:(id)query
{
  queryCopy = query;
  _propertySettersForPaymentTransactionTag = [self _propertySettersForPaymentTransactionTag];
  v6 = objc_alloc_init(NSMutableSet);
  allKeys = [_propertySettersForPaymentTransactionTag allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100095578;
  v12[3] = &unk_10083C998;
  selfCopy = self;
  v13 = _propertySettersForPaymentTransactionTag;
  v8 = v6;
  v14 = v8;
  v9 = _propertySettersForPaymentTransactionTag;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v12];

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

+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPaymentTransactionPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteAllPaymentTransactionTagsInDatabase:(id)database
{
  databaseCopy = database;
  v5 = +[SQLiteBooleanPredicate truePredicate];
  v6 = [self queryWithDatabase:databaseCopy predicate:v5];

  [v6 deleteAllEntities];
}

+ (id)_predicateForCurrentLocale
{
  v2 = +[NSLocale currentLocale];
  localeIdentifier = [v2 localeIdentifier];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"locale_identifier" equalToValue:localeIdentifier];

  return v4;
}

+ (id)_predicateForPaymentTransactionPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
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