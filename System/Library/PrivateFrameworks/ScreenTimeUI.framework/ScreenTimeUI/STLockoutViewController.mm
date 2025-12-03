@interface STLockoutViewController
+ (id)_applicationNameForBundleIdentifier:(id)identifier;
+ (id)_applicationNameForWebsiteURL:(id)l;
+ (id)_bundleIdentifierForWebsiteURL:(id)l;
+ (id)_messageForCategoryIdentifier:(id)identifier;
+ (id)lockoutViewControllerWithBundleIdentifier:(id)identifier;
+ (id)lockoutViewControllerWithBundleIdentifier:(id)identifier contactsHandles:(id)handles contactNameByHandle:(id)handle;
+ (id)lockoutViewControllerWithBundleIdentifier:(id)identifier contactsHandles:(id)handles contactNameByHandle:(id)handle type:(int64_t)type;
+ (id)lockoutViewControllerWithCategoryIdentifier:(id)identifier;
+ (id)lockoutViewControllerWithConversationContext:(id)context bundleIdentifier:(id)identifier contactStore:(id)store applicationName:(id)name contactNameByHandle:(id)handle;
+ (id)lockoutViewControllerWithConversationContext:(id)context bundleIdentifier:(id)identifier contactStore:(id)store applicationName:(id)name contactNameByHandle:(id)handle type:(int64_t)type;
+ (id)lockoutViewControllerWithWebsiteURL:(id)l;
+ (id)messageForApplicationName:(id)name style:(int64_t)style;
+ (id)messageForBundleIdentifier:(id)identifier style:(int64_t)style;
+ (id)messageForWebsiteURL:(id)l;
- (BOOL)_actionDismiss;
- (BOOL)_actionUnlockedAskOrApproveActionSheet;
- (BOOL)_actionUnlockedEnterScreenTimePasscodeActionSheet;
- (BOOL)_authenticatedApproveActionSheet;
- (BOOL)_performUnlockedActionWithCompletionHandler:(id)handler;
- (STCommunicationLimitsLockoutViewControllerDelegate)communicationLimitsDelegate;
- (STLockoutViewController)initWithBundleIdentifier:(id)identifier;
- (STLockoutViewController)initWithBundleIdentifier:(id)identifier contactsHandles:(id)handles;
- (STLockoutViewController)initWithBundleIdentifier:(id)identifier conversationContext:(id)context contactStore:(id)store;
- (STLockoutViewController)initWithWebsiteURL:(id)l;
- (STLockoutViewControllerDelegate)viewControllerDelegate;
- (UIButton)mainButton;
- (UIButton)okButton;
- (UIImageView)communicationLimitView;
- (UIImageView)hourglassView;
- (UILabel)messageLabel;
- (UILabel)titleLabel;
- (UIResponder)customNextResponder;
- (UIResponder)nextResponder;
- (UIStackView)buttonStackView;
- (UIVisualEffectView)view;
- (UIVisualEffectView)viewIfLoaded;
- (id)_updateMessageLabelAndReturnHandleWithPhoneNumberFormat:(id)format emailAddressFormat:(id)addressFormat contactNameFormat:(id)nameFormat;
- (void)_actionAddContact:(id)contact;
- (void)_actionAskOrApproveActionSheet:(id)sheet;
- (void)_actionEnterScreenTimePasscodeActionSheet:(id)sheet;
- (void)_actionIgnoreLimitActionSheet:(id)sheet;
- (void)_actionOK:(id)k;
- (void)_actionUnlockedAddContact;
- (void)_actionUnlockedAskOrApproveActionSheet;
- (void)_authenticatedApproveForAdditionalTime:(double)time;
- (void)_changeMainButtonToAddContact:(id)contact;
- (void)_changeMainButtonToAskForMore;
- (void)_changeMainButtonToEnterScreenTimePasscode;
- (void)_changeMainButtonToIgnoreLimit;
- (void)_changeMessageToInitial;
- (void)_changeStateToApproved;
- (void)_changeStateToAsk;
- (void)_changeStateToContactBlocked;
- (void)_changeStateToContactBlockedDuringDowntime;
- (void)_changeStateToDisapproved;
- (void)_changeStateToDismissing;
- (void)_changeStateToPending;
- (void)_changeStateToWarn;
- (void)_doInitialAnimationExitingGroup:(id)group;
- (void)_doInitialAnimationOfHourglassExitingGroup:(id)group;
- (void)_embedCommunicationLimitsBlockingViewControllerWithType:(int64_t)type;
- (void)_fadeInBackdropWithCompletion:(id)completion;
- (void)_fadeInHourglass;
- (void)_fadeInTextAndButtons;
- (void)_fadeOutBackdropWithCompletion:(id)completion;
- (void)_fadeOutHourglass;
- (void)_fadeOutTextAndButtons;
- (void)_handleRestrictionsPINNotification:(id)notification;
- (void)_hideBackdrop;
- (void)_hideHourglass;
- (void)_presentAlertController:(id)controller;
- (void)_restoreBackdrop;
- (void)_restoreHourglass;
- (void)_restoreTextAndButtons;
- (void)_restrictionsPINControllerDidFinish:(BOOL)finish;
- (void)_setTextAndButtonsAlpha:(double)alpha;
- (void)_setupCommon;
- (void)_showApprovalAnimationIfNeeded;
- (void)_showDismissingAnimationIfNeeded;
- (void)_showInitialAnimationIfNeeded;
- (void)_showRestrictionsPINControllerWithMainCompletion:(id)completion;
- (void)_startListeningForRestrictionsPINEntryNotification;
- (void)_stopListeningForRestrictionsPINEntryNotification;
- (void)_undoApprovalAnimationIfNeeded;
- (void)_unlockWithSuccessMainCompletion:(id)completion;
- (void)_updateImageVisibility;
- (void)_updateMainButtonVisibility;
- (void)_updateMainButtonWithTitle:(id)title action:(SEL)action;
- (void)_updateOKButtonVisibility;
- (void)_updateWithNaturalBlockingUIStyling;
- (void)addToContactsButtonPressed;
- (void)communicationLimitsApproveInPersonButtonPressed;
- (void)communicationLimitsPreviewMessageButtonPressed;
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)removeCommunicationLimitsBlockingViewBackground;
- (void)setBundleIdentifier:(id)identifier;
- (void)setCommunicationLimitsDelegate:(id)delegate;
- (void)setDidFinishDismissing:(BOOL)dismissing;
- (void)setForSnapshot:(BOOL)snapshot;
- (void)setMainButtonAlwaysHidden:(BOOL)hidden;
- (void)setShouldHideStoryboardViews:(BOOL)views;
- (void)setView:(id)view;
- (void)stateDidChange:(unint64_t)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation STLockoutViewController

+ (id)lockoutViewControllerWithCategoryIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D75AC8];
  identifierCopy = identifier;
  v5 = +[STScreenTimeUIBundle bundle];
  v6 = [v3 storyboardWithName:@"BlockingUI-iOS" bundle:v5];

  instantiateInitialViewController = [v6 instantiateInitialViewController];
  [instantiateInitialViewController _setupCommon];
  v8 = [[STLockoutPolicyController alloc] initWithCategoryIdentifier:identifierCopy delegate:instantiateInitialViewController];

  [instantiateInitialViewController setPolicyController:v8];
  instantiateInitialViewController[124] = 4;

  return instantiateInitialViewController;
}

+ (id)lockoutViewControllerWithBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D75AC8];
  identifierCopy = identifier;
  v5 = +[STScreenTimeUIBundle bundle];
  v6 = [v3 storyboardWithName:@"BlockingUI-iOS" bundle:v5];

  instantiateInitialViewController = [v6 instantiateInitialViewController];
  v8 = [[STLockoutPolicyController alloc] initWithBundleIdentifier:identifierCopy delegate:instantiateInitialViewController];
  [instantiateInitialViewController setPolicyController:v8];

  instantiateInitialViewController[124] = 0;
  [instantiateInitialViewController setBundleIdentifier:identifierCopy];

  v9 = objc_opt_new();
  v10 = instantiateInitialViewController[128];
  instantiateInitialViewController[128] = v9;

  return instantiateInitialViewController;
}

+ (id)lockoutViewControllerWithWebsiteURL:(id)l
{
  v3 = MEMORY[0x277D75AC8];
  lCopy = l;
  v5 = +[STScreenTimeUIBundle bundle];
  v6 = [v3 storyboardWithName:@"BlockingUI-iOS" bundle:v5];

  instantiateInitialViewController = [v6 instantiateInitialViewController];
  [instantiateInitialViewController _setupCommon];
  v8 = [[STLockoutPolicyController alloc] initWithWebsiteURL:lCopy delegate:instantiateInitialViewController];

  [instantiateInitialViewController setPolicyController:v8];
  instantiateInitialViewController[124] = 1;

  return instantiateInitialViewController;
}

+ (id)lockoutViewControllerWithConversationContext:(id)context bundleIdentifier:(id)identifier contactStore:(id)store applicationName:(id)name contactNameByHandle:(id)handle
{
  v11 = MEMORY[0x277D75AC8];
  handleCopy = handle;
  nameCopy = name;
  storeCopy = store;
  identifierCopy = identifier;
  contextCopy = context;
  v17 = +[STScreenTimeUIBundle bundle];
  v18 = [v11 storyboardWithName:@"BlockingUI-iOS" bundle:v17];

  instantiateInitialViewController = [v18 instantiateInitialViewController];
  [instantiateInitialViewController _setupCommon];
  v20 = [[STLockoutPolicyController alloc] initWithBundleIdentifier:identifierCopy conversationContext:contextCopy contactStore:storeCopy delegate:instantiateInitialViewController];

  [instantiateInitialViewController setPolicyController:v20];
  instantiateInitialViewController[124] = 3;
  v21 = [nameCopy copy];

  v22 = instantiateInitialViewController[139];
  instantiateInitialViewController[139] = v21;

  v23 = [handleCopy copy];
  v24 = instantiateInitialViewController[140];
  instantiateInitialViewController[140] = v23;

  v25 = objc_opt_new();
  v26 = instantiateInitialViewController[128];
  instantiateInitialViewController[128] = v25;

  [instantiateInitialViewController _embedCommunicationLimitsBlockingViewControllerWithType:0];

  return instantiateInitialViewController;
}

+ (id)lockoutViewControllerWithBundleIdentifier:(id)identifier contactsHandles:(id)handles contactNameByHandle:(id)handle
{
  v7 = MEMORY[0x277D75AC8];
  handleCopy = handle;
  handlesCopy = handles;
  identifierCopy = identifier;
  v11 = +[STScreenTimeUIBundle bundle];
  v12 = [v7 storyboardWithName:@"BlockingUI-iOS" bundle:v11];

  instantiateInitialViewController = [v12 instantiateInitialViewController];
  [instantiateInitialViewController _setupCommon];
  v14 = [[STLockoutPolicyController alloc] initWithBundleIdentifier:identifierCopy contactsHandles:handlesCopy delegate:instantiateInitialViewController];

  [instantiateInitialViewController setPolicyController:v14];
  instantiateInitialViewController[124] = 3;
  v15 = [handleCopy copy];

  v16 = instantiateInitialViewController[140];
  instantiateInitialViewController[140] = v15;

  v17 = objc_opt_new();
  v18 = instantiateInitialViewController[128];
  instantiateInitialViewController[128] = v17;

  [instantiateInitialViewController _embedCommunicationLimitsBlockingViewControllerWithType:0];

  return instantiateInitialViewController;
}

