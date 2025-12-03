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
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestPredicate"];
  v11 = [coderCopy decodeObjectOfClasses:v9 forKey:@"criteriaMap"];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"metadataTypes"];

  v16 = [(MOContextPredicate *)self initWithPredicate:v10 filter:v11 metadataTypes:v15];
  return v16;
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
  v30[3] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CCA9C0];
  endDateCopy = endDate;
  dateCopy = date;
  metadataCopy = metadata;
  v29 = [v9 expressionForKeyPath:@"startDate"];
  v28 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"endDate"];
  v13 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"contextType"];
  v26 = [MEMORY[0x277CCA9C0] expressionForConstantValue:dateCopy];

  v27 = [MEMORY[0x277CCA9C0] expressionForConstantValue:endDateCopy];

  v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:type];
  v15 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v14];
  v16 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v29 rightExpression:v27 operation:4];
  v17 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v28 rightExpression:v26 operation:3];
  v18 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v13 rightExpression:v15 operation:0];
  v30[0] = v16;
  v30[1] = v17;
  v30[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v20 = [MOContextPredicateBuilder createAndPredicate:v19];

  v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v20 requiringSecureCoding:1 error:0];
  v22 = [MOContextPredicate alloc];
  v23 = [(MOContextPredicate *)v22 initWithPredicate:v21 filter:MEMORY[0x277CBEC10] metadataTypes:metadataCopy];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)contextPredicateForContextType:(unint64_t)type withMetadata:(id)metadata startDate:(id)date endDate:(id)endDate aroundLocation:(id)location withDistanceThreshold:(double)threshold
{
  v43[3] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CCA9C0];
  locationCopy = location;
  endDateCopy = endDate;
  dateCopy = date;
  metadataCopy = metadata;
  v37 = [v13 expressionForKeyPath:@"startDate"];
  v35 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"endDate"];
  v32 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"contextType"];
  v33 = [MEMORY[0x277CCA9C0] expressionForConstantValue:dateCopy];

  v34 = [MEMORY[0x277CCA9C0] expressionForConstantValue:endDateCopy];

  v36 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:type];
  v17 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v36];
  v18 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v37 rightExpression:v34 operation:4];
  v19 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v35 rightExpression:v33 operation:3];
  v20 = v17;
  v21 = [MOContextPredicateBuilder createPredicateWithLeftExpression:v32 rightExpression:v17 operation:0];
  v43[0] = v18;
  v43[1] = v19;
  v43[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
  v23 = [MOContextPredicateBuilder createAndPredicate:v22];

  v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v23 requiringSecureCoding:1 error:0];
  v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:locationCopy requiringSecureCoding:1 error:0];

  v41 = @"distanceFromLocation";
  v39[0] = @"targetLocation";
  v39[1] = @"maxDistance";
  v40[0] = v25;
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:threshold];
  v40[1] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v42 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];

  v29 = [[MOContextPredicate alloc] initWithPredicate:v24 filter:v28 metadataTypes:metadataCopy];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

@end