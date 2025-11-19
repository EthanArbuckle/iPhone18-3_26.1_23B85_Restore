@interface UIKeyboardEmojiPopoverController
- (BOOL)handleHardwareKeyboardEvent:(id)a3;
- (BOOL)isPhone;
- (CGSize)preferredContentSize;
- (CGSize)preferredContentSizeForPhone;
- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)a3;
- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)a3 hasVerticalScrolling:(BOOL)a4;
- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)a3 taskQueue:(id)a4 scrollingDirection:(int64_t)a5 window:(id)a6 caretRect:(CGRect)a7;
- (double)keyboardHeightAdjustmentForCaretRect:(CGRect)a3 windowSize:(CGSize)a4;
- (double)preferredTextFieldHeight;
- (id)keyboardLayout:(id)a3 willChangeRenderConfig:(id)a4;
- (void)associateEmojiSearchViewWithEmojiInputView;
- (void)configurePopoverPresentationController:(id)a3;
- (void)dealloc;
- (void)keyboardLayout:(id)a3 didSwitchToKeyplane:(id)a4;
- (void)shouldDismissNotification:(id)a3;
- (void)showKeyboardLayout;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation UIKeyboardEmojiPopoverController

- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UIKeyboardTaskQueue);
  v6 = [(UIKeyboardEmojiPopoverController *)self initWithTextInputTraits:v4 taskQueue:v5];

  return v6;
}

- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)a3 hasVerticalScrolling:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(UIKeyboardTaskQueue);
  v8 = [(UIKeyboardEmojiPopoverController *)self initWithTextInputTraits:v6 taskQueue:v7 scrollingDirection:v4];

  return v8;
}

- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)a3 taskQueue:(id)a4 scrollingDirection:(int64_t)a5 window:(id)a6 caretRect:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v30.receiver = self;
  v30.super_class = UIKeyboardEmojiPopoverController;
  v19 = [(UIKeyboardPopoverController *)&v30 init];
  if (v19)
  {
    v20 = [v18 traitCollection];
    if ([v20 horizontalSizeClass] == 1)
    {
      v21 = 320.0;
    }

    else
    {
      v21 = 375.0;
    }

    v22 = [UIKBScreenTraits traitsForPopoverEmulatingWidth:1 minorEdge:1 orientation:0 idiom:v21];
    screenTraits = v19->_screenTraits;
    v19->_screenTraits = v22;

    if (a5 == 1)
    {
      [(UIKBScreenTraits *)v19->_screenTraits setResizeKeyboardHeight:1];
      [v18 bounds];
      [(UIKeyboardEmojiPopoverController *)v19 keyboardHeightAdjustmentForCaretRect:x windowSize:y, width, height, v24, v25];
      [(UIKBScreenTraits *)v19->_screenTraits setKeyboardHeightAdjustment:?];
    }

    [(UIKBScreenTraits *)v19->_screenTraits setPreferredEmojiScrollingDirection:a5];
    objc_storeStrong(&v19->_textInputTraits, a3);
    objc_storeStrong(&v19->_taskQueue, a4);
    v26 = UIKeyboardGetKBStarName(@"emoji", v19->_screenTraits, 0, 0);
    v27 = [UIKeyboardLayoutStar keyboardWithName:v26 screenTraits:v19->_screenTraits];
    keyboard = v19->_keyboard;
    v19->_keyboard = v27;
  }

  return v19;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_hiddenKeys;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) setVisible:1];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(UIKeyboardLayoutStar *)self->_layout setDelegate:0];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 removeObserver:self];

  v9.receiver = self;
  v9.super_class = UIKeyboardEmojiPopoverController;
  [(UIViewController *)&v9 dealloc];
}

