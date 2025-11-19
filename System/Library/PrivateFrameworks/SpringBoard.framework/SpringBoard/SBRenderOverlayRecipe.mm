@interface SBRenderOverlayRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
- (void)windowSceneDidUpdate:(id)a3;
@end

@implementation SBRenderOverlayRecipe

- (void)windowSceneDidUpdate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_windowScene, obj);
    [(SBWindow *)self->_window setWindowScene:obj];
  }
}

- (void)handleVolumeIncrease
{
  v10 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
  v3 = [v10 view];
  v4 = [MEMORY[0x277D75348] redColor];
  [v3 setBackgroundColor:v4];

  v5 = [SBWindow alloc];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [(SBWindow *)v5 initWithWindowScene:WeakRetained role:@"SBTraitsParticipantRoleRenderOverlayRecipe" debugName:@"SBRenderOverlayRecipe"];
  window = self->_window;
  self->_window = v7;

  [(SBWindow *)self->_window setRootViewController:v10];
  [(SBWindow *)self->_window setHidden:0];
  [(SBWindow *)self->_window setLevel:100000.0];
  [MEMORY[0x277CD9FF0] flush];
  [MEMORY[0x277CD9FF0] synchronize];
  v9 = dispatch_time(0, 2000000000);
  dispatch_after(v9, MEMORY[0x277D85CD0], &__block_literal_global_35);
}

void __45__SBRenderOverlayRecipe_handleVolumeIncrease__block_invoke()
{
  v0 = MEMORY[0x277CF05F0];
  v1 = [MEMORY[0x277CD9E40] mainDisplay];
  v7 = [v0 descriptorWithName:@"login" display:v1];

  [v7 setInterfaceOrientation:{objc_msgSend(SBApp, "activeInterfaceOrientation")}];
  [v7 setLockBacklight:1];
  v2 = [objc_alloc(MEMORY[0x277CF05E8]) initWithDescriptor:v7];
  [v2 present];
  [v2 freeze];
  v3 = [MEMORY[0x277D0AB08] sharedInstance];
  [v3 prepareForExitAndRelaunch:1];

  v4 = [MEMORY[0x277CF0768] actionWithOptions:1];
  v5 = [MEMORY[0x277D0AB10] sharedInstance];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v4];
  [v5 sendActionsToBackBoard:v6];
}

- (void)handleVolumeDecrease
{
  v2 = MEMORY[0x277CF05F0];
  v3 = [MEMORY[0x277CD9E40] mainDisplay];
  v9 = [v2 descriptorWithName:@"logout" display:v3];

  [v9 setInterfaceOrientation:{objc_msgSend(SBApp, "activeInterfaceOrientation")}];
  [v9 setLockBacklight:1];
  v4 = [objc_alloc(MEMORY[0x277CF05E8]) initWithDescriptor:v9];
  [v4 present];
  [v4 freeze];
  v5 = [MEMORY[0x277D0AB08] sharedInstance];
  [v5 prepareForExitAndRelaunch:1];

  v6 = [MEMORY[0x277CF0768] actionWithOptions:1];
  v7 = [MEMORY[0x277D0AB10] sharedInstance];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  [v7 sendActionsToBackBoard:v8];
}

@end