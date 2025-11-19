@interface _UIApplicationModalProgressController
+ (id)instanceForScene:(id)a3;
+ (id)sharedInstance;
- (_UIApplicationModalProgressController)init;
- (id)_createSourceWindow;
- (id)_defaultSourceViewControllerCreatingWindowIfNeeded;
- (id)_sourceScene;
- (void)_callAndClearDismissalHandlerWasDismissedByUser:(BOOL)a3;
- (void)_dismissButtonAction:(id)a3;
- (void)_hideImmediatelyWasDismissedByUser:(BOOL)a3;
- (void)_hideTimerAction:(id)a3;
- (void)_reset;
- (void)_setHideTimer:(id)a3;
- (void)_setShowTimer:(id)a3;
- (void)_showTimerAction:(id)a3;
- (void)displayForDownloadingURL:(id)a3 copyToURL:(id)a4 sourceViewController:(id)a5 completionHandler:(id)a6;
- (void)displayWithTitle:(id)a3 message:(id)a4 progress:(id)a5 buttonTitle:(id)a6 sourceViewController:(id)a7 preDisplayTestBlock:(id)a8 dismissalHandler:(id)a9;
- (void)hideAfterDelay:(double)a3 forceCompletion:(BOOL)a4 replacementDismissalHandler:(id)a5;
- (void)hideAfterMinimumUptimeWithDismissalHandler:(id)a3;
- (void)reconfigureWithTitle:(id)a3 message:(id)a4 progress:(id)a5 buttonTitle:(id)a6 dismissalHandler:(id)a7;
@end

@implementation _UIApplicationModalProgressController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___UIApplicationModalProgressController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED49D988 != -1)
  {
    dispatch_once(&qword_1ED49D988, block);
  }

  v2 = _MergedGlobals_1060;

  return v2;
}

+ (id)instanceForScene:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = &handleRemoteKeyboardCameraEvent_startCameraInput____s_category;
  v5 = _progressControllers;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {

    v9 = 0;
LABEL_18:
    if (!v4[234])
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v16 = v4[234];
      v4[234] = v15;
    }

    v8 = objc_alloc_init(objc_opt_class());
    objc_storeWeak(v8 + 3, v3);
    [v4[234] addObject:v8];
    goto LABEL_21;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v19;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      if (!v8 && (v13 = objc_loadWeakRetained(v12 + 3), v13, v13 == v3))
      {
        v8 = v12;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(v12 + 3);

        if (!WeakRetained)
        {
          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          }

          [v9 addObject:v12];
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);

  v4 = &handleRemoteKeyboardCameraEvent_startCameraInput____s_category;
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_21:
  if ([v9 count])
  {
    [v4[234] minusSet:v9];
  }

  return v8;
}

- (_UIApplicationModalProgressController)init
{
  v6.receiver = self;
  v6.super_class = _UIApplicationModalProgressController;
  v2 = [(_UIApplicationModalProgressController *)&v6 init];
  if (v2)
  {
    v3 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_ModelProgressControllerDisplayDelay, @"ModelProgressControllerDisplayDelay");
    v4 = *&qword_1EA95E2A0;
    if (v3)
    {
      v4 = 2.0;
    }

    v2->_displayDelaySeconds = v4;
  }

  return v2;
}

- (void)_setShowTimer:(id)a3
{
  v5 = a3;
  showTimer = self->_showTimer;
  p_showTimer = &self->_showTimer;
  v6 = showTimer;
  if (showTimer != v5)
  {
    v9 = v5;
    [(NSTimer *)v6 invalidate];
    objc_storeStrong(p_showTimer, a3);
    v5 = v9;
  }
}

- (void)_setHideTimer:(id)a3
{
  v5 = a3;
  hideTimer = self->_hideTimer;
  p_hideTimer = &self->_hideTimer;
  v6 = hideTimer;
  if (hideTimer != v5)
  {
    v9 = v5;
    [(NSTimer *)v6 invalidate];
    objc_storeStrong(p_hideTimer, a3);
    v5 = v9;
  }
}

