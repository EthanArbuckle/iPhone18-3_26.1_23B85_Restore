@interface SBUIRemoteAlertServiceViewController
+ (id)_exportedInterface;
- (SBUIRemoteAlertServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)sb_dismissForAlertAnimated:(BOOL)animated completion:(id)completion;
- (void)sb_presentForAlertAnimated:(BOOL)animated completion:(id)completion;
- (void)sb_preserveInputViewsAnimated:(BOOL)animated;
- (void)sb_restoreInputViewsAnimated:(BOOL)animated;
- (void)synchronizeAnimationsInActions:(id)actions;
@end

@implementation SBUIRemoteAlertServiceViewController

- (void)dealloc
{
  if (self->_hasPreservedInputViews)
  {
    [(SBUIRemoteAlertServiceViewController *)self sb_restoreInputViewsAnimated:0];
  }

  v3.receiver = self;
  v3.super_class = SBUIRemoteAlertServiceViewController;
  [(SBUIRemoteAlertServiceViewController *)&v3 dealloc];
}

- (SBUIRemoteAlertServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = SBUIRemoteAlertServiceViewController;
  return [(SBUIRemoteAlertServiceViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v5 = [(SBUIRemoteAlertServiceViewController *)self _selectorIsOverriden:sel_prepareForActivationWithContext_completion_];
  v6 = completionCopy;
  if (completionCopy && (v5 & 1) == 0)
  {
    v5 = completionCopy[2](completionCopy);
    v6 = completionCopy;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)handleButtonActions:(id)actions
{
  v18 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if (![(SBUIRemoteAlertServiceViewController *)self _selectorIsOverriden:sel_handleButtonActions_])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = actionsCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v6)
    {
      goto LABEL_23;
    }

    v7 = v6;
    v8 = *v14;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        events = [*(*(&v13 + 1) + 8 * v9) events];
        v11 = events;
        if (events)
        {
          [(SBUIRemoteAlertServiceViewController *)self handleLockButtonPressed];
          if ((v11 & 2) == 0)
          {
LABEL_9:
            if ((v11 & 4) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_18;
          }
        }

        else if ((events & 2) == 0)
        {
          goto LABEL_9;
        }

        [(SBUIRemoteAlertServiceViewController *)self handleVolumeUpButtonPressed];
        if ((v11 & 4) == 0)
        {
LABEL_10:
          if ((v11 & 8) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_19;
        }

LABEL_18:
        [(SBUIRemoteAlertServiceViewController *)self handleVolumeDownButtonPressed];
        if ((v11 & 8) == 0)
        {
LABEL_11:
          if ((v11 & 0x20) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_20;
        }

LABEL_19:
        [(SBUIRemoteAlertServiceViewController *)self handleHeadsetButtonPressed:0];
        if ((v11 & 0x20) == 0)
        {
LABEL_12:
          if ((v11 & 0x10) == 0)
          {
            goto LABEL_14;
          }

LABEL_13:
          [(SBUIRemoteAlertServiceViewController *)self handleHomeButtonPressed];
          goto LABEL_14;
        }

LABEL_20:
        [(SBUIRemoteAlertServiceViewController *)self handleHeadsetButtonPressed:1];
        if ((v11 & 0x10) != 0)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v9;
      }

      while (v7 != v9);
      v12 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = v12;
      if (!v12)
      {
LABEL_23:

        break;
      }
    }
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)synchronizeAnimationsInActions:(id)actions
{
  actionsCopy = actions;
  v5 = objc_autoreleasePoolPush();
  if ([(SBUIRemoteAlertServiceViewController *)self _appearState])
  {
    if (self->_hasSentAnimationFence)
    {
      [MEMORY[0x1E69DCE70] _synchronizeDrawing];
      _synchronizedDrawingFence = 0;
    }

    else
    {
      _synchronizedDrawingFence = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
    }

    self->_hasSentAnimationFence = 1;
    v7 = *MEMORY[0x1E69DDA98];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__SBUIRemoteAlertServiceViewController_synchronizeAnimationsInActions___block_invoke;
    v9[3] = &unk_1E789DA38;
    v9[4] = self;
    [v7 _performBlockAfterCATransactionCommits:v9];
    _remoteViewControllerProxy = [(SBUIRemoteAlertServiceViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy _participateInSystemAnimationFence:_synchronizedDrawingFence];
  }

  actionsCopy[2](actionsCopy);
  objc_autoreleasePoolPop(v5);
}

- (void)sb_preserveInputViewsAnimated:(BOOL)animated
{
  if (!self->_hasPreservedInputViews)
  {
    animatedCopy = animated;
    self->_hasPreservedInputViews = 1;
    mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
    v6 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [mEMORY[0x1E69DCD68] _preserveInputViewsWithId:v6 animated:animatedCopy];
  }
}

- (void)sb_restoreInputViewsAnimated:(BOOL)animated
{
  if (self->_hasPreservedInputViews)
  {
    animatedCopy = animated;
    self->_hasPreservedInputViews = 0;
    mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
    v6 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [mEMORY[0x1E69DCD68] _restoreInputViewsWithId:v6 animated:animatedCopy];
  }
}

- (void)sb_presentForAlertAnimated:(BOOL)animated completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)sb_dismissForAlertAnimated:(BOOL)animated completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

+ (id)_exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1E07480];
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v3 initWithObjects:{v4, v5, v6, v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_handleButtonActions_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v8 forSelector:sel_prepareForActivationWithContext_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

@end