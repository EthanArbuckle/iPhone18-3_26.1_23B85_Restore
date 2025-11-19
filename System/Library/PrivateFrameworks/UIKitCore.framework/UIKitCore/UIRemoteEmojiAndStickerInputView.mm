@interface UIRemoteEmojiAndStickerInputView
- (BOOL)emojiSearchTextField:(id)a3 shouldSendQuery:(id)a4;
- (BOOL)handleKeyEvent:(id)a3;
- (BOOL)shouldCutAHoleForEmojiSearchField;
- (UIRemoteEmojiAndStickerInputView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6;
- (id)contentViewController;
- (id)emojiKeyManager;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didSelectEditWithStickerIdentifer:(id)a3 sourceRect:(CGRect)a4;
- (void)didSelectEmoji:(id)a3 dismiss:(BOOL)a4;
- (void)didSelectPresentPicker;
- (void)didSelectSticker:(id)a3 dismiss:(BOOL)a4;
- (void)emojiSearchTextFieldDidBecomeActive:(id)a3;
- (void)emojiSearchTextFieldDidBecomeInactive:(id)a3;
- (void)emojiSearchTextFieldWillBecomeActive:(id)a3;
- (void)emojiSearchTextFieldWillBecomeInactive:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)willShowStickerEditor;
@end

@implementation UIRemoteEmojiAndStickerInputView

- (UIRemoteEmojiAndStickerInputView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_storeStrong(&self->_keyplane, a4);
  v14 = a4;
  v15 = a6;
  v16 = a5;
  v19.receiver = self;
  v19.super_class = UIRemoteEmojiAndStickerInputView;
  v17 = [(UIKBViewControllerBackedKeyView *)&v19 initWithFrame:v14 keyplane:v16 key:v15 screenTraits:x, y, width, height];

  return v17;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIKBKeyView *)self screenTraits];
  v9 = [v8 orientation];
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v11 = +[UIKeyboard activeKeyboard];
    v10 = [v11 interfaceOrientation];

    v12 = +[UIKeyboardImpl keyboardScreen];
    v8 = [UIKBScreenTraits traitsWithScreen:v12 orientation:v10];
  }

  [(UIKBTree *)self->_keyplane frame];
  if (width != v13 && (!v8 || (v8[35] & 1) == 0))
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
    [v8 bounds];
    if (v16 >= 812.0)
    {
      v17 = [objc_opt_self() mainScreen];
      [v17 bounds];
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

      if ((v10 - 3) >= 2)
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
        v11 = [(UIKBKeyView *)self screenTraits];
        [v10 setUserInterfaceIdiom:{objc_msgSend(v11, "idiom")}];
        [v11 keyboardWidth];
        [v10 setKeyboardWidth:?];
        [v10 setIsKeyboardMinorEdgeWidth:{objc_msgSend(v11, "isKeyboardMinorEdgeWidth")}];
        [v10 setIsInPopover:{objc_msgSend(v11, "isInPopover")}];
        if (objc_opt_respondsToSelector())
        {
          v12 = +[UIKeyboardImpl activeInstance];
          v13 = [v12 canInsertAdaptiveImageGlyph];

          v14 = +[UIKeyboardImpl activeInstance];
          if ([v14 canPasteImage])
          {
            v15 = +[UIKeyboardEmojiPreferences sharedInstance];
            v16 = [v15 memojiSettingEnabled];
          }

          else
          {
            v16 = 0;
          }

          v17 = +[UIKeyboardImpl sharedInstance];
          v18 = [v17 canInsertStickerAsTextInputPayload];

          v19 = MKBGetDeviceLockState();
          v21 = v19 == 3 || v19 == 0;
          [v10 setDoesSupportImageGlyph:(v13 | v16 | v18) & v21];
        }

        if (objc_opt_respondsToSelector())
        {
          [v11 screenToNativeScaleRatio];
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

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:self selector:sel_willShowStickerEditor name:0x1EFB79230 object:0];

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 addObserver:self selector:sel_willHideStickerEditor name:0x1EFB79250 object:0];

    viewController = self->_viewController;
  }

  return viewController;
}

