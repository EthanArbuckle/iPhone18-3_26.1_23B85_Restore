@interface PaymentTransitNetworkIdentifier
+ (BOOL)passExistsInDatabase:(id)database forTransitNetworks:(id)networks isTransitCard:(unint64_t)card expired:(unint64_t)expired;
+ (id)_predicateForPaymentApplication:(id)application;
+ (id)_predicateForPaymentApplicationPID:(int64_t)d;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertTransitNetworkIdentifiers:(id)identifiers withPaymentApplication:(id)application inDatabase:(id)database;
+ (id)predicateForNotExpired;
+ (id)predicateForPaymentCardType:(int64_t)type;
+ (id)transitNetworkIdentifiersInDatabase:(id)database forPaymentApplicationPID:(int64_t)d;
+ (id)transitNetworkIdentifiersInDatabase:(id)database forPredicate:(id)predicate;
+ (id)transitNetworksInDatabase:(id)database forPassesMatchingTransitType:(unint64_t)type expired:(unint64_t)expired;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
+ (void)deleteEntitiesInDatabase:(id)database forPaymentApplication:(id)application;
- (PaymentTransitNetworkIdentifier)initWithTransitNetworkIdentifier:(id)identifier networkOrder:(int64_t)order forPaymentApplication:(id)application database:(id)database;
@end

@implementation PaymentTransitNetworkIdentifier

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"payment_application_pid";
  }

  else
  {
    return 0;
  }
}

+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins
{
  propertyCopy = property;
  joinsCopy = joins;
  v13[0] = @"payment_application_pid";
  v13[1] = @"payment_application.pass_pid";
  v7 = [NSArray arrayWithObjects:v13 count:2];
  v12 = @"pass.card_type";
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v11 = @"pass_annotations.sorting_state";
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  if ([v7 containsObject:propertyCopy])
  {
    v10 = @"JOIN payment_application ON payment_application.pid = payment_application_pid";
  }

  else
  {
    if (![v8 containsObject:propertyCopy])
    {
      goto LABEL_6;
    }

    [joinsCopy addObject:@"JOIN payment_application ON payment_application.pid = payment_application_pid"];
    v10 = @"JOIN pass ON pass.pid = payment_application.pass_pid";
  }

  [joinsCopy addObject:v10];
LABEL_6:
  if ([v9 containsObject:propertyCopy])
  {
    [joinsCopy addObject:@"JOIN payment_application ON payment_application.pid = payment_application_pid"];
    [joinsCopy addObject:@"JOIN pass ON pass.pid = payment_application.pass_pid"];
    [joinsCopy addObject:@"JOIN pass_annotations ON pass_annotations.pass_pid = pass.pid"];
  }
}

+ (id)transitNetworkIdentifiersInDatabase:(id)database forPaymentApplicationPID:(int64_t)d
{
  databaseCopy = database;
  v7 = [self _predicateForPaymentApplicationPID:d];
  v8 = [self transitNetworkIdentifiersInDatabase:databaseCopy forPredicate:v7];

  return v8;
}

