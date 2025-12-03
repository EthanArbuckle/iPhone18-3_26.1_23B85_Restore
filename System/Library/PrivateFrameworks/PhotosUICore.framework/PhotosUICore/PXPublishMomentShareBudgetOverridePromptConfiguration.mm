@interface PXPublishMomentShareBudgetOverridePromptConfiguration
- (PXPublishMomentShareBudgetOverridePromptConfiguration)initWithUseWLAN:(BOOL)n networkType:(unint64_t)type assetCount:(unint64_t)count deviceModel:(id)model;
@end

@implementation PXPublishMomentShareBudgetOverridePromptConfiguration

- (PXPublishMomentShareBudgetOverridePromptConfiguration)initWithUseWLAN:(BOOL)n networkType:(unint64_t)type assetCount:(unint64_t)count deviceModel:(id)model
{
  modelCopy = model;
  v16.receiver = self;
  v16.super_class = PXPublishMomentShareBudgetOverridePromptConfiguration;
  v11 = [(PXPublishMomentShareBudgetOverridePromptConfiguration *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_useWLAN = n;
    v11->_networkType = type;
    v11->_assetCount = count;
    v13 = [modelCopy copy];
    deviceModel = v12->_deviceModel;
    v12->_deviceModel = v13;
  }

  return v12;
}

@end