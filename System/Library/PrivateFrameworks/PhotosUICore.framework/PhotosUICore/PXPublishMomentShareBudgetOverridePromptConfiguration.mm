@interface PXPublishMomentShareBudgetOverridePromptConfiguration
- (PXPublishMomentShareBudgetOverridePromptConfiguration)initWithUseWLAN:(BOOL)a3 networkType:(unint64_t)a4 assetCount:(unint64_t)a5 deviceModel:(id)a6;
@end

@implementation PXPublishMomentShareBudgetOverridePromptConfiguration

- (PXPublishMomentShareBudgetOverridePromptConfiguration)initWithUseWLAN:(BOOL)a3 networkType:(unint64_t)a4 assetCount:(unint64_t)a5 deviceModel:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = PXPublishMomentShareBudgetOverridePromptConfiguration;
  v11 = [(PXPublishMomentShareBudgetOverridePromptConfiguration *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_useWLAN = a3;
    v11->_networkType = a4;
    v11->_assetCount = a5;
    v13 = [v10 copy];
    deviceModel = v12->_deviceModel;
    v12->_deviceModel = v13;
  }

  return v12;
}

@end