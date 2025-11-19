@interface SBAppProtectionShieldView
- (SBAppProtectionShieldView)initWithAssistant:(id)a3 systemAppOutlet:(id)a4;
@end

@implementation SBAppProtectionShieldView

- (SBAppProtectionShieldView)initWithAssistant:(id)a3 systemAppOutlet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = SBAppProtectionShieldView;
  v9 = [(SBAppProtectionShieldView *)&v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assistant, a3);
    v11 = objc_alloc(MEMORY[0x277CEBED8]);
    v12 = [(SBApplicationAppProtectionAssistant *)v10->_assistant appProtectionApplication];
    v13 = [v11 initWithApplication:v12];

    v14 = [(SBApplicationAppProtectionAssistant *)v10->_assistant displayName];
    [v13 setLocalizedName:v14];

    [v13 setDelegate:v10];
    [v13 setOutlet:v8];
    v15 = [objc_alloc(MEMORY[0x277CEBED0]) initWithConfig:v13];
    baseShieldView = v10->_baseShieldView;
    v10->_baseShieldView = v15;

    [(APBaseShieldView *)v10->_baseShieldView setAutoresizingMask:18];
    [(SBAppProtectionShieldView *)v10 addSubview:v10->_baseShieldView];
  }

  return v10;
}

@end