- (void)viewDidLoad
{
  v75[5] = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = UIKeyboardEmojiPopoverController;
  [(UIKeyboardPopoverController *)&v67 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_shouldDismissNotification_ name:@"UIKeyboardEmojiPopoverControllerShouldDismiss" object:0];

  v4 = objc_alloc_init(UIKeyboardLayoutStar);
  layout = self->_layout;
  self->_layout = v4;

  [(UIKeyboardLayoutStar *)self->_layout setDelegate:self];
  [(UIKeyboardLayoutStar *)self->_layout setPreventPaddlesForPointerTouches:1];
  [(UIView *)self->_layout setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIKeyboardLayout *)self->_layout setTaskQueue:self->_taskQueue];
  if (!+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
  {
    [(UIKeyboardEmojiPopoverController *)self showKeyboardLayout];
  }

  v6 = [(UIViewController *)self view];
  [v6 addSubview:self->_layout];

  if ([(UIKeyboardEmojiPopoverController *)self isPhone])
  {
    v7 = -2.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(UIKeyboardLayoutStar *)self->_layout emojiKeyManager];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = [(UIKeyboardLayoutStar *)self->_layout emojiKeyManager];
  v10 = [v9 inputView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_10;
  }

  v11 = +[UIKeyboard isRemoteEmojiCollectionViewEnabled];

  if (!v11)
  {
LABEL_18:
    v29 = [(UIKeyboardEmojiPopoverController *)self isPhone];
LABEL_19:
    v30 = [(UIView *)self->_layout topAnchor];
    v31 = [(UIViewController *)self view];
    v32 = [v31 safeAreaLayoutGuide];
    v33 = [v32 topAnchor];
    v34 = [v30 constraintEqualToAnchor:v33];
    v74 = v34;
    v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];

    goto LABEL_20;
  }

LABEL_10:
  v69 = 0;
  v70 = &v69;
  v71 = 0x2050000000;
  v12 = getTUIEmojiSearchInputViewControllerClass_softClass;
  v72 = getTUIEmojiSearchInputViewControllerClass_softClass;
  if (!getTUIEmojiSearchInputViewControllerClass_softClass)
  {
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __getTUIEmojiSearchInputViewControllerClass_block_invoke;
    v68[3] = &unk_1E70F2F20;
    v68[4] = &v69;
    __getTUIEmojiSearchInputViewControllerClass_block_invoke(v68);
    v12 = v70[3];
  }

  v13 = v12;
  _Block_object_dispose(&v69, 8);
  v14 = [[v12 alloc] initWithNibName:0 bundle:0];
  objc_storeStrong(&self->_emojiSearchInputViewController, v14);
  v15 = [v14 view];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(UIViewController *)self addChildViewController:v14];
  v16 = [(UIViewController *)self view];
  v17 = [v14 view];
  [v16 addSubview:v17];

  v64 = [v14 view];
  v58 = [v64 topAnchor];
  v62 = [(UIViewController *)self view];
  v60 = [v62 safeAreaLayoutGuide];
  v56 = [v60 topAnchor];
  v54 = [v58 constraintEqualToAnchor:v56 constant:8.0];
  v75[0] = v54;
  v51 = [(UIView *)self->_layout topAnchor];
  v52 = [v14 view];
  v50 = [v52 bottomAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v75[1] = v49;
  v48 = [v14 view];
  v47 = [v48 leadingAnchor];
  v46 = [(UIView *)self->_layout leadingAnchor];
  v18 = [v47 constraintEqualToAnchor:v46 constant:v7];
  v75[2] = v18;
  v19 = [(UIView *)self->_layout trailingAnchor];
  v20 = [v14 view];
  v21 = [v20 trailingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:v7];
  v75[3] = v22;
  v23 = [v14 view];
  v24 = [v23 heightAnchor];
  [(UIKeyboardEmojiPopoverController *)self preferredTextFieldHeight];
  v25 = [v24 constraintEqualToConstant:?];
  v75[4] = v25;
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:5];

  v26 = [v14 emojiSearchView];
  [v26 setPredictionViewVisible:0];
  [v26 setCollapsed:0];
  v27 = [v26 searchTextField];
  [v27 setKeyboardType:122];

  v28 = [v26 searchTextField];
  [v28 setReturnKeyType:9];

  if (objc_opt_respondsToSelector())
  {
    [v26 setResultsViewVisible:0];
  }

  if (!+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
  {
    [(UIKeyboardEmojiPopoverController *)self associateEmojiSearchViewWithEmojiInputView];
  }

  v29 = [(UIKeyboardEmojiPopoverController *)self isPhone];
  if (!v66)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v29)
  {
    v35 = 8.0;
  }

  else
  {
    v35 = 0.0;
  }

  v61 = [(UIView *)self->_layout leadingAnchor];
  v65 = [(UIViewController *)self view];
  v63 = [v65 safeAreaLayoutGuide];
  v59 = [v63 leadingAnchor];
  v57 = [v61 constraintEqualToAnchor:v59 constant:v35];
  v73[0] = v57;
  v53 = [(UIView *)self->_layout trailingAnchor];
  v55 = [(UIViewController *)self view];
  v36 = [v55 safeAreaLayoutGuide];
  v37 = [v36 trailingAnchor];
  v38 = [v53 constraintEqualToAnchor:v37 constant:-v35];
  v73[1] = v38;
  v39 = [(UIView *)self->_layout bottomAnchor];
  v40 = [(UIViewController *)self view];
  v41 = [v40 safeAreaLayoutGuide];
  v42 = [v41 bottomAnchor];
  v43 = [v39 constraintEqualToAnchor:v42];
  v73[2] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:3];
  v45 = [v66 arrayByAddingObjectsFromArray:v44];

  [MEMORY[0x1E69977A0] activateConstraints:v45];
}

