@interface VSAppSettingsViewModelResult
- (VSAppSettingsViewModelResult)init;
@end

@implementation VSAppSettingsViewModelResult

- (VSAppSettingsViewModelResult)init
{
  v9.receiver = self;
  v9.super_class = VSAppSettingsViewModelResult;
  v2 = [(VSAppSettingsViewModelResult *)&v9 init];
  v3 = v2;
  if (v2)
  {
    availableAppViewModels = v2->_availableAppViewModels;
    v5 = MEMORY[0x277CBEBF8];
    v2->_availableAppViewModels = MEMORY[0x277CBEBF8];

    nonChannelAppViewModels = v3->_nonChannelAppViewModels;
    v3->_nonChannelAppViewModels = v5;

    subscribedAppViewModels = v3->_subscribedAppViewModels;
    v3->_subscribedAppViewModels = v5;
  }

  return v3;
}

@end