- (void)didSelectEmoji:(id)a3 dismiss:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(UIRemoteEmojiAndStickerInputView *)self isInSearchPopover])
  {
    v7 = +[UIKeyboardImpl activeInstance];
    v8 = v7;
    if (!v4)
    {
      v9 = [v7 inputDelegateManager];

      v16 = [v9 shouldRespectForwardingInputDelegate];
      [v9 setShouldRespectForwardingInputDelegate:0];
      [v9 insertText:v6];
      [v9 setShouldRespectForwardingInputDelegate:v16];
      goto LABEL_10;
    }

    [v7 clearForwardingInputDelegateAndResign:0];
  }

  v9 = +[UIKeyboardImpl activeInstance];
  v10 = [v9 _layout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(UIKBKeyView *)self key];
    v12 = [v10 createKeyEventForStringAction:v6 forKey:v11 inputFlags:0];

    [v12 set_isFromEmojiPopover:1];
    if (qword_1ED49A638 != -1)
    {
      dispatch_once(&qword_1ED49A638, &__block_literal_global_194);
    }

    v13 = [v9 taskQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__UIRemoteEmojiAndStickerInputView_didSelectEmoji_dismiss___block_invoke_3;
    v17[3] = &unk_1E70FD1B8;
    v18 = v9;
    v19 = v12;
    v14 = _MergedGlobals_5_8;
    v15 = v12;
    [v13 performSingleTask:v17 breadcrumb:v14];
  }

LABEL_10:
}

void __59__UIRemoteEmojiAndStickerInputView_didSelectEmoji_dismiss___block_invoke()
{
  v0 = [&__block_literal_global_89 copy];
  v1 = _MergedGlobals_5_8;
  _MergedGlobals_5_8 = v0;
}

- (void)didSelectSticker:(id)a3 dismiss:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8 = v5;
  if (v4)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 dismissEmojiPopoverIfNecessaryWithCompletion:0];

    v5 = v8;
  }

  if (v5)
  {
    v7 = +[UIKeyboardImpl activeInstance];
    [v7 insertSticker:v8];

    v5 = v8;
  }
}

