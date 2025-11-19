@interface WBSHistoryServicePendingVisit
- (WBSHistoryServicePendingVisit)initWithWithVisitIdentifier:(id)a3;
@end

@implementation WBSHistoryServicePendingVisit

- (WBSHistoryServicePendingVisit)initWithWithVisitIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSHistoryServicePendingVisit;
  v6 = [(WBSHistoryServicePendingVisit *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visitIdentifier, a3);
    v7->_visitCount = 1;
    v8 = v7;
  }

  return v7;
}

@end