@interface SBPIPFluidTransitionsSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBPIPFluidTransitionsSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBPIPFluidTransitionsSettings;
  [(PTSettings *)&v5 setDefaultValues];
  v3 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [v3 setName:@"Source clipping behavior"];
  [v3 setBehaviorType:2];
  [v3 setRetargetImpulse:0.0];
  [v3 setTrackingRetargetImpulse:0.0];
  [v3 setDampingRatio:1.0];
  [v3 setResponse:0.336];
  [v3 setTrackingDampingRatio:1.0];
  [v3 setTrackingResponse:0.08];
  [(SBPIPFluidTransitionsSettings *)self setSourceClippingFluidBehavior:v3];
  v4 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [v4 setName:@"Target clipping Behavior"];
  [v4 setBehaviorType:2];
  [v4 setRetargetImpulse:0.0];
  [v4 setTrackingRetargetImpulse:0.0];
  [v4 setDampingRatio:1.0];
  [v4 setResponse:0.35];
  [v4 setTrackingDampingRatio:1.0];
  [v4 setTrackingResponse:0.08];
  [(SBPIPFluidTransitionsSettings *)self setTargetClippingFluidBehavior:v4];
}

+ (id)settingsControllerModule
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"Source Clipping Behavior"];
  v4 = [v2 submoduleWithModule:v3 childSettingsKeyPath:@"sourceClippingFluidBehavior"];

  v5 = MEMORY[0x277D43210];
  v6 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"Target Clipping Behavior"];
  v7 = [v5 submoduleWithModule:v6 childSettingsKeyPath:@"targetClippingFluidBehavior"];

  v8 = MEMORY[0x277D431B0];
  v9 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v10 = [v8 rowWithTitle:@"Restore Defaults" action:v9];

  v11 = MEMORY[0x277D43210];
  v19[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v13 = [v11 sectionWithRows:v12 title:@"Restore Default Values"];

  v14 = MEMORY[0x277D43210];
  v18[0] = v13;
  v18[1] = v4;
  v18[2] = v7;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v16 = [v14 moduleWithTitle:@"AutoPIP and Fluid Restore" contents:v15];

  return v16;
}

@end