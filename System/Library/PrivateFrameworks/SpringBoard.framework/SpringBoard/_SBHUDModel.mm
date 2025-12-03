@interface _SBHUDModel
+ (id)HUDModelForController:(id)controller viewController:(id)viewController identifier:(id)identifier;
- (BOOL)_shouldIgnoreDropletAttachment;
- (BOOL)isEqual:(id)equal;
- (BOOL)isVisible;
- (NSString)description;
- (void)_handleDropletLayoutCallback:(double)callback;
- (void)_setupDropletLayout;
- (void)_teardownDropletLayout;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated;
- (void)hudViewController:(id)controller didDismissHUD:(id)d;
- (void)hudViewController:(id)controller didPresentHUD:(id)d;
- (void)hudViewController:(id)controller willDismissHUD:(id)d;
- (void)hudViewController:(id)controller willPresentHUD:(id)d;
- (void)invalidateDismissalTimer;
- (void)presentWithDismissalInterval:(double)interval animated:(BOOL)animated;
- (void)rescheduleDismissalTimer;
- (void)scheduleDismissalTimer;
- (void)updateAttachmentStateForHUDViewController:(id)controller;
@end

@implementation _SBHUDModel

+ (id)HUDModelForController:(id)controller viewController:(id)viewController identifier:(id)identifier
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  identifierCopy = identifier;
  v10 = identifierCopy;
  if (viewControllerCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    +[_SBHUDModel HUDModelForController:viewController:identifier:];
    if (controllerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  +[_SBHUDModel HUDModelForController:viewController:identifier:];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (controllerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  +[_SBHUDModel HUDModelForController:viewController:identifier:];
LABEL_4:
  v11 = objc_opt_new();
  v12 = v11[4];
  v11[4] = controllerCopy;
  v13 = controllerCopy;

  v14 = v11[3];
  v11[3] = viewControllerCopy;
  v15 = viewControllerCopy;

  v16 = v11[6];
  v11[6] = v10;

  return v11;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_dropletLayoutAssertion invalidate];
  dropletLayoutAssertion = self->_dropletLayoutAssertion;
  self->_dropletLayoutAssertion = 0;

  v4.receiver = self;
  v4.super_class = _SBHUDModel;
  [(_SBHUDModel *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, equalCopy);

  if (v6)
  {
    identifier = [(_SBHUDModel *)self identifier];
    identifier2 = [v6 identifier];
    v9 = [identifier isEqual:identifier2];

    hUDViewController = [v6 HUDViewController];
    hUDViewController2 = [(_SBHUDModel *)self HUDViewController];
    v12 = [hUDViewController isEqual:hUDViewController2];

    hUDController = [v6 HUDController];
    hUDController2 = [(_SBHUDModel *)self HUDController];
    LOBYTE(hUDViewController2) = [hUDController isEqual:hUDController2];

    v15 = hUDViewController2 & v9 & v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(_SBHUDModel *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"identifier"];

  v6 = [v3 appendBool:-[_SBHUDModel isPresenting](self withName:{"isPresenting"), @"isPresenting"}];
  v7 = [v3 appendBool:-[_SBHUDModel isPresented](self withName:{"isPresented"), @"isPresented"}];
  v8 = [v3 appendBool:-[_SBHUDModel isDismissing](self withName:{"isDismissing"), @"isDismissing"}];
  v9 = [v3 appendBool:-[_SBHUDModel isDismissed](self withName:{"isDismissed"), @"isDismissing"}];
  v10 = [v3 appendBool:-[_SBHUDModel isDismissalScheduled](self withName:{"isDismissalScheduled"), @"isDismissalScheduled"}];
  build = [v3 build];

  return build;
}

- (BOOL)isVisible
{
  if ([(_SBHUDModel *)self isPresenting]|| [(_SBHUDModel *)self isPresented])
  {
    return 1;
  }

  return [(_SBHUDModel *)self isDismissing];
}

- (void)presentWithDismissalInterval:(double)interval animated:(BOOL)animated
{
  animatedCopy = animated;
  [(_SBHUDModel *)self invalidateDismissalTimer];
  self->_dismissalInterval = interval;
  hUDController = [(_SBHUDModel *)self HUDController];
  [hUDController _presentHUD:self animated:animatedCopy];
}

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(_SBHUDModel *)self invalidateDismissalTimer];
  hUDController = [(_SBHUDModel *)self HUDController];
  [hUDController _dismissHUD:self animated:animatedCopy];
}

- (void)invalidateDismissalTimer
{
  dismissalTimer = self->_dismissalTimer;
  if (dismissalTimer)
  {
    [(NSTimer *)dismissalTimer invalidate];
    v4 = self->_dismissalTimer;
    self->_dismissalTimer = 0;
  }
}

- (void)scheduleDismissalTimer
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)rescheduleDismissalTimer
{
  [(_SBHUDModel *)self invalidateDismissalTimer];

  [(_SBHUDModel *)self scheduleDismissalTimer];
}

