@interface UISystemKeyboardDockController
- (id)configuredGlyphWithName:(id)a3;
- (id)imageConfig;
- (void)_dictationDidBeginNotification:(id)a3;
- (void)customDockItemWasTapped:(id)a3 withEvent:(id)a4;
- (void)dealloc;
- (void)dictationItemButtonWasPressed:(id)a3 withEvent:(id)a4 isRunningButton:(BOOL)a5;
- (void)globeItemButtonWasPressed:(id)a3 withEvent:(id)a4;
- (void)keyboardDockView:(id)a3 didPressDockItem:(id)a4 withEvent:(id)a5;
- (void)keyboardItemButtonWasTapped:(id)a3 withEvent:(id)a4;
- (void)loadView;
- (void)setKeyboardDockItem;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateDockItemsVisibility;
- (void)updateDockItemsVisibilityWithCustomDictationAction:(id)a3;
- (void)updateRightButtonItemWithCustomAction:(id)a3;
- (void)viewDidLoad;
@end

@implementation UISystemKeyboardDockController

- (void)loadView
{
  v3 = [UIKeyboardDockView alloc];
  v28 = [(UIKeyboardDockView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIKeyboardDockView *)v28 setDelegate:self];
  v4 = +[_UIKeyboardTextSelectionGestureController sharedInstance];
  v5 = [v4 addLongPressTextSelectionInteractionsToView:v28];

  v6 = [UIKeyboardDockItem alloc];
  v7 = [(UISystemKeyboardDockController *)self configuredGlyphWithName:@"globe"];
  v8 = [(UIKeyboardDockItem *)v6 initWithTitle:@"globe" image:v7 identifier:@"globe"];
  globeDockItem = self->_globeDockItem;
  self->_globeDockItem = v8;

  v10 = [UIKeyboardDockItem alloc];
  v11 = [(UISystemKeyboardDockController *)self configuredGlyphWithName:@"mic"];
  v12 = [(UIKeyboardDockItem *)v10 initWithTitle:@"mic" image:v11 identifier:@"dictation"];
  dictationDockItem = self->_dictationDockItem;
  self->_dictationDockItem = v12;

  v14 = [UIKeyboardDockItem alloc];
  v15 = [(UISystemKeyboardDockController *)self configuredGlyphWithName:@"mic"];
  v16 = [(UIKeyboardDockItem *)v14 initWithTitle:@"mic" image:v15 identifier:@"dictationRunning"];
  dictationRunningDockItem = self->_dictationRunningDockItem;
  self->_dictationRunningDockItem = v16;

  v18 = [UIKeyboardDockItem alloc];
  v19 = [(UISystemKeyboardDockController *)self configuredGlyphWithName:@"keyboard"];
  v20 = [(UIKeyboardDockItem *)v18 initWithTitle:@"keyboard" image:v19 identifier:@"keyboardkeyboard"];
  keyboardDockItem = self->_keyboardDockItem;
  self->_keyboardDockItem = v20;

  v22 = [UIButton buttonWithType:0];
  stopDictationButton = self->_stopDictationButton;
  self->_stopDictationButton = v22;

  v24 = +[UIColor clearColor];
  [(UIView *)self->_stopDictationButton setBackgroundColor:v24];

  [(UIControl *)self->_stopDictationButton addTarget:self action:sel_keyboardItemButtonWasTapped_withEvent_ forControlEvents:0xFFFFFFFFLL];
  [(UIKeyboardDockView *)v28 setLeftDockItem:self->_globeDockItem];
  [(UIKeyboardDockView *)v28 setRightDockItem:self->_dictationDockItem];
  if (+[UIKeyboardImpl showsGlobeAndDictationKeysExternallyForFloatingKeyboard])
  {
    v25 = [UIDotsInputSwitcherView alloc];
    v26 = [(UIView *)v28 _inheritedRenderConfig];
    v27 = [(UIDotsInputSwitcherView *)v25 initWithRenderConfig:v26];
    [(UIKeyboardDockView *)v28 setCenterView:v27];
  }

  [(UIViewController *)self setView:v28];
}