- (void)_callAndClearDismissalHandlerWasDismissedByUser:(BOOL)a3
{
  v3 = a3;
  v6 = _Block_copy(self->_dismissalHandler);
  [(_UIApplicationModalProgressController *)self _setDismissalHandler:0];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v3);
    v5 = v6;
  }
}

- (void)_reset
{
  v5 = [(UIViewController *)self->_alertController presentingViewController];
  if (v5 && ![(UIViewController *)self->_alertController isBeingDismissed])
  {
    v3 = [v5 traitCollection];
    v4 = -[_UIApplicationModalProgressController _shouldAnimatePresentationForIdiom:](self, "_shouldAnimatePresentationForIdiom:", [v3 userInterfaceIdiom]);

    [v5 dismissViewControllerAnimated:v4 completion:0];
  }

  [(_UIApplicationModalProgressController *)self _setPresented:0];
  [(_UIApplicationModalProgressController *)self _setSourceViewController:0];
  [(UIWindow *)self->_window setHidden:1];
  [(_UIApplicationModalProgressController *)self _setShowTimer:0];
  [(_UIApplicationModalProgressController *)self _setHideTimer:0];
  [(_UIApplicationModalProgressController *)self _setWindow:0];
  [(_UIApplicationModalProgressController *)self _setAlertController:0];
  [(_UIApplicationModalProgressController *)self _setProgress:0];
  [(_UIApplicationModalProgressController *)self _setPreDisplayTestBlock:0];
}

- (void)_hideImmediatelyWasDismissedByUser:(BOOL)a3
{
  if (self->_sourceViewController)
  {
    v3 = a3;
    [(_UIApplicationModalProgressController *)self _reset];

    [(_UIApplicationModalProgressController *)self _callAndClearDismissalHandlerWasDismissedByUser:v3];
  }
}

- (void)_showTimerAction:(id)a3
{
  if (self->_showTimer == a3)
  {
    [(_UIApplicationModalProgressController *)self _setShowTimer:0];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(_UIApplicationModalProgressController *)self _setDisplayStartTime:?];
    preDisplayTestBlock = self->_preDisplayTestBlock;
    if (preDisplayTestBlock && (preDisplayTestBlock[2]() & 1) == 0)
    {
      [(_UIApplicationModalProgressController *)self _reset];

      [(_UIApplicationModalProgressController *)self _callAndClearDismissalHandlerWasDismissedByUser:0];
    }

    else
    {
      [(UIWindow *)self->_window makeKeyAndVisible];
      v5 = [(UIViewController *)self->_sourceViewController traitCollection];
      v6 = -[_UIApplicationModalProgressController _shouldAnimatePresentationForIdiom:](self, "_shouldAnimatePresentationForIdiom:", [v5 userInterfaceIdiom]);

      [(UIViewController *)self->_sourceViewController presentViewController:self->_alertController animated:v6 completion:0];
      self->_presented = 1;
    }
  }
}

- (void)_hideTimerAction:(id)a3
{
  if (self->_hideTimer == a3)
  {
    [(_UIApplicationModalProgressController *)self _setHideTimer:0];

    [(_UIApplicationModalProgressController *)self _hideImmediatelyWasDismissedByUser:0];
  }
}

- (void)_dismissButtonAction:(id)a3
{
  if (!self->_disableButtonAction)
  {
    [(_UIApplicationModalProgressController *)self _hideImmediatelyWasDismissedByUser:1];
  }
}