- (void)_setupDropletLayout
{
  triggerButton = [(SBHUDViewControlling *)self->_HUDViewController triggerButton];
  if (triggerButton)
  {
    v4 = triggerButton == 9;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = triggerButton;
    windowScene = [(SBHUDController *)self->_HUDController windowScene];
    hardwareButtonBezelEffectsCoordinator = [windowScene hardwareButtonBezelEffectsCoordinator];

    hintDropletsEnabled = [hardwareButtonBezelEffectsCoordinator hintDropletsEnabled];
    HUDViewController = self->_HUDViewController;
    if (hintDropletsEnabled)
    {
      [(SBHUDViewControlling *)HUDViewController setAttachmentDelegate:self];
      objc_initWeak(&location, self);
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __34___SBHUDModel__setupDropletLayout__block_invoke;
      v16 = &unk_2783B50D0;
      objc_copyWeak(&v17, &location);
      v10 = MEMORY[0x223D6F7F0](&v13);
      [(BSInvalidatable *)self->_dropletLayoutAssertion invalidate:v13];
      v11 = [hardwareButtonBezelEffectsCoordinator setDropletLayoutCallback:v10 forButton:v5];
      dropletLayoutAssertion = self->_dropletLayoutAssertion;
      self->_dropletLayoutAssertion = v11;

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      [(SBHUDViewControlling *)HUDViewController setAttachmentDelegate:0];
    }
  }
}

- (void)_teardownDropletLayout
{
  dropletLayoutAssertion = self->_dropletLayoutAssertion;
  if (dropletLayoutAssertion)
  {
    [(BSInvalidatable *)dropletLayoutAssertion invalidate];
    v4 = self->_dropletLayoutAssertion;
    self->_dropletLayoutAssertion = 0;
  }
}

- (BOOL)_shouldIgnoreDropletAttachment
{
  attachmentIgnoredOrientations = [(SBHUDViewControlling *)self->_HUDViewController attachmentIgnoredOrientations];
  interfaceOrientation = [(SBHUDViewControlling *)self->_HUDViewController interfaceOrientation];

  return MEMORY[0x282143930](attachmentIgnoredOrientations, interfaceOrientation);
}

- (void)_handleDropletLayoutCallback:(double)callback
{
  _shouldIgnoreDropletAttachment = [(_SBHUDModel *)self _shouldIgnoreDropletAttachment];
  HUDViewController = self->_HUDViewController;
  if (_shouldIgnoreDropletAttachment)
  {
    callbackCopy = *MEMORY[0x277CBF348];
    callbackCopy2 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    interfaceOrientation = [(SBHUDViewControlling *)HUDViewController interfaceOrientation];
    callbackCopy2 = 0.0;
    if ((interfaceOrientation - 3) >= 2)
    {
      callbackCopy = callback;
    }

    else
    {
      callbackCopy = 0.0;
    }

    if ((interfaceOrientation - 3) < 2)
    {
      callbackCopy2 = callback;
    }

    HUDViewController = self->_HUDViewController;
  }

  [(SBHUDViewControlling *)HUDViewController setPositionOffset:callbackCopy, callbackCopy2];
}

- (void)updateAttachmentStateForHUDViewController:(id)controller
{
  triggerButton = [(SBHUDViewControlling *)self->_HUDViewController triggerButton];
  if (triggerButton && self->_dropletLayoutAssertion)
  {
    v5 = triggerButton;
    isHUDAttached = [(SBHUDViewControlling *)self->_HUDViewController isHUDAttached];
    v7 = ([(_SBHUDModel *)self _shouldIgnoreDropletAttachment]^ 1) & isHUDAttached;
    windowScene = [(SBHUDController *)self->_HUDController windowScene];
    hardwareButtonBezelEffectsCoordinator = [windowScene hardwareButtonBezelEffectsCoordinator];
    [hardwareButtonBezelEffectsCoordinator updateHintContentVisibility:v7 forButton:v5 animationSettings:0];
  }
}

- (void)hudViewController:(id)controller willDismissHUD:(id)d
{
  [(_SBHUDModel *)self setPresented:1, d];
  [(_SBHUDModel *)self setPresenting:0];
  [(_SBHUDModel *)self setDismissing:1];

  [(_SBHUDModel *)self setDismissed:0];
}

- (void)hudViewController:(id)controller didDismissHUD:(id)d
{
  [(_SBHUDModel *)self setPresented:0, d];
  [(_SBHUDModel *)self setPresenting:0];
  [(_SBHUDModel *)self setDismissing:0];
  [(_SBHUDModel *)self setDismissed:1];

  [(_SBHUDModel *)self _teardownDropletLayout];
}

- (void)hudViewController:(id)controller willPresentHUD:(id)d
{
  [(_SBHUDModel *)self _setupDropletLayout:controller];
  [(_SBHUDModel *)self setPresenting:1];
  [(_SBHUDModel *)self setPresented:0];
  [(_SBHUDModel *)self setDismissing:0];

  [(_SBHUDModel *)self setDismissed:0];
}

- (void)hudViewController:(id)controller didPresentHUD:(id)d
{
  [(_SBHUDModel *)self setPresenting:0, d];
  [(_SBHUDModel *)self setPresented:1];
  [(_SBHUDModel *)self setDismissing:0];

  [(_SBHUDModel *)self setDismissed:0];
}

+ (void)HUDModelForController:viewController:identifier:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"viewController" object:? file:? lineNumber:? description:?];
}

+ (void)HUDModelForController:viewController:identifier:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

+ (void)HUDModelForController:viewController:identifier:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"HUDController" object:? file:? lineNumber:? description:?];
}

@end