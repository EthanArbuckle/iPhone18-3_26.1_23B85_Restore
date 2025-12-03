@interface MOContextPredicate
+ (id)contextPredicateForContextType:(unint64_t)type withMetadata:(id)metadata startDate:(id)date endDate:(id)endDate;
+ (id)contextPredicateForContextType:(unint64_t)type withMetadata:(id)metadata startDate:(id)date endDate:(id)endDate aroundLocation:(id)location withDistanceThreshold:(double)threshold;
- (MOContextPredicate)initWithCoder:(id)coder;
- (MOContextPredicate)initWithPredicate:(id)predicate filter:(id)filter metadataTypes:(id)types;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContextPredicate

- (MOContextPredicate)initWithPredicate:(id)predicate filter:(id)filter metadataTypes:(id)types
{
  predicateCopy = predicate;
  filterCopy = filter;
  typesCopy = types;
  v15.receiver = self;
  v15.super_class = MOContextPredicate;
  v12 = [(MOContextPredicate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fetchRequestPredicate, predicate);
    objc_storeStrong(&v13->_filterCriteriaMap, filter);
    objc_storeStrong(&v13->_metadataTypes, types);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  fetchRequestPredicate = self->_fetchRequestPredicate;
  coderCopy = coder;
  [coderCopy encodeObject:fetchRequestPredicate forKey:@"requestPredicate"];
  [coderCopy encodeObject:self->_filterCriteriaMap forKey:@"criteriaMap"];
  [coderCopy encodeObject:self->_metadataTypes forKey:@"metadataTypes"];
}

- (MOContextPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v5, v6, v7, objc_opt_class(), 0];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestPredicate"];
  v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"criteriaMap"];
  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"metadataTypes"];

  v14 = [(MOContextPredicate *)self initWithPredicate:v9 filter:v10 metadataTypes:v13];
  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextPredicate alloc];
  fetchRequestPredicate = [(MOContextPredicate *)self fetchRequestPredicate];
  filterCriteriaMap = [(MOContextPredicate *)self filterCriteriaMap];
  metadataTypes = [(MOContextPredicate *)self metadataTypes];
  v8 = [(MOContextPredicate *)v4 initWithPredicate:fetchRequestPredicate filter:filterCriteriaMap metadataTypes:metadataTypes];

  return v8;
}

+ (id)contextPredicateForContextType:(unint64_t)type withMetadata:(id)metadata startDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  metadataCopy = metadata;
  v26 = [NSExpression expressionForKeyPath:@"startDate"];
  v25 = [NSExpression expressionForKeyPath:@"endDate"];
  v12 = [NSExpression expressionForKeyPath:@"contextType"];
  v23 = [NSExpression expressionForConstantValue:dateCopy];

  v24 = [NSExpression expressionForConstantValue:endDateCopy];

  v13 = [[NSNumber alloc] initWithInt:type];
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
  v21 = [[MOContextPredicate alloc] initWithPredicate:v20 filter:&__NSDictionary0__struct metadataTypes:metadataCopy];

  return v21;
}

+ (id)contextPredicateForContextType:(unint64_t)type withMetadata:(id)metadata startDate:(id)date endDate:(id)endDate aroundLocation:(id)location withDistanceThreshold:(double)threshold
{
  locationCopy = location;
  endDateCopy = endDate;
  dateCopy = date;
  metadataCopy = metadata;
  v35 = [NSExpression expressionForKeyPath:@"startDate"];
  v33 = [NSExpression expressionForKeyPath:@"endDate"];
  v30 = [NSExpression expressionForKeyPath:@"contextType"];
  v31 = [NSExpression expressionForConstantValue:dateCopy];

  v32 = [NSExpression expressionForConstantValue:endDateCopy];

  v34 = [[NSNumber alloc] initWithInt:type];
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
  v24 = [NSKeyedArchiver archivedDataWithRootObject:locationCopy requiringSecureCoding:1 error:0];

  v39 = @"distanceFromLocation";
  v37[0] = @"targetLocation";
  v37[1] = @"maxDistance";
  v38[0] = v24;
  v25 = [NSNumber numberWithDouble:threshold];
  v38[1] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
  v40 = v26;
  v27 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

  v28 = [[MOContextPredicate alloc] initWithPredicate:v23 filter:v27 metadataTypes:metadataCopy];

  return v28;
}

@end