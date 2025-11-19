@interface SBUIRemoteAlertServiceViewController
+ (id)_exportedInterface;
- (SBUIRemoteAlertServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)sb_dismissForAlertAnimated:(BOOL)a3 completion:(id)a4;
- (void)sb_presentForAlertAnimated:(BOOL)a3 completion:(id)a4;
- (void)sb_preserveInputViewsAnimated:(BOOL)a3;
- (void)sb_restoreInputViewsAnimated:(BOOL)a3;
- (void)synchronizeAnimationsInActions:(id)a3;
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

- (SBUIRemoteAlertServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBUIRemoteAlertServiceViewController;
  return [(SBUIRemoteAlertServiceViewController *)&v5 initWithNibName:a3 bundle:a4];
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v7 = a4;
  v5 = [(SBUIRemoteAlertServiceViewController *)self _selectorIsOverriden:sel_prepareForActivationWithContext_completion_];
  v6 = v7;
  if (v7 && (v5 & 1) == 0)
  {
    v5 = v7[2](v7);
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)handleButtonActions:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(SBUIRemoteAlertServiceViewController *)self _selectorIsOverriden:sel_handleButtonActions_])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
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

        v10 = [*(*(&v13 + 1) + 8 * v9) events];
        v11 = v10;
        if (v10)
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

        else if ((v10 & 2) == 0)
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

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)synchronizeAnimationsInActions:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ([(SBUIRemoteAlertServiceViewController *)self _appearState])
  {
    if (self->_hasSentAnimationFence)
    {
      [MEMORY[0x1E69DCE70] _synchronizeDrawing];
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
    }

    self->_hasSentAnimationFence = 1;
    v7 = *MEMORY[0x1E69DDA98];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__SBUIRemoteAlertServiceViewController_synchronizeAnimationsInActions___block_invoke;
    v9[3] = &unk_1E789DA38;
    v9[4] = self;
    [v7 _performBlockAfterCATransactionCommits:v9];
    v8 = [(SBUIRemoteAlertServiceViewController *)self _remoteViewControllerProxy];
    [v8 _participateInSystemAnimationFence:v6];
  }

  v4[2](v4);
  objc_autoreleasePoolPop(v5);
}

- (void)sb_preserveInputViewsAnimated:(BOOL)a3
{
  if (!self->_hasPreservedInputViews)
  {
    v4 = a3;
    self->_hasPreservedInputViews = 1;
    v7 = [MEMORY[0x1E69DCD68] sharedInstance];
    v6 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v7 _preserveInputViewsWithId:v6 animated:v4];
  }
}

- (void)sb_restoreInputViewsAnimated:(BOOL)a3
{
  if (self->_hasPreservedInputViews)
  {
    v4 = a3;
    self->_hasPreservedInputViews = 0;
    v7 = [MEMORY[0x1E69DCD68] sharedInstance];
    v6 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v7 _restoreInputViewsWithId:v6 animated:v4];
  }
}

- (void)sb_presentForAlertAnimated:(BOOL)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)sb_dismissForAlertAnimated:(BOOL)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
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