- (void)didSelectEditWithStickerIdentifer:(id)a3 sourceRect:(CGRect)a4
{
  if (a3)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    viewController = self->_viewController;
    v10 = a3;
    v23 = [(STKEmojiAndStickerCollectionViewController *)viewController childViewControllers];
    v11 = [v23 firstObject];
    v12 = [(UIView *)self window];
    v13 = [v11 view];
    [v12 convertRect:v13 fromView:{x, y, width, height}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = +[UIKeyboardImpl activeInstance];
    [v22 presentStickerEditorWithStickerIdentifier:v10 sourceRect:{v15, v17, v19, v21}];
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
    v5 = [v4 inputDelegateManager];

    v6 = [v5 delegateRespectingForwardingDelegate:0];
    v7 = [v6 textInputView];
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

- (BOOL)handleKeyEvent:(id)a3
{
  v4 = a3;
  v5 = [(UIRemoteEmojiAndStickerInputView *)self emojiSearchField];
  v6 = [v5 markedTextRange];

  if (v6)
  {
    v7 = 0;
    v8 = &stru_1EFB14550;
  }

  else
  {
    v9 = [(UIRemoteEmojiAndStickerInputView *)self emojiSearchField];
    v8 = [v9 text];

    if (([v4 equalsKeyCode:82 modifiers:0x100000] & 1) == 0 && (objc_msgSend(v4, "equalsKeyCode:modifiers:", 81, 0x100000) & 1) == 0 && (objc_msgSend(v4, "equalsKeyCode:modifiers:", 80, 0x100000) & 1) == 0 && (objc_msgSend(v4, "equalsKeyCode:modifiers:", 79, 0x100000) & 1) == 0 && (objc_msgSend(v4, "unmodifiedKeyCodeEquals:", 43) & 1) == 0 && (objc_msgSend(v4, "equalsKeyCode:modifiers:", 43, 0x20000) & 1) == 0)
    {
      if (-[__CFString length](v8, "length") && [v4 unmodifiedKeyCodeEquals:81])
      {
        [(UIRemoteEmojiAndStickerInputView *)self setFocusingCollectionView:1];
      }

      else if (-[__CFString length](v8, "length") && !-[UIRemoteEmojiAndStickerInputView focusingCollectionView](self, "focusingCollectionView") || ([v4 unmodifiedKeyCodeEquals:82] & 1) == 0 && (objc_msgSend(v4, "unmodifiedKeyCodeEquals:", 81) & 1) == 0 && (objc_msgSend(v4, "unmodifiedKeyCodeEquals:", 80) & 1) == 0 && (objc_msgSend(v4, "unmodifiedKeyCodeEquals:", 79) & 1) == 0 && (objc_msgSend(v4, "unmodifiedKeyCodeEquals:", 44) & 1) == 0 && !objc_msgSend(v4, "unmodifiedKeyCodeEquals:", 40))
      {
        v7 = 0;
        goto LABEL_23;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [(STKEmojiAndStickerCollectionViewController *)self->_viewController handleKeyEvent:v4];
    }

    v7 = 1;
  }

LABEL_23:

  return v7;
}

- (BOOL)shouldCutAHoleForEmojiSearchField
{
  v2 = [(UIKBKeyView *)self screenTraits];
  v3 = [v2 idiom] == 1;

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(UIRemoteEmojiAndStickerInputView *)self shouldCutAHoleForEmojiSearchField])
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v9 = [v8 systemInputAssistantViewController];
    v10 = [v9 view];

    [(UIView *)self convertPoint:v10 toView:x, y];
    v12 = v11;
    v14 = v13;
    if ([v10 pointInside:v7 withEvent:?])
    {
      v15 = [v10 hitTest:v7 withEvent:{v12, v14}];
      if (v15)
      {
        v16 = v15;

        goto LABEL_7;
      }
    }
  }

  v18.receiver = self;
  v18.super_class = UIRemoteEmojiAndStickerInputView;
  v16 = [(UIView *)&v18 hitTest:v7 withEvent:x, y];
LABEL_7:

  return v16;
}

- (void)emojiSearchTextFieldWillBecomeActive:(id)a3
{
  v5 = [(UIRemoteEmojiAndStickerInputView *)self emojiSearchField];
  v4 = [(UIKBKeyView *)self renderConfig];
  [v5 _setRenderConfig:v4];
}

- (void)emojiSearchTextFieldDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  [v5 changePreferredEmojiSearchInputModeForInputDelegate:v4];

  [(UIRemoteEmojiAndStickerInputView *)self setIsInSearchPopover:1];
}

- (void)emojiSearchTextFieldWillBecomeInactive:(id)a3
{
  [(UIRemoteEmojiAndStickerInputView *)self setIsInSearchPopover:0];
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 clearForwardingInputDelegateAndResign:0];
}

- (void)emojiSearchTextFieldDidBecomeInactive:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 updateAssistantView];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"UIKeyboardSwitchedAwayFromEmoji" object:0];

  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 hardwareInputMode];
  [v7 setCurrentInputMode:v6];
}

- (BOOL)emojiSearchTextField:(id)a3 shouldSendQuery:(id)a4
{
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(STKEmojiAndStickerCollectionViewController *)self->_viewController searchWithQuery:v5];
  }

  [(UIRemoteEmojiAndStickerInputView *)self setFocusingCollectionView:0];

  return 0;
}

- (void)willShowStickerEditor
{
  v3 = [(UIKBKeyView *)self screenTraits];
  v4 = [v3 isInPopover];

  if (v4)
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