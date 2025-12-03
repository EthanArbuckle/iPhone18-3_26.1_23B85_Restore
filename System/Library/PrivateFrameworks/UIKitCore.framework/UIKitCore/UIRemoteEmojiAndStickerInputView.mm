@interface UIRemoteEmojiAndStickerInputView
- (BOOL)emojiSearchTextField:(id)field shouldSendQuery:(id)query;
- (BOOL)handleKeyEvent:(id)event;
- (BOOL)shouldCutAHoleForEmojiSearchField;
- (UIRemoteEmojiAndStickerInputView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key screenTraits:(id)traits;
- (id)contentViewController;
- (id)emojiKeyManager;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didSelectEditWithStickerIdentifer:(id)identifer sourceRect:(CGRect)rect;
- (void)didSelectEmoji:(id)emoji dismiss:(BOOL)dismiss;
- (void)didSelectPresentPicker;
- (void)didSelectSticker:(id)sticker dismiss:(BOOL)dismiss;
- (void)emojiSearchTextFieldDidBecomeActive:(id)active;
- (void)emojiSearchTextFieldDidBecomeInactive:(id)inactive;
- (void)emojiSearchTextFieldWillBecomeActive:(id)active;
- (void)emojiSearchTextFieldWillBecomeInactive:(id)inactive;
- (void)setFrame:(CGRect)frame;
- (void)willShowStickerEditor;
@end

@implementation UIRemoteEmojiAndStickerInputView

- (UIRemoteEmojiAndStickerInputView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key screenTraits:(id)traits
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  objc_storeStrong(&self->_keyplane, keyplane);
  keyplaneCopy = keyplane;
  traitsCopy = traits;
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = UIRemoteEmojiAndStickerInputView;
  height = [(UIKBViewControllerBackedKeyView *)&v19 initWithFrame:keyplaneCopy keyplane:keyCopy key:traitsCopy screenTraits:x, y, width, height];

  return height;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  screenTraits = [(UIKBKeyView *)self screenTraits];
  orientation = [screenTraits orientation];
  if (screenTraits)
  {
    interfaceOrientation = orientation;
  }

  else
  {
    v11 = +[UIKeyboard activeKeyboard];
    interfaceOrientation = [v11 interfaceOrientation];

    v12 = +[UIKeyboardImpl keyboardScreen];
    screenTraits = [UIKBScreenTraits traitsWithScreen:v12 orientation:interfaceOrientation];
  }

  [(UIKBTree *)self->_keyplane frame];
  if (width != v13 && (!screenTraits || (screenTraits[35] & 1) == 0))
  {
    [(UIKBTree *)self->_keyplane frame];
    v15 = (width - v14) * 0.5;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectInset(v26, v15, 0.0);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
    [screenTraits bounds];
    if (v16 >= 812.0)
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen bounds];
      v19 = v18;
      v21 = v20;

      if (v19 <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }

      if (v19 >= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if ((interfaceOrientation - 3) >= 2)
      {
        v22 = v23;
      }

      v24 = (width - v22) * 0.5;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      v29 = CGRectInset(v28, v24, 0.0);
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
    }
  }

  v25.receiver = self;
  v25.super_class = UIRemoteEmojiAndStickerInputView;
  [(UIView *)&v25 setFrame:x, y, width, height];
}

