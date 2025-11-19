@interface PaymentTransitNetworkIdentifier
+ (BOOL)passExistsInDatabase:(id)a3 forTransitNetworks:(id)a4 isTransitCard:(unint64_t)a5 expired:(unint64_t)a6;
+ (id)_predicateForPaymentApplication:(id)a3;
+ (id)_predicateForPaymentApplicationPID:(int64_t)a3;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertTransitNetworkIdentifiers:(id)a3 withPaymentApplication:(id)a4 inDatabase:(id)a5;
+ (id)predicateForNotExpired;
+ (id)predicateForPaymentCardType:(int64_t)a3;
+ (id)transitNetworkIdentifiersInDatabase:(id)a3 forPaymentApplicationPID:(int64_t)a4;
+ (id)transitNetworkIdentifiersInDatabase:(id)a3 forPredicate:(id)a4;
+ (id)transitNetworksInDatabase:(id)a3 forPassesMatchingTransitType:(unint64_t)a4 expired:(unint64_t)a5;
+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4;
+ (void)deleteEntitiesInDatabase:(id)a3 forPaymentApplication:(id)a4;
- (PaymentTransitNetworkIdentifier)initWithTransitNetworkIdentifier:(id)a3 networkOrder:(int64_t)a4 forPaymentApplication:(id)a5 database:(id)a6;
@end

@implementation PaymentTransitNetworkIdentifier

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

+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13[0] = @"payment_application_pid";
  v13[1] = @"payment_application.pass_pid";
  v7 = [NSArray arrayWithObjects:v13 count:2];
  v12 = @"pass.card_type";
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v11 = @"pass_annotations.sorting_state";
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  if ([v7 containsObject:v5])
  {
    v10 = @"JOIN payment_application ON payment_application.pid = payment_application_pid";
  }

  else
  {
    if (![v8 containsObject:v5])
    {
      goto LABEL_6;
    }

    [v6 addObject:@"JOIN payment_application ON payment_application.pid = payment_application_pid"];
    v10 = @"JOIN pass ON pass.pid = payment_application.pass_pid";
  }

  [v6 addObject:v10];
LABEL_6:
  if ([v9 containsObject:v5])
  {
    [v6 addObject:@"JOIN payment_application ON payment_application.pid = payment_application_pid"];
    [v6 addObject:@"JOIN pass ON pass.pid = payment_application.pass_pid"];
    [v6 addObject:@"JOIN pass_annotations ON pass_annotations.pass_pid = pass.pid"];
  }
}

+ (id)transitNetworkIdentifiersInDatabase:(id)a3 forPaymentApplicationPID:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPaymentApplicationPID:a4];
  v8 = [a1 transitNetworkIdentifiersInDatabase:v6 forPredicate:v7];

  return v8;
}

+ (id)transitNetworkIdentifiersInDatabase:(id)a3 forPredicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableArray);
  v21 = @"identifier";
  v9 = [NSArray arrayWithObjects:&v21 count:1];
  v20 = @"network_order";
  v10 = [NSArray arrayWithObjects:&v20 count:1];
  v11 = [a1 queryWithDatabase:v7 predicate:v6 orderingProperties:v10];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000E1C94;
  v18 = &unk_100840B08;
  v12 = v8;
  v19 = v12;
  [v11 enumeratePersistentIDsAndProperties:v9 usingBlock:&v15];
  if ([v12 count])
  {
    v13 = [v12 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)transitNetworksInDatabase:(id)a3 forPassesMatchingTransitType:(unint64_t)a4 expired:(unint64_t)a5
{
  v8 = a3;
  v9 = [[NSMutableArray alloc] initWithCapacity:2];
  if (a4 == 2)
  {
    v10 = [PaymentTransitNetworkIdentifier predicateForPaymentCardType:2];
    v11 = [SQLiteCompoundPredicate negatedPredicate:v10];
    [v9 addObject:v11];
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v10 = [a1 predicateForPaymentCardType:2];
    [v9 addObject:v10];
  }

LABEL_6:
  if (a5 == 2)
  {
    v12 = [a1 predicateForNotExpired];
    [v9 addObject:v12];
  }

  else
  {
    if (a5 != 1)
    {
      goto LABEL_11;
    }

    v12 = [a1 predicateForNotExpired];
    v13 = [SQLiteCompoundPredicate negatedPredicate:v12];
    [v9 addObject:v13];
  }

LABEL_11:
  v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
  v15 = [PaymentTransitNetworkIdentifier transitNetworkIdentifiersInDatabase:v8 forPredicate:v14];

  return v15;
}

+ (BOOL)passExistsInDatabase:(id)a3 forTransitNetworks:(id)a4 isTransitCard:(unint64_t)a5 expired:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [[NSMutableArray alloc] initWithCapacity:3];
  v13 = [a1 predicateForTransitNetworkIdentifiers:v10];

  [v12 addObject:v13];
  if (a5 == 2)
  {
    v14 = [a1 predicateForPaymentCardType:2];
    v15 = [SQLiteCompoundPredicate negatedPredicate:v14];
    [v12 addObject:v15];
  }

  else
  {
    if (a5 != 1)
    {
      goto LABEL_6;
    }

    v14 = [a1 predicateForPaymentCardType:2];
    [v12 addObject:v14];
  }

LABEL_6:
  if (a6 == 2)
  {
    v16 = [a1 predicateForNotExpired];
    [v12 addObject:v16];
    goto LABEL_10;
  }

  if (a6 == 1)
  {
    v16 = [a1 predicateForNotExpired];
    v17 = [SQLiteCompoundPredicate negatedPredicate:v16];
    [v12 addObject:v17];

LABEL_10:
  }

  v18 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];
  v19 = [a1 queryWithDatabase:v11 predicate:v18];

  v20 = [v19 countOfEntities] != 0;
  return v20;
}

+ (void)deleteEntitiesInDatabase:(id)a3 forPaymentApplication:(id)a4
{
  v6 = a3;
  v8 = [a1 _predicateForPaymentApplication:a4];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)insertTransitNetworkIdentifiers:(id)a3 withPaymentApplication:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000E228C;
    v16[3] = &unk_100844490;
    v17 = v8;
    v21 = a1;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v12 = v11;
    sub_1005D4424(v19, v16);
    if ([v12 count])
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (PaymentTransitNetworkIdentifier)initWithTransitNetworkIdentifier:(id)a3 networkOrder:(int64_t)a4 forPaymentApplication:(id)a5 database:(id)a6
{
  if (a5)
  {
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

    [v13 setObject:v17 forKeyedSubscript:@"identifier"];

    v18 = [NSNumber numberWithInteger:a4];
    [v13 setObject:v18 forKeyedSubscript:@"network_order"];

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

+ (id)_predicateForPaymentApplication:(id)a3
{
  if (a3)
  {
    [a1 _predicateForPaymentApplicationPID:{objc_msgSend(a3, "persistentID")}];
  }

  else
  {
    +[SQLiteBooleanPredicate falsePredicate];
  }
  v3 = ;

  return v3;
}

+ (id)_predicateForPaymentApplicationPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentCardType:(int64_t)a3
{
  v3 = [NSNumber numberWithInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass.card_type" equalToValue:v3];

  return v4;
}

+ (id)predicateForNotExpired
{
  v2 = [NSNumber numberWithInteger:0];
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_annotations.sorting_state" equalToValue:v2];
  v9[0] = v3;
  v4 = [NSNumber numberWithInteger:4];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_annotations.sorting_state" equalToValue:v4];
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];

  return v7;
}

@end