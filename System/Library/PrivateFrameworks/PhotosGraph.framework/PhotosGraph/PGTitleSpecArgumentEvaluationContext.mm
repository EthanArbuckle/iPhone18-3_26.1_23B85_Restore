@interface PGTitleSpecArgumentEvaluationContext
- (PGTitleSpecArgumentEvaluationContext)initWithLocationHelper:(id)helper serviceManager:(id)manager;
@end

@implementation PGTitleSpecArgumentEvaluationContext

- (PGTitleSpecArgumentEvaluationContext)initWithLocationHelper:(id)helper serviceManager:(id)manager
{
  helperCopy = helper;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = PGTitleSpecArgumentEvaluationContext;
  v9 = [(PGTitleSpecArgumentEvaluationContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationHelper, helper);
    objc_storeStrong(&v10->_serviceManager, manager);
  }

  return v10;
}

@end