- (id)imageConfig
{
  v2 = +[UIKeyboard activeKeyboard];
  if ([v2 _lightStyleRenderConfig])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (+[UIKeyboardImpl isFloating])
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 21.0;
  }

  v5 = [UITraitCollection traitCollectionWithUserInterfaceStyle:v3];
  v6 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:v4];
  v7 = [v6 configurationWithTraitCollection:v5];

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = UISystemKeyboardDockController;
  [(UIViewController *)&v5 viewDidLoad];
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__dictationDidBeginNotification_ name:@"UIKeyboardDidBeginDictationNotification" object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel_updateDockItemsVisibility name:@"UIKeyboardDictationAvailabilityDidChangeNotification" object:0];
  }
}

- (void)updateDockItemsVisibility
{
  v5 = [(UISystemKeyboardDockController *)self dockView];
  v3 = [v5 rightDockItem];
  v4 = [v3 customAction];
  [(UISystemKeyboardDockController *)self updateDockItemsVisibilityWithCustomDictationAction:v4];
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIKeyboardDidBeginDictationNotification";
  v6[1] = @"UIKeyboardDictationAvailabilityDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = UISystemKeyboardDockController;
  [(UIViewController *)&v5 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = UISystemKeyboardDockController;
  v4 = a3;
  [(UIViewController *)&v7 traitCollectionDidChange:v4];
  v5 = [(UIViewController *)self traitCollection:v7.receiver];
  v6 = [v4 hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v6)
  {
    [(UISystemKeyboardDockController *)self updateDockItemsVisibility];
  }
}

- (void)setKeyboardDockItem
{
  v3 = +[UIDictationController isRunning];
  v4 = +[UIKeyboardInputMode dictationInputMode];
  v5 = [v4 isCurrentDictationLanguageOnDevice];

  v6 = [(UIKeyboardDockItem *)self->_globeDockItem enabled];
  v7 = v3 & v5;
  if (v6)
  {
    v8 = v7 == 0;
    v9 = 3;
    if (!v8)
    {
      v9 = 2;
    }

    v10 = OBJC_IVAR___UISystemKeyboardDockController__globeDockItem[v9];
    goto LABEL_7;
  }

  if (v7)
  {
    v10 = 1016;
LABEL_7:
    v11 = *(&self->super.super.super.isa + v10);
    v12 = [(UISystemKeyboardDockController *)self dockView];
    [v12 setRightDockItem:v11];

    v13 = [(UISystemKeyboardDockController *)self dockView];
    [v13 setCenterDockItem:0];
    goto LABEL_9;
  }

  keyboardDockItem = self->_keyboardDockItem;
  v15 = [(UISystemKeyboardDockController *)self dockView];
  [v15 setCenterDockItem:keyboardDockItem];

  v13 = [(UISystemKeyboardDockController *)self dockView];
  [v13 setRightDockItem:0];
LABEL_9:

  v16 = [(UIViewController *)self view];
  [v16 bounds];
  [(UIButton *)self->_stopDictationButton setFrame:?];

  v17 = [(UIViewController *)self view];
  [v17 insertSubview:self->_stopDictationButton atIndex:0];
}

- (void)updateRightButtonItemWithCustomAction:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (v4)
  {
    v5 = [v4 image];
    v6 = [(UISystemKeyboardDockController *)self imageConfig];
    v7 = [v5 imageByApplyingSymbolConfiguration:v6];

    v8 = [(UISystemKeyboardDockController *)self dockView];
    v9 = [v8 rightDockItem];

    if (!v9)
    {
      v10 = [UIKeyboardDockItem alloc];
      v11 = [v19 title];
      v12 = [v19 identifier];
      if (v12)
      {
        v9 = [(UIKeyboardDockItem *)v10 initWithTitle:v11 image:v7 identifier:v12];
      }

      else
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = [v19 title];
        v16 = [v14 stringWithFormat:@"CustomAction_%@", v15];
        v9 = [(UIKeyboardDockItem *)v10 initWithTitle:v11 image:v7 identifier:v16];
      }

      v17 = [(UISystemKeyboardDockController *)self dockView];
      [v17 setRightDockItem:v9];
    }

    v18 = [v19 title];
    [(UIKeyboardDockItem *)v9 setTitle:v18 image:v7];

    [(UIKeyboardDockItem *)v9 setCustomAction:v19];
  }

  else
  {
    dictationDockItem = self->_dictationDockItem;
    v7 = [(UISystemKeyboardDockController *)self dockView];
    [v7 setRightDockItem:dictationDockItem];
  }
}

