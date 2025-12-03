@interface UISystemKeyboardDockController
- (id)configuredGlyphWithName:(id)name;
- (id)imageConfig;
- (void)_dictationDidBeginNotification:(id)notification;
- (void)customDockItemWasTapped:(id)tapped withEvent:(id)event;
- (void)dealloc;
- (void)dictationItemButtonWasPressed:(id)pressed withEvent:(id)event isRunningButton:(BOOL)button;
- (void)globeItemButtonWasPressed:(id)pressed withEvent:(id)event;
- (void)keyboardDockView:(id)view didPressDockItem:(id)item withEvent:(id)event;
- (void)keyboardItemButtonWasTapped:(id)tapped withEvent:(id)event;
- (void)loadView;
- (void)setKeyboardDockItem;
- (void)traitCollectionDidChange:(id)change;
- (void)updateDockItemsVisibility;
- (void)updateDockItemsVisibilityWithCustomDictationAction:(id)action;
- (void)updateRightButtonItemWithCustomAction:(id)action;
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
    _inheritedRenderConfig = [(UIView *)v28 _inheritedRenderConfig];
    v27 = [(UIDotsInputSwitcherView *)v25 initWithRenderConfig:_inheritedRenderConfig];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__dictationDidBeginNotification_ name:@"UIKeyboardDidBeginDictationNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_updateDockItemsVisibility name:@"UIKeyboardDictationAvailabilityDidChangeNotification" object:0];
  }
}

