@interface _SBHUDModel
+ (id)HUDModelForController:(id)a3 viewController:(id)a4 identifier:(id)a5;
- (BOOL)_shouldIgnoreDropletAttachment;
- (BOOL)isEqual:(id)a3;
- (BOOL)isVisible;
- (NSString)description;
- (void)_handleDropletLayoutCallback:(double)a3;
- (void)_setupDropletLayout;
- (void)_teardownDropletLayout;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3;
- (void)hudViewController:(id)a3 didDismissHUD:(id)a4;
- (void)hudViewController:(id)a3 didPresentHUD:(id)a4;
- (void)hudViewController:(id)a3 willDismissHUD:(id)a4;
- (void)hudViewController:(id)a3 willPresentHUD:(id)a4;
- (void)invalidateDismissalTimer;
- (void)presentWithDismissalInterval:(double)a3 animated:(BOOL)a4;
- (void)rescheduleDismissalTimer;
- (void)scheduleDismissalTimer;
- (void)updateAttachmentStateForHUDViewController:(id)a3;
@end

@implementation _SBHUDModel

+ (id)HUDModelForController:(id)a3 viewController:(id)a4 identifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    +[_SBHUDModel HUDModelForController:viewController:identifier:];
    if (v7)
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
  if (v7)
  {
    goto LABEL_4;
  }

LABEL_9:
  +[_SBHUDModel HUDModelForController:viewController:identifier:];
LABEL_4:
  v11 = objc_opt_new();
  v12 = v11[4];
  v11[4] = v7;
  v13 = v7;

  v14 = v11[3];
  v11[3] = v8;
  v15 = v8;

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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, v4);

  if (v6)
  {
    v7 = [(_SBHUDModel *)self identifier];
    v8 = [v6 identifier];
    v9 = [v7 isEqual:v8];

    v10 = [v6 HUDViewController];
    v11 = [(_SBHUDModel *)self HUDViewController];
    v12 = [v10 isEqual:v11];

    v13 = [v6 HUDController];
    v14 = [(_SBHUDModel *)self HUDController];
    LOBYTE(v11) = [v13 isEqual:v14];

    v15 = v11 & v9 & v12;
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
  v4 = [(_SBHUDModel *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"identifier"];

  v6 = [v3 appendBool:-[_SBHUDModel isPresenting](self withName:{"isPresenting"), @"isPresenting"}];
  v7 = [v3 appendBool:-[_SBHUDModel isPresented](self withName:{"isPresented"), @"isPresented"}];
  v8 = [v3 appendBool:-[_SBHUDModel isDismissing](self withName:{"isDismissing"), @"isDismissing"}];
  v9 = [v3 appendBool:-[_SBHUDModel isDismissed](self withName:{"isDismissed"), @"isDismissing"}];
  v10 = [v3 appendBool:-[_SBHUDModel isDismissalScheduled](self withName:{"isDismissalScheduled"), @"isDismissalScheduled"}];
  v11 = [v3 build];

  return v11;
}

- (BOOL)isVisible
{
  if ([(_SBHUDModel *)self isPresenting]|| [(_SBHUDModel *)self isPresented])
  {
    return 1;
  }

  return [(_SBHUDModel *)self isDismissing];
}

- (void)presentWithDismissalInterval:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(_SBHUDModel *)self invalidateDismissalTimer];
  self->_dismissalInterval = a3;
  v7 = [(_SBHUDModel *)self HUDController];
  [v7 _presentHUD:self animated:v4];
}

- (void)dismissAnimated:(BOOL)a3
{
  v3 = a3;
  [(_SBHUDModel *)self invalidateDismissalTimer];
  v5 = [(_SBHUDModel *)self HUDController];
  [v5 _dismissHUD:self animated:v3];
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
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
  v3 = [(SBHUDViewControlling *)self->_HUDViewController triggerButton];
  if (v3)
  {
    v4 = v3 == 9;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v3;
    v6 = [(SBHUDController *)self->_HUDController windowScene];
    v7 = [v6 hardwareButtonBezelEffectsCoordinator];

    v8 = [v7 hintDropletsEnabled];
    HUDViewController = self->_HUDViewController;
    if (v8)
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
      v11 = [v7 setDropletLayoutCallback:v10 forButton:v5];
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
  v3 = [(SBHUDViewControlling *)self->_HUDViewController attachmentIgnoredOrientations];
  v4 = [(SBHUDViewControlling *)self->_HUDViewController interfaceOrientation];

  return MEMORY[0x282143930](v3, v4);
}

- (void)_handleDropletLayoutCallback:(double)a3
{
  v5 = [(_SBHUDModel *)self _shouldIgnoreDropletAttachment];
  HUDViewController = self->_HUDViewController;
  if (v5)
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v9 = [(SBHUDViewControlling *)HUDViewController interfaceOrientation];
    v8 = 0.0;
    if ((v9 - 3) >= 2)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0.0;
    }

    if ((v9 - 3) < 2)
    {
      v8 = a3;
    }

    HUDViewController = self->_HUDViewController;
  }

  [(SBHUDViewControlling *)HUDViewController setPositionOffset:v7, v8];
}

- (void)updateAttachmentStateForHUDViewController:(id)a3
{
  v4 = [(SBHUDViewControlling *)self->_HUDViewController triggerButton];
  if (v4 && self->_dropletLayoutAssertion)
  {
    v5 = v4;
    v6 = [(SBHUDViewControlling *)self->_HUDViewController isHUDAttached];
    v7 = ([(_SBHUDModel *)self _shouldIgnoreDropletAttachment]^ 1) & v6;
    v9 = [(SBHUDController *)self->_HUDController windowScene];
    v8 = [v9 hardwareButtonBezelEffectsCoordinator];
    [v8 updateHintContentVisibility:v7 forButton:v5 animationSettings:0];
  }
}

- (void)hudViewController:(id)a3 willDismissHUD:(id)a4
{
  [(_SBHUDModel *)self setPresented:1, a4];
  [(_SBHUDModel *)self setPresenting:0];
  [(_SBHUDModel *)self setDismissing:1];

  [(_SBHUDModel *)self setDismissed:0];
}

- (void)hudViewController:(id)a3 didDismissHUD:(id)a4
{
  [(_SBHUDModel *)self setPresented:0, a4];
  [(_SBHUDModel *)self setPresenting:0];
  [(_SBHUDModel *)self setDismissing:0];
  [(_SBHUDModel *)self setDismissed:1];

  [(_SBHUDModel *)self _teardownDropletLayout];
}

- (void)hudViewController:(id)a3 willPresentHUD:(id)a4
{
  [(_SBHUDModel *)self _setupDropletLayout:a3];
  [(_SBHUDModel *)self setPresenting:1];
  [(_SBHUDModel *)self setPresented:0];
  [(_SBHUDModel *)self setDismissing:0];

  [(_SBHUDModel *)self setDismissed:0];
}

- (void)hudViewController:(id)a3 didPresentHUD:(id)a4
{
  [(_SBHUDModel *)self setPresenting:0, a4];
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