- (void)_dictationDidBeginNotification:(id)a3
{
  if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess", a3) && +[UIKeyboard usesInputSystemUI])
  {
    return;
  }

  v4 = +[UIKeyboardInputMode dictationInputMode];
  v5 = [v4 isCurrentDictationLanguageOnDevice];

  if (v5)
  {
    return;
  }

  v6 = +[UIKeyboardImpl activeInstance];
  if ([v6 isUsingDictationLayout])
  {

    goto LABEL_7;
  }

  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 isMinimized];

  if (v8)
  {
LABEL_7:
    if (!self->_dictationHasUsedServerManualEndpointing)
    {
      [(UISystemKeyboardDockController *)self setKeyboardDockItem];
      keyboardDockItem = self->_keyboardDockItem;

      [(UIKeyboardDockItem *)keyboardDockItem setEnabled:1];
    }

    return;
  }

  v10 = +[UIDictationController sharedInstance];
  [v10 cancelDictation];

  v11 = +[UIKeyboardImpl activeInstance];
  [v11 dismissDictationPopover];

  stopDictationButton = self->_stopDictationButton;

  [(UIView *)stopDictationButton removeFromSuperview];
}

- (void)dictationItemButtonWasPressed:(id)a3 withEvent:(id)a4 isRunningButton:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 touchesForView:v8];
    v12 = [v11 anyObject];

    if (!+[UIDictationController isRunning](UIDictationController, "isRunning") || [v12 phase] || a5)
    {
      v56 = 0;
      v57 = &v56;
      v58 = 0x3010000000;
      v60 = 0;
      v61 = 0;
      v59 = "";
      [v12 locationInView:v8];
      v60 = v19;
      v61 = v20;
      v21 = [v8 pointInsideTapActionRegion:{v57[2].x, v57[2].y}];
      if (![v12 phase] && !self->_dictationItemButtonTouchDownTime)
      {
        v22 = [MEMORY[0x1E695DF00] date];
        dictationItemButtonTouchDownTime = self->_dictationItemButtonTouchDownTime;
        self->_dictationItemButtonTouchDownTime = v22;

        self->_dictationItemButtonTouchDownLocationInView = v57[2];
      }

      [v8 bounds];
      MidX = CGRectGetMidX(v63);
      [v8 bounds];
      [v8 convertPoint:0 toView:{MidX, CGRectGetMinY(v64)}];
      v26 = v25;
      v28 = v27;
      v29 = +[UIInputSwitcherView sharedInstance];
      if (self->_dictationHasUsedServerManualEndpointing)
      {
        v30 = 0;
      }

      else
      {
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __90__UISystemKeyboardDockController_dictationItemButtonWasPressed_withEvent_isRunningButton___block_invoke;
        v50[3] = &unk_1E7117A98;
        v50[4] = self;
        v51 = v12;
        v54 = a5;
        v52 = v8;
        v53 = &v56;
        v55 = v21;
        v30 = [v29 buttonPressed:v52 withEvent:v10 location:v21 isLocationInsideViewHitArea:1 isForDictation:v50 tapAction:{v26, v28}];
      }

      v31 = [v12 phase];
      if ((v31 - 3) < 2)
      {
        self->_dictationUsingServerManualEndpointing = 0;
        [v29 hide];
      }

      else if (v31 == 1)
      {
        if ([v29 isVisible])
        {
          [v29 bounds];
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v41 = v40;
          [v12 locationInView:v29];
          v62.x = v42;
          v62.y = v43;
          v65.origin.x = v35;
          v65.origin.y = v37;
          v65.size.width = v39;
          v65.size.height = v41;
          if (CGRectContainsPoint(v65, v62))
          {
            self->_dictationUsingServerManualEndpointing = 0;
          }
        }
      }

      else if (!v31 && !a5 && +[UIDictationController usingServerManualEndpointingThreshold])
      {
        self->_dictationUsingServerManualEndpointing = 1;
        self->_dictationHasUsedServerManualEndpointing = 0;
        +[UIDictationController serverManualEndpointingThreshold];
        v33 = dispatch_time(0, (v32 * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __90__UISystemKeyboardDockController_dictationItemButtonWasPressed_withEvent_isRunningButton___block_invoke_71;
        block[3] = &unk_1E70FF800;
        v45 = v30;
        v46 = self;
        v49 = v21;
        v47 = v12;
        v48 = v29;
        dispatch_after(v33, MEMORY[0x1E69E96A0], block);
      }

      _Block_object_dispose(&v56, 8);
    }

    else
    {
      dictationDockItem = self->_dictationDockItem;
      v14 = [(UISystemKeyboardDockController *)self dockView];
      [v14 setRightDockItem:dictationDockItem];

      v15 = +[UIDictationController specificReasonTypeMicButtonOnKeyboard];
      v16 = +[UIDictationController sharedInstance];
      [v16 setReasonType:v15];

      v17 = +[UIDictationController sharedInstance];
      [v17 stopDictation];

      v18 = +[UIDictationController sharedInstance];
      [v18 cancelDictation];
    }
  }
}

