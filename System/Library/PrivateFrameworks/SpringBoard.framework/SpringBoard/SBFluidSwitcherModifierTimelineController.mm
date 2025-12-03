@interface SBFluidSwitcherModifierTimelineController
+ (BOOL)_isNoisyEvent:(id)event;
- (BOOL)wantsEvent:(id)event;
- (SBFluidSwitcherModifierTimelineController)initWithDelegate:(id)delegate;
- (SBFluidSwitcherModifierTimelineControllerDelegate)delegate;
- (double)_windowLevel;
- (id)_windowScene;
- (void)setVisible:(BOOL)visible;
@end

@implementation SBFluidSwitcherModifierTimelineController

+ (BOOL)_isNoisyEvent:(id)event
{
  v3 = _isNoisyEvent__onceToken;
  eventCopy = event;
  if (v3 != -1)
  {
    +[SBFluidSwitcherModifierTimelineController _isNoisyEvent:];
  }

  v5 = _isNoisyEvent__noisyEventTypeNums;
  v6 = MEMORY[0x277CCABB0];
  type = [eventCopy type];

  v8 = [v6 numberWithInteger:type];
  LOBYTE(v5) = [v5 containsObject:v8];

  return v5;
}

void __59__SBFluidSwitcherModifierTimelineController__isNoisyEvent___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_28336EBE0];
  v1 = _isNoisyEvent__noisyEventTypeNums;
  _isNoisyEvent__noisyEventTypeNums = v0;
}

- (SBFluidSwitcherModifierTimelineController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherModifierTimelineController;
  v5 = [(SBFluidSwitcherModifierTimelineController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)setVisible:(BOOL)visible
{
  self->_visible = visible;
  window = self->_window;
  if (visible)
  {
    if (!window)
    {
      v5 = [[SBFluidSwitcherModifierTimelineViewController alloc] initWithNibName:0 bundle:0];
      rootViewController = self->_rootViewController;
      self->_rootViewController = v5;

      v7 = objc_alloc(MEMORY[0x277D65F88]);
      _windowScene = [(SBFluidSwitcherModifierTimelineController *)self _windowScene];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 initWithWindowScene:_windowScene role:@"SBTraitsParticipantRoleModifierTimeline" debugName:v10];
      v12 = self->_window;
      self->_window = v11;

      [(UIWindow *)self->_window setRootViewController:self->_rootViewController];
      v13 = self->_window;
      [(SBFluidSwitcherModifierTimelineController *)self _windowLevel];
      [(UIWindow *)v13 setWindowLevel:?];
      [(UIWindow *)self->_window setHidden:0];
      [(UIWindow *)self->_window makeKeyAndVisible];
      v14 = self->_rootViewController;

      [(SBFluidSwitcherModifierTimelineViewController *)v14 bs_endAppearanceTransition:1];
    }
  }

  else if (window)
  {
    [(SBFluidSwitcherModifierTimelineViewController *)self->_rootViewController bs_endAppearanceTransition:0];
    [(UIWindow *)self->_window setHidden:1];
    v15 = self->_window;
    self->_window = 0;

    v16 = self->_rootViewController;
    self->_rootViewController = 0;
  }
}

- (BOOL)wantsEvent:(id)event
{
  eventCopy = event;
  if ([(SBFluidSwitcherModifierTimelineViewController *)self->_rootViewController ignoreNoisyEvents])
  {
    v5 = [objc_opt_class() _isNoisyEvent:eventCopy] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)_windowScene
{
  delegate = [(SBFluidSwitcherModifierTimelineController *)self delegate];
  v4 = [delegate windowSceneForModifierTimelineController:self];

  return v4;
}

- (double)_windowLevel
{
  delegate = [(SBFluidSwitcherModifierTimelineController *)self delegate];
  [delegate windowLevelForModifierTimelineController:self];
  v5 = v4;

  return v5;
}

- (SBFluidSwitcherModifierTimelineControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end