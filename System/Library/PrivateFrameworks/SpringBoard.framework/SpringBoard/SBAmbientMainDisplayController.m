@interface SBAmbientMainDisplayController
- (BOOL)_shouldEnableCoreBrightnessAmbientMode;
- (SBAmbientMainDisplayController)init;
- (SBAmbientMainDisplayController)initWithAmbientPresentationController:(id)a3;
- (void)_updateCoreBrightnessAmbientModeForce:(BOOL)a3;
- (void)ambientPresentationController:(id)a3 didUpdatePresented:(BOOL)a4;
- (void)backlightController:(id)a3 didTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5;
- (void)dealloc;
@end

@implementation SBAmbientMainDisplayController

- (SBAmbientMainDisplayController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAmbientPresentationController_);
  [v4 handleFailureInMethod:a2 object:self file:@"SBAmbientMainDisplayController.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[SBAmbientMainDisplayController init]", v5}];

  return 0;
}

- (SBAmbientMainDisplayController)initWithAmbientPresentationController:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBAmbientMainDisplayController;
  v5 = [(SBAmbientMainDisplayController *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_ambientPresentationController, v4);
    [v4 addObserver:v6];
    v7 = objc_alloc_init(MEMORY[0x277CFD390]);
    brightnessSystemClient = v6->_brightnessSystemClient;
    v6->_brightnessSystemClient = v7;

    v9 = [MEMORY[0x277CF0C18] serial];
    v10 = [v9 serviceClass:25];
    v11 = BSDispatchQueueCreate();
    brightnessSystemQueue = v6->_brightnessSystemQueue;
    v6->_brightnessSystemQueue = v11;

    v13 = +[SBBacklightController sharedInstance];
    backlightController = v6->_backlightController;
    v6->_backlightController = v13;

    [(SBBacklightController *)v6->_backlightController addObserver:v6];
    v6->_ambientPresented = [v4 isPresented];
    v6->_backlightState = [(SBBacklightController *)v6->_backlightController backlightState];
    [(SBAmbientMainDisplayController *)v6 _updateCoreBrightnessAmbientModeForce:1];
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_ambientPresentationController);
  [WeakRetained removeObserver:self];

  [(SBBacklightController *)self->_backlightController removeObserver:self];
  v4.receiver = self;
  v4.super_class = SBAmbientMainDisplayController;
  [(SBAmbientMainDisplayController *)&v4 dealloc];
}

- (void)ambientPresentationController:(id)a3 didUpdatePresented:(BOOL)a4
{
  if (self->_ambientPresented != a4)
  {
    self->_ambientPresented = a4;
    [(SBAmbientMainDisplayController *)self _updateCoreBrightnessAmbientMode];
  }
}

- (void)backlightController:(id)a3 didTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5
{
  if (self->_backlightState != a4)
  {
    self->_backlightState = a4;
    [(SBAmbientMainDisplayController *)self _updateCoreBrightnessAmbientMode];
  }
}

- (BOOL)_shouldEnableCoreBrightnessAmbientMode
{
  if (!self->_ambientPresented)
  {
    return 0;
  }

  if (self->_isCoreBrightnessAmbientModeEnabled)
  {
    return 1;
  }

  return SBBacklightStateIsActive(self->_backlightState);
}

- (void)_updateCoreBrightnessAmbientModeForce:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBAmbientMainDisplayController *)self _shouldEnableCoreBrightnessAmbientMode];
  if (self->_isCoreBrightnessAmbientModeEnabled != v5 || v3)
  {
    self->_isCoreBrightnessAmbientModeEnabled = v5;
    brightnessSystemQueue = self->_brightnessSystemQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__SBAmbientMainDisplayController__updateCoreBrightnessAmbientModeForce___block_invoke;
    v8[3] = &unk_2783A9F58;
    v9 = v5;
    v8[4] = self;
    dispatch_async(brightnessSystemQueue, v8);
  }
}

void __72__SBAmbientMainDisplayController__updateCoreBrightnessAmbientModeForce___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    v6 = SBBacklightStateDescription(*(v4 + 48));
    v9[0] = 67109634;
    v9[1] = v3;
    v10 = 1024;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Setting CoreBrightness Ambient mode to %{BOOL}u [ presented : %{BOOL}d ; backlight : '%{public}@' ]", v9, 0x18u);
  }

  v7 = *(*(a1 + 32) + 24);
  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  [v7 setProperty:v8 forKey:@"DominoStateUpdate"];
}

@end