- (void)shouldDismissNotification:(id)a3
{
  v13 = a3;
  v4 = [v13 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v13;
  if (isKindOfClass)
  {
    v7 = [v13 object];
    v8 = [(UIViewController *)self popoverPresentationController];
    v9 = [v8 containerView];
    v10 = [v7 view];
    v11 = [(UIView *)v9 _containsView:v10];

    if (v11)
    {
      v12 = +[UIKeyboardImpl activeInstance];
      [v12 dismissEmojiPopoverIfNecessaryWithCompletion:0];
    }

    v6 = v13;
  }
}

- (void)showKeyboardLayout
{
  v3 = [(UIView *)self->_layout _inheritedRenderConfig];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[UIKBRenderConfig defaultConfig];
  }

  v6 = v5;

  v7 = [v6 copy];
  [v7 setIsFloating:1];
  [(UIKeyboardLayoutStar *)self->_layout showKeyboardWithInputMode:@"emoji" renderConfig:v7 inputTraits:self->_textInputTraits screenTraits:self->_screenTraits splitTraits:0];
}

- (void)associateEmojiSearchViewWithEmojiInputView
{
  v3 = [(UIKeyboardLayoutStar *)self->_layout emojiKeyManager];
  v7 = [v3 inputView];

  if (v7)
  {
    [(TUIEmojiSearchInputViewController *)self->_emojiSearchInputViewController setDelegate:v7];
    [v7 setEmojiSearchInputViewController:self->_emojiSearchInputViewController];
    v4 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchInputViewController emojiSearchView];
    v5 = [v4 searchTextField];
    [v7 setEmojiSearchField:v5];

    v6 = [v4 searchTextField];
    [v6 becomeFirstResponder];
  }
}

- (void)configurePopoverPresentationController:(id)a3
{
  v3 = a3;
  [v3 setPopoverBackgroundViewClass:objc_opt_class()];
}

- (double)preferredTextFieldHeight
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getTUIEmojiSearchTextFieldClass_softClass;
  v9 = getTUIEmojiSearchTextFieldClass_softClass;
  if (!getTUIEmojiSearchTextFieldClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getTUIEmojiSearchTextFieldClass_block_invoke;
    v5[3] = &unk_1E70F2F20;
    v5[4] = &v6;
    __getTUIEmojiSearchTextFieldClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  [v2 preferredHeight];
  return result;
}