+ (id)lockoutViewControllerWithConversationContext:(id)context bundleIdentifier:(id)identifier contactStore:(id)store applicationName:(id)name contactNameByHandle:(id)handle type:(int64_t)type
{
  v13 = MEMORY[0x277D75AC8];
  handleCopy = handle;
  nameCopy = name;
  storeCopy = store;
  identifierCopy = identifier;
  contextCopy = context;
  v19 = +[STScreenTimeUIBundle bundle];
  v20 = [v13 storyboardWithName:@"BlockingUI-iOS" bundle:v19];

  instantiateInitialViewController = [v20 instantiateInitialViewController];
  [instantiateInitialViewController _setupCommon];
  v22 = [[STLockoutPolicyController alloc] initWithBundleIdentifier:identifierCopy conversationContext:contextCopy contactStore:storeCopy delegate:instantiateInitialViewController];

  [instantiateInitialViewController setPolicyController:v22];
  instantiateInitialViewController[124] = 3;
  v23 = [nameCopy copy];

  v24 = instantiateInitialViewController[139];
  instantiateInitialViewController[139] = v23;

  v25 = [handleCopy copy];
  v26 = instantiateInitialViewController[140];
  instantiateInitialViewController[140] = v25;

  v27 = objc_opt_new();
  v28 = instantiateInitialViewController[128];
  instantiateInitialViewController[128] = v27;

  [instantiateInitialViewController _embedCommunicationLimitsBlockingViewControllerWithType:type];

  return instantiateInitialViewController;
}

+ (id)lockoutViewControllerWithBundleIdentifier:(id)identifier contactsHandles:(id)handles contactNameByHandle:(id)handle type:(int64_t)type
{
  v9 = MEMORY[0x277D75AC8];
  handleCopy = handle;
  handlesCopy = handles;
  identifierCopy = identifier;
  v13 = +[STScreenTimeUIBundle bundle];
  v14 = [v9 storyboardWithName:@"BlockingUI-iOS" bundle:v13];

  instantiateInitialViewController = [v14 instantiateInitialViewController];
  [instantiateInitialViewController _setupCommon];
  v16 = [[STLockoutPolicyController alloc] initWithBundleIdentifier:identifierCopy contactsHandles:handlesCopy delegate:instantiateInitialViewController];

  [instantiateInitialViewController setPolicyController:v16];
  instantiateInitialViewController[124] = 3;
  v17 = [handleCopy copy];

  v18 = instantiateInitialViewController[140];
  instantiateInitialViewController[140] = v17;

  v19 = objc_opt_new();
  v20 = instantiateInitialViewController[128];
  instantiateInitialViewController[128] = v19;

  [instantiateInitialViewController _embedCommunicationLimitsBlockingViewControllerWithType:type];

  return instantiateInitialViewController;
}

- (void)setShouldHideStoryboardViews:(BOOL)views
{
  if (self->_shouldHideStoryboardViews != views)
  {
    viewsCopy = views;
    self->_shouldHideStoryboardViews = views;
    titleLabel = [(STLockoutViewController *)self titleLabel];
    [titleLabel setHidden:viewsCopy];

    messageLabel = [(STLockoutViewController *)self messageLabel];
    [messageLabel setHidden:viewsCopy];

    [(STLockoutViewController *)self _updateMainButtonVisibility];
    [(STLockoutViewController *)self _updateOKButtonVisibility];

    [(STLockoutViewController *)self _updateImageVisibility];
  }
}

- (void)_embedCommunicationLimitsBlockingViewControllerWithType:(int64_t)type
{
  v33[4] = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    policyController = [(STLockoutViewController *)self policyController];
    blockedContactsHandles = [policyController blockedContactsHandles];
    allObjects = [blockedContactsHandles allObjects];

    contactNameByHandle = [(STLockoutViewController *)self contactNameByHandle];
    v30 = [_TtC12ScreenTimeUI50STCommunicationLimitsBlockingViewControllerFactory createCommunicationLimitsBlockingViewModelWithBlockingViewType:type contactNameByHandle:contactNameByHandle delegate:self handles:allObjects];
    [(STLockoutViewController *)self setCommunicationLimitsBlockingViewModel:v30];
    v7 = [_TtC12ScreenTimeUI50STCommunicationLimitsBlockingViewControllerFactory communicationLimitsBlockingViewControllerWithViewModel:v30];
    [(STLockoutViewController *)self addChildViewController:v7];
    view = [(STLockoutViewController *)self view];
    contentView = [view contentView];

    view2 = [v7 view];
    [contentView addSubview:view2];

    view3 = [v7 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = MEMORY[0x277CCAAD0];
    view4 = [v7 view];
    topAnchor = [view4 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v33[0] = v26;
    view5 = [v7 view];
    bottomAnchor = [view5 bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v33[1] = v21;
    view6 = [v7 view];
    leadingAnchor = [view6 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[2] = v13;
    view7 = [v7 view];
    trailingAnchor = [view7 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v33[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
    [v22 activateConstraints:v18];

    [v7 didMoveToParentViewController:self];
    [(STLockoutViewController *)self setCommunicationLimitsBlockingViewController:v7];
  }
}

- (void)setCommunicationLimitsDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_communicationLimitsDelegate, delegateCopy);
  communicationLimitsBlockingViewModel = [(STLockoutViewController *)self communicationLimitsBlockingViewModel];
  blockingViewType = [communicationLimitsBlockingViewModel blockingViewType];

  if (!blockingViewType)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = 1;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_7;
      }

      v6 = 2;
    }

    communicationLimitsBlockingViewModel2 = [(STLockoutViewController *)self communicationLimitsBlockingViewModel];
    [communicationLimitsBlockingViewModel2 setBlockingViewType:v6];
  }

LABEL_7:
}

- (void)communicationLimitsPreviewMessageButtonPressed
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__STLockoutViewController_communicationLimitsPreviewMessageButtonPressed__block_invoke;
  aBlock[3] = &unk_278338B68;
  aBlock[4] = self;
  aBlock[5] = sel_communicationLimitsPreviewMessageButtonPressed_;
  v3 = _Block_copy(aBlock);
  if ([(STLockoutPolicyController *)self->_policyController _isRestrictionsPasscodeSet])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __73__STLockoutViewController_communicationLimitsPreviewMessageButtonPressed__block_invoke_31;
    v4[3] = &unk_278339140;
    v5 = v3;
    [(STLockoutViewController *)self _showRestrictionsPINControllerWithMainCompletion:v4];
  }

  else
  {
    v3[2](v3);
  }
}

void __73__STLockoutViewController_communicationLimitsPreviewMessageButtonPressed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) communicationLimitsDelegate];
  v3 = (a1 + 40);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [*(a1 + 32) communicationLimitsDelegate];
    [v6 communicationLimitsPreviewMessageButtonPressed:*(a1 + 32)];
  }

  else
  {
    v5 = +[STBlockingUILog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__STLockoutViewController_communicationLimitsPreviewMessageButtonPressed__block_invoke_cold_1(v3);
    }
  }
}

void __73__STLockoutViewController_communicationLimitsPreviewMessageButtonPressed__block_invoke_31(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = +[STBlockingUILog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __73__STLockoutViewController_communicationLimitsPreviewMessageButtonPressed__block_invoke_31_cold_1();
    }
  }
}

- (void)communicationLimitsApproveInPersonButtonPressed
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__STLockoutViewController_communicationLimitsApproveInPersonButtonPressed__block_invoke;
  aBlock[3] = &unk_278338B68;
  aBlock[4] = self;
  aBlock[5] = sel_communicationLimitsApproveInPersonButtonPressed_;
  v3 = _Block_copy(aBlock);
  if ([(STLockoutPolicyController *)self->_policyController _isRestrictionsPasscodeSet])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __74__STLockoutViewController_communicationLimitsApproveInPersonButtonPressed__block_invoke_33;
    v4[3] = &unk_278339140;
    v5 = v3;
    [(STLockoutViewController *)self _showRestrictionsPINControllerWithMainCompletion:v4];
  }

  else
  {
    v3[2](v3);
  }
}

void __74__STLockoutViewController_communicationLimitsApproveInPersonButtonPressed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) communicationLimitsDelegate];
  v3 = (a1 + 40);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [*(a1 + 32) communicationLimitsDelegate];
    [v6 communicationLimitsApproveInPersonButtonPressed:*(a1 + 32)];
  }

  else
  {
    v5 = +[STBlockingUILog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__STLockoutViewController_communicationLimitsApproveInPersonButtonPressed__block_invoke_cold_1(v3);
    }
  }
}

void __74__STLockoutViewController_communicationLimitsApproveInPersonButtonPressed__block_invoke_33(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = +[STBlockingUILog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __73__STLockoutViewController_communicationLimitsPreviewMessageButtonPressed__block_invoke_31_cold_1();
    }
  }
}

- (void)addToContactsButtonPressed
{
  mainButton = [(STLockoutViewController *)self mainButton];
  [(STLockoutViewController *)self _actionAddContact:mainButton];
}

- (STLockoutViewController)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() lockoutViewControllerWithBundleIdentifier:identifierCopy];

  return v5;
}

- (STLockoutViewController)initWithWebsiteURL:(id)l
{
  lCopy = l;
  v5 = [objc_opt_class() lockoutViewControllerWithWebsiteURL:lCopy];

  return v5;
}

- (STLockoutViewController)initWithBundleIdentifier:(id)identifier contactsHandles:(id)handles
{
  handlesCopy = handles;
  identifierCopy = identifier;
  v8 = [objc_opt_class() lockoutViewControllerWithBundleIdentifier:identifierCopy contactsHandles:handlesCopy];

  return v8;
}

- (STLockoutViewController)initWithBundleIdentifier:(id)identifier conversationContext:(id)context contactStore:(id)store
{
  storeCopy = store;
  contextCopy = context;
  identifierCopy = identifier;
  v11 = [objc_opt_class() lockoutViewControllerWithBundleIdentifier:identifierCopy conversationContext:contextCopy contactStore:storeCopy];

  return v11;
}

