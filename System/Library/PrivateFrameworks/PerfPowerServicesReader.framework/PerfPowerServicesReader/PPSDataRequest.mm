@interface PPSDataRequest
- (NSPredicate)valueFilter;
- (NSString)category;
- (NSString)subsystem;
- (PPSDataRequest)initWithCoder:(id)a3;
- (PPSDataRequest)initWithRequestType:(int64_t)a3 metrics:(id)a4 predicate:(id)a5 timeFilter:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSDataRequest

- (NSString)subsystem
{
  v2 = [(PPSDataRequest *)self predicate];
  v3 = [PPSPredicateUtilities constantValueForLeftKeyPath:@"subsystem" inPredicate:v2];

  return v3;
}

- (NSString)category
{
  v2 = [(PPSDataRequest *)self predicate];
  v3 = [PPSPredicateUtilities constantValueForLeftKeyPath:@"category" inPredicate:v2];

  return v3;
}

- (NSPredicate)valueFilter
{
  v2 = [(PPSDataRequest *)self predicate];
  v3 = [PPSPredicateUtilities predicateByRemovingSubpredicateWithLeftKeyPath:@"subsystem" fromPredicate:v2];

  v4 = [PPSPredicateUtilities predicateByRemovingSubpredicateWithLeftKeyPath:@"category" fromPredicate:v3];

  return v4;
}

- (PPSDataRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PPSDataRequest;
  v5 = [(PPSDataRequest *)&v16 init];
  if (v5)
  {
    v5->_requestType = [v4 decodeIntegerForKey:@"type"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"metrics"];
    metrics = v5->_metrics;
    v5->_metrics = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeFilter"];
    timeFilter = v5->_timeFilter;
    v5->_timeFilter = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[PPSDataRequest requestType](self forKey:{"requestType"), @"type"}];
  v5 = [(PPSDataRequest *)self metrics];
  [v4 encodeObject:v5 forKey:@"metrics"];

  v6 = [(PPSDataRequest *)self predicate];
  [v4 encodeObject:v6 forKey:@"predicate"];

  v7 = [(PPSDataRequest *)self timeFilter];
  [v4 encodeObject:v7 forKey:@"timeFilter"];
}

- (PPSDataRequest)initWithRequestType:(int64_t)a3 metrics:(id)a4 predicate:(id)a5 timeFilter:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = PPSDataRequest;
  v14 = [(PPSDataRequest *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_requestType = a3;
    objc_storeStrong(&v14->_metrics, a4);
    v16 = [PPSPredicateUtilities predicateByReplacingNilWithEmptyString:v12];
    predicate = v15->_predicate;
    v15->_predicate = v16;

    objc_storeStrong(&v15->_timeFilter, a6);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(PPSDataRequest *)self requestType];
  v6 = [(PPSDataRequest *)self metrics];
  v7 = [(PPSDataRequest *)self predicate];
  v8 = [(PPSDataRequest *)self timeFilter];
  v9 = [v3 stringWithFormat:@"<%@: %p { type: %ld, metrics: %@, predicate: %@, timeFilter: %@ }>", v4, self, v5, v6, v7, v8];

  return v9;
}

@end