+ (id)transitNetworkIdentifiersInDatabase:(id)database forPredicate:(id)predicate
{
  predicateCopy = predicate;
  databaseCopy = database;
  v8 = objc_alloc_init(NSMutableArray);
  v21 = @"identifier";
  v9 = [NSArray arrayWithObjects:&v21 count:1];
  v20 = @"network_order";
  v10 = [NSArray arrayWithObjects:&v20 count:1];
  v11 = [self queryWithDatabase:databaseCopy predicate:predicateCopy orderingProperties:v10];

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

+ (id)transitNetworksInDatabase:(id)database forPassesMatchingTransitType:(unint64_t)type expired:(unint64_t)expired
{
  databaseCopy = database;
  v9 = [[NSMutableArray alloc] initWithCapacity:2];
  if (type == 2)
  {
    v10 = [PaymentTransitNetworkIdentifier predicateForPaymentCardType:2];
    v11 = [SQLiteCompoundPredicate negatedPredicate:v10];
    [v9 addObject:v11];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v10 = [self predicateForPaymentCardType:2];
    [v9 addObject:v10];
  }

LABEL_6:
  if (expired == 2)
  {
    predicateForNotExpired = [self predicateForNotExpired];
    [v9 addObject:predicateForNotExpired];
  }

  else
  {
    if (expired != 1)
    {
      goto LABEL_11;
    }

    predicateForNotExpired = [self predicateForNotExpired];
    v13 = [SQLiteCompoundPredicate negatedPredicate:predicateForNotExpired];
    [v9 addObject:v13];
  }

LABEL_11:
  v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
  v15 = [PaymentTransitNetworkIdentifier transitNetworkIdentifiersInDatabase:databaseCopy forPredicate:v14];

  return v15;
}

+ (BOOL)passExistsInDatabase:(id)database forTransitNetworks:(id)networks isTransitCard:(unint64_t)card expired:(unint64_t)expired
{
  networksCopy = networks;
  databaseCopy = database;
  v12 = [[NSMutableArray alloc] initWithCapacity:3];
  v13 = [self predicateForTransitNetworkIdentifiers:networksCopy];

  [v12 addObject:v13];
  if (card == 2)
  {
    v14 = [self predicateForPaymentCardType:2];
    v15 = [SQLiteCompoundPredicate negatedPredicate:v14];
    [v12 addObject:v15];
  }

  else
  {
    if (card != 1)
    {
      goto LABEL_6;
    }

    v14 = [self predicateForPaymentCardType:2];
    [v12 addObject:v14];
  }

LABEL_6:
  if (expired == 2)
  {
    predicateForNotExpired = [self predicateForNotExpired];
    [v12 addObject:predicateForNotExpired];
    goto LABEL_10;
  }

  if (expired == 1)
  {
    predicateForNotExpired = [self predicateForNotExpired];
    v17 = [SQLiteCompoundPredicate negatedPredicate:predicateForNotExpired];
    [v12 addObject:v17];

LABEL_10:
  }

  v18 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];
  v19 = [self queryWithDatabase:databaseCopy predicate:v18];

  v20 = [v19 countOfEntities] != 0;
  return v20;
}

+ (void)deleteEntitiesInDatabase:(id)database forPaymentApplication:(id)application
{
  databaseCopy = database;
  v8 = [self _predicateForPaymentApplication:application];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)insertTransitNetworkIdentifiers:(id)identifiers withPaymentApplication:(id)application inDatabase:(id)database
{
  identifiersCopy = identifiers;
  applicationCopy = application;
  databaseCopy = database;
  if ([identifiersCopy count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000E228C;
    v16[3] = &unk_100844490;
    v17 = identifiersCopy;
    selfCopy = self;
    v18 = applicationCopy;
    v19 = databaseCopy;
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

- (PaymentTransitNetworkIdentifier)initWithTransitNetworkIdentifier:(id)identifier networkOrder:(int64_t)order forPaymentApplication:(id)application database:(id)database
{
  if (application)
  {
    databaseCopy = database;
    applicationCopy = application;
    identifierCopy = identifier;
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = +[NSNull null];
    persistentID = [applicationCopy persistentID];

    v16 = [NSNumber numberWithLongLong:persistentID];
    [v13 setObject:v16 forKeyedSubscript:@"payment_application_pid"];

    if (identifierCopy)
    {
      v17 = identifierCopy;
    }

    else
    {
      v17 = v14;
    }

    [v13 setObject:v17 forKeyedSubscript:@"identifier"];

    v18 = [NSNumber numberWithInteger:order];
    [v13 setObject:v18 forKeyedSubscript:@"network_order"];

    v19 = [(SQLiteEntity *)self initWithPropertyValues:v13 inDatabase:databaseCopy];
    self = v19;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)_predicateForPaymentApplication:(id)application
{
  if (application)
  {
    [self _predicateForPaymentApplicationPID:{objc_msgSend(application, "persistentID")}];
  }

  else
  {
    +[SQLiteBooleanPredicate falsePredicate];
  }
  v3 = ;

  return v3;
}

+ (id)_predicateForPaymentApplicationPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application_pid" equalToValue:v3];

  return v4;
}

+ (id)predicateForPaymentCardType:(int64_t)type
{
  v3 = [NSNumber numberWithInteger:type];
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