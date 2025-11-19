@interface PGTitleSpecArgumentEvaluationContext
- (PGTitleSpecArgumentEvaluationContext)initWithLocationHelper:(id)a3 serviceManager:(id)a4;
@end

@implementation PGTitleSpecArgumentEvaluationContext

- (PGTitleSpecArgumentEvaluationContext)initWithLocationHelper:(id)a3 serviceManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGTitleSpecArgumentEvaluationContext;
  v9 = [(PGTitleSpecArgumentEvaluationContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationHelper, a3);
    objc_storeStrong(&v10->_serviceManager, a4);
  }

  return v10;
}

@end