- (id)contentViewController
{
  viewController = self->_viewController;
  if (!viewController)
  {
    gotLoadHelper_x8__OBJC_CLASS___STKEmojiAndStickerCollectionViewController(v3);
    v7 = objc_alloc_init(*(v6 + 2552));
    v8 = self->_viewController;
    self->_viewController = v7;

    [(STKEmojiAndStickerCollectionViewController *)self->_viewController setDelegate:self];
    if (objc_opt_respondsToSelector())
    {
      gotLoadHelper_x20__OBJC_CLASS___STKEmojiAndStickerCollectionViewConfiguration(v9);
      if (objc_opt_class())
      {
        v10 = objc_alloc_init(*(v2 + 2544));
        screenTraits = [(UIKBKeyView *)self screenTraits];
        [v10 setUserInterfaceIdiom:{objc_msgSend(screenTraits, "idiom")}];
        [screenTraits keyboardWidth];
        [v10 setKeyboardWidth:?];
        [v10 setIsKeyboardMinorEdgeWidth:{objc_msgSend(screenTraits, "isKeyboardMinorEdgeWidth")}];
        [v10 setIsInPopover:{objc_msgSend(screenTraits, "isInPopover")}];
        if (objc_opt_respondsToSelector())
        {
          v12 = +[UIKeyboardImpl activeInstance];
          canInsertAdaptiveImageGlyph = [v12 canInsertAdaptiveImageGlyph];

          v14 = +[UIKeyboardImpl activeInstance];
          if ([v14 canPasteImage])
          {
            v15 = +[UIKeyboardEmojiPreferences sharedInstance];
            memojiSettingEnabled = [v15 memojiSettingEnabled];
          }

          else
          {
            memojiSettingEnabled = 0;
          }

          v17 = +[UIKeyboardImpl sharedInstance];
          canInsertStickerAsTextInputPayload = [v17 canInsertStickerAsTextInputPayload];

          v19 = MKBGetDeviceLockState();
          v21 = v19 == 3 || v19 == 0;
          [v10 setDoesSupportImageGlyph:(canInsertAdaptiveImageGlyph | memojiSettingEnabled | canInsertStickerAsTextInputPayload) & v21];
        }

        if (objc_opt_respondsToSelector())
        {
          [screenTraits screenToNativeScaleRatio];
          [v10 setScreenToNativeScaleRatio:?];
        }

        if (objc_opt_respondsToSelector())
        {
          [v10 setDoesSupportGenmoji:{objc_msgSend(getTUIEmojiSearchViewClass(), "shouldShowGenmoji")}];
        }

        if (objc_opt_respondsToSelector())
        {
          getTUIEmojiSearchViewClass();
          if (objc_opt_respondsToSelector())
          {
            [v10 setDoesSupportStickersApp:{objc_msgSend(getTUIEmojiSearchViewClass(), "isNotificationExtension") ^ 1}];
          }
        }

        if (objc_opt_respondsToSelector())
        {
          if (_UIApplicationIsStickerPickerService())
          {
            IsGenerativePlayground = 1;
          }

          else
          {
            IsGenerativePlayground = _UIApplicationIsGenerativePlayground();
          }

          [v10 setIsRunningInGenmoji:IsGenerativePlayground];
        }

        [(STKEmojiAndStickerCollectionViewController *)self->_viewController setConfiguration:v10];
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_willShowStickerEditor name:0x1EFB79230 object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_willHideStickerEditor name:0x1EFB79250 object:0];

    viewController = self->_viewController;
  }

  return viewController;
}

- (void)didSelectEmoji:(id)emoji dismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  emojiCopy = emoji;
  if ([(UIRemoteEmojiAndStickerInputView *)self isInSearchPopover])
  {
    v7 = +[UIKeyboardImpl activeInstance];
    v8 = v7;
    if (!dismissCopy)
    {
      inputDelegateManager = [v7 inputDelegateManager];

      shouldRespectForwardingInputDelegate = [inputDelegateManager shouldRespectForwardingInputDelegate];
      [inputDelegateManager setShouldRespectForwardingInputDelegate:0];
      [inputDelegateManager insertText:emojiCopy];
      [inputDelegateManager setShouldRespectForwardingInputDelegate:shouldRespectForwardingInputDelegate];
      goto LABEL_10;
    }

    [v7 clearForwardingInputDelegateAndResign:0];
  }

  inputDelegateManager = +[UIKeyboardImpl activeInstance];
  _layout = [inputDelegateManager _layout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(UIKBKeyView *)self key];
    v12 = [_layout createKeyEventForStringAction:emojiCopy forKey:v11 inputFlags:0];

    [v12 set_isFromEmojiPopover:1];
    if (qword_1ED49A638 != -1)
    {
      dispatch_once(&qword_1ED49A638, &__block_literal_global_194);
    }

    taskQueue = [inputDelegateManager taskQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__UIRemoteEmojiAndStickerInputView_didSelectEmoji_dismiss___block_invoke_3;
    v17[3] = &unk_1E70FD1B8;
    v18 = inputDelegateManager;
    v19 = v12;
    v14 = _MergedGlobals_5_8;
    v15 = v12;
    [taskQueue performSingleTask:v17 breadcrumb:v14];
  }

LABEL_10:
}

