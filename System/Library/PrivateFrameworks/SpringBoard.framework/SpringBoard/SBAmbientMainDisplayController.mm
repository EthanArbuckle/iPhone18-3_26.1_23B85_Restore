@interface SBAmbientMainDisplayController
- (BOOL)_shouldEnableCoreBrightnessAmbientMode;
- (SBAmbientMainDisplayController)init;
- (SBAmbientMainDisplayController)initWithAmbientPresentationController:(id)controller;
- (void)_updateCoreBrightnessAmbientModeForce:(BOOL)force;
- (void)ambientPresentationController:(id)controller didUpdatePresented:(BOOL)presented;
- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source;
- (void)dealloc;
@end

@implementation SBAmbientMainDisplayController

- (SBAmbientMainDisplayController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAmbientPresentationController_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBAmbientMainDisplayController.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[SBAmbientMainDisplayController init]", v5}];

  return 0;
}

- (SBAmbientMainDisplayController)initWithAmbientPresentationController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = SBAmbientMainDisplayController;
  v5 = [(SBAmbientMainDisplayController *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_ambientPresentationController, controllerCopy);
    [controllerCopy addObserver:v6];
    v7 = objc_alloc_init(MEMORY[0x277CFD390]);
    brightnessSystemClient = v6->_brightnessSystemClient;
    v6->_brightnessSystemClient = v7;

    serial = [MEMORY[0x277CF0C18] serial];
    v10 = [serial serviceClass:25];
    v11 = BSDispatchQueueCreate();
    brightnessSystemQueue = v6->_brightnessSystemQueue;
    v6->_brightnessSystemQueue = v11;

    v13 = +[SBBacklightController sharedInstance];
    backlightController = v6->_backlightController;
    v6->_backlightController = v13;

    [(SBBacklightController *)v6->_backlightController addObserver:v6];
    v6->_ambientPresented = [controllerCopy isPresented];
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

- (void)ambientPresentationController:(id)controller didUpdatePresented:(BOOL)presented
{
  if (self->_ambientPresented != presented)
  {
    self->_ambientPresented = presented;
    [(SBAmbientMainDisplayController *)self _updateCoreBrightnessAmbientMode];
  }
}

- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source
{
  if (self->_backlightState != state)
  {
    self->_backlightState = state;
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

- (void)_updateCoreBrightnessAmbientModeForce:(BOOL)force
{
  forceCopy = force;
  _shouldEnableCoreBrightnessAmbientMode = [(SBAmbientMainDisplayController *)self _shouldEnableCoreBrightnessAmbientMode];
  if (self->_isCoreBrightnessAmbientModeEnabled != _shouldEnableCoreBrightnessAmbientMode || forceCopy)
  {
    self->_isCoreBrightnessAmbientModeEnabled = _shouldEnableCoreBrightnessAmbientMode;
    brightnessSystemQueue = self->_brightnessSystemQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__SBAmbientMainDisplayController__updateCoreBrightnessAmbientModeForce___block_invoke;
    v8[3] = &unk_2783A9F58;
    v9 = _shouldEnableCoreBrightnessAmbientMode;
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