- (UIResponder)nextResponder
{
  customNextResponder = [(STLockoutViewController *)self customNextResponder];
  v4 = customNextResponder;
  if (customNextResponder)
  {
    nextResponder = customNextResponder;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = STLockoutViewController;
    nextResponder = [(STLockoutViewController *)&v8 nextResponder];
  }

  v6 = nextResponder;

  return v6;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = STLockoutViewController;
  [(STLockoutViewController *)&v8 viewDidLoad];
  [(STLockoutPolicyController *)self->_policyController _changeStateToInitial];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8]];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];
  titleLabel = [(STLockoutViewController *)self titleLabel];
  [titleLabel setFont:v5];

  [(STLockoutViewController *)self _updateWithNaturalBlockingUIStyling];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21DD93000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STLockoutViewController.viewWillDisappear", v7, 2u);
  }
}

- (void)_updateWithNaturalBlockingUIStyling
{
  v18[2] = *MEMORY[0x277D85DE8];
  titleLabel = [(STLockoutViewController *)self titleLabel];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applyPrimaryLabelStyle:titleLabel];

  messageLabel = [(STLockoutViewController *)self messageLabel];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applySecondaryLabelStyle:messageLabel];

  okButton = [(STLockoutViewController *)self okButton];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applyPrimaryButtonStyle:okButton];

  mainButton = [(STLockoutViewController *)self mainButton];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applySecondaryButtonStyle:mainButton];

  buttonStackView = [(STLockoutViewController *)self buttonStackView];
  [buttonStackView setSpacing:10.0];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applyButtonGroupStyle:buttonStackView];
  v17 = MEMORY[0x277CCAAD0];
  leadingAnchor = [buttonStackView leadingAnchor];
  view = [(STLockoutViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v11 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:4.0];
  v18[0] = v11;
  view2 = [(STLockoutViewController *)self view];
  trailingAnchor = [view2 trailingAnchor];
  trailingAnchor2 = [buttonStackView trailingAnchor];
  v15 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:4.0];
  v18[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v17 activateConstraints:v16];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = +[STBlockingUILog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STLockoutViewController viewWillAppear:appearCopy];
  }

  if (self->_isHourglassStateInitialized)
  {
    v6 = +[STBlockingUILog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [STLockoutViewController viewWillAppear:];
    }
  }

  else
  {
    self->_isHourglassStateInitialized = 1;
    if ([(STLockoutViewController *)self isForSnapshot]|| !appearCopy)
    {
      [(STLockoutViewController *)self _restoreBackdrop];
      [(STLockoutViewController *)self _restoreHourglass];
      [(STLockoutViewController *)self _restoreTextAndButtons];
    }

    else
    {
      [(STLockoutViewController *)self _hideBackdrop];
      [(STLockoutViewController *)self _hideHourglass];
      [(STLockoutViewController *)self _hideTextAndButtons];
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21DD93000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STLockoutViewController.viewWillAppear", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = STLockoutViewController;
  [(STLockoutViewController *)&v7 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = +[STBlockingUILog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STLockoutViewController viewDidAppear:appearCopy];
  }

  if ([(STLockoutViewController *)self isForSnapshot]|| !appearCopy)
  {
    v6 = +[STBlockingUILog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [STLockoutViewController viewDidAppear:];
    }
  }

  else
  {
    [(STLockoutViewController *)self _showInitialAnimationIfNeeded];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21DD93000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STLockoutViewController.viewDidAppear", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = STLockoutViewController;
  [(STLockoutViewController *)&v7 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(STLockoutViewController *)self isForSnapshot])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentedAlertController);
    [WeakRetained dismissViewControllerAnimated:0 completion:0];

    objc_storeWeak(&self->_presentedAlertController, 0);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21DD93000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STLockoutViewController.viewWillDisappear", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = STLockoutViewController;
  [(STLockoutViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (UIVisualEffectView)view
{
  v4.receiver = self;
  v4.super_class = STLockoutViewController;
  view = [(STLockoutViewController *)&v4 view];

  return view;
}

- (void)setView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(STLockoutViewController *)a2 setView:?];
  }

  v6.receiver = self;
  v6.super_class = STLockoutViewController;
  [(STLockoutViewController *)&v6 setView:viewCopy];
}

- (UIVisualEffectView)viewIfLoaded
{
  v4.receiver = self;
  v4.super_class = STLockoutViewController;
  viewIfLoaded = [(STLockoutViewController *)&v4 viewIfLoaded];

  return viewIfLoaded;
}

- (void)dealloc
{
  [(SBSLockScreenService *)self->_sbsLockScreenService invalidate];
  v3.receiver = self;
  v3.super_class = STLockoutViewController;
  [(STLockoutViewController *)&v3 dealloc];
}

- (void)_setupCommon
{
  self->_isHourglassStateInitialized = 0;
  self->_didFinishDismissing = 0;
  self->_isApprovedAnimationWithApprovalPending = 0;
  v3 = dispatch_group_create();
  initialAnimationGroup = self->_initialAnimationGroup;
  self->_initialAnimationGroup = v3;

  v5 = dispatch_group_create();
  approvalAnimationGroup = self->_approvalAnimationGroup;
  self->_approvalAnimationGroup = v5;

  v7 = dispatch_group_create();
  dismissingAnimationGroup = self->_dismissingAnimationGroup;
  self->_dismissingAnimationGroup = v7;

  self->_okButtonAction = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];
}

- (void)setForSnapshot:(BOOL)snapshot
{
  if (self->_forSnapshot != snapshot)
  {
    if (([(STLockoutViewController *)self isViewLoaded]& 1) != 0)
    {
      v5 = +[STBlockingUILog log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [STLockoutViewController setForSnapshot:];
      }
    }

    else
    {
      self->_forSnapshot = snapshot;
    }
  }
}

- (void)setBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    ++self->_reuseIdentifier;
    [(STLockoutViewController *)self _setupCommon];
    if (self->_policyController)
    {
      v5 = +[STBlockingUILog log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_reuseIdentifier];
        bundleIdentifier = [(STLockoutPolicyController *)self->_policyController bundleIdentifier];
        v9 = 138413058;
        selfCopy = self;
        v11 = 2112;
        v12 = v6;
        v13 = 2112;
        v14 = bundleIdentifier;
        v15 = 2112;
        v16 = identifierCopy;
        _os_log_impl(&dword_21DD93000, v5, OS_LOG_TYPE_DEFAULT, "Changing bundleIdentifier of %@ (id:%@) from %@ to %@", &v9, 0x2Au);
      }

      [(STLockoutPolicyController *)self->_policyController setBundleIdentifier:identifierCopy];
    }
  }

  else
  {
    v8 = +[STBlockingUILog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [STLockoutViewController setBundleIdentifier:];
    }
  }
}

- (void)setDidFinishDismissing:(BOOL)dismissing
{
  dismissingCopy = dismissing;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_didFinishDismissing != dismissingCopy)
  {
    v8 = NSStringFromSelector(sel_didFinishDismissing);
    [(STLockoutViewController *)self willChangeValueForKey:v8];
    self->_didFinishDismissing = dismissingCopy;
    [(STLockoutViewController *)self didChangeValueForKey:v8];
    viewControllerDelegate = [(STLockoutViewController *)self viewControllerDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      viewControllerDelegate2 = [(STLockoutViewController *)self viewControllerDelegate];
      [viewControllerDelegate2 lockoutViewControllerDidFinishDismissing:self];
    }
  }
}

- (void)removeCommunicationLimitsBlockingViewBackground
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  communicationLimitsBlockingViewController = [(STLockoutViewController *)self communicationLimitsBlockingViewController];
  view = [communicationLimitsBlockingViewController view];
  [view setBackgroundColor:clearColor];

  [(STLockoutViewController *)self setShouldHideStoryboardViews:1];
  emptyEffect = [MEMORY[0x277D75D58] emptyEffect];
  view2 = [(STLockoutViewController *)self view];
  [view2 setEffect:emptyEffect];
}

+ (id)_applicationNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v10];
  v5 = v10;
  localizedName = [v4 localizedName];
  if (!v4)
  {
    v7 = +[STBlockingUILog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[STLockoutViewController _applicationNameForBundleIdentifier:];
    }
  }

  v8 = +[STBlockingUILog log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[STLockoutViewController _applicationNameForBundleIdentifier:];
  }

  return localizedName;
}

+ (id)_bundleIdentifierForWebsiteURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host length];

  if (v5)
  {
    mEMORY[0x277CF9650] = [MEMORY[0x277CF9650] sharedCategories];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = 0;
    v7 = dispatch_semaphore_create(0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__STLockoutViewController__bundleIdentifierForWebsiteURL___block_invoke;
    v11[3] = &unk_278339168;
    v14 = &v15;
    v12 = lCopy;
    v8 = v7;
    v13 = v8;
    [mEMORY[0x277CF9650] categoryForDomainURL:v12 completionHandler:v11];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __58__STLockoutViewController__bundleIdentifierForWebsiteURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = +[STBlockingUILog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_21DD93000, v6, OS_LOG_TYPE_DEFAULT, "website:%@ bundle identifier error:%@", &v11, 0x16u);
    }
  }

  else
  {
    v8 = [a2 bundleIdentifier];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)_applicationNameForWebsiteURL:(id)l
{
  lCopy = l;
  v5 = [self _bundleIdentifierForWebsiteURL:lCopy];
  v6 = +[STBlockingUILog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[STLockoutViewController _applicationNameForWebsiteURL:];
  }

  if ([v5 length])
  {
    v7 = [self _applicationNameForBundleIdentifier:v5];
  }

  else
  {
    v7 = &stru_282F1E250;
  }

  return v7;
}

+ (id)messageForApplicationName:(id)name style:(int64_t)style
{
  nameCopy = name;
  v8 = +[STScreenTimeUIBundle bundle];
  if (style <= 1)
  {
    if (style)
    {
      if (style != 1)
      {
        goto LABEL_20;
      }

      if ([nameCopy length])
      {
        v9 = @"ReachedWebsiteLimitMessageFormat";
LABEL_14:
        v10 = [v8 localizedStringForKey:v9 value:&stru_282F1E250 table:0];
        self = [MEMORY[0x277CCACA8] localizedStringWithFormat:v10, nameCopy];

        goto LABEL_20;
      }

      v12 = @"ReachedWebsiteLimitMessage";
LABEL_19:
      self = [v8 localizedStringForKey:v12 value:&stru_282F1E250 table:0];
      goto LABEL_20;
    }

LABEL_10:
    if ([nameCopy length])
    {
      v9 = @"ReachedApplicationLimitMessageFormat";
      goto LABEL_14;
    }

    v12 = @"ReachedApplicationLimitMessage";
    goto LABEL_19;
  }

  switch(style)
  {
    case 2:
      if ([nameCopy length])
      {
        v9 = @"ReachedWidgetLimitMessageFormat";
        goto LABEL_14;
      }

      v12 = @"ReachedWidgetLimitMessage";
      goto LABEL_19;
    case 4:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"STLockoutViewController-iOS.m" lineNumber:692 description:@"Category style is not supported"];

      self = &stru_282F1E250;
      break;
    case 3:
      goto LABEL_10;
  }

LABEL_20:

  return self;
}