void __90__UISystemKeyboardDockController_dictationItemButtonWasPressed_withEvent_isRunningButton___block_invoke(uint64_t a1)
{
  v2 = +[UIDictationController specificReasonTypeMicButtonOnKeyboard];
  v3 = +[UIDictationController sharedInstance];
  [v3 setReasonType:v2];

  [*(*(a1 + 32) + 1040) timeIntervalSinceNow];
  v5 = -v4;
  v6 = [UIKBTouchState touchStateForTouch:*(a1 + 40)];
  if (*(a1 + 64) == 1)
  {
    v7 = *(a1 + 32);
    v8 = v7[126];
    v9 = [v7 dockView];
    [v9 setRightDockItem:v8];

    v10 = +[UIDictationController activeInstance];
    [v10 stopDictation];

    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v12 = [v11 _textInputSessionAnalytics];
    [*(a1 + 48) frame];
    v14 = v13;
    v16 = v15;
    v17 = (*(a1 + 32) + 1048);
    v18 = *(*(a1 + 56) + 8);
    v19 = [v6 inputSource];
    v20 = *v17;
    v21 = v17[1];
    v22 = *(v18 + 32);
    v23 = *(v18 + 40);
    v24 = 3;
  }

  else if (*(a1 + 65) == 1)
  {
    if (+[UIDictationController _applicationIsActive])
    {
      v25 = +[UIDictationController sharedInstance];
      [v25 switchToDictationInputModeWithTouch:0];
    }

    else
    {
      v30 = _UIDictationControllerLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_DEFAULT, "Tap mic button will delay switch to dictation", v38, 2u);
      }

      v31 = dispatch_time(0, 200000000);
      dispatch_after(v31, MEMORY[0x1E69E96A0], &__block_literal_global_394);
    }

    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v12 = [v11 _textInputSessionAnalytics];
    [*(a1 + 48) frame];
    v14 = v32;
    v16 = v33;
    v34 = (*(a1 + 32) + 1048);
    v35 = *(*(a1 + 56) + 8);
    v19 = [v6 inputSource];
    v20 = *v34;
    v21 = v34[1];
    v22 = *(v35 + 32);
    v23 = *(v35 + 40);
    v24 = 1;
  }

  else
  {
    _logRejectedTapAction();
    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v12 = [v11 _textInputSessionAnalytics];
    [*(a1 + 48) size];
    v14 = v26;
    v16 = v27;
    v28 = (*(a1 + 32) + 1048);
    v29 = *(*(a1 + 56) + 8);
    v19 = [v6 inputSource];
    v20 = *v28;
    v21 = v28[1];
    v22 = *(v29 + 32);
    v23 = *(v29 + 40);
    v24 = 2;
  }

  [v12 didKeyboardDockItemButtonPress:v24 buttonType:1 buttonSize:v19 touchDown:v14 touchUp:v16 touchDuration:v20 inputSource:{v21, v22, v23, v5}];

  v36 = *(a1 + 32);
  v37 = *(v36 + 1040);
  *(v36 + 1040) = 0;
}

