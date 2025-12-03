@interface PaymentOfferEndpointMetadata
+ (id)_predicateForPassPID:(int64_t)d;
+ (id)_predicateForPassPID:(int64_t)d type:(unint64_t)type;
+ (id)_predicateForType:(unint64_t)type;
+ (id)_propertySettersForEndpointMetadata;
+ (id)_propertyValuesForEndpointMetadata:(id)metadata;
+ (id)anyInDatabase:(id)database passUniqueID:(id)d type:(unint64_t)type;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)deleteEndpointMetadataForPassUniqueID:(id)d type:(unint64_t)type inDatabase:(id)database;
+ (id)insertOrUpdateWithEndpointMetadata:(id)metadata inDatabase:(id)database;
+ (id)nextPaymentOfferEndpointToFetchInDatabase:(id)database;
+ (id)paymentOfferEndpointMetadataForPassUniqueID:(id)d type:(unint64_t)type inDatabase:(id)database;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
+ (void)deleteEntitiesForPassPID:(int64_t)d inDatabase:(id)database;
- (PaymentOfferEndpointMetadata)initWithEndpointMetadata:(id)metadata passPID:(int64_t)d inDatabase:(id)database;
- (id)endpointMetadata;
- (void)updateWithEndpointMetadata:(id)metadata;
@end

@implementation PaymentOfferEndpointMetadata

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"pass_pid";
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
  v7 = propertyCopy;
  v9 = v7;
  if (v7 == @"pass.unique_id" || v7 && (v8 = [(__CFString *)v7 isEqualToString:@"pass.unique_id"], v9, v8))
  {
    [joinsCopy addObject:@"JOIN pass ON pass.pid = payment_offer_endpoint_metadata.pass_pid"];
  }
}

+ (id)insertOrUpdateWithEndpointMetadata:(id)metadata inDatabase:(id)database
{
  metadataCopy = metadata;
  databaseCopy = database;
  passUniqueID = [metadataCopy passUniqueID];
  v9 = [Pass anyInDatabase:databaseCopy withUniqueID:passUniqueID];

  if (v9)
  {
    persistentID = [v9 persistentID];
    passUniqueID2 = [metadataCopy passUniqueID];
    v12 = [self anyInDatabase:databaseCopy passUniqueID:passUniqueID2 type:{objc_msgSend(metadataCopy, "type")}];

    if (v12)
    {
      [v12 updateWithEndpointMetadata:metadataCopy];
    }

    else
    {
      v12 = [[self alloc] initWithEndpointMetadata:metadataCopy passPID:persistentID inDatabase:databaseCopy];
    }

    endpointMetadata = [v12 endpointMetadata];
  }

  else
  {
    endpointMetadata = 0;
  }

  return endpointMetadata;
}

- (PaymentOfferEndpointMetadata)initWithEndpointMetadata:(id)metadata passPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  metadataCopy = metadata;
  v10 = [objc_opt_class() _propertyValuesForEndpointMetadata:metadataCopy];

  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"pass_pid"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  return v12;
}

- (void)updateWithEndpointMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [objc_opt_class() _propertyValuesForEndpointMetadata:metadataCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)paymentOfferEndpointMetadataForPassUniqueID:(id)d type:(unint64_t)type inDatabase:(id)database
{
  v5 = [self anyInDatabase:database passUniqueID:d type:type];
  endpointMetadata = [v5 endpointMetadata];

  return endpointMetadata;
}

+ (id)anyInDatabase:(id)database passUniqueID:(id)d type:(unint64_t)type
{
  databaseCopy = database;
  v9 = [Pass anyInDatabase:databaseCopy withUniqueID:d];
  v10 = v9;
  if (v9)
  {
    v11 = [self _predicateForPassPID:objc_msgSend(v9 type:{"persistentID"), type}];
    v12 = [self anyInDatabase:databaseCopy predicate:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)nextPaymentOfferEndpointToFetchInDatabase:(id)database
{
  databaseCopy = database;
  v5 = [SQLiteNullPredicate isNotNullPredicateWithProperty:@"retry_next_attempt"];
  v22 = @"retry_next_attempt";
  v6 = [NSArray arrayWithObjects:&v22 count:1];
  v21 = @"DESC";
  v7 = [NSArray arrayWithObjects:&v21 count:1];
  v8 = [self queryWithDatabase:databaseCopy predicate:v5 orderingProperties:v6 orderingDirections:v7 limit:1];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000059D0;
  v19 = sub_10000B0F4;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000779B8;
  v12[3] = &unk_100840898;
  v14 = &v15;
  v9 = databaseCopy;
  v13 = v9;
  [v8 enumeratePersistentIDsUsingBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

+ (id)deleteEndpointMetadataForPassUniqueID:(id)d type:(unint64_t)type inDatabase:(id)database
{
  v5 = [self anyInDatabase:database passUniqueID:d type:type];
  endpointMetadata = [v5 endpointMetadata];
  [v5 deleteFromDatabase];

  return endpointMetadata;
}

+ (void)deleteEntitiesForPassPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPassPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForPassPID:(int64_t)d type:(unint64_t)type
{
  v6 = [self _predicateForPassPID:d];
  v11[0] = v6;
  v7 = [self _predicateForType:type];
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)_predicateForPassPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForType:(unint64_t)type
{
  v3 = [NSNumber numberWithUnsignedInteger:type];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v3];

  return v4;
}

- (id)endpointMetadata
{
  v3 = objc_alloc_init(PDPaymentOfferEndpointMetadata);
  _propertySettersForEndpointMetadata = [objc_opt_class() _propertySettersForEndpointMetadata];
  allKeys = [_propertySettersForEndpointMetadata allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100077DD0;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForEndpointMetadata;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForEndpointMetadata;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_propertyValuesForEndpointMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = objc_alloc_init(NSMutableDictionary);
  lastUpdated = [metadataCopy lastUpdated];
  v6 = _SQLValueForDate();
  [v4 setObjectOrNull:v6 forKey:@"last_updated"];

  [v4 setBool:objc_msgSend(metadataCopy forKey:{"isDirty"), @"is_dirty"}];
  [v4 setInteger:objc_msgSend(metadataCopy forKey:{"type"), @"type"}];
  [v4 setInteger:objc_msgSend(metadataCopy forKey:{"retryReason"), @"retry_reason"}];
  [v4 setInteger:objc_msgSend(metadataCopy forKey:{"retryBackoffLevel"), @"retry_backoff_level"}];
  retryNextAttempt = [metadataCopy retryNextAttempt];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"retry_next_attempt"];

  criteriaIdentifier = [metadataCopy criteriaIdentifier];

  [v4 setObjectOrNull:criteriaIdentifier forKey:@"criteria_identifier"];

  return v4;
}

+ (id)_propertySettersForEndpointMetadata
{
  v4[0] = @"last_updated";
  v4[1] = @"is_dirty";
  v5[0] = &stru_1008408D8;
  v5[1] = &stru_1008408F8;
  v4[2] = @"type";
  v4[3] = @"retry_backoff_level";
  v5[2] = &stru_100840918;
  v5[3] = &stru_100840938;
  v4[4] = @"retry_next_attempt";
  v4[5] = @"retry_reason";
  v5[4] = &stru_100840958;
  v5[5] = &stru_100840978;
  v4[6] = @"criteria_identifier";
  v4[7] = @"pass.unique_id";
  v5[6] = &stru_100840998;
  v5[7] = &stru_1008409B8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:8];

  return v2;
}

@end