- (void)hideAfterMinimumUptimeWithDismissalHandler:(id)a3
{
  v10 = a3;
  v4 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_ModelProgressControllerMinimumUptime, @"ModelProgressControllerMinimumUptime") == 0;
  v5 = v10;
  if (v4)
  {
    v6 = *&qword_1EA95E2B0;
  }

  else
  {
    v6 = 1.0;
  }

  if (self->_sourceViewController)
  {
    if (self->_dismissalHandler != v10)
    {
      [(_UIApplicationModalProgressController *)self _callAndClearDismissalHandlerWasDismissedByUser:0];
      [(_UIApplicationModalProgressController *)self _setDismissalHandler:v10];
      v5 = v10;
    }

    if (!self->_hideTimer)
    {
      [(_UIApplicationModalProgressController *)self _setShowTimer:0];
      if (self->_presented && ([MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate], v8 = v7 - self->_displayStartTime, v8 < v6))
      {
        v9 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__hideTimerAction_ selector:0 userInfo:0 repeats:v6 - v8];
        [(_UIApplicationModalProgressController *)self _setHideTimer:v9];
      }

      else
      {
        [(_UIApplicationModalProgressController *)self _hideImmediatelyWasDismissedByUser:0];
      }

      v5 = v10;
    }
  }
}

- (void)hideAfterDelay:(double)a3 forceCompletion:(BOOL)a4 replacementDismissalHandler:(id)a5
{
  self->_disableButtonAction = 1;
  v7 = MEMORY[0x1E696AE38];
  v8 = a5;
  v9 = [v7 discreteProgressWithTotalUnitCount:100];
  [v9 setCompletedUnitCount:100];
  WeakRetained = objc_loadWeakRetained(&self->_progressView);
  [WeakRetained setTrackedProgress:v9];

  v11 = _Block_copy(v8);
  if (!v11)
  {
    v11 = _Block_copy(self->_dismissalHandler);
    dismissalHandler = self->_dismissalHandler;
    self->_dismissalHandler = 0;
  }

  v13 = dispatch_time(0, (a3 * 1000000000.0));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100___UIApplicationModalProgressController_hideAfterDelay_forceCompletion_replacementDismissalHandler___block_invoke;
  v15[3] = &unk_1E70F37C0;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  dispatch_after(v13, MEMORY[0x1E69E96A0], v15);
}

