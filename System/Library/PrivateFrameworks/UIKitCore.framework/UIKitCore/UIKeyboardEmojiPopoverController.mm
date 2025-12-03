@interface UIKeyboardEmojiPopoverController
- (BOOL)handleHardwareKeyboardEvent:(id)event;
- (BOOL)isPhone;
- (CGSize)preferredContentSize;
- (CGSize)preferredContentSizeForPhone;
- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)traits;
- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)traits hasVerticalScrolling:(BOOL)scrolling;
- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)traits taskQueue:(id)queue scrollingDirection:(int64_t)direction window:(id)window caretRect:(CGRect)rect;
- (double)keyboardHeightAdjustmentForCaretRect:(CGRect)rect windowSize:(CGSize)size;
- (double)preferredTextFieldHeight;
- (id)keyboardLayout:(id)layout willChangeRenderConfig:(id)config;
- (void)associateEmojiSearchViewWithEmojiInputView;
- (void)configurePopoverPresentationController:(id)controller;
- (void)dealloc;
- (void)keyboardLayout:(id)layout didSwitchToKeyplane:(id)keyplane;
- (void)shouldDismissNotification:(id)notification;
- (void)showKeyboardLayout;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation UIKeyboardEmojiPopoverController

- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)traits
{
  traitsCopy = traits;
  v5 = objc_alloc_init(UIKeyboardTaskQueue);
  v6 = [(UIKeyboardEmojiPopoverController *)self initWithTextInputTraits:traitsCopy taskQueue:v5];

  return v6;
}

- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)traits hasVerticalScrolling:(BOOL)scrolling
{
  scrollingCopy = scrolling;
  traitsCopy = traits;
  v7 = objc_alloc_init(UIKeyboardTaskQueue);
  v8 = [(UIKeyboardEmojiPopoverController *)self initWithTextInputTraits:traitsCopy taskQueue:v7 scrollingDirection:scrollingCopy];

  return v8;
}