- (CGSize)preferredContentSize
{
  keyboard = self->_keyboard;
  if (keyboard)
  {
    [(UIKBTree *)keyboard frame];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    [UIKeyboardLayoutStar keyboardSizeForInputMode:@"emoji" screenTraits:self->_screenTraits keyboardType:124];
    v5 = v8;
    v7 = v9;
  }

  if ([(UIKBScreenTraits *)self->_screenTraits resizeKeyboardHeight])
  {
    [(UIKBScreenTraits *)self->_screenTraits keyboardHeightAdjustment];
    v7 = v7 + v10;
  }

  [(UIKeyboardEmojiPopoverController *)self preferredTextFieldHeight];
  v12 = v11;
  if ([(UIKeyboardEmojiPopoverController *)self isPhone])
  {
    [(UIKeyboardEmojiPopoverController *)self preferredContentSizeForPhone];
    v5 = v14;
  }

  else
  {
    v13 = v7 + v12 + 8.0;
  }

  v15 = v5;
  result.height = v13;
  result.width = v15;
  return result;
}

- (BOOL)isPhone
{
  v2 = [(UIViewController *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (CGSize)preferredContentSizeForPhone
{
  v3 = [(UIKBScreenTraits *)self->_screenTraits screen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(UIViewController *)self viewIfLoaded];
  v9 = [v8 window];

  v10 = [(UIViewController *)self traitCollection];
  v11 = [v10 verticalSizeClass];

  [v9 safeAreaInsets];
  v13 = v12;
  v15 = v14;
  [v9 safeAreaInsets];
  if (v11 == 1)
  {
    v18 = (v5 - (v13 + v16)) * 0.5 + -32.0;
    [v9 safeAreaInsets];
    v20 = v19;
    [v9 safeAreaInsets];
    v22 = v7 - (v20 + v21);
  }

  else
  {
    v18 = v5 - (v15 + v17);
    [v9 safeAreaInsets];
    v24 = v23;
    [v9 safeAreaInsets];
    v22 = (v7 - (v24 + v25)) * 0.5 + -32.0;
  }

  v26 = v18;
  v27 = v22;
  result.height = v27;
  result.width = v26;
  return result;
}

- (double)keyboardHeightAdjustmentForCaretRect:(CGRect)a3 windowSize:(CGSize)a4
{
  height = a4.height;
  v5 = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  IsNull = CGRectIsNull(a3);
  result = 100.0;
  if (!IsNull && height != 0.0)
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = v5;
    MinY = CGRectGetMinY(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = v5;
    v13 = height - CGRectGetMaxY(v18);
    if (MinY >= v13)
    {
      v13 = MinY;
    }

    v14 = v13 + -66.0;
    if (v14 >= 0.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0.0;
    }

    [(UIKeyboardEmojiPopoverController *)self preferredContentSize];
    result = v15 - v16;
    if (v15 - v16 > 100.0)
    {
      result = 100.0;
    }

    if (result < 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = UIKeyboardEmojiPopoverController;
  [(UIViewController *)&v10 viewIsAppearing:a3];
  v4 = [(UIViewController *)self presentationController];
  v5 = [v4 containerView];

  v6 = [UIKBViewForResponderForwarding alloc];
  [v5 bounds];
  v7 = [(UIView *)v6 initWithFrame:?];
  containerForActiveKeys = self->_containerForActiveKeys;
  self->_containerForActiveKeys = v7;

  [(UIKBViewForResponderForwarding *)self->_containerForActiveKeys setResponderForForwarding:self->_layout];
  [v5 addSubview:self->_containerForActiveKeys];
  v9 = +[UIKeyboardImpl activeInstance];
  [v9 _postInputResponderCapabilitiesChangedNotificationWithOutput:0 selectionChanged:0];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = UIKeyboardEmojiPopoverController;
  [(UIViewController *)&v14 viewDidLayoutSubviews];
  if (!self->_shownKeyboardLayout)
  {
    self->_shownKeyboardLayout = 1;
    if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
    {
      if (![(UIKeyboardEmojiPopoverController *)self isPhone])
      {
LABEL_9:
        [(UIKeyboardEmojiPopoverController *)self showKeyboardLayout];
        [(UIKeyboardEmojiPopoverController *)self associateEmojiSearchViewWithEmojiInputView];
        return;
      }

      [(UIKBScreenTraits *)self->_screenTraits setResizeKeyboardHeight:0];
      v3 = [(UIViewController *)self view];
      [v3 bounds];
      v5 = v4;
      v7 = v6;

      v8 = [(UIViewController *)self popoverPresentationController];
      if ([v8 arrowDirection] == 2)
      {
      }

      else
      {
        v9 = [(UIViewController *)self popoverPresentationController];
        v10 = [v9 arrowDirection];

        if (v10 != 1)
        {
LABEL_8:
          v11 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchInputViewController emojiSearchView];
          [v11 bounds];
          v13 = v7 - v12;

          [(UIKBScreenTraits *)self->_screenTraits setPreferredContentSizeInPopover:v5 + -12.0, v13];
          goto LABEL_9;
        }
      }

      v7 = v7 + -13.0;
      goto LABEL_8;
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = UIKeyboardEmojiPopoverController;
  [(UIViewController *)&v12 viewWillDisappear:a3];
  v4 = +[UIKeyboard isRemoteEmojiCollectionViewEnabled];
  layout = self->_layout;
  if (v4)
  {
    v6 = [(UIKeyboardLayoutStar *)layout keyplane];
    v7 = [v6 firstCachedKeyWithName:@"Emoji-InputView-Key"];

    v8 = [(UIKeyboardLayoutStar *)self->_layout currentKeyplaneView];
    v9 = [v8 viewForKey:v7];

    [v9 frame];
    [v9 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [(UIView *)self->_layout addSubview:v9];
  }

  else
  {
    [(UIKeyboardLayoutStar *)layout deactivateActiveKeys];
  }

  v10 = +[UIKeyboardImpl activeInstance];
  [v10 clearForwardingInputDelegateAndResign:0];

  v11 = +[UIKeyboardImpl activeInstance];
  [v11 _postInputResponderCapabilitiesChangedNotificationWithOutput:0 selectionChanged:0];
}

- (BOOL)handleHardwareKeyboardEvent:(id)a3
{
  v4 = a3;
  v5 = [[UIKey alloc] initWithKeyboardEvent:v4];

  v6 = [(UIKeyboardLayoutStar *)self->_layout emojiKeyManager];
  v7 = [v6 inputView];

  LOBYTE(v6) = [v7 handleKeyEvent:v5];
  return v6;
}

- (void)keyboardLayout:(id)a3 didSwitchToKeyplane:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->_hiddenKeys)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    hiddenKeys = self->_hiddenKeys;
    self->_hiddenKeys = v8;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v7 cachedKeysByKeyName:@"Emoji-International-Key"];
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        [v15 setVisible:0];
        [(NSMutableArray *)self->_hiddenKeys addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [v7 cachedKeysByKeyName:{@"Delete-Key", 0}];
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v22 + 1) + 8 * j);
        if ([(UITextInputTraits *)self->_textInputTraits keyboardType]!= 124)
        {
          [v21 setVisible:0];
          [(NSMutableArray *)self->_hiddenKeys addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v18);
  }
}

- (id)keyboardLayout:(id)a3 willChangeRenderConfig:(id)a4
{
  v4 = a4;
  if (([v4 isFloating] & 1) == 0)
  {
    v5 = [v4 copy];

    [v5 setIsFloating:1];
    v4 = v5;
  }

  return v4;
}

@end