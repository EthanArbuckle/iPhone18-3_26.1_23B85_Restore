@interface PaymentOfferEndpointMetadata
+ (id)_predicateForPassPID:(int64_t)a3;
+ (id)_predicateForPassPID:(int64_t)a3 type:(unint64_t)a4;
+ (id)_predicateForType:(unint64_t)a3;
+ (id)_propertySettersForEndpointMetadata;
+ (id)_propertyValuesForEndpointMetadata:(id)a3;
+ (id)anyInDatabase:(id)a3 passUniqueID:(id)a4 type:(unint64_t)a5;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)deleteEndpointMetadataForPassUniqueID:(id)a3 type:(unint64_t)a4 inDatabase:(id)a5;
+ (id)insertOrUpdateWithEndpointMetadata:(id)a3 inDatabase:(id)a4;
+ (id)nextPaymentOfferEndpointToFetchInDatabase:(id)a3;
+ (id)paymentOfferEndpointMetadataForPassUniqueID:(id)a3 type:(unint64_t)a4 inDatabase:(id)a5;
+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4;
+ (void)deleteEntitiesForPassPID:(int64_t)a3 inDatabase:(id)a4;
- (PaymentOfferEndpointMetadata)initWithEndpointMetadata:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5;
- (id)endpointMetadata;
- (void)updateWithEndpointMetadata:(id)a3;
@end

@implementation PaymentOfferEndpointMetadata

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"pass_pid";
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
  v7 = v5;
  v9 = v7;
  if (v7 == @"pass.unique_id" || v7 && (v8 = [(__CFString *)v7 isEqualToString:@"pass.unique_id"], v9, v8))
  {
    [v6 addObject:@"JOIN pass ON pass.pid = payment_offer_endpoint_metadata.pass_pid"];
  }
}

+ (id)insertOrUpdateWithEndpointMetadata:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 passUniqueID];
  v9 = [Pass anyInDatabase:v7 withUniqueID:v8];

  if (v9)
  {
    v10 = [v9 persistentID];
    v11 = [v6 passUniqueID];
    v12 = [a1 anyInDatabase:v7 passUniqueID:v11 type:{objc_msgSend(v6, "type")}];

    if (v12)
    {
      [v12 updateWithEndpointMetadata:v6];
    }

    else
    {
      v12 = [[a1 alloc] initWithEndpointMetadata:v6 passPID:v10 inDatabase:v7];
    }

    v13 = [v12 endpointMetadata];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (PaymentOfferEndpointMetadata)initWithEndpointMetadata:(id)a3 passPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() _propertyValuesForEndpointMetadata:v9];

  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"pass_pid"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];
  return v12;
}

- (void)updateWithEndpointMetadata:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _propertyValuesForEndpointMetadata:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)paymentOfferEndpointMetadataForPassUniqueID:(id)a3 type:(unint64_t)a4 inDatabase:(id)a5
{
  v5 = [a1 anyInDatabase:a5 passUniqueID:a3 type:a4];
  v6 = [v5 endpointMetadata];

  return v6;
}

+ (id)anyInDatabase:(id)a3 passUniqueID:(id)a4 type:(unint64_t)a5
{
  v8 = a3;
  v9 = [Pass anyInDatabase:v8 withUniqueID:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [a1 _predicateForPassPID:objc_msgSend(v9 type:{"persistentID"), a5}];
    v12 = [a1 anyInDatabase:v8 predicate:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)nextPaymentOfferEndpointToFetchInDatabase:(id)a3
{
  v4 = a3;
  v5 = [SQLiteNullPredicate isNotNullPredicateWithProperty:@"retry_next_attempt"];
  v22 = @"retry_next_attempt";
  v6 = [NSArray arrayWithObjects:&v22 count:1];
  v21 = @"DESC";
  v7 = [NSArray arrayWithObjects:&v21 count:1];
  v8 = [a1 queryWithDatabase:v4 predicate:v5 orderingProperties:v6 orderingDirections:v7 limit:1];

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
  v9 = v4;
  v13 = v9;
  [v8 enumeratePersistentIDsUsingBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

+ (id)deleteEndpointMetadataForPassUniqueID:(id)a3 type:(unint64_t)a4 inDatabase:(id)a5
{
  v5 = [a1 anyInDatabase:a5 passUniqueID:a3 type:a4];
  v6 = [v5 endpointMetadata];
  [v5 deleteFromDatabase];

  return v6;
}

+ (void)deleteEntitiesForPassPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPassPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForPassPID:(int64_t)a3 type:(unint64_t)a4
{
  v6 = [a1 _predicateForPassPID:a3];
  v11[0] = v6;
  v7 = [a1 _predicateForType:a4];
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)_predicateForPassPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForType:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v3];

  return v4;
}

- (id)endpointMetadata
{
  v3 = objc_alloc_init(PDPaymentOfferEndpointMetadata);
  v4 = [objc_opt_class() _propertySettersForEndpointMetadata];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100077DD0;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_propertyValuesForEndpointMetadata:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 lastUpdated];
  v6 = _SQLValueForDate();
  [v4 setObjectOrNull:v6 forKey:@"last_updated"];

  [v4 setBool:objc_msgSend(v3 forKey:{"isDirty"), @"is_dirty"}];
  [v4 setInteger:objc_msgSend(v3 forKey:{"type"), @"type"}];
  [v4 setInteger:objc_msgSend(v3 forKey:{"retryReason"), @"retry_reason"}];
  [v4 setInteger:objc_msgSend(v3 forKey:{"retryBackoffLevel"), @"retry_backoff_level"}];
  v7 = [v3 retryNextAttempt];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"retry_next_attempt"];

  v9 = [v3 criteriaIdentifier];

  [v4 setObjectOrNull:v9 forKey:@"criteria_identifier"];

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