- (UIKeyboardEmojiPopoverController)initWithTextInputTraits:(id)traits taskQueue:(id)queue scrollingDirection:(int64_t)direction window:(id)window caretRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  traitsCopy = traits;
  queueCopy = queue;
  windowCopy = window;
  v30.receiver = self;
  v30.super_class = UIKeyboardEmojiPopoverController;
  v19 = [(UIKeyboardPopoverController *)&v30 init];
  if (v19)
  {
    traitCollection = [windowCopy traitCollection];
    if ([traitCollection horizontalSizeClass] == 1)
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

    if (direction == 1)
    {
      [(UIKBScreenTraits *)v19->_screenTraits setResizeKeyboardHeight:1];
      [windowCopy bounds];
      [(UIKeyboardEmojiPopoverController *)v19 keyboardHeightAdjustmentForCaretRect:x windowSize:y, width, height, v24, v25];
      [(UIKBScreenTraits *)v19->_screenTraits setKeyboardHeightAdjustment:?];
    }

    [(UIKBScreenTraits *)v19->_screenTraits setPreferredEmojiScrollingDirection:direction];
    objc_storeStrong(&v19->_textInputTraits, traits);
    objc_storeStrong(&v19->_taskQueue, queue);
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_shouldDismissNotification_ name:@"UIKeyboardEmojiPopoverControllerShouldDismiss" object:0];

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

  view = [(UIViewController *)self view];
  [view addSubview:self->_layout];

  if ([(UIKeyboardEmojiPopoverController *)self isPhone])
  {
    v7 = -2.0;
  }

  else
  {
    v7 = 0.0;
  }

  emojiKeyManager = [(UIKeyboardLayoutStar *)self->_layout emojiKeyManager];
  if (!emojiKeyManager)
  {
    goto LABEL_18;
  }

  emojiKeyManager2 = [(UIKeyboardLayoutStar *)self->_layout emojiKeyManager];
  inputView = [emojiKeyManager2 inputView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_10;
  }

  v11 = +[UIKeyboard isRemoteEmojiCollectionViewEnabled];

  if (!v11)
  {
LABEL_18:
    isPhone = [(UIKeyboardEmojiPopoverController *)self isPhone];
LABEL_19:
    topAnchor = [(UIView *)self->_layout topAnchor];
    view2 = [(UIViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
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
  view3 = [v14 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(UIViewController *)self addChildViewController:v14];
  view4 = [(UIViewController *)self view];
  view5 = [v14 view];
  [view4 addSubview:view5];

  view6 = [v14 view];
  topAnchor3 = [view6 topAnchor];
  view7 = [(UIViewController *)self view];
  safeAreaLayoutGuide2 = [view7 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide2 topAnchor];
  v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
  v75[0] = v54;
  topAnchor5 = [(UIView *)self->_layout topAnchor];
  view8 = [v14 view];
  bottomAnchor = [view8 bottomAnchor];
  v49 = [topAnchor5 constraintEqualToAnchor:bottomAnchor];
  v75[1] = v49;
  view9 = [v14 view];
  leadingAnchor = [view9 leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_layout leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v7];
  v75[2] = v18;
  trailingAnchor = [(UIView *)self->_layout trailingAnchor];
  view10 = [v14 view];
  trailingAnchor2 = [view10 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v7];
  v75[3] = v22;
  view11 = [v14 view];
  heightAnchor = [view11 heightAnchor];
  [(UIKeyboardEmojiPopoverController *)self preferredTextFieldHeight];
  v25 = [heightAnchor constraintEqualToConstant:?];
  v75[4] = v25;
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:5];

  emojiSearchView = [v14 emojiSearchView];
  [emojiSearchView setPredictionViewVisible:0];
  [emojiSearchView setCollapsed:0];
  searchTextField = [emojiSearchView searchTextField];
  [searchTextField setKeyboardType:122];

  searchTextField2 = [emojiSearchView searchTextField];
  [searchTextField2 setReturnKeyType:9];

  if (objc_opt_respondsToSelector())
  {
    [emojiSearchView setResultsViewVisible:0];
  }

  if (!+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
  {
    [(UIKeyboardEmojiPopoverController *)self associateEmojiSearchViewWithEmojiInputView];
  }

  isPhone = [(UIKeyboardEmojiPopoverController *)self isPhone];
  if (!v66)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (isPhone)
  {
    v35 = 8.0;
  }

  else
  {
    v35 = 0.0;
  }

  leadingAnchor3 = [(UIView *)self->_layout leadingAnchor];
  view12 = [(UIViewController *)self view];
  safeAreaLayoutGuide3 = [view12 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide3 leadingAnchor];
  v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v35];
  v73[0] = v57;
  trailingAnchor3 = [(UIView *)self->_layout trailingAnchor];
  view13 = [(UIViewController *)self view];
  safeAreaLayoutGuide4 = [view13 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide4 trailingAnchor];
  v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v35];
  v73[1] = v38;
  bottomAnchor2 = [(UIView *)self->_layout bottomAnchor];
  view14 = [(UIViewController *)self view];
  safeAreaLayoutGuide5 = [view14 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide5 bottomAnchor];
  v43 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v73[2] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:3];
  v45 = [v66 arrayByAddingObjectsFromArray:v44];

  [MEMORY[0x1E69977A0] activateConstraints:v45];
}

- (void)shouldDismissNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = notificationCopy;
  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
    popoverPresentationController = [(UIViewController *)self popoverPresentationController];
    containerView = [popoverPresentationController containerView];
    view = [object2 view];
    v11 = [(UIView *)containerView _containsView:view];

    if (v11)
    {
      v12 = +[UIKeyboardImpl activeInstance];
      [v12 dismissEmojiPopoverIfNecessaryWithCompletion:0];
    }

    v6 = notificationCopy;
  }
}