void __90__UISystemKeyboardDockController_dictationItemButtonWasPressed_withEvent_isRunningButton___block_invoke_69()
{
  v0 = _UIDictationControllerLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_DEFAULT, "Tap mic button will switch to dictation", v2, 2u);
  }

  v1 = +[UIDictationController sharedInstance];
  [v1 switchToDictationInputModeWithTouch:0];
}

uint64_t __90__UISystemKeyboardDockController_dictationItemButtonWasPressed_withEvent_isRunningButton___block_invoke_71(uint64_t a1)
{
  result = [*(a1 + 32) gestureConflictsWithTypingWindow];
  v3 = *(a1 + 40);
  if (*(v3 + 993) == 1 && (result & 1) == 0 && *(a1 + 64) == 1)
  {
    *(v3 + 992) = 1;
    v4 = +[UIDictationController sharedInstance];
    [v4 setReasonType:7];

    v5 = +[UIDictationController sharedInstance];
    [v5 switchToDictationInputModeWithTouch:*(a1 + 48)];

    v6 = *(a1 + 56);

    return [v6 hide];
  }

  return result;
}

- (void)globeItemButtonWasPressed:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 touchesForView:v6];
  v9 = [v8 anyObject];

  [v6 bounds];
  MidX = CGRectGetMidX(v37);
  [v6 bounds];
  [v6 convertPoint:0 toView:{MidX, CGRectGetMinY(v38)}];
  v12 = v11;
  v14 = v13;
  [v9 locationInView:v6];
  v16 = v15;
  v18 = v17;
  v19 = [v6 pointInsideTapActionRegion:?];
  if (![v9 phase] && !self->_globeItemButtonTouchDownTime)
  {
    v20 = [MEMORY[0x1E695DF00] date];
    globeItemButtonTouchDownTime = self->_globeItemButtonTouchDownTime;
    self->_globeItemButtonTouchDownTime = v20;

    self->_globeItemButtonTouchDownLocationInView.x = v16;
    self->_globeItemButtonTouchDownLocationInView.y = v18;
  }

  v22 = +[UIKeyboardInputMode dictationInputMode];
  v23 = +[UIKeyboardInputModeController sharedInputModeController];
  v24 = [v23 currentInputMode];
  v25 = [v22 isEqual:v24];

  if (v25)
  {
    v26 = +[UIDictationView sharedInstance];
    [v26 globeButtonPressed:v6 withEvent:v7 location:{v12, v14}];

    v27 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v28 = [v27 _textInputSessionAnalytics];
    [v28 didInsertKeyPressWithInputSource:1];
  }

  else
  {
    v29 = +[UIInputSwitcherView sharedInstance];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__UISystemKeyboardDockController_globeItemButtonWasPressed_withEvent___block_invoke;
    v31[3] = &unk_1E70F8E18;
    v31[4] = self;
    v32 = v9;
    v36 = v19;
    v33 = v6;
    v34 = v16;
    v35 = v18;
    v30 = [v29 buttonPressed:v33 withEvent:v7 location:v19 isLocationInsideViewHitArea:0 isForDictation:v31 tapAction:{v12, v14}];
  }
}

