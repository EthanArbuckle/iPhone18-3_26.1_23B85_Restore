@interface PMLAWDLogisticRegTrackerMock
+ (id)mockTrackerForPlanId:(id)a3;
- (NSArray)trackedGradients;
- (NSArray)trackedWeights;
- (PMLAWDLogisticRegTrackerMock)initWithAdapter:(id)a3 modelInfo:(id)a4;
- (PMLAWDLogisticRegTrackerMock)initWithModel:(id)a3;
@end

@implementation PMLAWDLogisticRegTrackerMock

- (NSArray)trackedWeights
{
  adapter = self->_adapter;
  v3 = objc_opt_class();

  return [(PMLTrackerMockAdapter *)adapter trackedMessagesByClass:v3];
}

- (NSArray)trackedGradients
{
  adapter = self->_adapter;
  v3 = objc_opt_class();

  return [(PMLTrackerMockAdapter *)adapter trackedMessagesByClass:v3];
}

- (PMLAWDLogisticRegTrackerMock)initWithModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(PMLAWDLogisticRegTrackerMock *)self initWithAdapter:v5 modelInfo:v4];

  return v6;
}

- (PMLAWDLogisticRegTrackerMock)initWithAdapter:(id)a3 modelInfo:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PMLAWDLogisticRegTrackerMock;
  v8 = [(PMLProtoBufTracker *)&v11 initWithAdapter:v7 modelInfo:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_adapter, a3);
  }

  return v9;
}

+ (id)mockTrackerForPlanId:(id)a3
{
  v4 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:a3];
  v5 = [[a1 alloc] initWithModel:v4];

  return v5;
}

@end