@interface SBKeyboardBrightnessController
+ (BOOL)handlesKeyCommands;
- (BOOL)_setBrightnessLevel:(float)level animated:(BOOL)animated;
- (SBKeyboardBrightnessController)initWithCoordinator:(id)coordinator;
- (void)buttonSetArbiter:(id)arbiter performActionForButtonPage:(unsigned __int16)page usage:(unsigned __int16)usage;
- (void)buttonSetArbiterDidReset:(id)reset;
@end

@implementation SBKeyboardBrightnessController

- (SBKeyboardBrightnessController)initWithCoordinator:(id)coordinator
{
  v18[2] = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  if (!coordinatorCopy)
  {
    [(SBKeyboardBrightnessController *)a2 initWithCoordinator:?];
  }

  v17.receiver = self;
  v17.super_class = SBKeyboardBrightnessController;
  v6 = [(SBKeyboardBrightnessController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_coordinator, coordinatorCopy);
    v8 = objc_alloc_init(MEMORY[0x277CFD3B8]);
    keyboardBrightnessClient = v7->_keyboardBrightnessClient;
    v7->_keyboardBrightnessClient = v8;

    v10 = [SBHIDValueModifyingButtonSetArbiter alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:786553];
    v18[0] = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:786554];
    v18[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v14 = [(SBHIDValueModifyingButtonSetArbiter *)v10 initWithHIDKeyPressEventUsages:v13 initialRepeatDelay:0.333000004 subsequentRepeatDelay:0.0416666679];
    buttonArbiter = v7->_buttonArbiter;
    v7->_buttonArbiter = v14;

    [(SBHIDValueModifyingButtonSetArbiter *)v7->_buttonArbiter setDelegate:v7];
  }

  return v7;
}

+ (BOOL)handlesKeyCommands
{
  if (handlesKeyCommands_onceToken != -1)
  {
    +[SBKeyboardBrightnessController handlesKeyCommands];
  }

  v3 = handlesKeyCommands_settings;

  return [v3 keyboardBrightnessKeyCommandsEnabled];
}

void __52__SBKeyboardBrightnessController_handlesKeyCommands__block_invoke()
{
  v0 = +[SBElasticHUDDomain rootSettings];
  v1 = handlesKeyCommands_settings;
  handlesKeyCommands_settings = v0;
}

- (void)buttonSetArbiter:(id)arbiter performActionForButtonPage:(unsigned __int16)page usage:(unsigned __int16)usage
{
  usageCopy = usage;
  pageCopy = page;
  arbiterCopy = arbiter;
  if (pageCopy != 12)
  {
    [SBKeyboardBrightnessController buttonSetArbiter:a2 performActionForButtonPage:self usage:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v10 = WeakRetained;
  if (usageCopy == 122)
  {
    selfCopy2 = self;
    v12 = 0;
    v13 = 1;
  }

  else
  {
    if (usageCopy != 121)
    {
      goto LABEL_8;
    }

    selfCopy2 = self;
    v12 = 1;
    v13 = 0;
  }

  [WeakRetained brightnessController:selfCopy2 performCoordinatedBrightnessChangeForIncrementKeyDown:v12 decrementKeyDown:v13];
LABEL_8:
}

- (void)buttonSetArbiterDidReset:(id)reset
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  [WeakRetained brightnessController:self performCoordinatedBrightnessChangeForIncrementKeyDown:0 decrementKeyDown:0];
}

- (BOOL)_setBrightnessLevel:(float)level animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = *MEMORY[0x277CFD3C8];
  if (![(KeyboardBrightnessClient *)self->_keyboardBrightnessClient isAmbientFeatureAvailableOnKeyboard:*MEMORY[0x277CFD3C8]]|| ([(KeyboardBrightnessClient *)self->_keyboardBrightnessClient isBacklightSaturatedOnKeyboard:v7]& 1) != 0)
  {
    return 0;
  }

  keyboardBrightnessClient = self->_keyboardBrightnessClient;
  if (animatedCopy)
  {
    v11 = 150;
  }

  else
  {
    v11 = 0;
  }

  *&v8 = level;

  return [(KeyboardBrightnessClient *)keyboardBrightnessClient setBrightness:v11 fadeSpeed:1 commit:v7 forKeyboard:v8];
}

- (void)initWithCoordinator:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBKeyboardBrightnessController.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"coordinator"}];
}

- (void)buttonSetArbiter:(uint64_t)a1 performActionForButtonPage:(uint64_t)a2 usage:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBKeyboardBrightnessController.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"page == kHIDPage_Consumer"}];
}

@end