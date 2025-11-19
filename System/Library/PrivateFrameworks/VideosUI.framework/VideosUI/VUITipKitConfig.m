@interface VUITipKitConfig
- (VUITipKitConfig)init;
@end

@implementation VUITipKitConfig

- (VUITipKitConfig)init
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VUITipKitConfig;
  v2 = [(VUITipKitConfig *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_isEnabled = 1;
    v2->_displayFrequency = 2;
    v4 = objc_alloc_init(VUITipKitConfigEntry);
    v5 = objc_alloc_init(VUITipKitConfigEntry);
    v10[0] = @"radioTip";
    v10[1] = @"multiviewTip";
    v11[0] = v4;
    v11[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    tipConfiguration = v3->_tipConfiguration;
    v3->_tipConfiguration = v6;
  }

  return v3;
}

@end