- (void)reconfigureWithTitle:(id)a3 message:(id)a4 progress:(id)a5 buttonTitle:(id)a6 dismissalHandler:(id)a7
{
  v51[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (self->_sourceViewController)
  {
    v17 = [(UIAlertController *)self->_alertController actions];
    v18 = [v17 firstObject];
    v19 = [v18 title];
    v20 = [v19 isEqualToString:v15];

    v21 = [(NSProgress *)self->_progress isEqual:v14];
    [(_UIApplicationModalProgressController *)self _setProgress:v14];
    if (self->_dismissalHandler != v16)
    {
      [(_UIApplicationModalProgressController *)self _callAndClearDismissalHandlerWasDismissedByUser:0];
      [(_UIApplicationModalProgressController *)self _setDismissalHandler:v16];
    }

    [(UIAlertController *)self->_alertController setTitle:v12];
    [(UIAlertController *)self->_alertController setMessage:v13];
    if ((v20 & 1) == 0)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __108___UIApplicationModalProgressController_reconfigureWithTitle_message_progress_buttonTitle_dismissalHandler___block_invoke;
      v49[3] = &unk_1E70F59B0;
      v49[4] = self;
      v22 = [UIAlertAction actionWithTitle:v15 style:1 handler:v49];
      alertController = self->_alertController;
      v51[0] = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      [(UIAlertController *)alertController _setActions:v24];
    }

    if ((v21 & 1) == 0)
    {
      v46 = v15;
      [(UIAlertController *)self->_alertController setContentViewController:0];
      v25 = objc_alloc_init(UIViewController);
      v26 = [(UIViewController *)v25 view];
      [(UIAlertController *)self->_alertController setContentViewController:v25];
      v47 = v13;
      v48 = v12;
      v45 = v16;
      if (v14 && ([v14 isIndeterminate] & 1) == 0)
      {
        v27 = objc_alloc_init(_UIProgressView);
        [(_UIProgressView *)v27 setTrackedProgress:v14];
        objc_storeWeak(&self->_progressView, v27);
      }

      else
      {
        v27 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
        v28 = +[UIColor systemGrayColor];
        [(_UIProgressView *)v27 setColor:v28];

        [(_UIProgressView *)v27 startAnimating];
      }

      [(UIView *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v26 addSubview:v27];
      v44 = [(UIViewController *)v25 _visualStyleOfContainingAlertController];
      [v44 _scaledMarginBelowLastLabelLastBaseline];
      v30 = v29;
      [(UIViewController *)v25 preferredContentSize];
      v32 = v31;
      [(UIView *)v27 frame];
      [(UIViewController *)v25 setPreferredContentSize:v32, v30 + v33];
      v42 = MEMORY[0x1E69977A0];
      v34 = [(UIView *)v27 centerXAnchor];
      v35 = [v26 centerXAnchor];
      [v34 constraintEqualToAnchor:v35 constant:0.0];
      v43 = v25;
      v37 = v36 = v26;
      v50[0] = v37;
      v38 = [(UIView *)v27 topAnchor];
      v39 = [v36 topAnchor];
      v40 = [v38 constraintEqualToAnchor:v39 constant:0.0];
      v50[1] = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
      [v42 activateConstraints:v41];

      v13 = v47;
      v12 = v48;
      v16 = v45;
      v15 = v46;
    }
  }
}

- (void)displayWithTitle:(id)a3 message:(id)a4 progress:(id)a5 buttonTitle:(id)a6 sourceViewController:(id)a7 preDisplayTestBlock:(id)a8 dismissalHandler:(id)a9
{
  v23 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  [(_UIApplicationModalProgressController *)self _setPreDisplayTestBlock:a8];
  if (self->_sourceViewController)
  {
    [(_UIApplicationModalProgressController *)self _setHideTimer:0];
    [(_UIApplicationModalProgressController *)self _callAndClearDismissalHandlerWasDismissedByUser:0];
  }

  else
  {
    if (v18)
    {
      [(_UIApplicationModalProgressController *)self _setSourceViewController:v18];
    }

    else
    {
      v20 = [(_UIApplicationModalProgressController *)self _defaultSourceViewControllerCreatingWindowIfNeeded];
      [(_UIApplicationModalProgressController *)self _setSourceViewController:v20];
    }

    v21 = [UIAlertController alertControllerWithTitle:&stru_1EFB14550 message:&stru_1EFB14550 preferredStyle:1];
    [(_UIApplicationModalProgressController *)self _setAlertController:v21];
  }

  if (!self->_showTimer)
  {
    if (self->_presented)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [(_UIApplicationModalProgressController *)self _setDisplayStartTime:?];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__showTimerAction_ selector:0 userInfo:0 repeats:self->_displayDelaySeconds];
      [(_UIApplicationModalProgressController *)self _setShowTimer:v22];
    }
  }

  [(_UIApplicationModalProgressController *)self reconfigureWithTitle:v23 message:v15 progress:v16 buttonTitle:v17 dismissalHandler:v19];
}

- (id)_defaultSourceViewControllerCreatingWindowIfNeeded
{
  v3 = [(_UIApplicationModalProgressController *)self _createSourceWindow];
  [(_UIApplicationModalProgressController *)self _setWindow:v3];
  v4 = [v3 rootViewController];

  return v4;
}

- (id)_createSourceWindow
{
  v2 = [(_UIApplicationModalProgressController *)self _sourceScene];
  v3 = [_UIApplicationModalProgressWindow alloc];
  v4 = v3;
  if (v2)
  {
    v5 = [(UIWindow *)v3 initWithWindowScene:v2];
  }

  else
  {
    v6 = [objc_opt_self() mainScreen];
    [v6 bounds];
    v5 = [(_UIApplicationModalProgressWindow *)v4 initWithFrame:?];
  }

  v7 = objc_alloc_init(UIViewController);
  v8 = objc_alloc_init(UIView);
  [(UIViewController *)v7 setView:v8];

  [(UIWindow *)v5 setRootViewController:v7];

  return v5;
}

