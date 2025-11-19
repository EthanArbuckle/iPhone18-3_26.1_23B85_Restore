@interface MOContextPredicate
+ (id)contextPredicateForContextType:(unint64_t)a3 withMetadata:(id)a4 startDate:(id)a5 endDate:(id)a6;
+ (id)contextPredicateForContextType:(unint64_t)a3 withMetadata:(id)a4 startDate:(id)a5 endDate:(id)a6 aroundLocation:(id)a7 withDistanceThreshold:(double)a8;
- (MOContextPredicate)initWithCoder:(id)a3;
- (MOContextPredicate)initWithPredicate:(id)a3 filter:(id)a4 metadataTypes:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContextPredicate

- (MOContextPredicate)initWithPredicate:(id)a3 filter:(id)a4 metadataTypes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MOContextPredicate;
  v12 = [(MOContextPredicate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fetchRequestPredicate, a3);
    objc_storeStrong(&v13->_filterCriteriaMap, a4);
    objc_storeStrong(&v13->_metadataTypes, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  fetchRequestPredicate = self->_fetchRequestPredicate;
  v5 = a3;
  [v5 encodeObject:fetchRequestPredicate forKey:@"requestPredicate"];
  [v5 encodeObject:self->_filterCriteriaMap forKey:@"criteriaMap"];
  [v5 encodeObject:self->_metadataTypes forKey:@"metadataTypes"];
}

- (MOContextPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v5, v6, v7, objc_opt_class(), 0];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestPredicate"];
  v10 = [v4 decodeObjectOfClasses:v8 forKey:@"criteriaMap"];
  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"metadataTypes"];

  v14 = [(MOContextPredicate *)self initWithPredicate:v9 filter:v10 metadataTypes:v13];
  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextPredicate alloc];
  v5 = [(MOContextPredicate *)self fetchRequestPredicate];
  v6 = [(MOContextPredicate *)self filterCriteriaMap];
  v7 = [(MOContextPredicate *)self metadataTypes];
  v8 = [(MOContextPredicate *)v4 initWithPredicate:v5 filter:v6 metadataTypes:v7];

  return v8;
}

+ (id)contextPredicateForContextType:(unint64_t)a3 withMetadata:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v26 = [NSExpression expressionForKeyPath:@"startDate"];
  v25 = [NSExpression expressionForKeyPath:@"endDate"];
  v12 = [NSExpression expressionForKeyPath:@"contextType"];
  v23 = [NSExpression expressionForConstantValue:v10];

  v24 = [NSExpression expressionForConstantValue:v9];

  v13 = [[NSNumber alloc] initWithInt:a3];
  v14 = [NSExpression expressionForConstantValue:v13];
  v15 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v26 rightExpression:v24 operation:4];
  v16 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v25 rightExpression:v23 operation:3];
  v17 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v12 rightExpression:v14 operation:0];
  v27[0] = v15;
  v27[1] = v16;
  v27[2] = v17;
  v18 = [NSArray arrayWithObjects:v27 count:3];
  v19 = [MOContextPredicateBuilder createAndPredicate:v18];

  v20 = [NSKeyedArchiver archivedDataWithRootObject:v19 requiringSecureCoding:1 error:0];
  v21 = [[MOContextPredicate alloc] initWithPredicate:v20 filter:&__NSDictionary0__struct metadataTypes:v11];

  return v21;
}

+ (id)contextPredicateForContextType:(unint64_t)a3 withMetadata:(id)a4 startDate:(id)a5 endDate:(id)a6 aroundLocation:(id)a7 withDistanceThreshold:(double)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v36 = a4;
  v35 = [NSExpression expressionForKeyPath:@"startDate"];
  v33 = [NSExpression expressionForKeyPath:@"endDate"];
  v30 = [NSExpression expressionForKeyPath:@"contextType"];
  v31 = [NSExpression expressionForConstantValue:v15];

  v32 = [NSExpression expressionForConstantValue:v14];

  v34 = [[NSNumber alloc] initWithInt:a3];
  v16 = [NSExpression expressionForConstantValue:v34];
  v17 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v35 rightExpression:v32 operation:4];
  v18 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v33 rightExpression:v31 operation:3];
  v19 = v16;
  v20 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v30 rightExpression:v16 operation:0];
  v41[0] = v17;
  v41[1] = v18;
  v41[2] = v20;
  v21 = [NSArray arrayWithObjects:v41 count:3];
  v22 = [MOContextPredicateBuilder createAndPredicate:v21];

  v23 = [NSKeyedArchiver archivedDataWithRootObject:v22 requiringSecureCoding:1 error:0];
  v24 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];

  v39 = @"distanceFromLocation";
  v37[0] = @"targetLocation";
  v37[1] = @"maxDistance";
  v38[0] = v24;
  v25 = [NSNumber numberWithDouble:a8];
  v38[1] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
  v40 = v26;
  v27 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

  v28 = [[MOContextPredicate alloc] initWithPredicate:v23 filter:v27 metadataTypes:v36];

  return v28;
}

@end