+ (id)_messageForCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[STScreenTimeUIBundle bundle];
  v5 = [MEMORY[0x277CF9658] localizedNameForIdentifier:identifierCopy];

  if ([v5 length])
  {
    v6 = [v4 localizedStringForKey:@"ReachedCategoryLimitMessageFormat" value:&stru_282F1E250 table:0];
    v7 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v5];
  }

  else
  {
    v7 = [v4 localizedStringForKey:@"ReachedCategoryLimitMessage" value:&stru_282F1E250 table:0];
  }

  return v7;
}

+ (id)messageForBundleIdentifier:(id)identifier style:(int64_t)style
{
  v6 = [self _applicationNameForBundleIdentifier:identifier];
  v7 = [self messageForApplicationName:v6 style:style];

  return v7;
}

+ (id)messageForWebsiteURL:(id)l
{
  lCopy = l;
  v5 = [self _applicationNameForWebsiteURL:lCopy];
  if (![v5 length])
  {
    host = [lCopy host];
    _lp_userVisibleHost = [host _lp_userVisibleHost];

    v5 = _lp_userVisibleHost;
  }

  v8 = [self messageForApplicationName:v5 style:1];

  return v8;
}

- (void)_actionOK:(id)k
{
  okButtonAction = [(STLockoutViewController *)self okButtonAction];
  if (okButtonAction == 1)
  {

    [(STLockoutViewController *)self setDidFinishDismissing:1];
  }

  else if (!okButtonAction)
  {
    v5 = +[STBlockingUILog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21DD93000, v5, OS_LOG_TYPE_DEFAULT, "Triggering return to Springboard...", v7, 2u);
    }

    serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    [serviceWithDefaultShellEndpoint openApplication:@"com.apple.springboard" withOptions:0 completion:&__block_literal_global_4];
  }
}

void __37__STLockoutViewController__actionOK___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[STBlockingUILog log];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__STLockoutViewController__actionOK___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21DD93000, v5, OS_LOG_TYPE_DEFAULT, "Returned to Springboard", v6, 2u);
  }
}

- (BOOL)_actionDismiss
{
  v2 = +[STBlockingUILog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v2, OS_LOG_TYPE_DEFAULT, "dismiss not yet implemented", v4, 2u);
  }

  return 0;
}

- (void)_actionIgnoreLimitActionSheet:(id)sheet
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = MEMORY[0x277D75110];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v6 = [currentDevice userInterfaceIdiom] == 1;

  v7 = [v4 alertControllerWithTitle:0 message:0 preferredStyle:v6];
  v8 = +[STScreenTimeUIBundle bundle];
  if ([(STLockoutPolicyController *)self->_policyController shouldAllowOneMoreMinute])
  {
    v9 = [v8 localizedStringForKey:@"OneMoreMinuteButtonTitle" value:&stru_282F1E250 table:0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke;
    v21[3] = &unk_278338A80;
    v21[4] = self;
    v10 = [MEMORY[0x277D750F8] actionWithTitle:v9 style:0 handler:v21];
    [v7 addAction:v10];
  }

  v11 = [v8 localizedStringForKey:@"RemindMeIn15MinutesButtonTitle" value:&stru_282F1E250 table:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke_129;
  v20[3] = &unk_278338A80;
  v20[4] = self;
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:0 handler:v20];
  [v7 addAction:v12];

  v13 = [v8 localizedStringForKey:@"IgnoreLimitForTodayButtonTitle" value:&stru_282F1E250 table:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke_136;
  v19[3] = &unk_278338A80;
  v19[4] = self;
  v14 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:0 handler:v19];
  [v7 addAction:v14];

  v15 = [v8 localizedStringForKey:@"CancelButtonTitle" value:&stru_282F1E250 table:0];
  v16 = [MEMORY[0x277D750F8] actionWithTitle:v15 style:1 handler:&__block_literal_global_145];
  [v7 addAction:v16];

  v17 = +[STBlockingUILog log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_21DD93000, v17, OS_LOG_TYPE_DEFAULT, "Presenting Ignore Limit action sheet", v18, 2u);
  }

  [(STLockoutViewController *)self _presentAlertController:v7];
}

void __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke(uint64_t a1)
{
  v2 = +[STBlockingUILog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v2, OS_LOG_TYPE_DEFAULT, "Tapped One More Minute in action sheet", v4, 2u);
  }

  [*(a1 + 32) _showApprovalAnimationIfNeeded];
  v3 = [*(a1 + 32) policyController];
  [v3 handleAction:6 withCompletionHandler:&__block_literal_global_124];
}

void __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke_121(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke_121_cold_1();
    }
  }
}

void __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke_129(uint64_t a1)
{
  v2 = +[STBlockingUILog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v2, OS_LOG_TYPE_DEFAULT, "Tapped Remind Me In 15 Minutes in action sheet", v4, 2u);
  }

  [*(a1 + 32) _showApprovalAnimationIfNeeded];
  v3 = [*(a1 + 32) policyController];
  [v3 handleAction:4 withCompletionHandler:&__block_literal_global_132];
}

void __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke_130(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke_130_cold_1();
    }
  }
}

void __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke_136(uint64_t a1)
{
  v2 = +[STBlockingUILog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v2, OS_LOG_TYPE_DEFAULT, "Tapped Ignore Limit For Today in action sheet", v4, 2u);
  }

  [*(a1 + 32) _showApprovalAnimationIfNeeded];
  v3 = [*(a1 + 32) policyController];
  [v3 handleAction:3 withCompletionHandler:&__block_literal_global_139];
}

void __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke_137(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke_137_cold_1();
    }
  }
}

void __57__STLockoutViewController__actionIgnoreLimitActionSheet___block_invoke_143()
{
  v0 = +[STBlockingUILog log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_21DD93000, v0, OS_LOG_TYPE_DEFAULT, "Tapped Cancel in action sheet", v1, 2u);
  }
}

- (void)_actionAskOrApproveActionSheet:(id)sheet
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__STLockoutViewController__actionAskOrApproveActionSheet___block_invoke;
  v3[3] = &unk_278338A08;
  v3[4] = self;
  [(STLockoutViewController *)self _unlockWithSuccessMainCompletion:v3];
}

- (BOOL)_actionUnlockedAskOrApproveActionSheet
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:userInterfaceIdiom == 1];
  v6 = +[STScreenTimeUIBundle bundle];
  if ([(STLockoutPolicyController *)self->_policyController shouldAllowOneMoreMinute])
  {
    v7 = [v6 localizedStringForKey:@"OneMoreMinuteButtonTitle" value:&stru_282F1E250 table:0];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__STLockoutViewController__actionUnlockedAskOrApproveActionSheet__block_invoke;
    v23[3] = &unk_278338A80;
    v23[4] = self;
    v8 = [MEMORY[0x277D750F8] actionWithTitle:v7 style:0 handler:v23];
    [v5 addAction:v8];
  }

  if ([(STLockoutPolicyController *)self->_policyController _shouldRequestMoreTime])
  {
    v9 = [v6 localizedStringForKey:@"SendRequestButtonTitle" value:&stru_282F1E250 table:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__STLockoutViewController__actionUnlockedAskOrApproveActionSheet__block_invoke_152;
    v22[3] = &unk_278338A80;
    v22[4] = self;
    v10 = [MEMORY[0x277D750F8] actionWithTitle:v9 style:0 handler:v22];
    [v5 addAction:v10];
  }

  if ([(STLockoutPolicyController *)self->_policyController _isRestrictionsPasscodeSet])
  {
    v11 = [v6 localizedStringForKey:@"EnterScreenTimePasscodePromptButtonTitle" value:&stru_282F1E250 table:0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__STLockoutViewController__actionUnlockedAskOrApproveActionSheet__block_invoke_159;
    v21[3] = &unk_278338A80;
    v21[4] = self;
    v12 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:0 handler:v21];
    [v5 addAction:v12];
  }

  actions = [v5 actions];
  v14 = [actions count];

  if (userInterfaceIdiom == 1 && v14 == 1)
  {
    v15 = [v6 localizedStringForKey:@"AskForMoreTimeButtonTitle" value:&stru_282F1E250 table:0];
    [v5 setTitle:v15];

LABEL_11:
    v16 = [v6 localizedStringForKey:@"CancelButtonTitle" value:&stru_282F1E250 table:0];
    v17 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:1 handler:&__block_literal_global_165];
    [v5 addAction:v17];

    v18 = +[STBlockingUILog log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_21DD93000, v18, OS_LOG_TYPE_DEFAULT, "Presenting ask or approve action sheet", v20, 2u);
    }

    [(STLockoutViewController *)self _presentAlertController:v5];
    goto LABEL_14;
  }

  if (v14)
  {
    goto LABEL_11;
  }

  v16 = +[STBlockingUILog log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [STLockoutViewController _actionUnlockedAskOrApproveActionSheet];
  }

LABEL_14:

  return 1;
}

void __65__STLockoutViewController__actionUnlockedAskOrApproveActionSheet__block_invoke(uint64_t a1)
{
  v2 = +[STBlockingUILog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v2, OS_LOG_TYPE_DEFAULT, "Tapped One More Minute in action sheet", v4, 2u);
  }

  [*(a1 + 32) _showApprovalAnimationIfNeeded];
  v3 = [*(a1 + 32) policyController];
  [v3 handleAction:6 withCompletionHandler:&__block_literal_global_148];
}

void __65__STLockoutViewController__actionUnlockedAskOrApproveActionSheet__block_invoke_146(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__STLockoutViewController__actionUnlockedAskOrApproveActionSheet__block_invoke_146_cold_1();
    }
  }
}

void __65__STLockoutViewController__actionUnlockedAskOrApproveActionSheet__block_invoke_152(uint64_t a1)
{
  v2 = +[STBlockingUILog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v2, OS_LOG_TYPE_DEFAULT, "Tapped Send Request (Ask For More Time) in action sheet", v4, 2u);
  }

  v3 = [*(a1 + 32) policyController];
  [v3 handleAction:2 withCompletionHandler:&__block_literal_global_155];
}

void __65__STLockoutViewController__actionUnlockedAskOrApproveActionSheet__block_invoke_153(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__STLockoutViewController__actionUnlockedAskOrApproveActionSheet__block_invoke_153_cold_1();
    }
  }
}

uint64_t __65__STLockoutViewController__actionUnlockedAskOrApproveActionSheet__block_invoke_159(uint64_t a1)
{
  v2 = +[STBlockingUILog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v2, OS_LOG_TYPE_DEFAULT, "Tapped Enter Screen Time Passcode in action sheet", v4, 2u);
  }

  return [*(a1 + 32) _actionEnterScreenTimePasscodeActionSheet:0];
}

void __65__STLockoutViewController__actionUnlockedAskOrApproveActionSheet__block_invoke_163()
{
  v0 = +[STBlockingUILog log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_21DD93000, v0, OS_LOG_TYPE_DEFAULT, "Tapped Cancel in action sheet", v1, 2u);
  }
}

