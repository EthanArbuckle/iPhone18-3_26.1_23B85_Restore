@interface PaymentAutomaticSelectionReaderId
+ (id)_predicateForPaymentAutomaticSelectionCriterionPID:(int64_t)d;
+ (id)_readerIDsInDatabase:(id)database withPredicate:(id)predicate;
+ (id)insertReaderIds:(id)ids withPaymentAutomaticSelectionCriterion:(id)criterion inDatabase:(id)database;
+ (id)readerIDsInDatabase:(id)database forPaymentAutomaticSelectionCriterionPID:(int64_t)d;
+ (void)deleteEntitiesInDatabase:(id)database forPaymentAutomaticSelectionCriterionPID:(int64_t)d;
- (PaymentAutomaticSelectionReaderId)initWithReaderId:(id)id forPaymentAutomaticSelectionCriterionPID:(int64_t)d database:(id)database;
@end

@implementation PaymentAutomaticSelectionReaderId

+ (id)readerIDsInDatabase:(id)database forPaymentAutomaticSelectionCriterionPID:(int64_t)d
{
  databaseCopy = database;
  v7 = [self _predicateForPaymentAutomaticSelectionCriterionPID:d];
  v8 = [self _readerIDsInDatabase:databaseCopy withPredicate:v7];

  return v8;
}

+ (id)_readerIDsInDatabase:(id)database withPredicate:(id)predicate
{
  if (predicate)
  {
    v4 = [self queryWithDatabase:database predicate:?];
    v5 = objc_alloc_init(NSMutableSet);
    v13 = @"reader_id";
    v6 = [NSArray arrayWithObjects:&v13 count:1];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100177C24;
    v11[3] = &unk_100840B08;
    v12 = v5;
    v7 = v5;
    [v4 enumeratePersistentIDsAndProperties:v6 usingBlock:v11];

    if ([v7 count])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)deleteEntitiesInDatabase:(id)database forPaymentAutomaticSelectionCriterionPID:(int64_t)d
{
  databaseCopy = database;
  v8 = [self _predicateForPaymentAutomaticSelectionCriterionPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)insertReaderIds:(id)ids withPaymentAutomaticSelectionCriterion:(id)criterion inDatabase:(id)database
{
  idsCopy = ids;
  criterionCopy = criterion;
  databaseCopy = database;
  if (criterionCopy && [idsCopy count])
  {
    persistentID = [criterionCopy persistentID];
    v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(idsCopy, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = idsCopy;
    v13 = idsCopy;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[self alloc] initWithReaderId:*(*(&v23 + 1) + 8 * i) forPaymentAutomaticSelectionCriterionPID:persistentID database:databaseCopy];
          [v12 safelyAddObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    if ([v12 count])
    {
      v19 = v12;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    idsCopy = v22;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (PaymentAutomaticSelectionReaderId)initWithReaderId:(id)id forPaymentAutomaticSelectionCriterionPID:(int64_t)d database:(id)database
{
  databaseCopy = database;
  idCopy = id;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = +[NSNull null];
  v12 = [NSNumber numberWithLongLong:d];
  [v10 setObject:v12 forKeyedSubscript:@"payment_automatic_selection_criterion_pid"];

  if (idCopy)
  {
    v13 = idCopy;
  }

  else
  {
    v13 = v11;
  }

  [v10 setObject:v13 forKeyedSubscript:@"reader_id"];

  v14 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  return v14;
}

+ (id)_predicateForPaymentAutomaticSelectionCriterionPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_automatic_selection_criterion_pid" equalToValue:v3];

  return v4;
}

@end