- (void)updateDockItemsVisibility
{
  dockView = [(UISystemKeyboardDockController *)self dockView];
  rightDockItem = [dockView rightDockItem];
  customAction = [rightDockItem customAction];
  [(UISystemKeyboardDockController *)self updateDockItemsVisibilityWithCustomDictationAction:customAction];
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIKeyboardDidBeginDictationNotification";
  v6[1] = @"UIKeyboardDictationAvailabilityDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = UISystemKeyboardDockController;
  [(UIViewController *)&v5 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = UISystemKeyboardDockController;
  changeCopy = change;
  [(UIViewController *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(UIViewController *)self traitCollection:v7.receiver];
  v6 = [changeCopy hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v6)
  {
    [(UISystemKeyboardDockController *)self updateDockItemsVisibility];
  }
}

- (void)setKeyboardDockItem
{
  v3 = +[UIDictationController isRunning];
  v4 = +[UIKeyboardInputMode dictationInputMode];
  isCurrentDictationLanguageOnDevice = [v4 isCurrentDictationLanguageOnDevice];

  enabled = [(UIKeyboardDockItem *)self->_globeDockItem enabled];
  v7 = v3 & isCurrentDictationLanguageOnDevice;
  if (enabled)
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
    dockView = [(UISystemKeyboardDockController *)self dockView];
    [dockView setRightDockItem:v11];

    dockView2 = [(UISystemKeyboardDockController *)self dockView];
    [dockView2 setCenterDockItem:0];
    goto LABEL_9;
  }

  keyboardDockItem = self->_keyboardDockItem;
  dockView3 = [(UISystemKeyboardDockController *)self dockView];
  [dockView3 setCenterDockItem:keyboardDockItem];

  dockView2 = [(UISystemKeyboardDockController *)self dockView];
  [dockView2 setRightDockItem:0];
LABEL_9:

  view = [(UIViewController *)self view];
  [view bounds];
  [(UIButton *)self->_stopDictationButton setFrame:?];

  view2 = [(UIViewController *)self view];
  [view2 insertSubview:self->_stopDictationButton atIndex:0];
}

- (void)updateRightButtonItemWithCustomAction:(id)action
{
  actionCopy = action;
  v19 = actionCopy;
  if (actionCopy)
  {
    image = [actionCopy image];
    imageConfig = [(UISystemKeyboardDockController *)self imageConfig];
    dockView3 = [image imageByApplyingSymbolConfiguration:imageConfig];

    dockView = [(UISystemKeyboardDockController *)self dockView];
    rightDockItem = [dockView rightDockItem];

    if (!rightDockItem)
    {
      v10 = [UIKeyboardDockItem alloc];
      title = [v19 title];
      identifier = [v19 identifier];
      if (identifier)
      {
        rightDockItem = [(UIKeyboardDockItem *)v10 initWithTitle:title image:dockView3 identifier:identifier];
      }

      else
      {
        v14 = MEMORY[0x1E696AEC0];
        title2 = [v19 title];
        v16 = [v14 stringWithFormat:@"CustomAction_%@", title2];
        rightDockItem = [(UIKeyboardDockItem *)v10 initWithTitle:title image:dockView3 identifier:v16];
      }

      dockView2 = [(UISystemKeyboardDockController *)self dockView];
      [dockView2 setRightDockItem:rightDockItem];
    }

    title3 = [v19 title];
    [(UIKeyboardDockItem *)rightDockItem setTitle:title3 image:dockView3];

    [(UIKeyboardDockItem *)rightDockItem setCustomAction:v19];
  }

  else
  {
    dictationDockItem = self->_dictationDockItem;
    dockView3 = [(UISystemKeyboardDockController *)self dockView];
    [dockView3 setRightDockItem:dictationDockItem];
  }
}

- (void)_dictationDidBeginNotification:(id)notification
{
  if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess", notification) && +[UIKeyboard usesInputSystemUI])
  {
    return;
  }

  v4 = +[UIKeyboardInputMode dictationInputMode];
  isCurrentDictationLanguageOnDevice = [v4 isCurrentDictationLanguageOnDevice];

  if (isCurrentDictationLanguageOnDevice)
  {
    return;
  }

  v6 = +[UIKeyboardImpl activeInstance];
  if ([v6 isUsingDictationLayout])
  {

    goto LABEL_7;
  }

  v7 = +[UIKeyboardImpl activeInstance];
  isMinimized = [v7 isMinimized];

  if (isMinimized)
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

- (void)dictationItemButtonWasPressed:(id)pressed withEvent:(id)event isRunningButton:(BOOL)button
{
  pressedCopy = pressed;
  eventCopy = event;
  v10 = eventCopy;
  if (eventCopy)
  {
    v11 = [eventCopy touchesForView:pressedCopy];
    anyObject = [v11 anyObject];

    if (!+[UIDictationController isRunning](UIDictationController, "isRunning") || [anyObject phase] || button)
    {
      v56 = 0;
      v57 = &v56;
      v58 = 0x3010000000;
      v60 = 0;
      v61 = 0;
      v59 = "";
      [anyObject locationInView:pressedCopy];
      v60 = v19;
      v61 = v20;
      v21 = [pressedCopy pointInsideTapActionRegion:{v57[2].x, v57[2].y}];
      if (![anyObject phase] && !self->_dictationItemButtonTouchDownTime)
      {
        date = [MEMORY[0x1E695DF00] date];
        dictationItemButtonTouchDownTime = self->_dictationItemButtonTouchDownTime;
        self->_dictationItemButtonTouchDownTime = date;

        self->_dictationItemButtonTouchDownLocationInView = v57[2];
      }

      [pressedCopy bounds];
      MidX = CGRectGetMidX(v63);
      [pressedCopy bounds];
      [pressedCopy convertPoint:0 toView:{MidX, CGRectGetMinY(v64)}];
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
        v51 = anyObject;
        buttonCopy = button;
        v52 = pressedCopy;
        v53 = &v56;
        v55 = v21;
        v30 = [v29 buttonPressed:v52 withEvent:v10 location:v21 isLocationInsideViewHitArea:1 isForDictation:v50 tapAction:{v26, v28}];
      }

      phase = [anyObject phase];
      if ((phase - 3) < 2)
      {
        self->_dictationUsingServerManualEndpointing = 0;
        [v29 hide];
      }

      else if (phase == 1)
      {
        if ([v29 isVisible])
        {
          [v29 bounds];
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v41 = v40;
          [anyObject locationInView:v29];
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

      else if (!phase && !button && +[UIDictationController usingServerManualEndpointingThreshold])
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
        selfCopy = self;
        v49 = v21;
        v47 = anyObject;
        v48 = v29;
        dispatch_after(v33, MEMORY[0x1E69E96A0], block);
      }

      _Block_object_dispose(&v56, 8);
    }

    else
    {
      dictationDockItem = self->_dictationDockItem;
      dockView = [(UISystemKeyboardDockController *)self dockView];
      [dockView setRightDockItem:dictationDockItem];

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

- (void)globeItemButtonWasPressed:(id)pressed withEvent:(id)event
{
  pressedCopy = pressed;
  eventCopy = event;
  v8 = [eventCopy touchesForView:pressedCopy];
  anyObject = [v8 anyObject];

  [pressedCopy bounds];
  MidX = CGRectGetMidX(v37);
  [pressedCopy bounds];
  [pressedCopy convertPoint:0 toView:{MidX, CGRectGetMinY(v38)}];
  v12 = v11;
  v14 = v13;
  [anyObject locationInView:pressedCopy];
  v16 = v15;
  v18 = v17;
  v19 = [pressedCopy pointInsideTapActionRegion:?];
  if (![anyObject phase] && !self->_globeItemButtonTouchDownTime)
  {
    date = [MEMORY[0x1E695DF00] date];
    globeItemButtonTouchDownTime = self->_globeItemButtonTouchDownTime;
    self->_globeItemButtonTouchDownTime = date;

    self->_globeItemButtonTouchDownLocationInView.x = v16;
    self->_globeItemButtonTouchDownLocationInView.y = v18;
  }

  v22 = +[UIKeyboardInputMode dictationInputMode];
  v23 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v23 currentInputMode];
  v25 = [v22 isEqual:currentInputMode];

  if (v25)
  {
    v26 = +[UIDictationView sharedInstance];
    [v26 globeButtonPressed:pressedCopy withEvent:eventCopy location:{v12, v14}];

    v27 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    _textInputSessionAnalytics = [v27 _textInputSessionAnalytics];
    [_textInputSessionAnalytics didInsertKeyPressWithInputSource:1];
  }

  else
  {
    v29 = +[UIInputSwitcherView sharedInstance];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__UISystemKeyboardDockController_globeItemButtonWasPressed_withEvent___block_invoke;
    v31[3] = &unk_1E70F8E18;
    v31[4] = self;
    v32 = anyObject;
    v36 = v19;
    v33 = pressedCopy;
    v34 = v16;
    v35 = v18;
    v30 = [v29 buttonPressed:v33 withEvent:eventCopy location:v19 isLocationInsideViewHitArea:0 isForDictation:v31 tapAction:{v12, v14}];
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

- (void)keyboardItemButtonWasTapped:(id)tapped withEvent:(id)event
{
  v5 = [event touchesForView:tapped];
  anyObject = [v5 anyObject];

  if ([anyObject phase] == 3)
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

- (void)customDockItemWasTapped:(id)tapped withEvent:(id)event
{
  tappedCopy = tapped;
  eventCopy = event;
  customAction = [tappedCopy customAction];

  if (customAction)
  {
    view = [tappedCopy view];
    v8 = [eventCopy touchesForView:view];
    anyObject = [v8 anyObject];

    view2 = [tappedCopy view];
    [anyObject locationInView:view2];
    v12 = v11;
    v14 = v13;

    view3 = [tappedCopy view];
    v16 = [view3 pointInsideTapActionRegion:{v12, v14}];

    if ([anyObject phase] == 3)
    {
      lastTouchUp = [tappedCopy lastTouchUp];
      v18 = ([anyObject isEqual:lastTouchUp] ^ 1) & v16;

      if (v18 == 1)
      {
        [tappedCopy setLastTouchUp:anyObject];
        customAction2 = [tappedCopy customAction];
        customAction3 = [tappedCopy customAction];
        sender = [customAction3 sender];
        [customAction2 performWithSender:sender target:0];
      }
    }
  }
}

- (void)keyboardDockView:(id)view didPressDockItem:(id)item withEvent:(id)event
{
  itemCopy = item;
  eventCopy = event;
  view = [(UIKeyboardDockItem *)itemCopy view];
  v9 = [eventCopy touchesForView:view];
  anyObject = [v9 anyObject];

  if (![anyObject phase])
  {
    v11 = +[UIKeyboardImpl activeInstance];
    continuousPathUnderway = [v11 continuousPathUnderway];

    if (continuousPathUnderway)
    {
      self->_isSuppressingDockItemTouch = 1;
    }
  }

  if (!self->_isSuppressingDockItemTouch)
  {
    customAction = [(UIKeyboardDockItem *)itemCopy customAction];

    if (customAction)
    {
      [(UISystemKeyboardDockController *)self customDockItemWasTapped:itemCopy withEvent:eventCopy];
      goto LABEL_15;
    }

    if (self->_dictationDockItem == itemCopy || self->_dictationRunningDockItem == itemCopy)
    {
      view2 = [(UIKeyboardDockItem *)itemCopy view];
      [(UISystemKeyboardDockController *)self dictationItemButtonWasPressed:view2 withEvent:eventCopy isRunningButton:self->_dictationRunningDockItem == itemCopy];
      goto LABEL_14;
    }

    if (self->_keyboardDockItem == itemCopy)
    {
      view2 = [(UIKeyboardDockItem *)itemCopy view];
      [(UISystemKeyboardDockController *)self keyboardItemButtonWasTapped:view2 withEvent:eventCopy];
      goto LABEL_14;
    }

    globeDockItem = self->_globeDockItem;
    if (globeDockItem == itemCopy)
    {
      customAction2 = [(UIKeyboardDockItem *)globeDockItem customAction];

      if (!customAction2)
      {
        view2 = [(UIKeyboardDockItem *)itemCopy view];
        [(UISystemKeyboardDockController *)self globeItemButtonWasPressed:view2 withEvent:eventCopy];
LABEL_14:
      }
    }
  }

LABEL_15:
  if ([anyObject phase] == 3 || objc_msgSend(anyObject, "phase") == 4)
  {
    self->_isSuppressingDockItemTouch = 0;
  }
}

- (void)updateDockItemsVisibilityWithCustomDictationAction:(id)action
{
  actionCopy = action;
  v4 = +[UIKeyboardImpl activeInstance];
  isCurrentEditResponderInEditingMode = [v4 isCurrentEditResponderInEditingMode];

  if (isCurrentEditResponderInEditingMode)
  {
    view = [(UIViewController *)self view];
    _inheritedRenderConfig = [view _inheritedRenderConfig];
    animatedBackground = [_inheritedRenderConfig animatedBackground];

    view2 = [(UIViewController *)self view];
    layer = [view2 layer];
    [layer setAllowsGroupOpacity:animatedBackground ^ 1u];

    view3 = [(UIViewController *)self view];
    layer2 = [view3 layer];
    [layer2 setAllowsGroupBlending:animatedBackground ^ 1u];

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
    lastInputModeSwitchTriggeredByASCIIToggle = [v17 lastInputModeSwitchTriggeredByASCIIToggle];

    if (v16)
    {
      v19 = UIKeyboardEmojiIconImageName;
    }

    else
    {
      if (!lastInputModeSwitchTriggeredByASCIIToggle)
      {
        v31 = +[UIKeyboardImpl activeInstance];
        internationalKeyDisplayStringOnEmojiKeyboard = [v31 internationalKeyDisplayStringOnEmojiKeyboard];

        v33 = [(__CFString *)internationalKeyDisplayStringOnEmojiKeyboard length];
        v21 = v33 != 0;
        if (v33)
        {
          v20 = internationalKeyDisplayStringOnEmojiKeyboard;
        }

        else
        {
          v20 = v13;
        }

        if (internationalKeyDisplayStringOnEmojiKeyboard == @"")
        {
          v54 = @"hand.draw";

          v13 = internationalKeyDisplayStringOnEmojiKeyboard;
          v20 = v54;
        }

        else
        {
          v13 = internationalKeyDisplayStringOnEmojiKeyboard;
        }

LABEL_10:

        dockView = [(UISystemKeyboardDockController *)self dockView];
        leftDockItem = [dockView leftDockItem];
        v24 = [(UISystemKeyboardDockController *)self configuredGlyphWithName:v20];
        [leftDockItem setTitle:v20 image:v24];

        v25 = +[UIKBAnalyticsDispatcher sharedInstance];
        [v25 setGlomojiTitle:v20];

        v26 = +[UIKeyboardImpl activeInstance];
        isUsingDictationLayout = [v26 isUsingDictationLayout];

        if (actionCopy)
        {
          [(UISystemKeyboardDockController *)self updateRightButtonItemWithCustomAction:?];
LABEL_38:

          goto LABEL_39;
        }

        if (isUsingDictationLayout)
        {
          v28 = +[UIKeyboardInputModeController sharedInputModeController];
          enabledDictationLanguages = [v28 enabledDictationLanguages];
          v30 = [enabledDictationLanguages count] > 1;

          [(UIKeyboardDockItem *)self->_globeDockItem setEnabled:v30];
          [(UISystemKeyboardDockController *)self setKeyboardDockItem];
          [(UIKeyboardDockItem *)self->_keyboardDockItem setEnabled:1];
          [(UIKeyboardDockItem *)self->_dictationDockItem setActive:1];
          goto LABEL_38;
        }

        v34 = +[UIKeyboardImpl activeInstance];
        shouldShowInternationalKey = [v34 shouldShowInternationalKey];

        [(UIKeyboardDockItem *)self->_globeDockItem setEnabled:shouldShowInternationalKey];
        LODWORD(shouldShowInternationalKey) = +[UIDictationController isRunning];
        v36 = +[UIKeyboardInputMode dictationInputMode];
        isCurrentDictationLanguageOnDevice = [v36 isCurrentDictationLanguageOnDevice];

        if (shouldShowInternationalKey)
        {
          v38 = 3;
          if (isCurrentDictationLanguageOnDevice)
          {
            v38 = 2;
          }

          v39 = *(&self->super.super.super.isa + OBJC_IVAR___UISystemKeyboardDockController__globeDockItem[v38]);
          dockView2 = [(UISystemKeyboardDockController *)self dockView];
          [(__CFString *)dockView2 setRightDockItem:v39];
LABEL_28:

          v48 = +[UIKeyboardInputModeController sharedInputModeController];
          currentInputMode = [v48 currentInputMode];
          if ([currentInputMode isExtensionInputMode])
          {
            v50 = +[UIKeyboardInputModeController sharedInputModeController];
            currentInputMode2 = [v50 currentInputMode];
            extensionInputModeHasDictation = [currentInputMode2 extensionInputModeHasDictation];

            if (extensionInputModeHasDictation)
            {
              v53 = 0;
LABEL_37:
              [(UIKeyboardDockItem *)self->_dictationDockItem setEnabled:v53];
              [(UIKeyboardDockItem *)self->_dictationDockItem setActive:v53 & +[UIDictationController dictationIsFunctional]];
              dockView3 = [(UISystemKeyboardDockController *)self dockView];
              [dockView3 setCenterDockItem:0];

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
            enabledDictationLanguages2 = [v56 enabledDictationLanguages];
            v53 = [enabledDictationLanguages2 count] != 0;
          }

          else
          {
            v53 = 0;
          }

          goto LABEL_37;
        }

        dockView2 = @"mic";
        v41 = +[UIKeyboard activeKeyboard];
        if (([v41 _lightStyleRenderConfig] & 1) == 0)
        {

          if ((v16 | v21) != 1)
          {
LABEL_27:
            dictationDockItem = self->_dictationDockItem;
            v43 = [(UISystemKeyboardDockController *)self configuredGlyphWithName:dockView2];
            [(UIKeyboardDockItem *)dictationDockItem setTitle:dockView2 image:v43];

            dictationRunningDockItem = self->_dictationRunningDockItem;
            v45 = [(UISystemKeyboardDockController *)self configuredGlyphWithName:dockView2];
            [(UIKeyboardDockItem *)dictationRunningDockItem setTitle:dockView2 image:v45];

            v46 = self->_dictationDockItem;
            dockView4 = [(UISystemKeyboardDockController *)self dockView];
            [dockView4 setRightDockItem:v46];

            goto LABEL_28;
          }

          v41 = dockView2;
          dockView2 = @"mic.fill";
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

- (id)configuredGlyphWithName:(id)name
{
  nameCopy = name;
  if (!self->_priorityGlyphBundle)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/SFSymbols.framework/CoreGlyphsPriority.bundle"];
    priorityGlyphBundle = self->_priorityGlyphBundle;
    self->_priorityGlyphBundle = v5;
  }

  imageConfig = [(UISystemKeyboardDockController *)self imageConfig];
  v8 = [UIImage imageNamed:nameCopy inBundle:self->_priorityGlyphBundle withConfiguration:imageConfig];
  if (!v8)
  {
    v8 = [UIImage _systemImageNamed:nameCopy withConfiguration:imageConfig];
  }

  return v8;
}

@end