- (void)_actionEnterScreenTimePasscodeActionSheet:(id)sheet
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__STLockoutViewController__actionEnterScreenTimePasscodeActionSheet___block_invoke;
  v4[3] = &unk_278338A08;
  v4[4] = self;
  [(STLockoutViewController *)self _unlockWithSuccessMainCompletion:v4];
}

- (BOOL)_actionUnlockedEnterScreenTimePasscodeActionSheet
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__STLockoutViewController__actionUnlockedEnterScreenTimePasscodeActionSheet__block_invoke;
  v3[3] = &unk_2783391D0;
  v3[4] = self;
  return [(STLockoutViewController *)self _performUnlockedActionWithCompletionHandler:v3];
}

uint64_t __76__STLockoutViewController__actionUnlockedEnterScreenTimePasscodeActionSheet__block_invoke(uint64_t result, int a2, uint64_t a3)
{
  if (!a3)
  {
    if (a2)
    {
      return [*(result + 32) _authenticatedApproveActionSheet];
    }
  }

  return result;
}

- (BOOL)_performUnlockedActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(STLockoutPolicyController *)self->_policyController _isRestrictionsPasscodeSet])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__STLockoutViewController__performUnlockedActionWithCompletionHandler___block_invoke;
    v7[3] = &unk_278339140;
    v8 = handlerCopy;
    [(STLockoutViewController *)self _showRestrictionsPINControllerWithMainCompletion:v7];
    v5 = v8;
  }

  else
  {
    v5 = +[STBlockingUILog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [STLockoutViewController _performUnlockedActionWithCompletionHandler:];
    }
  }

  return 1;
}

- (void)_actionAddContact:(id)contact
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__STLockoutViewController__actionAddContact___block_invoke;
  v4[3] = &unk_278338A08;
  v4[4] = self;
  [(STLockoutViewController *)self _unlockWithSuccessMainCompletion:v4];
}

- (void)_actionUnlockedAddContact
{
  v26[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  blockedContactsHandle = [(STLockoutViewController *)self blockedContactsHandle];
  addBlockedContactHandler = [(STLockoutViewController *)self addBlockedContactHandler];
  addContactHandler = [(STLockoutViewController *)self addContactHandler];
  v6 = addContactHandler;
  if (addBlockedContactHandler)
  {
    mainButton = [(STLockoutViewController *)self mainButton];
    (addBlockedContactHandler)[2](addBlockedContactHandler, mainButton, blockedContactsHandle);
LABEL_5:

    goto LABEL_6;
  }

  if (addContactHandler)
  {
    mainButton = [(STLockoutViewController *)self mainButton];
    (v6)[2](v6, mainButton);
    goto LABEL_5;
  }

  v8 = objc_opt_new();
  if ([blockedContactsHandle destinationIdIsPhoneNumber])
  {
    v9 = TUNetworkCountryCode();
    v10 = v9;
    if (!v9)
    {
      v10 = TUHomeCountryCode();
    }

    v11 = TUFormattedPhoneNumber();

    if (!v9)
    {
    }

    v12 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v11];
    v13 = objc_alloc(MEMORY[0x277CBDB20]);
    v14 = [v13 initWithLabel:*MEMORY[0x277CBD900] value:v12];
    v26[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v8 setPhoneNumbers:v15];
  }

  else
  {
    if ([blockedContactsHandle destinationIdIsEmailAddress])
    {
      v16 = objc_alloc(MEMORY[0x277CBDB20]);
      v12 = [v16 initWithLabel:*MEMORY[0x277CBD8D8] value:blockedContactsHandle];
      v25 = v12;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      [v8 setEmailAddresses:v17];
    }

    else
    {
      v12 = +[STBlockingUILog log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543362;
        v24 = blockedContactsHandle;
        _os_log_impl(&dword_21DD93000, v12, OS_LOG_TYPE_DEFAULT, "Failed to identify handle type for: %{public}@, presenting view controller with an empty contact", &v23, 0xCu);
      }
    }

    v11 = blockedContactsHandle;
  }

  v18 = [MEMORY[0x277CBDC48] viewControllerForNewContact:v8];
  [v18 setDelegate:self];
  policyController = [(STLockoutViewController *)self policyController];
  contactStore = [policyController contactStore];
  [v18 setContactStore:contactStore];

  iCloudContainer = [policyController iCloudContainer];
  [v18 setParentContainer:iCloudContainer];

  v22 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v18];
  [(STLockoutViewController *)self presentViewController:v22 animated:1 completion:0];

  blockedContactsHandle = v11;
LABEL_6:
}

- (void)_unlockWithSuccessMainCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  sbsLockScreenService = self->_sbsLockScreenService;
  if (sbsLockScreenService)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__STLockoutViewController__unlockWithSuccessMainCompletion___block_invoke;
    v7[3] = &unk_278338A30;
    v8 = completionCopy;
    [(SBSLockScreenService *)sbsLockScreenService requestPasscodeUnlockUIWithOptions:0 withCompletion:v7];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __60__STLockoutViewController__unlockWithSuccessMainCompletion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__STLockoutViewController__unlockWithSuccessMainCompletion___block_invoke_2;
    block[3] = &unk_2783391F8;
    v3 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (BOOL)_authenticatedApproveActionSheet
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = MEMORY[0x277D75110];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v5 = [currentDevice userInterfaceIdiom] == 1;

  v6 = [v3 alertControllerWithTitle:0 message:0 preferredStyle:v5];
  v7 = +[STScreenTimeUIBundle bundle];
  v8 = [v7 localizedStringForKey:@"ApproveFor15MinutesButtonTitle" value:&stru_282F1E250 table:0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke;
  v21[3] = &unk_278338A80;
  v21[4] = self;
  v9 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:v21];
  [v6 addAction:v9];

  v10 = [v7 localizedStringForKey:@"ApproveForHourButtonTitle" value:&stru_282F1E250 table:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke_181;
  v20[3] = &unk_278338A80;
  v20[4] = self;
  v11 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:0 handler:v20];
  [v6 addAction:v11];

  v12 = [v7 localizedStringForKey:@"ApproveAllDayButtonTitle" value:&stru_282F1E250 table:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke_188;
  v19[3] = &unk_278338A80;
  v19[4] = self;
  v13 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:0 handler:v19];
  [v6 addAction:v13];

  v14 = [v7 localizedStringForKey:@"CancelButtonTitle" value:&stru_282F1E250 table:0];
  v15 = [MEMORY[0x277D750F8] actionWithTitle:v14 style:1 handler:&__block_literal_global_194];
  [v6 addAction:v15];

  v16 = +[STBlockingUILog log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_21DD93000, v16, OS_LOG_TYPE_DEFAULT, "Presenting Approve action sheet", v18, 2u);
  }

  [(STLockoutViewController *)self _presentAlertController:v6];
  return 1;
}

void __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke(uint64_t a1)
{
  v2 = +[STBlockingUILog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v2, OS_LOG_TYPE_DEFAULT, "Tapped 'Approve for 15 minutes' in action sheet", v4, 2u);
  }

  [*(a1 + 32) _showApprovalAnimationIfNeeded];
  v3 = [*(a1 + 32) policyController];
  [v3 handleAction:4 withCompletionHandler:&__block_literal_global_177];
}

void __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke_175(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke_175_cold_1();
    }
  }
}

void __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke_181(uint64_t a1)
{
  v2 = +[STBlockingUILog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v2, OS_LOG_TYPE_DEFAULT, "Tapped 'Approve for an hour' in action sheet", v4, 2u);
  }

  [*(a1 + 32) _showApprovalAnimationIfNeeded];
  v3 = [*(a1 + 32) policyController];
  [v3 handleAction:5 withCompletionHandler:&__block_literal_global_184];
}

void __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke_182(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke_182_cold_1();
    }
  }
}

void __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke_188(uint64_t a1)
{
  v2 = +[STBlockingUILog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v2, OS_LOG_TYPE_DEFAULT, "Tapped 'Approve all day' in action sheet", v4, 2u);
  }

  [*(a1 + 32) _showApprovalAnimationIfNeeded];
  v3 = [*(a1 + 32) policyController];
  [v3 handleAction:3 withCompletionHandler:&__block_literal_global_191];
}

void __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke_189(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke_189_cold_1();
    }
  }
}

void __59__STLockoutViewController__authenticatedApproveActionSheet__block_invoke_192()
{
  v0 = +[STBlockingUILog log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_21DD93000, v0, OS_LOG_TYPE_DEFAULT, "Tapped Cancel in action sheet", v1, 2u);
  }
}

- (void)_authenticatedApproveForAdditionalTime:(double)time
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(STLockoutViewController *)self _showApprovalAnimationIfNeeded];
  self->_isApprovedAnimationWithApprovalPending = 1;
  v4 = +[STBlockingUILog log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "Approval animation shown; awaiting approval", buf, 2u);
  }

  objc_initWeak(buf, self);
  v5 = dispatch_time(0, 10000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__STLockoutViewController__authenticatedApproveForAdditionalTime___block_invoke;
  block[3] = &unk_278339220;
  objc_copyWeak(&v11, buf);
  v6 = MEMORY[0x277D85CD0];
  dispatch_after(v5, MEMORY[0x277D85CD0], block);

  policyController = [(STLockoutViewController *)self policyController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__STLockoutViewController__authenticatedApproveForAdditionalTime___block_invoke_195;
  v8[3] = &unk_278339248;
  objc_copyWeak(&v9, buf);
  [policyController handleAction:3 withCompletionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __66__STLockoutViewController__authenticatedApproveForAdditionalTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[1049] == 1)
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__STLockoutViewController__authenticatedApproveForAdditionalTime___block_invoke_cold_1();
    }

    v2[1049] = 0;
    [v2 _undoApprovalAnimationIfNeeded];
  }
}

void __66__STLockoutViewController__authenticatedApproveForAdditionalTime___block_invoke_195(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__STLockoutViewController__authenticatedApproveForAdditionalTime___block_invoke_2;
    block[3] = &unk_278339220;
    objc_copyWeak(&v3, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v3);
  }
}

void __66__STLockoutViewController__authenticatedApproveForAdditionalTime___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _undoApprovalAnimationIfNeeded];
}

