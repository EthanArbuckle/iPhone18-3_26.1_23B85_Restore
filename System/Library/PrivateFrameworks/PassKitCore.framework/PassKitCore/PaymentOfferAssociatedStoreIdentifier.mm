@interface PaymentOfferAssociatedStoreIdentifier
+ (id)_associatedStoreIdentifiersWithQuery:(id)query;
+ (id)_commonDictionaryAssociatedStoreIdentifier:(id)identifier;
+ (id)_predicateForInstallmentCriteriaPID:(int64_t)d;
+ (id)associatedStoreIdentifiersForInstallmentCriteriaPID:(int64_t)d inDatabase:(id)database;
+ (void)deletePaymentOfferCurrencyAmountForInstallmentCriteriaPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdateAssociatedStoreIdentifiers:(id)identifiers forInstallmentCriteriaPID:(int64_t)d inDatabase:(id)database;
@end

@implementation PaymentOfferAssociatedStoreIdentifier

+ (void)insertOrUpdateAssociatedStoreIdentifiers:(id)identifiers forInstallmentCriteriaPID:(int64_t)d inDatabase:(id)database
{
  identifiersCopy = identifiers;
  databaseCopy = database;
  [self deletePaymentOfferCurrencyAmountForInstallmentCriteriaPID:d inDatabase:databaseCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = identifiersCopy;
  v10 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [objc_opt_class() _commonDictionaryAssociatedStoreIdentifier:*(*(&v17 + 1) + 8 * v13)];
        v15 = [NSNumber numberWithLongLong:d];
        [v14 safelySetObject:v15 forKey:@"i_pid"];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

+ (void)deletePaymentOfferCurrencyAmountForInstallmentCriteriaPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForInstallmentCriteriaPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

+ (id)associatedStoreIdentifiersForInstallmentCriteriaPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForInstallmentCriteriaPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _associatedStoreIdentifiersWithQuery:v8];

  return v9;
}

+ (id)_associatedStoreIdentifiersWithQuery:(id)query
{
  queryCopy = query;
  v4 = objc_alloc_init(NSMutableSet);
  v11 = @"a";
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F5050;
  v9[3] = &unk_100840B08;
  v6 = v4;
  v10 = v6;
  [queryCopy enumeratePersistentIDsAndProperties:v5 usingBlock:v9];

  if ([v6 count])
  {
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_predicateForInstallmentCriteriaPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"i_pid" equalToValue:v3];

  return v4;
}

+ (id)_commonDictionaryAssociatedStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObjectOrNull:identifierCopy forKey:@"a"];

  return v4;
}

@end