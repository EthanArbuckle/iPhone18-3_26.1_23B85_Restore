@interface PMLAWDLogisticRegTrackerMock
+ (id)mockTrackerForPlanId:(id)id;
- (NSArray)trackedGradients;
- (NSArray)trackedWeights;
- (PMLAWDLogisticRegTrackerMock)initWithAdapter:(id)adapter modelInfo:(id)info;
- (PMLAWDLogisticRegTrackerMock)initWithModel:(id)model;
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

- (PMLAWDLogisticRegTrackerMock)initWithModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_new();
  v6 = [(PMLAWDLogisticRegTrackerMock *)self initWithAdapter:v5 modelInfo:modelCopy];

  return v6;
}

- (PMLAWDLogisticRegTrackerMock)initWithAdapter:(id)adapter modelInfo:(id)info
{
  adapterCopy = adapter;
  v11.receiver = self;
  v11.super_class = PMLAWDLogisticRegTrackerMock;
  v8 = [(PMLProtoBufTracker *)&v11 initWithAdapter:adapterCopy modelInfo:info];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_adapter, adapter);
  }

  return v9;
}

+ (id)mockTrackerForPlanId:(id)id
{
  v4 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:id];
  v5 = [[self alloc] initWithModel:v4];

  return v5;
}

@end