- (void)_presentAlertController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_presentedAlertController, controllerCopy);
  [(STLockoutViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)_changeMessageToInitial
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  style = self->_style;
  if (style == 4)
  {
    categoryIdentifier = [(STLockoutPolicyController *)self->_policyController categoryIdentifier];

    if (categoryIdentifier)
    {
      v5 = objc_opt_class();
      categoryIdentifier2 = [(STLockoutPolicyController *)self->_policyController categoryIdentifier];
      v6 = [v5 _messageForCategoryIdentifier:?];
LABEL_10:
      bundleIdentifier = v6;
      messageLabel = [(STLockoutViewController *)self messageLabel];
      [messageLabel setText:bundleIdentifier];
      goto LABEL_11;
    }

    style = self->_style;
  }

  if (style == 1)
  {
    websiteURL = [(STLockoutPolicyController *)self->_policyController websiteURL];

    if (websiteURL)
    {
      v8 = objc_opt_class();
      categoryIdentifier2 = [(STLockoutPolicyController *)self->_policyController websiteURL];
      v6 = [v8 messageForWebsiteURL:?];
      goto LABEL_10;
    }
  }

  categoryIdentifier2 = [(STLockoutViewController *)self applicationName];
  v9 = objc_opt_class();
  v10 = v9;
  if (categoryIdentifier2)
  {
    v6 = [v9 messageForApplicationName:categoryIdentifier2 style:self->_style];
    goto LABEL_10;
  }

  bundleIdentifier = [(STLockoutPolicyController *)self->_policyController bundleIdentifier];
  messageLabel = [v10 messageForBundleIdentifier:bundleIdentifier style:self->_style];
  messageLabel2 = [(STLockoutViewController *)self messageLabel];
  [messageLabel2 setText:messageLabel];

LABEL_11:
}

- (void)_updateOKButtonVisibility
{
  if ([(STLockoutViewController *)self shouldHideStoryboardViews]|| [(STLockoutViewController *)self okButtonAlwaysHidden])
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    bundleIdentifier = [(STLockoutViewController *)self bundleIdentifier];
    if ([bundleIdentifier length])
    {
      style = self->_style;
      if (style)
      {
        v7 = style == 3;
      }

      else
      {
        v7 = 1;
      }

      v4 = !v7;
      v3 = 1;
    }

    else
    {
      v3 = 1;
      v4 = 1;
    }
  }

  okButton = [(STLockoutViewController *)self okButton];
  [okButton setHidden:v4];

  if (v3)
  {
  }
}

- (void)setMainButtonAlwaysHidden:(BOOL)hidden
{
  self->_mainButtonAlwaysHidden = hidden;
  mainButton = [(STLockoutViewController *)self mainButton];
  configuration = [mainButton configuration];
  title = [configuration title];

  if ([title length])
  {
    [(STLockoutViewController *)self _updateMainButtonVisibility];
  }
}

- (void)_updateMainButtonVisibility
{
  policyController = [(STLockoutViewController *)self policyController];
  if (-[STLockoutViewController shouldHideStoryboardViews](self, "shouldHideStoryboardViews") || -[STLockoutViewController mainButtonAlwaysHidden](self, "mainButtonAlwaysHidden") || ([policyController needsToSetRestrictionsPasscode] & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = self->_style == 3 && [policyController state] == 8;
  }

  mainButton = [(STLockoutViewController *)self mainButton];
  [mainButton setHidden:v3];
}

- (void)_updateMainButtonWithTitle:(id)title action:(SEL)action
{
  titleCopy = title;
  mainButton = [(STLockoutViewController *)self mainButton];
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  [plainButtonConfiguration setTitle:titleCopy];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [plainButtonConfiguration setBaseForegroundColor:systemBlueColor];

  [mainButton setPreferredBehavioralStyle:1];
  [mainButton setConfiguration:plainButtonConfiguration];
  [mainButton removeTarget:self action:0 forControlEvents:0x2000];
  [mainButton addTarget:self action:action forControlEvents:0x2000];
  [(STLockoutViewController *)self _updateMainButtonVisibility];
}

- (void)_changeMainButtonToAskForMore
{
  v4 = +[STScreenTimeUIBundle bundle];
  v3 = [v4 localizedStringForKey:@"AskForMoreTimeButtonTitle" value:&stru_282F1E250 table:0];
  [(STLockoutViewController *)self _updateMainButtonWithTitle:v3 action:sel__actionAskOrApproveActionSheet_];
}

- (void)_changeMainButtonToIgnoreLimit
{
  v4 = +[STScreenTimeUIBundle bundle];
  v3 = [v4 localizedStringForKey:@"IgnoreLimitButtonTitle" value:&stru_282F1E250 table:0];
  [(STLockoutViewController *)self _updateMainButtonWithTitle:v3 action:sel__actionIgnoreLimitActionSheet_];
}

- (void)_changeMainButtonToEnterScreenTimePasscode
{
  v4 = +[STScreenTimeUIBundle bundle];
  v3 = [v4 localizedStringForKey:@"EnterScreenTimePasscodePromptButtonTitle" value:&stru_282F1E250 table:0];
  [(STLockoutViewController *)self _updateMainButtonWithTitle:v3 action:sel__actionEnterScreenTimePasscodeActionSheet_];
}

- (void)_changeMainButtonToAddContact:(id)contact
{
  contactCopy = contact;
  v9 = +[STScreenTimeUIBundle bundle];
  v5 = [v9 localizedStringForKey:@"AddContactButtonFormat" value:&stru_282F1E250 table:0];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  contactCopy = [v6 initWithFormat:v5 locale:currentLocale, contactCopy];

  [(STLockoutViewController *)self _updateMainButtonWithTitle:contactCopy action:sel__actionAddContact_];
}

- (void)_changeStateToWarn
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[STBlockingUILog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21DD93000, v3, OS_LOG_TYPE_DEFAULT, "Changing state to Warn", v7, 2u);
  }

  [(STLockoutViewController *)self _undoApprovalAnimationIfNeeded];
  [(STLockoutViewController *)self _updateImageVisibility];
  v4 = +[STScreenTimeUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"TimeLimitTitle" value:&stru_282F1E250 table:0];
  titleLabel = [(STLockoutViewController *)self titleLabel];
  [titleLabel setText:v5];

  [(STLockoutViewController *)self _changeMessageToInitial];
  [(STLockoutViewController *)self _changeMainButtonToIgnoreLimit];
  [(STLockoutViewController *)self _restoreTextAndButtons];
}

- (void)_changeStateToAsk
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[STBlockingUILog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21DD93000, v3, OS_LOG_TYPE_DEFAULT, "Changing state to Ask", v7, 2u);
  }

  [(STLockoutViewController *)self _undoApprovalAnimationIfNeeded];
  [(STLockoutViewController *)self _updateImageVisibility];
  v4 = +[STScreenTimeUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"TimeLimitTitle" value:&stru_282F1E250 table:0];
  titleLabel = [(STLockoutViewController *)self titleLabel];
  [titleLabel setText:v5];

  [(STLockoutViewController *)self _changeMessageToInitial];
  [(STLockoutViewController *)self _changeMainButtonToAskForMore];
  [(STLockoutViewController *)self _restoreTextAndButtons];
}

- (void)_changeStateToPending
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[STBlockingUILog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21DD93000, v3, OS_LOG_TYPE_DEFAULT, "Changing state to Pending", v9, 2u);
  }

  self->_stateBeforePending = self->_state;
  [(STLockoutViewController *)self _undoApprovalAnimationIfNeeded];
  v4 = +[STScreenTimeUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"RequestSentTitle" value:&stru_282F1E250 table:0];
  titleLabel = [(STLockoutViewController *)self titleLabel];
  [titleLabel setText:v5];

  v7 = [v4 localizedStringForKey:@"RequestSentMessage" value:&stru_282F1E250 table:0];
  messageLabel = [(STLockoutViewController *)self messageLabel];
  [messageLabel setText:v7];

  [(STLockoutViewController *)self _changeMainButtonToEnterScreenTimePasscode];
  [(STLockoutViewController *)self _restoreTextAndButtons];
}

- (void)_changeStateToApproved
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[STBlockingUILog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v3, OS_LOG_TYPE_DEFAULT, "Changing state to Approved", v4, 2u);
  }

  [(STLockoutViewController *)self _showApprovalAnimationIfNeeded];
  self->_isApprovedAnimationWithApprovalPending = 0;
  [(STLockoutViewController *)self _changeStateToDismissing];
}

- (void)_changeStateToDisapproved
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[STBlockingUILog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21DD93000, v3, OS_LOG_TYPE_DEFAULT, "Changing state to Disapproved", v7, 2u);
  }

  [(STLockoutViewController *)self _undoApprovalAnimationIfNeeded];
  v4 = +[STScreenTimeUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"TimeLimitTitle" value:&stru_282F1E250 table:0];
  titleLabel = [(STLockoutViewController *)self titleLabel];
  [titleLabel setText:v5];

  [(STLockoutViewController *)self _changeMessageToInitial];
  [(STLockoutViewController *)self _changeMainButtonToEnterScreenTimePasscode];
  [(STLockoutViewController *)self _restoreTextAndButtons];
}

- (void)_changeStateToContactBlocked
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[STBlockingUILog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21DD93000, v3, OS_LOG_TYPE_DEFAULT, "Changing state to Contact Blocked", v8, 2u);
  }

  [(STLockoutViewController *)self _undoApprovalAnimationIfNeeded];
  [(STLockoutViewController *)self _updateImageVisibility];
  v4 = +[STScreenTimeUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"RestrictedContactTitle" value:&stru_282F1E250 table:0];
  titleLabel = [(STLockoutViewController *)self titleLabel];
  [titleLabel setText:v5];

  v7 = [(STLockoutViewController *)self _updateMessageLabelAndReturnHandleWithPhoneNumberFormat:@"BlockedPhoneNumberMessageFormat" emailAddressFormat:@"BlockedEmailAddressMessageFormat" contactNameFormat:@"BlockedContactNameMessageFormat"];
  [(STLockoutViewController *)self _changeMainButtonToAddContact:v7];
  [(STLockoutViewController *)self _restoreTextAndButtons];
}

- (void)_changeStateToContactBlockedDuringDowntime
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[STBlockingUILog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21DD93000, v3, OS_LOG_TYPE_DEFAULT, "Changing state to Contact Blocked During Downtime", v9, 2u);
  }

  [(STLockoutViewController *)self _undoApprovalAnimationIfNeeded];
  [(STLockoutViewController *)self _updateImageVisibility];
  v4 = +[STScreenTimeUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"RestrictedContactTitle" value:&stru_282F1E250 table:0];
  titleLabel = [(STLockoutViewController *)self titleLabel];
  [titleLabel setText:v5];

  v7 = [(STLockoutViewController *)self _updateMessageLabelAndReturnHandleWithPhoneNumberFormat:@"BlockedPhoneNumberDowntimeMessageFormat" emailAddressFormat:@"BlockedEmailAddressDowntimeMessageFormat" contactNameFormat:@"BlockedContactNameDowntimeMessageFormat"];
  policyController = [(STLockoutViewController *)self policyController];
  LODWORD(v5) = [policyController _shouldRequestMoreTime];

  if (v5)
  {
    [(STLockoutViewController *)self _changeMainButtonToAskForMore];
  }

  else
  {
    [(STLockoutViewController *)self _changeMainButtonToIgnoreLimit];
  }

  [(STLockoutViewController *)self _restoreTextAndButtons];
}

