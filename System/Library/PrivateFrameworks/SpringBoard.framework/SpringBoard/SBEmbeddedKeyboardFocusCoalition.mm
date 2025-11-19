@interface SBEmbeddedKeyboardFocusCoalition
- (SBEmbeddedKeyboardFocusCoalition)init;
@end

@implementation SBEmbeddedKeyboardFocusCoalition

- (SBEmbeddedKeyboardFocusCoalition)init
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SBEmbeddedKeyboardFocusCoalition;
  v2 = [(SBKeyboardFocusCoalition *)&v10 _initWithDebugName:@"embedded coalition"];
  if (v2)
  {
    v3 = objc_alloc_init(SBKeyboardFocusCoalitionPolicyEnforcer);
    v4 = objc_alloc_init(SBSystemKeyCommandCoalitionPolicyEnforcer);
    v5 = objc_alloc_init(SBCameraButtonPolicyEnforcer);
    v6 = [SBKeyboardFocusPolicyEnforcerPipeline alloc];
    v11[0] = v3;
    v11[1] = v4;
    v11[2] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
    v8 = [(SBKeyboardFocusPolicyEnforcerPipeline *)v6 initWithEnforcers:v7];

    [(SBKeyboardFocusCoalition *)v2 setPolicyEnforcer:v8];
  }

  return v2;
}

@end