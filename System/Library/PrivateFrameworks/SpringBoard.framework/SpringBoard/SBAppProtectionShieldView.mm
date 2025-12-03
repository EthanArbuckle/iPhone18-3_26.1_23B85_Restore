@interface SBAppProtectionShieldView
- (SBAppProtectionShieldView)initWithAssistant:(id)assistant systemAppOutlet:(id)outlet;
@end

@implementation SBAppProtectionShieldView

- (SBAppProtectionShieldView)initWithAssistant:(id)assistant systemAppOutlet:(id)outlet
{
  assistantCopy = assistant;
  outletCopy = outlet;
  v18.receiver = self;
  v18.super_class = SBAppProtectionShieldView;
  v9 = [(SBAppProtectionShieldView *)&v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assistant, assistant);
    v11 = objc_alloc(MEMORY[0x277CEBED8]);
    appProtectionApplication = [(SBApplicationAppProtectionAssistant *)v10->_assistant appProtectionApplication];
    v13 = [v11 initWithApplication:appProtectionApplication];

    displayName = [(SBApplicationAppProtectionAssistant *)v10->_assistant displayName];
    [v13 setLocalizedName:displayName];

    [v13 setDelegate:v10];
    [v13 setOutlet:outletCopy];
    v15 = [objc_alloc(MEMORY[0x277CEBED0]) initWithConfig:v13];
    baseShieldView = v10->_baseShieldView;
    v10->_baseShieldView = v15;

    [(APBaseShieldView *)v10->_baseShieldView setAutoresizingMask:18];
    [(SBAppProtectionShieldView *)v10 addSubview:v10->_baseShieldView];
  }

  return v10;
}

@end