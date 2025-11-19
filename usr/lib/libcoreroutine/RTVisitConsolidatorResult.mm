@interface RTVisitConsolidatorResult
- (RTVisitConsolidatorResult)initWithVisits:(id)a3 redactionDetails:(id)a4;
@end

@implementation RTVisitConsolidatorResult

- (RTVisitConsolidatorResult)initWithVisits:(id)a3 redactionDetails:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RTVisitConsolidatorResult;
  v9 = [(RTVisitConsolidatorResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_visits, a3);
    objc_storeStrong(&v10->_redactionDetails, a4);
  }

  return v10;
}

@end