void __70__UISystemKeyboardDockController_globeItemButtonWasPressed_withEvent___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1064) timeIntervalSinceNow];
  v3 = -v2;
  v4 = [UIKBTouchState touchStateForTouch:*(a1 + 40)];
  if (*(a1 + 72) == 1)
  {
    v5 = +[UIKeyboardImpl activeInstance];
    if (qword_1ED49A770 != -1)
    {
      dispatch_once(&qword_1ED49A770, &__block_literal_global_75_1);
    }

    v6 = [v5 taskQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__UISystemKeyboardDockController_globeItemButtonWasPressed_withEvent___block_invoke_4;
    v16[3] = &unk_1E7117AC0;
    v17 = v5;
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    v21 = *(a1 + 56);
    v22 = v3;
    v20 = v4;
    v9 = _MergedGlobals_5_17;
    v10 = v5;
    [v6 performSingleTask:v16 breadcrumb:v9];
  }

  else
  {
    _logRejectedTapAction();
    v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v11 = [v10 _textInputSessionAnalytics];
    [*(a1 + 48) frame];
    [v11 didKeyboardDockItemButtonPress:2 buttonType:2 buttonSize:objc_msgSend(v4 touchDown:"inputSource") touchUp:v12 touchDuration:v13 inputSource:{*(*(a1 + 32) + 1072), *(*(a1 + 32) + 1080), *(a1 + 56), *(a1 + 64), v3}];
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 1064);
  *(v14 + 1064) = 0;
}

void __70__UISystemKeyboardDockController_globeItemButtonWasPressed_withEvent___block_invoke_2()
{
  v0 = [&__block_literal_global_78_0 copy];
  v1 = _MergedGlobals_5_17;
  _MergedGlobals_5_17 = v0;
}

