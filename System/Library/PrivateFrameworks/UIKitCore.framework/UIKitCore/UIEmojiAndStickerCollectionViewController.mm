@interface UIEmojiAndStickerCollectionViewController
- (BOOL)handleHardwareKeyboardEvent:(id)event;
- (BOOL)handleKeyEvent:(id)event;
- (NSArray)searchResults;
- (UIEmojiAndStickerCollectionViewController)init;
- (UIEmojiAndStickerCollectionViewController)initWithConfiguration:(id)configuration;
- (UIEmojiAndStickerCollectionViewControllerDelegate)delegate;
- (void)addNoResultsViewIfNeeded;
- (void)handleKeyUIEvent:(id)event dismiss:(BOOL)dismiss;
- (void)setSearchResults:(id)results;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation UIEmojiAndStickerCollectionViewController

- (UIEmojiAndStickerCollectionViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = UIEmojiAndStickerCollectionViewController;
  v6 = [(UIViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (UIEmojiAndStickerCollectionViewController)init
{
  v3.receiver = self;
  v3.super_class = UIEmojiAndStickerCollectionViewController;
  return [(UIViewController *)&v3 init];
}

- (void)viewDidLoad
{
  v50[4] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = UIEmojiAndStickerCollectionViewController;
  [(UIViewController *)&v48 viewDidLoad];
  v3 = [UIKeyboardLayoutStar alloc];
  view = [(UIViewController *)self view];
  [view bounds];
  v5 = [(UIKeyboardLayoutStar *)v3 initWithFrame:?];
  layout = self->_layout;
  self->_layout = v5;

  [(UIKeyboardLayoutStar *)self->_layout setPreventPaddlesForPointerTouches:1];
  [(UIView *)self->_layout setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIKeyboardLayoutStar *)self->_layout setDelegate:self];
  view2 = [(UIViewController *)self view];
  [view2 addSubview:self->_layout];

  topAnchor = [(UIView *)self->_layout topAnchor];
  view3 = [(UIViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v50[0] = v37;
  leadingAnchor = [(UIView *)self->_layout leadingAnchor];
  view4 = [(UIViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v50[1] = v32;
  trailingAnchor = [(UIView *)self->_layout trailingAnchor];
  view5 = [(UIViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v50[2] = v10;
  bottomAnchor = [(UIView *)self->_layout bottomAnchor];
  view6 = [(UIViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v50[3] = v15;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];

  [MEMORY[0x1E69977A0] activateConstraints:v47];
  v16 = [UIEmojiAndStickerBackgroundView alloc];
  view7 = [(UIViewController *)self view];
  [view7 bounds];
  v18 = [(UIEmojiAndStickerBackgroundView *)v16 initWithFrame:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v18;

  [(UIView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  view8 = [(UIViewController *)self view];
  [view8 insertSubview:self->_backgroundView belowSubview:self->_layout];

  v38 = MEMORY[0x1E69977A0];
  topAnchor3 = [(UIView *)self->_backgroundView topAnchor];
  topAnchor4 = [(UIView *)self->_layout topAnchor];
  v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v49[0] = v42;
  leadingAnchor3 = [(UIView *)self->_backgroundView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_layout leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v49[1] = v22;
  trailingAnchor3 = [(UIView *)self->_backgroundView trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_layout trailingAnchor];
  v25 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v49[2] = v25;
  bottomAnchor3 = [(UIView *)self->_backgroundView bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_layout bottomAnchor];
  v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v49[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v38 activateConstraints:v29];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v29.receiver = self;
  v29.super_class = UIEmojiAndStickerCollectionViewController;
  [(UIViewController *)&v29 viewIsAppearing:appearing];
  layout = self->_layout;
  v5 = +[UIKeyboardImpl sharedInstance];
  [v5 setActiveLayout:layout];

  v6 = +[UIKeyboardImpl activeInstance];
  taskQueue = [v6 taskQueue];
  [(UIKeyboardLayout *)self->_layout setTaskQueue:taskQueue];

  view = [(UIViewController *)self view];
  window = [view window];
  if (window)
  {
    view2 = [(UIViewController *)self view];
    window2 = [view2 window];
    interfaceOrientation = [window2 interfaceOrientation];
  }

  else
  {
    interfaceOrientation = 1;
  }

  configuration = self->_configuration;
  if (configuration)
  {
    [(STKEmojiAndStickerCollectionViewConfiguration *)configuration keyboardWidth];
    v15 = v14;
    view3 = [(UIViewController *)self view];
    [view3 bounds];
    [UIKBScreenTraits traitsForRemoteEmojiKeyboardForHostWidth:[(STKEmojiAndStickerCollectionViewConfiguration *)self->_configuration isKeyboardMinorEdgeWidth] clientWidth:interfaceOrientation minorEdge:[(STKEmojiAndStickerCollectionViewConfiguration *)self->_configuration userInterfaceIdiom] orientation:[(STKEmojiAndStickerCollectionViewConfiguration *)self->_configuration isInPopover] idiom:v15 isPopover:v17];
  }

  else
  {
    view3 = [(UIViewController *)self view];
    [view3 bounds];
    [UIKBScreenTraits traitsForPopoverEmulatingWidth:1 minorEdge:interfaceOrientation orientation:0 idiom:v19];
  }
  v18 = ;
  screenTraits = self->_screenTraits;
  self->_screenTraits = v18;

  _inheritedRenderConfig = [(UIView *)self->_layout _inheritedRenderConfig];
  v22 = _inheritedRenderConfig;
  if (_inheritedRenderConfig)
  {
    v23 = _inheritedRenderConfig;
  }

  else
  {
    v23 = +[UIKBRenderConfig defaultConfig];
  }

  v24 = v23;

  v25 = [v24 copy];
  [v25 setIsFloating:0];
  [(UIKeyboardLayoutStar *)self->_layout showKeyboardWithInputMode:@"emoji" renderConfig:v25 inputTraits:0 screenTraits:self->_screenTraits splitTraits:0];
  emojiKeyManager = [(UIKeyboardLayoutStar *)self->_layout emojiKeyManager];
  inputView = [emojiKeyManager inputView];

  bundleId = [(UIEmojiAndStickerCollectionViewController *)self bundleId];
  [inputView setBundleId:bundleId];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = UIEmojiAndStickerCollectionViewController;
  [(UIViewController *)&v8 viewWillDisappear:disappear];
  [(UIKeyboardLayoutStar *)self->_layout deactivateActiveKeys];
  [(UIKeyboardLayout *)self->_layout setTaskQueue:0];
  v4 = +[UIKeyboardImpl sharedInstance];
  activeLayout = [v4 activeLayout];
  layout = self->_layout;

  if (activeLayout == layout)
  {
    v7 = +[UIKeyboardImpl sharedInstance];
    [v7 setActiveLayout:0];

    +[UIKeyboardImpl releaseSharedInstance];
  }
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = UIEmojiAndStickerCollectionViewController;
  [(UIViewController *)&v9 viewWillLayoutSubviews];
  v3 = 0.0;
  if ([(STKEmojiAndStickerCollectionViewConfiguration *)self->_configuration userInterfaceIdiom]== 1 && ([(STKEmojiAndStickerCollectionViewConfiguration *)self->_configuration isInPopover]& 1) == 0)
  {
    traitCollection = [(UIViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 2)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2050000000;
      v6 = _MergedGlobals_1_33;
      v14 = _MergedGlobals_1_33;
      if (!_MergedGlobals_1_33)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __getTUIEmojiSearchTextFieldClass_block_invoke_1;
        v10[3] = &unk_1E70F2F20;
        v10[4] = &v11;
        __getTUIEmojiSearchTextFieldClass_block_invoke_1(v10);
        v6 = v12[3];
      }

      v7 = v6;
      _Block_object_dispose(&v11, 8);
      [v6 preferredHeight];
      v3 = v8;
    }
  }

  [(UIEmojiAndStickerBackgroundView *)self->_backgroundView setCutoutHeight:v3];
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

- (BOOL)handleKeyEvent:(id)event
{
  layout = self->_layout;
  eventCopy = event;
  emojiKeyManager = [(UIKeyboardLayoutStar *)layout emojiKeyManager];
  inputView = [emojiKeyManager inputView];

  LOBYTE(emojiKeyManager) = [inputView handleKeyEvent:eventCopy];
  return emojiKeyManager;
}

- (void)handleKeyUIEvent:(id)event dismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  eventCopy = event;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = eventCopy;
  if (isKindOfClass)
  {
    _modifiedInput = [eventCopy _modifiedInput];
    if (_modifiedInput)
    {
      delegate = [(UIEmojiAndStickerCollectionViewController *)self delegate];
      v10 = objc_opt_respondsToSelector();

      delegate2 = [(UIEmojiAndStickerCollectionViewController *)self delegate];
      v12 = delegate2;
      if (v10)
      {
        [delegate2 didSelectEmoji:_modifiedInput dismiss:dismissCopy];
      }

      else
      {
        [delegate2 didSelectEmoji:_modifiedInput];
      }
    }

    v7 = eventCopy;
  }
}

- (void)addNoResultsViewIfNeeded
{
  v24[4] = *MEMORY[0x1E69E9840];
  if (!self->_noResultsView)
  {
    v3 = objc_alloc_init(UIEmojiNoResultsView);
    noResultsView = self->_noResultsView;
    self->_noResultsView = v3;

    [(UIView *)self->_noResultsView setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(UIViewController *)self view];
    [view addSubview:self->_noResultsView];

    v16 = MEMORY[0x1E69977A0];
    topAnchor = [(UIView *)self->_noResultsView topAnchor];
    view2 = [(UIViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[0] = v20;
    bottomAnchor = [(UIView *)self->_noResultsView bottomAnchor];
    view3 = [(UIViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v6 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[1] = v6;
    leadingAnchor = [(UIView *)self->_noResultsView leadingAnchor];
    view4 = [(UIViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[2] = v10;
    trailingAnchor = [(UIView *)self->_noResultsView trailingAnchor];
    view5 = [(UIViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v16 activateConstraints:v15];
  }
}

- (void)setSearchResults:(id)results
{
  resultsCopy = results;
  v5 = resultsCopy;
  if (resultsCopy && ![resultsCopy count])
  {
    [(UIEmojiAndStickerCollectionViewController *)self addNoResultsViewIfNeeded];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  [(UIView *)self->_noResultsView setHidden:v6 ^ 1];
  [(UIView *)self->_layout setHidden:v6];
  [(UIEmojiNoResultsView *)self->_noResultsView setSupportsGenmoji:[(STKEmojiAndStickerCollectionViewConfiguration *)self->_configuration doesSupportGenmoji]];
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    if ([(STKEmojiAndStickerCollectionViewConfiguration *)self->_configuration doesSupportGenmoji])
    {
      previousShowsNoResultsView = self->_previousShowsNoResultsView;
      if (v6 && !previousShowsNoResultsView)
      {
        v10 = +[_UISignalAnalytics getIASignalGenmojiCreationCreateNewEmojiButtonShown];
        goto LABEL_14;
      }

      if (!v6 && previousShowsNoResultsView)
      {
        v10 = +[_UISignalAnalytics getIASignalGenmojiCreationCreateNewEmojiDismissed];
LABEL_14:
        v12 = v10;
        [_UISignalAnalytics sendGenmojiCreationSignal:v10 payload:0];
      }
    }

    self->_previousShowsNoResultsView = v6;
    goto LABEL_16;
  }

  v11 = _UISignalAnalyticsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Unexpected idiom in UIEmojiAndStickerCollectionViewController setSearchResults", v15, 2u);
  }

LABEL_16:
  emojiKeyManager = [(UIKeyboardLayoutStar *)self->_layout emojiKeyManager];
  inputView = [emojiKeyManager inputView];

  [inputView setSearchResults:v5];
}

- (NSArray)searchResults
{
  emojiKeyManager = [(UIKeyboardLayoutStar *)self->_layout emojiKeyManager];
  inputView = [emojiKeyManager inputView];

  searchResults = [inputView searchResults];

  return searchResults;
}

- (UIEmojiAndStickerCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end