- (void)showKeyboardLayout
{
  _inheritedRenderConfig = [(UIView *)self->_layout _inheritedRenderConfig];
  v4 = _inheritedRenderConfig;
  if (_inheritedRenderConfig)
  {
    v5 = _inheritedRenderConfig;
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
  emojiKeyManager = [(UIKeyboardLayoutStar *)self->_layout emojiKeyManager];
  inputView = [emojiKeyManager inputView];

  if (inputView)
  {
    [(TUIEmojiSearchInputViewController *)self->_emojiSearchInputViewController setDelegate:inputView];
    [inputView setEmojiSearchInputViewController:self->_emojiSearchInputViewController];
    emojiSearchView = [(TUIEmojiSearchInputViewController *)self->_emojiSearchInputViewController emojiSearchView];
    searchTextField = [emojiSearchView searchTextField];
    [inputView setEmojiSearchField:searchTextField];

    searchTextField2 = [emojiSearchView searchTextField];
    [searchTextField2 becomeFirstResponder];
  }
}

- (void)configurePopoverPresentationController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setPopoverBackgroundViewClass:objc_opt_class()];
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
  traitCollection = [(UIViewController *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 0;

  return v3;
}

- (CGSize)preferredContentSizeForPhone
{
  screen = [(UIKBScreenTraits *)self->_screenTraits screen];
  [screen bounds];
  v5 = v4;
  v7 = v6;

  viewIfLoaded = [(UIViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  traitCollection = [(UIViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  [window safeAreaInsets];
  v13 = v12;
  v15 = v14;
  [window safeAreaInsets];
  if (verticalSizeClass == 1)
  {
    v18 = (v5 - (v13 + v16)) * 0.5 + -32.0;
    [window safeAreaInsets];
    v20 = v19;
    [window safeAreaInsets];
    v22 = v7 - (v20 + v21);
  }

  else
  {
    v18 = v5 - (v15 + v17);
    [window safeAreaInsets];
    v24 = v23;
    [window safeAreaInsets];
    v22 = (v7 - (v24 + v25)) * 0.5 + -32.0;
  }

  v26 = v18;
  v27 = v22;
  result.height = v27;
  result.width = v26;
  return result;
}

- (double)keyboardHeightAdjustmentForCaretRect:(CGRect)rect windowSize:(CGSize)size
{
  height = size.height;
  v5 = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  IsNull = CGRectIsNull(rect);
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

- (void)viewIsAppearing:(BOOL)appearing
{
  v10.receiver = self;
  v10.super_class = UIKeyboardEmojiPopoverController;
  [(UIViewController *)&v10 viewIsAppearing:appearing];
  presentationController = [(UIViewController *)self presentationController];
  containerView = [presentationController containerView];

  v6 = [UIKBViewForResponderForwarding alloc];
  [containerView bounds];
  v7 = [(UIView *)v6 initWithFrame:?];
  containerForActiveKeys = self->_containerForActiveKeys;
  self->_containerForActiveKeys = v7;

  [(UIKBViewForResponderForwarding *)self->_containerForActiveKeys setResponderForForwarding:self->_layout];
  [containerView addSubview:self->_containerForActiveKeys];
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
      view = [(UIViewController *)self view];
      [view bounds];
      v5 = v4;
      v7 = v6;

      popoverPresentationController = [(UIViewController *)self popoverPresentationController];
      if ([popoverPresentationController arrowDirection] == 2)
      {
      }

      else
      {
        popoverPresentationController2 = [(UIViewController *)self popoverPresentationController];
        arrowDirection = [popoverPresentationController2 arrowDirection];

        if (arrowDirection != 1)
        {
LABEL_8:
          emojiSearchView = [(TUIEmojiSearchInputViewController *)self->_emojiSearchInputViewController emojiSearchView];
          [emojiSearchView bounds];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v12.receiver = self;
  v12.super_class = UIKeyboardEmojiPopoverController;
  [(UIViewController *)&v12 viewWillDisappear:disappear];
  v4 = +[UIKeyboard isRemoteEmojiCollectionViewEnabled];
  layout = self->_layout;
  if (v4)
  {
    keyplane = [(UIKeyboardLayoutStar *)layout keyplane];
    v7 = [keyplane firstCachedKeyWithName:@"Emoji-InputView-Key"];

    currentKeyplaneView = [(UIKeyboardLayoutStar *)self->_layout currentKeyplaneView];
    v9 = [currentKeyplaneView viewForKey:v7];

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

- (BOOL)handleHardwareKeyboardEvent:(id)event
{
  eventCopy = event;
  v5 = [[UIKey alloc] initWithKeyboardEvent:eventCopy];

  emojiKeyManager = [(UIKeyboardLayoutStar *)self->_layout emojiKeyManager];
  inputView = [emojiKeyManager inputView];

  LOBYTE(emojiKeyManager) = [inputView handleKeyEvent:v5];
  return emojiKeyManager;
}

- (void)keyboardLayout:(id)layout didSwitchToKeyplane:(id)keyplane
{
  v32 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  keyplaneCopy = keyplane;
  if (!self->_hiddenKeys)
  {
    array = [MEMORY[0x1E695DF70] array];
    hiddenKeys = self->_hiddenKeys;
    self->_hiddenKeys = array;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [keyplaneCopy cachedKeysByKeyName:@"Emoji-International-Key"];
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
  v16 = [keyplaneCopy cachedKeysByKeyName:{@"Delete-Key", 0}];
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

- (id)keyboardLayout:(id)layout willChangeRenderConfig:(id)config
{
  configCopy = config;
  if (([configCopy isFloating] & 1) == 0)
  {
    v5 = [configCopy copy];

    [v5 setIsFloating:1];
    configCopy = v5;
  }

  return configCopy;
}

@end