void __59__UIRemoteEmojiAndStickerInputView_didSelectEmoji_dismiss___block_invoke()
{
  v0 = [&__block_literal_global_89 copy];
  v1 = _MergedGlobals_5_8;
  _MergedGlobals_5_8 = v0;
}

- (void)didSelectSticker:(id)sticker dismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  stickerCopy = sticker;
  v8 = stickerCopy;
  if (dismissCopy)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 dismissEmojiPopoverIfNecessaryWithCompletion:0];

    stickerCopy = v8;
  }

  if (stickerCopy)
  {
    v7 = +[UIKeyboardImpl activeInstance];
    [v7 insertSticker:v8];

    stickerCopy = v8;
  }
}

- (void)didSelectEditWithStickerIdentifer:(id)identifer sourceRect:(CGRect)rect
{
  if (identifer)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    viewController = self->_viewController;
    identiferCopy = identifer;
    childViewControllers = [(STKEmojiAndStickerCollectionViewController *)viewController childViewControllers];
    firstObject = [childViewControllers firstObject];
    window = [(UIView *)self window];
    view = [firstObject view];
    [window convertRect:view fromView:{x, y, width, height}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = +[UIKeyboardImpl activeInstance];
    [v22 presentStickerEditorWithStickerIdentifier:identiferCopy sourceRect:{v15, v17, v19, v21}];
  }
}

- (void)didSelectPresentPicker
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[UIKeyboard keyboardBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.MobileSMS"];

  if (v3)
  {
    v9 = +[UIKeyboardMediaController sharedKeyboardMediaController];
    [v9 presentCard];
  }

  else
  {
    v4 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v4 inputDelegateManager];

    v6 = [inputDelegateManager delegateRespectingForwardingDelegate:0];
    textInputView = [v6 textInputView];
    if ([v6 conformsToProtocol:&unk_1EFE8B2D0])
    {
      v8 = +[UIKeyboardImpl activeInstance];
      [v8 handleStickerEvent_presentCard];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "responder %@ does not conform to UITextInput. Cannot present stickers.", buf, 0xCu);
    }
  }
}

