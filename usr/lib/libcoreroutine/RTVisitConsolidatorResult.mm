@interface RTVisitConsolidatorResult
- (RTVisitConsolidatorResult)initWithVisits:(id)visits redactionDetails:(id)details;
@end

@implementation RTVisitConsolidatorResult

- (RTVisitConsolidatorResult)initWithVisits:(id)visits redactionDetails:(id)details
{
  visitsCopy = visits;
  detailsCopy = details;
  v12.receiver = self;
  v12.super_class = RTVisitConsolidatorResult;
  v9 = [(RTVisitConsolidatorResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_visits, visits);
    objc_storeStrong(&v10->_redactionDetails, details);
  }

  return v10;
}

@end