- (id)_sourceScene
{
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  else
  {
    v5 = [UIApp _defaultSceneIfExists];
    v6 = [(UIScene *)UIWindowScene _sceneForFBSScene:v5];

    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v7 = +[UIWindow _applicationKeyWindow];
      v4 = [v7 windowScene];
    }
  }

  return v4;
}

- (void)displayForDownloadingURL:(id)a3 copyToURL:(id)a4 sourceViewController:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v51 = a4;
  v10 = a5;
  v11 = a6;
  v96[0] = 0;
  LOBYTE(a6) = [v9 getPromisedItemResourceValue:v96 forKey:*MEMORY[0x1E695DC10] error:0];
  v12 = v96[0];
  if ((a6 & 1) == 0)
  {
    v13 = [v9 lastPathComponent];

    v12 = v13;
  }

  v95 = 0;
  v14 = *MEMORY[0x1E695DB50];
  v94 = 0;
  v15 = [v9 getPromisedItemResourceValue:&v95 forKey:v14 error:&v94];
  v16 = v95;
  v17 = v94;
  v52 = v17;
  v53 = v16;
  if (v15)
  {
    v18 = [v16 unsignedIntegerValue];
  }

  else
  {
    NSLog(&cfstr_CouldnTGetFile.isa, v9, v17);
    v18 = 0;
  }

  v19 = objc_alloc_init(MEMORY[0x1E696ABF8]);
  v20 = MEMORY[0x1E696AEC0];
  v21 = _UIKitBundle();
  v22 = [v21 localizedStringForKey:@"Downloading %@" value:@"Downloading a Copy of “%@”" table:@"Localizable"];
  v23 = [v20 localizedStringWithFormat:v22, v12];

  v24 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
  v92[0] = 0;
  v92[1] = v92;
  v92[2] = 0x2020000000;
  v93 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__61;
  v90 = __Block_byref_object_dispose__61;
  v91 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7104830;
  v84 = v92;
  v50 = v19;
  v82 = v50;
  v25 = v11;
  v83 = v25;
  v85 = &v86;
  v26 = _Block_copy(aBlock);
  v55 = v23;
  v27 = v23;
  v28 = v24;
  [(_UIApplicationModalProgressController *)self displayWithTitle:v27 message:0 progress:0 buttonTitle:v24 sourceViewController:v10 preDisplayTestBlock:0 dismissalHandler:v26];
  v48 = v25;
  v49 = v10;
  if (v18)
  {
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_2;
    v80[3] = &unk_1E7104858;
    v80[4] = self;
    v29 = [MEMORY[0x1E696AE38] _addSubscriberForFileURL:v9 withPublishingHandler:v80];
    v30 = [MEMORY[0x1E696AAF0] stringFromByteCount:v18 countStyle:0];
    v31 = _UINSLocalizedStringWithDefaultValue(@"%@ of %@ downloaded", @"%@ of %@ downloaded");
    v32 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:self path:"urlProgress.fractionCompleted"];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_4;
    v72[3] = &unk_1E71048A8;
    v79 = v18;
    v33 = v31;
    v73 = v33;
    v34 = v30;
    v74 = v34;
    v75 = self;
    v76 = v55;
    v77 = v28;
    v78 = v26;
    v35 = [v32 addObserverBlock:v72];

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_6;
    v67[3] = &unk_1E71048D0;
    v68 = v35;
    v69 = self;
    v70 = v29;
    v71 = &v86;
    v36 = v29;
    v37 = v35;
    v38 = _Block_copy(v67);
    v39 = v87[5];
    v87[5] = v38;
  }

  v40 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_7;
  block[3] = &unk_1E7104990;
  v57 = v51;
  v58 = v50;
  v65 = v92;
  v66 = &v86;
  v59 = v9;
  v60 = self;
  v61 = v55;
  v62 = v28;
  v63 = v26;
  v64 = v48;
  v41 = v48;
  v42 = v26;
  v43 = v28;
  v44 = v55;
  v45 = v9;
  v46 = v50;
  v47 = v51;
  dispatch_async(v40, block);

  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(v92, 8);
}

@end