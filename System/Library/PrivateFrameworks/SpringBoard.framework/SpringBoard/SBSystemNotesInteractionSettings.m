@interface SBSystemNotesInteractionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemNotesInteractionSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = SBSystemNotesInteractionSettings;
  [(SBPIPInteractionSettings *)&v4 setDefaultValues];
  [(SBPIPInteractionSettings *)self setShouldStashOnTransitionToSwitcher:1];
  [(SBPIPInteractionSettings *)self setShouldUnstashOnTransitionFromSwitcher:1];
  [(SBPIPInteractionSettings *)self setShouldStashOnTransitionToHomescreen:1];
  [(SBPIPInteractionSettings *)self setShouldUnstashOnTransitionFromHomescreen:0];
  [(SBPIPInteractionSettings *)self setShouldStashOnAppToAppTransitions:0];
  [(SBPIPInteractionSettings *)self setUsesKeyboards:1];
  [(SBPIPInteractionSettings *)self setKeyboardDismissesOnTransitionToHomescreen:1];
  [(SBPIPInteractionSettings *)self setKeyboardDismissesOnOutsideUserInteractionOnHomescreen:1];
  [(SBPIPInteractionSettings *)self setKeyboardDismissesOnOutsideUserInteractionOutsideHomescreen:0];
  [(SBSystemNotesInteractionSettings *)self setDelayBeforeUserInteractionDismissesThumbnail:3.0];
  [(SBPIPInteractionSettings *)self setPanGestureEnabled:1];
  [(SBPIPInteractionSettings *)self setEdgeResizeGestureEnabled:1];
  [(SBPIPInteractionSettings *)self setPinchGestureEnabled:1];
  [(SBPIPInteractionSettings *)self setRotationGestureEnabled:1];
  [(SBPIPInteractionSettings *)self setStashingEnabled:1];
  [(SBPIPInteractionSettings *)self setFreePositioning:0];
  v3 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [v3 setName:@"Region Update Behavior"];
  [v3 setBehaviorType:2];
  [v3 setDampingRatio:0.9];
  [v3 setResponse:0.55];
  [(SBPIPInteractionSettings *)self setRegionUpdateFluidBehavior:v3];
}

+ (id)settingsControllerModule
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D43210];
  v4 = MEMORY[0x277D431B0];
  v5 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v6 = [v4 rowWithTitle:@"Restore Defaults" action:v5];
  v23[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v8 = [v3 sectionWithRows:v7 title:@"Restore Default Values"];

  v9 = [MEMORY[0x277D43290] rowWithTitle:@"Delay Before Outside User Interaction Dismisses Thumbnail" valueKeyPath:@"delayBeforeUserInteractionDismissesThumbnail"];
  v10 = [v9 minValue:0.0 maxValue:10.0];

  v11 = MEMORY[0x277D43210];
  v22 = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v13 = [v11 sectionWithRows:v12 title:@"User Interaction Dismissal Behavior"];

  v20.receiver = a1;
  v20.super_class = &OBJC_METACLASS___SBSystemNotesInteractionSettings;
  v14 = objc_msgSendSuper2(&v20, sel_settingsControllerModule);
  v15 = [MEMORY[0x277D43210] submoduleWithModule:v14 childSettingsKeyPath:0];
  v16 = MEMORY[0x277D43210];
  v21[0] = v8;
  v21[1] = v13;
  v21[2] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v18 = [v16 moduleWithTitle:@"Interaction Settings" contents:v17];

  return v18;
}

@end