void __70__UISystemKeyboardDockController_globeItemButtonWasPressed_withEvent___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setInputModeToNextInPreferredListWithExecutionContext:a2];
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v6 _textInputSessionAnalytics];
  [*(a1 + 40) frame];
  [v3 didKeyboardDockItemButtonPress:1 buttonType:2 buttonSize:objc_msgSend(*(a1 + 56) touchDown:"inputSource") touchUp:v4 touchDuration:v5 inputSource:{*(*(a1 + 48) + 1072), *(*(a1 + 48) + 1080), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

- (void)keyboardItemButtonWasTapped:(id)a3 withEvent:(id)a4
{
  v5 = [a4 touchesForView:a3];
  v10 = [v5 anyObject];

  if ([v10 phase] == 3)
  {
    if (+[UIDictationController isRunning])
    {
      v6 = +[UIDictationController sharedInstance];
      [v6 setReasonType:15];

      v7 = +[UIDictationController sharedInstance];
      [v7 stopDictation];

      v8 = +[UIKeyboardImpl activeInstance];
      [v8 dismissDictationPopover];
    }

    v9 = +[UIDictationView activeInstance];
    [v9 returnToKeyboard];

    [(UIKeyboardDockItem *)self->_keyboardDockItem setEnabled:0];
  }
}

- (void)customDockItemWasTapped:(id)a3 withEvent:(id)a4
{
  v22 = a3;
  v5 = a4;
  v6 = [v22 customAction];

  if (v6)
  {
    v7 = [v22 view];
    v8 = [v5 touchesForView:v7];
    v9 = [v8 anyObject];

    v10 = [v22 view];
    [v9 locationInView:v10];
    v12 = v11;
    v14 = v13;

    v15 = [v22 view];
    v16 = [v15 pointInsideTapActionRegion:{v12, v14}];

    if ([v9 phase] == 3)
    {
      v17 = [v22 lastTouchUp];
      v18 = ([v9 isEqual:v17] ^ 1) & v16;

      if (v18 == 1)
      {
        [v22 setLastTouchUp:v9];
        v19 = [v22 customAction];
        v20 = [v22 customAction];
        v21 = [v20 sender];
        [v19 performWithSender:v21 target:0];
      }
    }
  }
}

- (void)keyboardDockView:(id)a3 didPressDockItem:(id)a4 withEvent:(id)a5
{
  v17 = a4;
  v7 = a5;
  v8 = [(UIKeyboardDockItem *)v17 view];
  v9 = [v7 touchesForView:v8];
  v10 = [v9 anyObject];

  if (![v10 phase])
  {
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = [v11 continuousPathUnderway];

    if (v12)
    {
      self->_isSuppressingDockItemTouch = 1;
    }
  }

  if (!self->_isSuppressingDockItemTouch)
  {
    v13 = [(UIKeyboardDockItem *)v17 customAction];

    if (v13)
    {
      [(UISystemKeyboardDockController *)self customDockItemWasTapped:v17 withEvent:v7];
      goto LABEL_15;
    }

    if (self->_dictationDockItem == v17 || self->_dictationRunningDockItem == v17)
    {
      v16 = [(UIKeyboardDockItem *)v17 view];
      [(UISystemKeyboardDockController *)self dictationItemButtonWasPressed:v16 withEvent:v7 isRunningButton:self->_dictationRunningDockItem == v17];
      goto LABEL_14;
    }

    if (self->_keyboardDockItem == v17)
    {
      v16 = [(UIKeyboardDockItem *)v17 view];
      [(UISystemKeyboardDockController *)self keyboardItemButtonWasTapped:v16 withEvent:v7];
      goto LABEL_14;
    }

    globeDockItem = self->_globeDockItem;
    if (globeDockItem == v17)
    {
      v15 = [(UIKeyboardDockItem *)globeDockItem customAction];

      if (!v15)
      {
        v16 = [(UIKeyboardDockItem *)v17 view];
        [(UISystemKeyboardDockController *)self globeItemButtonWasPressed:v16 withEvent:v7];
LABEL_14:
      }
    }
  }

LABEL_15:
  if ([v10 phase] == 3 || objc_msgSend(v10, "phase") == 4)
  {
    self->_isSuppressingDockItemTouch = 0;
  }
}

- (void)updateDockItemsVisibilityWithCustomDictationAction:(id)a3
{
  v59 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 isCurrentEditResponderInEditingMode];

  if (v5)
  {
    v6 = [(UIViewController *)self view];
    v7 = [v6 _inheritedRenderConfig];
    v8 = [v7 animatedBackground];

    v9 = [(UIViewController *)self view];
    v10 = [v9 layer];
    [v10 setAllowsGroupOpacity:v8 ^ 1u];

    v11 = [(UIViewController *)self view];
    v12 = [v11 layer];
    [v12 setAllowsGroupBlending:v8 ^ 1u];

    v13 = @"globe";
    v14 = +[UIKeyboardImpl activeInstance];
    if ([v14 globeKeyDisplaysAsEmojiKey])
    {
      v15 = +[UIKeyboardImpl activeInstance];
      v16 = [v15 showsDedicatedEmojiKeyAlongsideGlobeButton] ^ 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = +[UIKeyboardInputModeController sharedInputModeController];
    v18 = [v17 lastInputModeSwitchTriggeredByASCIIToggle];

    if (v16)
    {
      v19 = UIKeyboardEmojiIconImageName;
    }

    else
    {
      if (!v18)
      {
        v31 = +[UIKeyboardImpl activeInstance];
        v32 = [v31 internationalKeyDisplayStringOnEmojiKeyboard];

        v33 = [(__CFString *)v32 length];
        v21 = v33 != 0;
        if (v33)
        {
          v20 = v32;
        }

        else
        {
          v20 = v13;
        }

        if (v32 == @"")
        {
          v54 = @"hand.draw";

          v13 = v32;
          v20 = v54;
        }

        else
        {
          v13 = v32;
        }

LABEL_10:

        v22 = [(UISystemKeyboardDockController *)self dockView];
        v23 = [v22 leftDockItem];
        v24 = [(UISystemKeyboardDockController *)self configuredGlyphWithName:v20];
        [v23 setTitle:v20 image:v24];

        v25 = +[UIKBAnalyticsDispatcher sharedInstance];
        [v25 setGlomojiTitle:v20];

        v26 = +[UIKeyboardImpl activeInstance];
        v27 = [v26 isUsingDictationLayout];

        if (v59)
        {
          [(UISystemKeyboardDockController *)self updateRightButtonItemWithCustomAction:?];
LABEL_38:

          goto LABEL_39;
        }

        if (v27)
        {
          v28 = +[UIKeyboardInputModeController sharedInputModeController];
          v29 = [v28 enabledDictationLanguages];
          v30 = [v29 count] > 1;

          [(UIKeyboardDockItem *)self->_globeDockItem setEnabled:v30];
          [(UISystemKeyboardDockController *)self setKeyboardDockItem];
          [(UIKeyboardDockItem *)self->_keyboardDockItem setEnabled:1];
          [(UIKeyboardDockItem *)self->_dictationDockItem setActive:1];
          goto LABEL_38;
        }

        v34 = +[UIKeyboardImpl activeInstance];
        v35 = [v34 shouldShowInternationalKey];

        [(UIKeyboardDockItem *)self->_globeDockItem setEnabled:v35];
        LODWORD(v35) = +[UIDictationController isRunning];
        v36 = +[UIKeyboardInputMode dictationInputMode];
        v37 = [v36 isCurrentDictationLanguageOnDevice];

        if (v35)
        {
          v38 = 3;
          if (v37)
          {
            v38 = 2;
          }

          v39 = *(&self->super.super.super.isa + OBJC_IVAR___UISystemKeyboardDockController__globeDockItem[v38]);
          v40 = [(UISystemKeyboardDockController *)self dockView];
          [(__CFString *)v40 setRightDockItem:v39];
LABEL_28:

          v48 = +[UIKeyboardInputModeController sharedInputModeController];
          v49 = [v48 currentInputMode];
          if ([v49 isExtensionInputMode])
          {
            v50 = +[UIKeyboardInputModeController sharedInputModeController];
            v51 = [v50 currentInputMode];
            v52 = [v51 extensionInputModeHasDictation];

            if (v52)
            {
              v53 = 0;
LABEL_37:
              [(UIKeyboardDockItem *)self->_dictationDockItem setEnabled:v53];
              [(UIKeyboardDockItem *)self->_dictationDockItem setActive:v53 & +[UIDictationController dictationIsFunctional]];
              v58 = [(UISystemKeyboardDockController *)self dockView];
              [v58 setCenterDockItem:0];

              [(UIView *)self->_stopDictationButton removeFromSuperview];
              goto LABEL_38;
            }
          }

          else
          {
          }

          v55 = +[UIKeyboardImpl activeInstance];
          if ([v55 shouldShowDictationKey])
          {
            v56 = +[UIKeyboardInputModeController sharedInputModeController];
            v57 = [v56 enabledDictationLanguages];
            v53 = [v57 count] != 0;
          }

          else
          {
            v53 = 0;
          }

          goto LABEL_37;
        }

        v40 = @"mic";
        v41 = +[UIKeyboard activeKeyboard];
        if (([v41 _lightStyleRenderConfig] & 1) == 0)
        {

          if ((v16 | v21) != 1)
          {
LABEL_27:
            dictationDockItem = self->_dictationDockItem;
            v43 = [(UISystemKeyboardDockController *)self configuredGlyphWithName:v40];
            [(UIKeyboardDockItem *)dictationDockItem setTitle:v40 image:v43];

            dictationRunningDockItem = self->_dictationRunningDockItem;
            v45 = [(UISystemKeyboardDockController *)self configuredGlyphWithName:v40];
            [(UIKeyboardDockItem *)dictationRunningDockItem setTitle:v40 image:v45];

            v46 = self->_dictationDockItem;
            v47 = [(UISystemKeyboardDockController *)self dockView];
            [v47 setRightDockItem:v46];

            goto LABEL_28;
          }

          v41 = v40;
          v40 = @"mic.fill";
        }

        goto LABEL_27;
      }

      v19 = UIKeyboardGlobeWithBackChevronIconImageName;
    }

    v20 = *v19;
    v21 = 0;
    goto LABEL_10;
  }

LABEL_39:
}

- (id)configuredGlyphWithName:(id)a3
{
  v4 = a3;
  if (!self->_priorityGlyphBundle)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/SFSymbols.framework/CoreGlyphsPriority.bundle"];
    priorityGlyphBundle = self->_priorityGlyphBundle;
    self->_priorityGlyphBundle = v5;
  }

  v7 = [(UISystemKeyboardDockController *)self imageConfig];
  v8 = [UIImage imageNamed:v4 inBundle:self->_priorityGlyphBundle withConfiguration:v7];
  if (!v8)
  {
    v8 = [UIImage _systemImageNamed:v4 withConfiguration:v7];
  }

  return v8;
}

@end