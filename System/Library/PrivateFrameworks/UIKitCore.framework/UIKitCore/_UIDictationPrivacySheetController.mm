@interface _UIDictationPrivacySheetController
- (_UIDictationPrivacySheetController)initWithType:(int64_t)type;
- (void)dismiss;
- (void)setPresentationDelegate:(id)delegate;
@end

@implementation _UIDictationPrivacySheetController

- (_UIDictationPrivacySheetController)initWithType:(int64_t)type
{
  v6 = objc_alloc_init(UIViewController);
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDictationController.m" lineNumber:1323 description:@"Failed to create UIViewController"];
  }

  v23.receiver = self;
  v23.super_class = _UIDictationPrivacySheetController;
  v7 = [(UINavigationController *)&v23 initWithRootViewController:v6];
  if (v7)
  {
    if (+[UIDictationUtilities _isUsingLargeFormatDictationUI])
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }

    +[UIDictationUtilities _isUsingLargeFormatDictationUI];
    [(UIViewController *)v7 setModalPresentationStyle:v8];
    v7->_sheetType = type;
    if (type == 1)
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2050000000;
      v9 = qword_1ED4988B8;
      v32 = qword_1ED4988B8;
      if (!qword_1ED4988B8)
      {
        location = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __getOBPrivacyPresenterClass_block_invoke;
        v27 = &unk_1E70F2F20;
        v28 = &v29;
        __getOBPrivacyPresenterClass_block_invoke(&location);
        v9 = v30[3];
      }

      v10 = v9;
      _Block_object_dispose(&v29, 8);
      v11 = [v9 presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
      privacyPresenter = v7->_privacyPresenter;
      v7->_privacyPresenter = v11;

      objc_initWeak(&location, v7);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __51___UIDictationPrivacySheetController_initWithType___block_invoke;
      v21[3] = &unk_1E70F5A28;
      objc_copyWeak(&v22, &location);
      [(OBPrivacyPresenter *)v7->_privacyPresenter setDismissHandler:v21];
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2050000000;
      v13 = qword_1ED4988C8;
      v32 = qword_1ED4988C8;
      if (!qword_1ED4988C8)
      {
        location = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __getVTUIDictationDataSharingOptInPresenterClass_block_invoke;
        v27 = &unk_1E70F2F20;
        v28 = &v29;
        __getVTUIDictationDataSharingOptInPresenterClass_block_invoke(&location);
        v13 = v30[3];
      }

      v14 = v13;
      _Block_object_dispose(&v29, 8);
      v15 = objc_alloc_init(v13);
      dataSharingOptInPresenter = v7->_dataSharingOptInPresenter;
      v7->_dataSharingOptInPresenter = v15;

      dataSharingOptInView = [(VTUIDictationDataSharingOptInPresenter *)v7->_dataSharingOptInPresenter dataSharingOptInView];
      view = [(UIViewController *)v6 view];
      [view addSubview:dataSharingOptInView];
    }
  }

  return v7;
}

- (void)dismiss
{
  privacyDelegate = [(_UIDictationPrivacySheetController *)self privacyDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    privacyDelegate2 = [(_UIDictationPrivacySheetController *)self privacyDelegate];
    [privacyDelegate2 dictationPrivacySheetControllerDidFinish:self];
  }
}

- (void)setPresentationDelegate:(id)delegate
{
  delegateCopy = delegate;
  dataSharingOptInPresenter = [(_UIDictationPrivacySheetController *)self dataSharingOptInPresenter];
  [dataSharingOptInPresenter setPresentationDelegate:delegateCopy];
}

@end