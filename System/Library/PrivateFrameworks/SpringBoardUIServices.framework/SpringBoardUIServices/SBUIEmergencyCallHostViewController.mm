@interface SBUIEmergencyCallHostViewController
+ (void)requestEmergencyCallControllerWithCompletion:(id)a3;
- (id)tintColorForBackgroundStyle:(int64_t)a3 outBlurRadius:(double *)a4;
- (void)_createAndAddBlurViewIfNecessary;
- (void)setBlursSelf:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SBUIEmergencyCallHostViewController

+ (void)requestEmergencyCallControllerWithCompletion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_class();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__SBUIEmergencyCallHostViewController_requestEmergencyCallControllerWithCompletion___block_invoke;
    v6[3] = &unk_1E78A00F0;
    v7 = v3;
    v5 = [v4 requestViewController:@"PHEmergencyDialerViewController" fromServiceWithBundleIdentifier:@"com.apple.InCallService" connectionHandler:v6];
  }
}

void __84__SBUIEmergencyCallHostViewController_requestEmergencyCallControllerWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__SBUIEmergencyCallHostViewController_requestEmergencyCallControllerWithCompletion___block_invoke_2;
    v15[3] = &unk_1E78A00A0;
    v9 = v7;
    v16 = v9;
    v17 = *(a1 + 32);
    v10 = [v9 serviceViewControllerProxyWithErrorHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__SBUIEmergencyCallHostViewController_requestEmergencyCallControllerWithCompletion___block_invoke_3;
    v12[3] = &unk_1E78A00C8;
    v13 = v9;
    v14 = *(a1 + 32);
    [v10 backgroundStyle:v12];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v19 = @"com.apple.mobilephone";
      v20 = 2114;
      v21 = @"PHEmergencyDialerViewController";
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_INFO, "Emergency call: error requesting <%@:%{public}@> -> %@", buf, 0x20u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __84__SBUIEmergencyCallHostViewController_requestEmergencyCallControllerWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) disconnect];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __84__SBUIEmergencyCallHostViewController_requestEmergencyCallControllerWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setBackgroundStyle:a2];
  v6 = 0.0;
  v4 = [*(a1 + 32) tintColorForBackgroundStyle:a2 outBlurRadius:&v6];
  [*(a1 + 32) setTintColor:v4];
  [*(a1 + 32) setBlurRadius:v6];
  [*(a1 + 32) setBlursSelf:1];
  v5 = [*(a1 + 32) serviceViewControllerProxy];
  [v5 noteTintColorForBackgroundStyleChanged:v4];

  (*(*(a1 + 40) + 16))();
}

- (void)setBlursSelf:(BOOL)a3
{
  if (self->_blursSelf != a3)
  {
    self->_blursSelf = a3;
    if (a3)
    {

      [(SBUIEmergencyCallHostViewController *)self _createAndAddBlurViewIfNecessary];
    }

    else
    {
      [(_UIBackdropView *)self->_blurView removeFromSuperview];
      blurView = self->_blurView;
      self->_blurView = 0;
    }
  }
}

- (id)tintColorForBackgroundStyle:(int64_t)a3 outBlurRadius:(double *)a4
{
  if ((a3 - 3) > 2)
  {
    v5 = 2010;
  }

  else
  {
    v5 = qword_1A9B2AF68[a3 - 3];
  }

  if (a4)
  {
    v6 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:v5 graphicsQuality:100];
    [v6 blurRadius];
    *a4 = v7;
  }

  v8 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:v5];
  v9 = [v8 combinedTintColor];

  return v9;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBUIEmergencyCallHostViewController;
  [(_UIRemoteViewController *)&v4 viewWillAppear:a3];
  if (self->_blursSelf && !self->_blurView)
  {
    [(SBUIEmergencyCallHostViewController *)self _createAndAddBlurViewIfNecessary];
  }
}

- (void)_createAndAddBlurViewIfNecessary
{
  if (!self->_blurView)
  {
    v3 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:-2];
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 _graphicsQuality];

    if (v5 == 100)
    {
      [v3 setBlurRadius:self->_blurRadius];
      [v3 setBackdropVisible:1];
    }

    v6 = [objc_alloc(MEMORY[0x1E69DD370]) initWithSettings:v3];
    blurView = self->_blurView;
    self->_blurView = v6;

    v8 = self->_blurView;
    v9 = [(SBUIEmergencyCallHostViewController *)self view];
    [v9 bounds];
    [(_UIBackdropView *)v8 setFrame:?];

    [(_UIBackdropView *)self->_blurView setAutoresizingMask:18];
    [(_UIBackdropView *)self->_blurView setAlpha:1.0];
    [(_UIBackdropView *)self->_blurView setComputesColorSettings:1];
  }

  v10 = [(SBUIEmergencyCallHostViewController *)self view];
  [v10 addSubview:self->_blurView];

  v11 = [(SBUIEmergencyCallHostViewController *)self view];
  [v11 sendSubviewToBack:self->_blurView];
}

@end