- (BOOL)handleKeyEvent:(id)event
{
  eventCopy = event;
  emojiSearchField = [(UIRemoteEmojiAndStickerInputView *)self emojiSearchField];
  markedTextRange = [emojiSearchField markedTextRange];

  if (markedTextRange)
  {
    v7 = 0;
    text = &stru_1EFB14550;
  }

  else
  {
    emojiSearchField2 = [(UIRemoteEmojiAndStickerInputView *)self emojiSearchField];
    text = [emojiSearchField2 text];

    if (([eventCopy equalsKeyCode:82 modifiers:0x100000] & 1) == 0 && (objc_msgSend(eventCopy, "equalsKeyCode:modifiers:", 81, 0x100000) & 1) == 0 && (objc_msgSend(eventCopy, "equalsKeyCode:modifiers:", 80, 0x100000) & 1) == 0 && (objc_msgSend(eventCopy, "equalsKeyCode:modifiers:", 79, 0x100000) & 1) == 0 && (objc_msgSend(eventCopy, "unmodifiedKeyCodeEquals:", 43) & 1) == 0 && (objc_msgSend(eventCopy, "equalsKeyCode:modifiers:", 43, 0x20000) & 1) == 0)
    {
      if (-[__CFString length](text, "length") && [eventCopy unmodifiedKeyCodeEquals:81])
      {
        [(UIRemoteEmojiAndStickerInputView *)self setFocusingCollectionView:1];
      }

      else if (-[__CFString length](text, "length") && !-[UIRemoteEmojiAndStickerInputView focusingCollectionView](self, "focusingCollectionView") || ([eventCopy unmodifiedKeyCodeEquals:82] & 1) == 0 && (objc_msgSend(eventCopy, "unmodifiedKeyCodeEquals:", 81) & 1) == 0 && (objc_msgSend(eventCopy, "unmodifiedKeyCodeEquals:", 80) & 1) == 0 && (objc_msgSend(eventCopy, "unmodifiedKeyCodeEquals:", 79) & 1) == 0 && (objc_msgSend(eventCopy, "unmodifiedKeyCodeEquals:", 44) & 1) == 0 && !objc_msgSend(eventCopy, "unmodifiedKeyCodeEquals:", 40))
      {
        v7 = 0;
        goto LABEL_23;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [(STKEmojiAndStickerCollectionViewController *)self->_viewController handleKeyEvent:eventCopy];
    }

    v7 = 1;
  }

LABEL_23:

  return v7;
}

- (BOOL)shouldCutAHoleForEmojiSearchField
{
  screenTraits = [(UIKBKeyView *)self screenTraits];
  v3 = [screenTraits idiom] == 1;

  return v3;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(UIRemoteEmojiAndStickerInputView *)self shouldCutAHoleForEmojiSearchField])
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    systemInputAssistantViewController = [v8 systemInputAssistantViewController];
    view = [systemInputAssistantViewController view];

    [(UIView *)self convertPoint:view toView:x, y];
    v12 = v11;
    v14 = v13;
    if ([view pointInside:eventCopy withEvent:?])
    {
      v15 = [view hitTest:eventCopy withEvent:{v12, v14}];
      if (v15)
      {
        v16 = v15;

        goto LABEL_7;
      }
    }
  }

  v18.receiver = self;
  v18.super_class = UIRemoteEmojiAndStickerInputView;
  v16 = [(UIView *)&v18 hitTest:eventCopy withEvent:x, y];
LABEL_7:

  return v16;
}

- (void)emojiSearchTextFieldWillBecomeActive:(id)active
{
  emojiSearchField = [(UIRemoteEmojiAndStickerInputView *)self emojiSearchField];
  renderConfig = [(UIKBKeyView *)self renderConfig];
  [emojiSearchField _setRenderConfig:renderConfig];
}

- (void)emojiSearchTextFieldDidBecomeActive:(id)active
{
  activeCopy = active;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  [v5 changePreferredEmojiSearchInputModeForInputDelegate:activeCopy];

  [(UIRemoteEmojiAndStickerInputView *)self setIsInSearchPopover:1];
}

- (void)emojiSearchTextFieldWillBecomeInactive:(id)inactive
{
  [(UIRemoteEmojiAndStickerInputView *)self setIsInSearchPopover:0];
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 clearForwardingInputDelegateAndResign:0];
}

- (void)emojiSearchTextFieldDidBecomeInactive:(id)inactive
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 updateAssistantView];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIKeyboardSwitchedAwayFromEmoji" object:0];

  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  hardwareInputMode = [v5 hardwareInputMode];
  [v7 setCurrentInputMode:hardwareInputMode];
}

- (BOOL)emojiSearchTextField:(id)field shouldSendQuery:(id)query
{
  queryCopy = query;
  if (objc_opt_respondsToSelector())
  {
    [(STKEmojiAndStickerCollectionViewController *)self->_viewController searchWithQuery:queryCopy];
  }

  [(UIRemoteEmojiAndStickerInputView *)self setFocusingCollectionView:0];

  return 0;
}

- (void)willShowStickerEditor
{
  screenTraits = [(UIKBKeyView *)self screenTraits];
  isInPopover = [screenTraits isInPopover];

  if (isInPopover)
  {

    [(UIView *)self setAlpha:0.0];
  }
}

- (id)emojiKeyManager
{
  WeakRetained = objc_loadWeakRetained(&self->_emojiKeyManager);

  return WeakRetained;
}

@end