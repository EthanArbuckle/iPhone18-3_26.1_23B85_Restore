@interface WBSHistoryServicePendingVisit
- (WBSHistoryServicePendingVisit)initWithWithVisitIdentifier:(id)identifier;
@end

@implementation WBSHistoryServicePendingVisit

- (WBSHistoryServicePendingVisit)initWithWithVisitIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = WBSHistoryServicePendingVisit;
  v6 = [(WBSHistoryServicePendingVisit *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visitIdentifier, identifier);
    v7->_visitCount = 1;
    v8 = v7;
  }

  return v7;
}

@end