@interface PPSDataRequest
- (NSPredicate)valueFilter;
- (NSString)category;
- (NSString)subsystem;
- (PPSDataRequest)initWithCoder:(id)coder;
- (PPSDataRequest)initWithRequestType:(int64_t)type metrics:(id)metrics predicate:(id)predicate timeFilter:(id)filter;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSDataRequest

- (NSString)subsystem
{
  predicate = [(PPSDataRequest *)self predicate];
  v3 = [PPSPredicateUtilities constantValueForLeftKeyPath:@"subsystem" inPredicate:predicate];

  return v3;
}

- (NSString)category
{
  predicate = [(PPSDataRequest *)self predicate];
  v3 = [PPSPredicateUtilities constantValueForLeftKeyPath:@"category" inPredicate:predicate];

  return v3;
}

- (NSPredicate)valueFilter
{
  predicate = [(PPSDataRequest *)self predicate];
  v3 = [PPSPredicateUtilities predicateByRemovingSubpredicateWithLeftKeyPath:@"subsystem" fromPredicate:predicate];

  v4 = [PPSPredicateUtilities predicateByRemovingSubpredicateWithLeftKeyPath:@"category" fromPredicate:v3];

  return v4;
}

- (PPSDataRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PPSDataRequest;
  v5 = [(PPSDataRequest *)&v16 init];
  if (v5)
  {
    v5->_requestType = [coderCopy decodeIntegerForKey:@"type"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"metrics"];
    metrics = v5->_metrics;
    v5->_metrics = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeFilter"];
    timeFilter = v5->_timeFilter;
    v5->_timeFilter = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PPSDataRequest requestType](self forKey:{"requestType"), @"type"}];
  metrics = [(PPSDataRequest *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  predicate = [(PPSDataRequest *)self predicate];
  [coderCopy encodeObject:predicate forKey:@"predicate"];

  timeFilter = [(PPSDataRequest *)self timeFilter];
  [coderCopy encodeObject:timeFilter forKey:@"timeFilter"];
}

- (PPSDataRequest)initWithRequestType:(int64_t)type metrics:(id)metrics predicate:(id)predicate timeFilter:(id)filter
{
  metricsCopy = metrics;
  predicateCopy = predicate;
  filterCopy = filter;
  v19.receiver = self;
  v19.super_class = PPSDataRequest;
  v14 = [(PPSDataRequest *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_requestType = type;
    objc_storeStrong(&v14->_metrics, metrics);
    v16 = [PPSPredicateUtilities predicateByReplacingNilWithEmptyString:predicateCopy];
    predicate = v15->_predicate;
    v15->_predicate = v16;

    objc_storeStrong(&v15->_timeFilter, filter);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  requestType = [(PPSDataRequest *)self requestType];
  metrics = [(PPSDataRequest *)self metrics];
  predicate = [(PPSDataRequest *)self predicate];
  timeFilter = [(PPSDataRequest *)self timeFilter];
  v9 = [v3 stringWithFormat:@"<%@: %p { type: %ld, metrics: %@, predicate: %@, timeFilter: %@ }>", v4, self, requestType, metrics, predicate, timeFilter];

  return v9;
}

@end