- (id)_updateMessageLabelAndReturnHandleWithPhoneNumberFormat:(id)format emailAddressFormat:(id)addressFormat contactNameFormat:(id)nameFormat
{
  formatCopy = format;
  addressFormatCopy = addressFormat;
  nameFormatCopy = nameFormat;
  policyController = [(STLockoutViewController *)self policyController];
  blockedContactsHandles = [policyController blockedContactsHandles];

  anyObject = [blockedContactsHandles anyObject];
  [(STLockoutViewController *)self setBlockedContactsHandle:anyObject];
  contactNameByHandle = [(STLockoutViewController *)self contactNameByHandle];
  v15 = [contactNameByHandle objectForKeyedSubscript:anyObject];

  v29 = formatCopy;
  if (v15)
  {
    v16 = addressFormatCopy;
    v17 = +[STScreenTimeUIBundle bundle];
    v18 = [v17 localizedStringForKey:nameFormatCopy value:&stru_282F1E250 table:0];

    v19 = v15;
    v20 = anyObject;
  }

  else if ([anyObject destinationIdIsPhoneNumber])
  {
    v16 = addressFormatCopy;
    v21 = +[STScreenTimeUIBundle bundle];
    v18 = [v21 localizedStringForKey:formatCopy value:&stru_282F1E250 table:0];

    v20 = TUNetworkCountryCode();
    v22 = v20;
    if (!v20)
    {
      v22 = TUHomeCountryCode();
    }

    v19 = TUFormattedPhoneNumber();

    if (!v20)
    {
    }
  }

  else
  {
    destinationIdIsEmailAddress = [anyObject destinationIdIsEmailAddress];
    v24 = +[STScreenTimeUIBundle bundle];
    v20 = v24;
    v16 = addressFormatCopy;
    if (destinationIdIsEmailAddress)
    {
      v25 = addressFormatCopy;
    }

    else
    {
      v25 = nameFormatCopy;
    }

    v18 = [v24 localizedStringForKey:v25 value:&stru_282F1E250 table:0];
    v19 = anyObject;
  }

  v26 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v18 validFormatSpecifiers:@"%lu %@" error:0, objc_msgSend(blockedContactsHandles, "count") - 1, v19];
  messageLabel = [(STLockoutViewController *)self messageLabel];
  [messageLabel setText:v26];

  return v19;
}

- (void)_changeStateToDismissing
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[STBlockingUILog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21DD93000, v3, OS_LOG_TYPE_DEFAULT, "Changing state to Dismissing", buf, 2u);
  }

  [(STLockoutViewController *)self _showDismissingAnimationIfNeeded];
  reuseIdentifier = self->_reuseIdentifier;
  objc_initWeak(buf, self);
  v5 = +[STBlockingUILog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_21DD93000, v5, OS_LOG_TYPE_DEFAULT, "Waiting for dismissing animation", v13, 2u);
  }

  dismissingAnimationGroup = self->_dismissingAnimationGroup;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__STLockoutViewController__changeStateToDismissing__block_invoke;
  v11 = &unk_278339028;
  objc_copyWeak(v12, buf);
  v12[1] = reuseIdentifier;
  v7 = MEMORY[0x277D85CD0];
  dispatch_group_notify(dismissingAnimationGroup, MEMORY[0x277D85CD0], &v8);

  [(STLockoutViewController *)self _actionDismiss:v8];
  objc_destroyWeak(v12);
  objc_destroyWeak(buf);
}

void __51__STLockoutViewController__changeStateToDismissing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 127) == *(a1 + 40))
  {
    v4 = +[STBlockingUILog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing animation complete — notifying clients", v5, 2u);
    }

    [v3 setDidFinishDismissing:1];
  }
}

- (void)_updateImageVisibility
{
  hourglassView = [(STLockoutViewController *)self hourglassView];
  isHidden = [hourglassView isHidden];

  communicationLimitView = [(STLockoutViewController *)self communicationLimitView];
  isHidden2 = [communicationLimitView isHidden];

  if ([(STLockoutViewController *)self shouldHideStoryboardViews])
  {
    v7 = 1;
    isHidden2 = 1;
  }

  else
  {
    policyController = [(STLockoutViewController *)self policyController];
    state = [policyController state];

    v10 = state - 2;
    if ((0x63u >> (state - 2)))
    {
      v11 = 0x3Cu >> (state - 2);
    }

    else
    {
      LOBYTE(v11) = isHidden;
    }

    if ((0x63u >> (state - 2)))
    {
      v12 = 0x43u >> (state - 2);
    }

    else
    {
      LOBYTE(v12) = isHidden2;
    }

    if (v10 <= 6)
    {
      v7 = v11;
    }

    else
    {
      v7 = isHidden;
    }

    if (v10 <= 6)
    {
      isHidden2 = v12;
    }
  }

  hourglassView2 = [(STLockoutViewController *)self hourglassView];
  [hourglassView2 setHidden:v7 & 1];

  communicationLimitView2 = [(STLockoutViewController *)self communicationLimitView];
  [communicationLimitView2 setHidden:isHidden2 & 1];
}

- (void)_showInitialAnimationIfNeeded
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (![(STLockoutViewController *)self _isShowingInitialAnimation])
  {
    v3 = self->_initialAnimationGroup;
    dispatch_group_enter(v3);
    style = self->_style;
    v5 = style > 4;
    v6 = (1 << style) & 0x1A;
    if (v5 || v6 == 0)
    {
      objc_initWeak(&location, self);
      v8 = dispatch_time(0, 300000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__STLockoutViewController__showInitialAnimationIfNeeded__block_invoke;
      block[3] = &unk_278338D88;
      objc_copyWeak(&v12, &location);
      v11 = v3;
      v9 = MEMORY[0x277D85CD0];
      dispatch_after(v8, MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      [(STLockoutViewController *)self _doInitialAnimationExitingGroup:v3];
    }
  }
}

void __56__STLockoutViewController__showInitialAnimationIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _doInitialAnimationExitingGroup:*(a1 + 32)];
}

- (void)_doInitialAnimationExitingGroup:(id)group
{
  groupCopy = group;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_initWeak(&location, self);
  view = [(STLockoutViewController *)self view];
  [view alpha];
  v7 = v6;

  if (v7 == 0.0)
  {
    [(STLockoutViewController *)self _fadeInHourglass];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__STLockoutViewController__doInitialAnimationExitingGroup___block_invoke;
    v8[3] = &unk_278339270;
    objc_copyWeak(&v10, &location);
    v9 = groupCopy;
    [(STLockoutViewController *)self _fadeInBackdropWithCompletion:v8];

    objc_destroyWeak(&v10);
  }

  else
  {
    [(STLockoutViewController *)self _restoreHourglass];
    [(STLockoutViewController *)self _doInitialAnimationOfHourglassExitingGroup:groupCopy];
  }

  objc_destroyWeak(&location);
}

void __59__STLockoutViewController__doInitialAnimationExitingGroup___block_invoke(uint64_t a1)
{
  v2 = +[STBlockingUILog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__STLockoutViewController__doInitialAnimationExitingGroup___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _doInitialAnimationOfHourglassExitingGroup:*(a1 + 32)];
}

- (void)_doInitialAnimationOfHourglassExitingGroup:(id)group
{
  group = group;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(STLockoutViewController *)self _fadeInTextAndButtons];
  dispatch_group_leave(group);
}

- (void)_showApprovalAnimationIfNeeded
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  reuseIdentifier = self->_reuseIdentifier;
  objc_initWeak(&location, self);
  if ([(STLockoutViewController *)self isForSnapshot])
  {
    [(STLockoutViewController *)self _hideTextAndButtons];
  }

  else
  {
    v4 = self->_approvalAnimationGroup;
    dispatch_group_enter(v4);
    initialAnimationGroup = self->_initialAnimationGroup;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__STLockoutViewController__showApprovalAnimationIfNeeded__block_invoke;
    v8[3] = &unk_278338F38;
    objc_copyWeak(v10, &location);
    v10[1] = reuseIdentifier;
    v9 = v4;
    v6 = v4;
    v7 = MEMORY[0x277D85CD0];
    dispatch_group_notify(initialAnimationGroup, MEMORY[0x277D85CD0], v8);

    objc_destroyWeak(v10);
  }

  objc_destroyWeak(&location);
}

void __57__STLockoutViewController__showApprovalAnimationIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[127] == *(a1 + 48))
  {
    [WeakRetained _fadeOutTextAndButtons];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_undoApprovalAnimationIfNeeded
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  self->_isApprovedAnimationWithApprovalPending = 0;
  if ([(STLockoutViewController *)self isForSnapshot])
  {

    [(STLockoutViewController *)self _restoreTextAndButtons];
  }

  else
  {

    [(STLockoutViewController *)self _fadeInTextAndButtons];
  }
}

- (void)_showDismissingAnimationIfNeeded
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  reuseIdentifier = self->_reuseIdentifier;
  objc_initWeak(&location, self);
  self->_isApprovedAnimationWithApprovalPending = 0;
  if ([(STLockoutViewController *)self isForSnapshot])
  {
    [(STLockoutViewController *)self _hideHourglass];
    [(STLockoutViewController *)self _hideTextAndButtons];
    [(STLockoutViewController *)self _hideBackdrop];
  }

  else
  {
    view = [(STLockoutViewController *)self view];
    [view alpha];
    v6 = v5;

    if (v6 == 1.0)
    {
      initialAnimationGroup = self->_initialAnimationGroup;
      v8 = self->_approvalAnimationGroup;
      v9 = self->_dismissingAnimationGroup;
      v10 = initialAnimationGroup;
      dispatch_group_enter(v9);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __59__STLockoutViewController__showDismissingAnimationIfNeeded__block_invoke;
      v14[3] = &unk_2783392E8;
      v15 = v8;
      v11 = v8;
      objc_copyWeak(v18, &location);
      v18[1] = reuseIdentifier;
      selfCopy = self;
      v17 = v9;
      v12 = v9;
      v13 = MEMORY[0x277D85CD0];
      dispatch_group_notify(v10, MEMORY[0x277D85CD0], v14);

      objc_destroyWeak(v18);
    }
  }

  objc_destroyWeak(&location);
}

void __59__STLockoutViewController__showDismissingAnimationIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__STLockoutViewController__showDismissingAnimationIfNeeded__block_invoke_2;
  v5[3] = &unk_2783392C0;
  objc_copyWeak(v7, (a1 + 56));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[1] = *(a1 + 64);
  v5[4] = v3;
  v6 = v4;
  dispatch_group_notify(v2, MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(v7);
}

void __59__STLockoutViewController__showDismissingAnimationIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[127] == *(a1 + 56))
  {
    [WeakRetained _fadeOutHourglass];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__STLockoutViewController__showDismissingAnimationIfNeeded__block_invoke_3;
    v5[3] = &unk_278339298;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v4 _fadeOutBackdropWithCompletion:v5];
    [v3 _fadeOutTextAndButtons];
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

- (void)_fadeOutBackdropWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__STLockoutViewController__fadeOutBackdropWithCompletion___block_invoke;
  v6[3] = &unk_278339220;
  objc_copyWeak(&v7, &location);
  [v5 animateWithDuration:v6 animations:completionCopy completion:0.25];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __58__STLockoutViewController__fadeOutBackdropWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideBackdrop];
}

