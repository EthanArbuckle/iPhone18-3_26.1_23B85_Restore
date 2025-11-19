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
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"requestPredicate"];
  v11 = [v5 decodeObjectOfClasses:v9 forKey:@"criteriaMap"];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [v5 decodeObjectOfClasses:v14 forKey:@"metadataTypes"];

  v16 = [(MOContextPredicate *)self initWithPredicate:v10 filter:v11 metadataTypes:v15];
  return v16;
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
  v30[3] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CCA9C0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v29 = [v9 expressionForKeyPath:@"startDate"];
  v28 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"endDate"];
  v13 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"contextType"];
  v26 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v11];

  v27 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v10];

  v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:a3];
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
  v23 = [(MOContextPredicate *)v22 initWithPredicate:v21 filter:MEMORY[0x277CBEC10] metadataTypes:v12];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)contextPredicateForContextType:(unint64_t)a3 withMetadata:(id)a4 startDate:(id)a5 endDate:(id)a6 aroundLocation:(id)a7 withDistanceThreshold:(double)a8
{
  v43[3] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CCA9C0];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v38 = a4;
  v37 = [v13 expressionForKeyPath:@"startDate"];
  v35 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"endDate"];
  v32 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"contextType"];
  v33 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v16];

  v34 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v15];

  v36 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:a3];
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
  v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];

  v41 = @"distanceFromLocation";
  v39[0] = @"targetLocation";
  v39[1] = @"maxDistance";
  v40[0] = v25;
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:a8];
  v40[1] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v42 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];

  v29 = [[MOContextPredicate alloc] initWithPredicate:v24 filter:v28 metadataTypes:v38];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

@end