- (void)_fadeInBackdropWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__STLockoutViewController__fadeInBackdropWithCompletion___block_invoke;
  v6[3] = &unk_278339220;
  objc_copyWeak(&v7, &location);
  [v5 animateWithDuration:v6 animations:completionCopy completion:0.2];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __57__STLockoutViewController__fadeInBackdropWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _restoreBackdrop];
}

- (void)_fadeOutHourglass
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__STLockoutViewController__fadeOutHourglass__block_invoke;
  v3[3] = &unk_278339220;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v3 animations:0.25];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __44__STLockoutViewController__fadeOutHourglass__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideHourglass];
}

- (void)_fadeInHourglass
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__STLockoutViewController__fadeInHourglass__block_invoke;
  v3[3] = &unk_278339220;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v3 animations:0.2];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __43__STLockoutViewController__fadeInHourglass__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _restoreHourglass];
}

- (void)_fadeOutTextAndButtons
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__STLockoutViewController__fadeOutTextAndButtons__block_invoke;
  v3[3] = &unk_278339220;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v3 animations:0.25];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __49__STLockoutViewController__fadeOutTextAndButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideTextAndButtons];
}

- (void)_fadeInTextAndButtons
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__STLockoutViewController__fadeInTextAndButtons__block_invoke;
  v3[3] = &unk_278339220;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v3 animations:0.2];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __48__STLockoutViewController__fadeInTextAndButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _restoreTextAndButtons];
}

- (void)_hideBackdrop
{
  view = [(STLockoutViewController *)self view];
  [view setAlpha:0.0];
}

- (void)_restoreBackdrop
{
  view = [(STLockoutViewController *)self view];
  [view setAlpha:1.0];
}

- (void)_hideHourglass
{
  hourglassView = [(STLockoutViewController *)self hourglassView];
  [hourglassView setAlpha:0.0];
}

- (void)_restoreHourglass
{
  hourglassView = [(STLockoutViewController *)self hourglassView];
  [hourglassView setAlpha:1.0];
}

- (void)_restoreTextAndButtons
{
  [(STLockoutViewController *)self _setTextAndButtonsAlpha:1.0];

  [(STLockoutViewController *)self _updateOKButtonVisibility];
}

- (void)_setTextAndButtonsAlpha:(double)alpha
{
  titleLabel = [(STLockoutViewController *)self titleLabel];
  [titleLabel setAlpha:alpha];

  messageLabel = [(STLockoutViewController *)self messageLabel];
  [messageLabel setAlpha:alpha];

  mainButton = [(STLockoutViewController *)self mainButton];
  [mainButton setAlpha:alpha];

  okButton = [(STLockoutViewController *)self okButton];
  [okButton setAlpha:alpha];
}

- (void)stateDidChange:(unint64_t)change
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = +[STBlockingUILog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    changeCopy = change;
    _os_log_impl(&dword_21DD93000, v5, OS_LOG_TYPE_DEFAULT, "stateDidChange STLockoutState : %ld", &v19, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(STLockoutViewController *)self isViewLoaded])
  {
    if (change > 5)
    {
      if (change > 7)
      {
        if (change == 8)
        {
          v13 = +[STBlockingUILog log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&dword_21DD93000, v13, OS_LOG_TYPE_DEFAULT, "change to policy Contact Blocked During Downtime", &v19, 2u);
          }

          communicationLimitsBlockingViewModel = [(STLockoutViewController *)self communicationLimitsBlockingViewModel];
          blockingViewType = [communicationLimitsBlockingViewModel blockingViewType];

          communicationLimitsBlockingViewModel2 = [(STLockoutViewController *)self communicationLimitsBlockingViewModel];
          v17 = communicationLimitsBlockingViewModel2;
          if (blockingViewType == 3)
          {
            v18 = 5;
          }

          else
          {
            v18 = 4;
          }

          [communicationLimitsBlockingViewModel2 setBlockingViewType:v18];

          [(STLockoutViewController *)self _changeStateToContactBlockedDuringDowntime];
        }

        else if (change == 9)
        {
          v9 = +[STBlockingUILog log];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&dword_21DD93000, v9, OS_LOG_TYPE_DEFAULT, "change state to OK", &v19, 2u);
          }

          [(STLockoutViewController *)self _changeStateToDismissing];
        }
      }

      else if (change == 6)
      {
        v11 = +[STBlockingUILog log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_21DD93000, v11, OS_LOG_TYPE_DEFAULT, "change state to Blocked", &v19, 2u);
        }

        [(STLockoutViewController *)self _changeStateToDisapproved];
      }

      else
      {
        v7 = +[STBlockingUILog log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_21DD93000, v7, OS_LOG_TYPE_DEFAULT, "change to policy Contact Blocked", &v19, 2u);
        }

        [(STLockoutViewController *)self _changeStateToContactBlocked];
      }
    }

    else if (change > 3)
    {
      if (change == 4)
      {
        v12 = +[STBlockingUILog log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_21DD93000, v12, OS_LOG_TYPE_DEFAULT, "change state to Ask Pending", &v19, 2u);
        }

        [(STLockoutViewController *)self _changeStateToPending];
      }

      else
      {
        v8 = +[STBlockingUILog log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_21DD93000, v8, OS_LOG_TYPE_DEFAULT, "change state to Approved", &v19, 2u);
        }

        [(STLockoutViewController *)self _changeStateToApproved];
      }
    }

    else if (change == 2)
    {
      v10 = +[STBlockingUILog log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_21DD93000, v10, OS_LOG_TYPE_DEFAULT, "change state to Warn", &v19, 2u);
      }

      [(STLockoutViewController *)self _changeStateToWarn];
    }

    else if (change == 3)
    {
      v6 = +[STBlockingUILog log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_21DD93000, v6, OS_LOG_TYPE_DEFAULT, "change state to Ask", &v19, 2u);
      }

      [(STLockoutViewController *)self _changeStateToAsk];
    }
  }
}

- (void)_showRestrictionsPINControllerWithMainCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[STBlockingUILog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21DD93000, v5, OS_LOG_TYPE_DEFAULT, "presenting restrictions PIN controller", buf, 2u);
  }

  v6 = [completionCopy copy];
  restrictionsPINControllerCompletion = self->_restrictionsPINControllerCompletion;
  self->_restrictionsPINControllerCompletion = v6;

  if (_os_feature_enabled_impl())
  {
    v8 = objc_opt_new();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __76__STLockoutViewController__showRestrictionsPINControllerWithMainCompletion___block_invoke;
    v9[3] = &unk_278338BD8;
    v9[4] = self;
    [v8 authenticateForCommunicationConfigurationOverrideWithCompletionHandler:v9];
  }

  else
  {
    [(STLockoutViewController *)self _startListeningForRestrictionsPINEntryNotification];
    +[STRemotePasscodeController activateRemotePINUI];
  }
}

uint64_t __76__STLockoutViewController__showRestrictionsPINControllerWithMainCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 authenticated];

  return [v2 _restrictionsPINControllerDidFinish:v3];
}

- (void)_startListeningForRestrictionsPINEntryNotification
{
  v3 = +[STBlockingUILog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [STLockoutViewController _startListeningForRestrictionsPINEntryNotification];
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleRestrictionsPINNotification_ name:@"com.apple.screentime.restrictions.did-finish" object:0 suspensionBehavior:4];
}

- (void)_stopListeningForRestrictionsPINEntryNotification
{
  v3 = +[STBlockingUILog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [STLockoutViewController _stopListeningForRestrictionsPINEntryNotification];
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.screentime.restrictions.did-finish" object:0];
}

- (void)_handleRestrictionsPINNotification:(id)notification
{
  notificationCopy = notification;
  [(STLockoutViewController *)self _stopListeningForRestrictionsPINEntryNotification];
  userInfo = [notificationCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:@"success"];
  bOOLValue = [v6 BOOLValue];

  [(STLockoutViewController *)self _restrictionsPINControllerDidFinish:bOOLValue];
}

- (void)_restrictionsPINControllerDidFinish:(BOOL)finish
{
  finishCopy = finish;
  v5 = +[STBlockingUILog log];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (finishCopy)
  {
    if (v6)
    {
      *buf = 0;
      v7 = "user successfully authenticated with restrictions PIN controller";
LABEL_6:
      _os_log_impl(&dword_21DD93000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  else if (v6)
  {
    *buf = 0;
    v7 = "user canceled restrictions PIN controller";
    goto LABEL_6;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__STLockoutViewController__restrictionsPINControllerDidFinish___block_invoke;
  v8[3] = &unk_278339310;
  v8[4] = self;
  v9 = finishCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __63__STLockoutViewController__restrictionsPINControllerDidFinish___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1032);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), 0);
    v3 = *(a1 + 32);
    v4 = *(v3 + 1032);
    *(v3 + 1032) = 0;
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  viewIfLoaded = [(STLockoutViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (STCommunicationLimitsLockoutViewControllerDelegate)communicationLimitsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_communicationLimitsDelegate);

  return WeakRetained;
}

- (UIResponder)customNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_customNextResponder);

  return WeakRetained;
}

- (UIImageView)hourglassView
{
  WeakRetained = objc_loadWeakRetained(&self->_hourglassView);

  return WeakRetained;
}

- (UIImageView)communicationLimitView
{
  WeakRetained = objc_loadWeakRetained(&self->_communicationLimitView);

  return WeakRetained;
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)messageLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_messageLabel);

  return WeakRetained;
}

- (UIButton)mainButton
{
  WeakRetained = objc_loadWeakRetained(&self->_mainButton);

  return WeakRetained;
}

- (UIButton)okButton
{
  WeakRetained = objc_loadWeakRetained(&self->_okButton);

  return WeakRetained;
}

- (UIStackView)buttonStackView
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonStackView);

  return WeakRetained;
}

- (STLockoutViewControllerDelegate)viewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerDelegate);

  return WeakRetained;
}

void __73__STLockoutViewController_communicationLimitsPreviewMessageButtonPressed__block_invoke_cold_1(SEL *a1)
{
  v1 = NSStringFromSelector(*a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void __74__STLockoutViewController_communicationLimitsApproveInPersonButtonPressed__block_invoke_cold_1(SEL *a1)
{
  v1 = NSStringFromSelector(*a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

- (void)viewWillAppear:(char)a1 .cold.1(char a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

- (void)viewDidAppear:(char)a1 .cold.1(char a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

- (void)setView:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STLockoutViewController-iOS.m" lineNumber:513 description:{@"Invalid parameter not satisfying: %@", @"[view isKindOfClass:[UIVisualEffectView class]]"}];
}

- (void)setForSnapshot:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_applicationNameForBundleIdentifier:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_21DD93000, v1, OS_LOG_TYPE_ERROR, "Failed to get application record for %{public}@ %{public}@", v2, 0x16u);
}

- (void)_actionUnlockedAskOrApproveActionSheet
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_performUnlockedActionWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__STLockoutViewController__authenticatedApproveForAdditionalTime___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end