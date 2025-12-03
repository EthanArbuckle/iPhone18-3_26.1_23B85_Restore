@interface NCNotificationContentContainerViewController
+ (id)_defaultUIExtensionForNotificationRequest:(id)request visibleAttachment:(id *)attachment;
+ (id)_visibleAttachmentForNotificationRequest:(id)request;
+ (id)extensionForNotificationRequest:(id)request;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)defaultContentHidden;
- (BOOL)didReceiveNotificationRequest:(id)request;
- (BOOL)overridesDefaultTitle;
- (BOOL)performAction:(id)action forNotification:(id)notification;
- (BOOL)performAction:(id)action forNotification:(id)notification withUserInfo:(id)info;
- (BOOL)restoreInputViews;
- (BOOL)userInteractionEnabled;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (NCNotificationContentContainerViewController)initWithNotificationRequest:(id)request;
- (NCNotificationCustomContentDelegate)delegate;
- (NSString)contentExtensionIdentifier;
- (NSString)title;
- (id)_responseForAction:(id)action notification:(id)notification userInfo:(id)info;
- (id)_textInputActionInNotification:(id)notification;
- (id)cancelTouches;
- (void)_forwardActionToExtension:(id)extension forNotification:(id)notification withUserInfo:(id)info;
- (void)_loadExtensionContainerViewControllerForNotificationRequest:(id)request;
- (void)_removeInputAccessoryView:(id)view;
- (void)_setupExtensionContainerViewControllerController:(id)controller;
- (void)_setupQuickReplyForNotificationAction:(id)action;
- (void)_setupQuickReplyForNotificationRequest:(id)request;
- (void)extensionViewControllerDidLoadExtension:(id)extension;
- (void)extensionViewControllerDidUpdateActions:(id)actions;
- (void)extensionViewControllerDidUpdateTitle:(id)title;
- (void)extensionViewControllerRequestsDefaultAction:(id)action;
- (void)extensionViewControllerRequestsDismiss:(id)dismiss;
- (void)notificationTextInputView:(id)view didConfirmText:(id)text forAction:(id)action;
- (void)playMedia;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)preserveInputViews;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation NCNotificationContentContainerViewController

- (NSString)contentExtensionIdentifier
{
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  extensionIdentifier = [extensionContainerViewController extensionIdentifier];

  return extensionIdentifier;
}

- (BOOL)canBecomeFirstResponder
{
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  canBecomeFirstResponder = [extensionContainerViewController canBecomeFirstResponder];

  return canBecomeFirstResponder ^ 1;
}

- (BOOL)becomeFirstResponder
{
  v9.receiver = self;
  v9.super_class = NCNotificationContentContainerViewController;
  becomeFirstResponder = [(NCNotificationContentContainerViewController *)&v9 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    notificationRequest = [(NCNotificationContentContainerViewController *)self notificationRequest];
    showsTextInputOnAppearance = [notificationRequest showsTextInputOnAppearance];

    if (showsTextInputOnAppearance)
    {
      notificationRequest2 = [(NCNotificationContentContainerViewController *)self notificationRequest];
      [(NCNotificationContentContainerViewController *)self _setupQuickReplyForNotificationRequest:notificationRequest2];

      textInputView = [(NCNotificationContentContainerViewController *)self textInputView];
      [textInputView becomeFirstResponder];
    }
  }

  return becomeFirstResponder;
}

- (BOOL)restoreInputViews
{
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  if ([extensionContainerViewController canBecomeFirstResponder] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    restoreInputViews = [extensionContainerViewController restoreInputViews];
  }

  else
  {
    mEMORY[0x277D75830] = [MEMORY[0x277D75830] sharedInstance];
    v6 = [MEMORY[0x277CCAE60] valueWithPointer:self];
    restoreInputViews = [mEMORY[0x277D75830] _restoreInputViewsWithId:v6 animated:1];
  }

  return restoreInputViews;
}

+ (id)extensionForNotificationRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    mEMORY[0x277CE2188] = [MEMORY[0x277CE2188] sharedInstance];
    sectionIdentifier = [requestCopy sectionIdentifier];
    categoryIdentifier = [requestCopy categoryIdentifier];
    v8 = [mEMORY[0x277CE2188] extensionForNotificationSourceIdentifier:sectionIdentifier categoryIdentifier:categoryIdentifier];

    if (!v8)
    {
      v8 = [self _defaultUIExtensionForNotificationRequest:requestCopy visibleAttachment:0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NCNotificationContentContainerViewController)initWithNotificationRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = NCNotificationContentContainerViewController;
  v6 = [(NCNotificationContentContainerViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationRequest, request);
    [(NCNotificationContentContainerViewController *)v7 _loadExtensionContainerViewControllerForNotificationRequest:requestCopy];
  }

  return v7;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  if (window)
  {
    [(NCNotificationContentContainerViewController *)self becomeFirstResponder:window];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = NCNotificationContentContainerViewController;
  [(NCNotificationContentContainerViewController *)&v4 viewDidLoad];
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  [(NCNotificationContentContainerViewController *)self _setupExtensionContainerViewControllerController:extensionContainerViewController];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[NCNotificationContentContainerViewController viewWillAppear:]";
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = NCNotificationContentContainerViewController;
  [(NCNotificationContentContainerViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[NCNotificationContentContainerViewController viewWillDisappear:]";
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = NCNotificationContentContainerViewController;
  [(NCNotificationContentContainerViewController *)&v7 viewWillDisappear:disappearCopy];
  firstResponder = [(NCNotificationContentContainerViewController *)self firstResponder];
  [firstResponder resignFirstResponder];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[NCNotificationContentContainerViewController viewDidAppear:]";
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = NCNotificationContentContainerViewController;
  [(NCNotificationContentContainerViewController *)&v6 viewDidAppear:appearCopy];
  [(NCNotificationContentContainerViewController *)self becomeFirstResponder];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[NCNotificationContentContainerViewController viewDidDisappear:]";
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = NCNotificationContentContainerViewController;
  [(NCNotificationContentContainerViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (NSString)title
{
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  title = [extensionContainerViewController title];

  return title;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v12.receiver = self;
  v12.super_class = NCNotificationContentContainerViewController;
  [(NCNotificationContentContainerViewController *)&v12 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [(NCNotificationContentContainerViewController *)self preferredContentSize];
  v6 = v5;
  v8 = v7;
  [containerCopy preferredContentSize];
  if (v6 != v10 || v8 != v9)
  {
    [containerCopy preferredContentSize];
    [(NCNotificationContentContainerViewController *)self setPreferredContentSize:?];
  }
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];

  if (extensionContainerViewController)
  {
    extensionContainerViewController2 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
    extensionContainerViewController3 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
    [extensionContainerViewController2 sizeForChildContentContainer:extensionContainerViewController3 withParentContainerSize:{width, height}];
    width = v10;
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = width;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = NCNotificationContentContainerViewController;
  coordinatorCopy = coordinator;
  [(NCNotificationContentContainerViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController:v9.receiver];
  [v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
}

- (void)extensionViewControllerDidLoadExtension:(id)extension
{
  delegate = [(NCNotificationContentContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate customContentDidLoadExtension:self];
  }
}

- (void)extensionViewControllerDidUpdateTitle:(id)title
{
  delegate = [(NCNotificationContentContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate customContentDidUpdateTitle:self];
  }
}

- (void)extensionViewControllerDidUpdateActions:(id)actions
{
  actionsCopy = actions;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  notificationRequest = [(NCNotificationContentContainerViewController *)self notificationRequest];
  actions = [actionsCopy actions];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __88__NCNotificationContentContainerViewController_extensionViewControllerDidUpdateActions___block_invoke;
  v16 = &unk_2783715E8;
  v7 = notificationRequest;
  v17 = v7;
  v18 = &v19;
  [actions enumerateObjectsUsingBlock:&v13];
  updatedActions = self->_updatedActions;
  if (updatedActions)
  {
    [(NSMutableArray *)updatedActions addObjectsFromArray:v20[5], v13, v14, v15, v16];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v10 = [v9 initWithArray:{v20[5], v13, v14, v15, v16}];
    v11 = self->_updatedActions;
    self->_updatedActions = v10;
  }

  delegate = [(NCNotificationContentContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate customContent:self didUpdateUserNotificationActions:v20[5]];
  }

  _Block_object_dispose(&v19, 8);
}

void __88__NCNotificationContentContainerViewController_extensionViewControllerDidUpdateActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D77E30];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 bulletin];
  v7 = [*(a1 + 32) observer];
  v8 = [v3 notificationActionForUNNotificationAction:v5 bulletin:v6 observer:v7];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
}

- (void)extensionViewControllerRequestsDefaultAction:(id)action
{
  delegate = [(NCNotificationContentContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate customContentRequestsDefaultAction:self];
  }
}

- (void)extensionViewControllerRequestsDismiss:(id)dismiss
{
  delegate = [(NCNotificationContentContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate customContentRequestsDismiss:self];
  }
}

- (BOOL)didReceiveNotificationRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    threadIdentifier = [requestCopy threadIdentifier];
    un_logDigest2 = [threadIdentifier un_logDigest];
    v14 = 138543618;
    v15 = un_logDigest;
    v16 = 2114;
    v17 = un_logDigest2;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Content container received additional notification %{public}@ for thread %{public}@", &v14, 0x16u);
  }

  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  userNotification = [requestCopy userNotification];
  [extensionContainerViewController didReceiveNotification:userNotification];

  return extensionContainerViewController != 0;
}

- (BOOL)performAction:(id)action forNotification:(id)notification withUserInfo:(id)info
{
  v31 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  notificationCopy = notification;
  infoCopy = info;
  identifier = [actionCopy identifier];
  v12 = [identifier isEqual:*MEMORY[0x277CE20E8]];

  if ((v12 & 1) != 0 || (-[NCNotificationContentContainerViewController extensionContainerViewController](self, "extensionContainerViewController"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 extensionWantsToReceiveActionResponses], v13, !v14))
  {
    v21 = 0;
  }

  else
  {
    v15 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      identifier2 = [actionCopy identifier];
      notificationIdentifier = [notificationCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543618;
      v28 = identifier2;
      v29 = 2114;
      v30 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "Sending action %{public}@ for notification %{public}@ to extension container", buf, 0x16u);
    }

    if ([actionCopy requiresAuthentication])
    {
      delegate = [(NCNotificationContentContainerViewController *)self delegate];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __91__NCNotificationContentContainerViewController_performAction_forNotification_withUserInfo___block_invoke;
      v23[3] = &unk_278371610;
      v23[4] = self;
      v24 = actionCopy;
      v25 = notificationCopy;
      v26 = infoCopy;
      [delegate customContent:self requestPermissionToExecuteAction:v24 forNotification:v25 withUserInfo:v26 completionHandler:v23];
    }

    else
    {
      [(NCNotificationContentContainerViewController *)self _forwardActionToExtension:actionCopy forNotification:notificationCopy withUserInfo:infoCopy];
    }

    v21 = 1;
  }

  return v21;
}

void __91__NCNotificationContentContainerViewController_performAction_forNotification_withUserInfo___block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    [v3 _forwardActionToExtension:v4 forNotification:v5 withUserInfo:v6];
  }

  else
  {
    v7 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 identifier];
      v11 = [*(a1 + 48) notificationIdentifier];
      v12 = [v11 un_logDigest];
      v16 = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Not allowing action %{public}@ for notification %{public}@ to extension container due to passcode failure or cancellation", &v16, 0x16u);
    }

    if ([*(a1 + 40) behavior] == 1)
    {
      v13 = [*(a1 + 32) extensionContainerViewController];
      v14 = [v13 canBecomeFirstResponder];

      if ((v14 & 1) == 0)
      {
        [*(a1 + 32) _setupQuickReplyForNotificationAction:*(a1 + 40)];
        [*(a1 + 32) becomeFirstResponder];
        v15 = [*(a1 + 32) inputAccessoryView];
        [v15 becomeFirstResponder];
      }
    }
  }
}

- (BOOL)performAction:(id)action forNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  notificationCopy = notification;
  if ([actionCopy behavior] == 1 && (-[NCNotificationContentContainerViewController extensionContainerViewController](self, "extensionContainerViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "canBecomeFirstResponder"), v8, (v9 & 1) == 0))
  {
    v11 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      notificationRequest = [(NCNotificationContentContainerViewController *)self notificationRequest];
      notificationIdentifier = [notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v18 = 138543362;
      v19 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "Setup quick reply for request %{public}@", &v18, 0xCu);
    }

    [(NCNotificationContentContainerViewController *)self _setupQuickReplyForNotificationAction:actionCopy];
    [(NCNotificationContentContainerViewController *)self becomeFirstResponder];
    textInputView = [(NCNotificationContentContainerViewController *)self textInputView];
    [textInputView becomeFirstResponder];

    v10 = 1;
  }

  else
  {
    v10 = [(NCNotificationContentContainerViewController *)self performAction:actionCopy forNotification:notificationCopy withUserInfo:MEMORY[0x277CBEC10]];
  }

  return v10;
}

- (BOOL)defaultContentHidden
{
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  if (extensionContainerViewController)
  {
    extensionContainerViewController2 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
    isDefaultContentHidden = [extensionContainerViewController2 isDefaultContentHidden];
  }

  else
  {
    isDefaultContentHidden = 0;
  }

  return isDefaultContentHidden;
}

- (BOOL)overridesDefaultTitle
{
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  if (extensionContainerViewController)
  {
    extensionContainerViewController2 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
    isDefaultTitleOverridden = [extensionContainerViewController2 isDefaultTitleOverridden];
  }

  else
  {
    isDefaultTitleOverridden = 0;
  }

  return isDefaultTitleOverridden;
}

- (void)preserveInputViews
{
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  if ([extensionContainerViewController canBecomeFirstResponder] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [extensionContainerViewController preserveInputViews];
  }

  else
  {
    mEMORY[0x277D75830] = [MEMORY[0x277D75830] sharedInstance];
    v4 = [MEMORY[0x277CCAE60] valueWithPointer:self];
    [mEMORY[0x277D75830] _preserveInputViewsWithId:v4 animated:1];
  }
}

- (BOOL)userInteractionEnabled
{
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  isUserInteractionEnabled = [extensionContainerViewController isUserInteractionEnabled];

  return isUserInteractionEnabled;
}

- (void)playMedia
{
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  [extensionContainerViewController playMedia];
}

- (id)cancelTouches
{
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  cancelTouchesForCurrentEventInExtension = [extensionContainerViewController cancelTouchesForCurrentEventInExtension];

  return cancelTouchesForCurrentEventInExtension;
}

- (void)notificationTextInputView:(id)view didConfirmText:(id)text forAction:(id)action
{
  v15[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v14 = *MEMORY[0x277CF35E0];
  v15[0] = text;
  v8 = MEMORY[0x277CBEAC0];
  textCopy = text;
  v10 = [v8 dictionaryWithObjects:v15 forKeys:&v14 count:1];

  notificationRequest = [(NCNotificationContentContainerViewController *)self notificationRequest];
  LOBYTE(textCopy) = [(NCNotificationContentContainerViewController *)self performAction:actionCopy forNotification:notificationRequest withUserInfo:v10];

  if ((textCopy & 1) == 0)
  {
    delegate = [(NCNotificationContentContainerViewController *)self delegate];
    notificationRequest2 = [(NCNotificationContentContainerViewController *)self notificationRequest];
    [delegate customContent:self forwardAction:actionCopy forNotification:notificationRequest2 withUserInfo:v10];
  }
}

- (void)_setupExtensionContainerViewControllerController:(id)controller
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  isViewLoaded = [(NCNotificationContentContainerViewController *)self isViewLoaded];
  if (controllerCopy)
  {
    if (isViewLoaded)
    {
      parentViewController = [controllerCopy parentViewController];

      if (!parentViewController)
      {
        v7 = *MEMORY[0x277D77DB8];
        if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          notificationRequest = [(NCNotificationContentContainerViewController *)self notificationRequest];
          notificationIdentifier = [notificationRequest notificationIdentifier];
          un_logDigest = [notificationIdentifier un_logDigest];
          *buf = 138543618;
          v22 = v10;
          v23 = 2114;
          v24 = un_logDigest;
          _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Setting up content container view controller %{public}@ for notification %{public}@", buf, 0x16u);
        }

        [(NCNotificationContentContainerViewController *)self addChildViewController:controllerCopy];
        view = [controllerCopy view];
        view2 = [(NCNotificationContentContainerViewController *)self view];
        [view2 bounds];
        [view setFrame:?];

        [view setAutoresizingMask:18];
        view3 = [(NCNotificationContentContainerViewController *)self view];
        [view3 addSubview:view];

        [controllerCopy didMoveToParentViewController:self];
        [view setAlpha:0.0];
        v17 = MEMORY[0x277D75D18];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __97__NCNotificationContentContainerViewController__setupExtensionContainerViewControllerController___block_invoke;
        v19[3] = &unk_27836F6A8;
        v20 = view;
        v18 = view;
        [v17 animateWithDuration:v19 animations:0.25];
      }
    }
  }
}

+ (id)_visibleAttachmentForNotificationRequest:(id)request
{
  userNotification = [request userNotification];
  request = [userNotification request];
  content = [request content];
  attachments = [content attachments];

  v7 = [attachments bs_firstObjectPassingTest:&__block_literal_global_18];

  return v7;
}

BOOL __89__NCNotificationContentContainerViewController__visibleAttachmentForNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 options];
  v3 = [v2 displayLocation] != 1;

  return v3;
}

+ (id)_defaultUIExtensionForNotificationRequest:(id)request visibleAttachment:(id *)attachment
{
  if (request)
  {
    v5 = [self _visibleAttachmentForNotificationRequest:?];
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.UserNotificationsUIKit.DefaultUIExtension" error:0];
      if (attachment)
      {
        v7 = v5;
        *attachment = v5;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_loadExtensionContainerViewControllerForNotificationRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  self->_customContentLocation = 0;
  mEMORY[0x277CE2188] = [MEMORY[0x277CE2188] sharedInstance];
  sectionIdentifier = [requestCopy sectionIdentifier];
  categoryIdentifier = [requestCopy categoryIdentifier];
  v8 = [mEMORY[0x277CE2188] extensionForNotificationSourceIdentifier:sectionIdentifier categoryIdentifier:categoryIdentifier];

  v9 = v8;
  v10 = v9;
  if (!v9)
  {
    v23 = 0;
    v10 = [objc_opt_class() _defaultUIExtensionForNotificationRequest:requestCopy visibleAttachment:&v23];
    if (!v10)
    {
      [(NCNotificationContentContainerViewController *)self setExtensionContainerViewController:0];
      v16 = 0;
LABEL_11:
      notificationRequest = [(NCNotificationContentContainerViewController *)self notificationRequest];
      showsTextInputOnAppearance = [notificationRequest showsTextInputOnAppearance];

      if (showsTextInputOnAppearance)
      {
        [(NCNotificationContentContainerViewController *)self _setupQuickReplyForNotificationRequest:requestCopy];
      }

      goto LABEL_13;
    }

    if ([v23 family] == 1)
    {
      self->_customContentLocation = 1;
    }
  }

  notificationRequest2 = [(NCNotificationContentContainerViewController *)self notificationRequest];
  defaultEnvironmentActions = [notificationRequest2 defaultEnvironmentActions];

  v13 = [defaultEnvironmentActions bs_map:&__block_literal_global_44];
  v14 = objc_alloc(MEMORY[0x277CE2180]);
  userNotification = [requestCopy userNotification];
  v16 = [v14 initWithExtension:v10 notification:userNotification actions:v13];

  [v16 setDelegate:self];
  [(NCNotificationContentContainerViewController *)self setExtensionContainerViewController:v16];
  if (v16)
  {
    v17 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543362;
      v25 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v18, OS_LOG_TYPE_DEFAULT, "Created extension container view controller for notification %{public}@", buf, 0xCu);
    }
  }

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_13:
}

- (void)_setupQuickReplyForNotificationRequest:(id)request
{
  v4 = [(NCNotificationContentContainerViewController *)self _textInputActionInNotification:request];
  if (v4)
  {
    v4 = [(NCNotificationContentContainerViewController *)self _setupQuickReplyForNotificationAction:v4];
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)_setupQuickReplyForNotificationAction:(id)action
{
  actionCopy = action;
  textInputView = [(NCNotificationContentContainerViewController *)self textInputView];

  if (textInputView)
  {
    textInputView2 = [(NCNotificationContentContainerViewController *)self textInputView];
    [(NCNotificationTextInputView *)textInputView2 setAction:actionCopy];
  }

  else
  {
    v6 = [NCNotificationTextInputView alloc];
    textInputView2 = [(NCNotificationTextInputView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(NCNotificationTextInputView *)textInputView2 setDelegate:self];
    [(NCNotificationTextInputView *)textInputView2 setAction:actionCopy];

    [(NCNotificationTextInputView *)textInputView2 sizeToFit];
    actionCopy = [(NCNotificationContentContainerViewController *)self notificationRequest];
    content = [actionCopy content];
    communicationContext = [content communicationContext];
    if (communicationContext)
    {
      v9 = objc_alloc_init(MEMORY[0x277D75600]);
      message = [content message];
      timestamp = [actionCopy timestamp];
      sender = [communicationContext sender];
      handle = [sender handle];
      [v9 addTextEntry:message timestamp:timestamp senderIdentifier:handle];

      [(NCNotificationTextInputView *)textInputView2 setInputContextHistory:v9];
    }

    [(NCNotificationContentContainerViewController *)self setTextInputView:textInputView2];
    [(NCNotificationContentContainerViewController *)self reloadInputViews];
    if (([actionCopy showsTextInputOnAppearance] & 1) == 0)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__removeInputAccessoryView_ name:*MEMORY[0x277D76BA0] object:0];
    }
  }
}

- (id)_textInputActionInNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  [notification defaultEnvironmentActions];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 behavior] == 1)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)_removeInputAccessoryView:(id)view
{
  notificationRequest = [(NCNotificationContentContainerViewController *)self notificationRequest];
  showsTextInputOnAppearance = [notificationRequest showsTextInputOnAppearance];

  if ((showsTextInputOnAppearance & 1) == 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA0] object:0];

    [(NCNotificationContentContainerViewController *)self setTextInputView:0];

    [(NCNotificationContentContainerViewController *)self reloadInputViews];
  }
}

- (void)_forwardActionToExtension:(id)extension forNotification:(id)notification withUserInfo:(id)info
{
  extensionCopy = extension;
  infoCopy = info;
  v10 = [(NCNotificationContentContainerViewController *)self _responseForAction:extensionCopy notification:notification userInfo:infoCopy];
  extensionContainerViewController = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__NCNotificationContentContainerViewController__forwardActionToExtension_forNotification_withUserInfo___block_invoke;
  v15[3] = &unk_2783716A0;
  v16 = v10;
  selfCopy = self;
  v18 = extensionCopy;
  v19 = infoCopy;
  v12 = infoCopy;
  v13 = extensionCopy;
  v14 = v10;
  [extensionContainerViewController didReceiveNotificationResponse:v14 completionHandler:v15];
}

void __103__NCNotificationContentContainerViewController__forwardActionToExtension_forNotification_withUserInfo___block_invoke(id *a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__NCNotificationContentContainerViewController__forwardActionToExtension_forNotification_withUserInfo___block_invoke_2;
  block[3] = &unk_278371678;
  v12 = a2;
  v3 = a1 + 5;
  *&v4 = a1[4];
  *(&v4 + 1) = *v3;
  v8 = v4;
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __103__NCNotificationContentContainerViewController__forwardActionToExtension_forNotification_withUserInfo___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *MEMORY[0x277D77DB8];
  v4 = v2 - 1;
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    if (v2 == 2)
    {
      v5 = "forwarded";
    }

    else
    {
      v5 = "completed";
    }

    v6 = *(a1 + 32);
    v7 = v3;
    v8 = [v6 actionIdentifier];
    v9 = v8;
    v10 = "did not dismiss";
    *v17 = 136446722;
    *&v17[4] = v5;
    if (v4 < 2)
    {
      v10 = "dismissed";
    }

    *&v17[12] = 2114;
    *&v17[14] = v8;
    v18 = 2082;
    v19 = v10;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "Extension container %{public}s handling of action <%{public}@> and %{public}s the notification", v17, 0x20u);
  }

  v11 = v2 == 2;
  v12 = [*(a1 + 40) delegate];
  v13 = [*(a1 + 48) actionRunner];
  [v13 setShouldForwardAction:v11];

  if (v4 <= 1)
  {
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = [v14 notificationRequest];
    [v12 customContent:v14 forwardAction:v15 forNotification:v16 withUserInfo:*(a1 + 56)];
  }
}

- (id)_responseForAction:(id)action notification:(id)notification userInfo:(id)info
{
  actionCopy = action;
  notificationCopy = notification;
  infoCopy = info;
  if ([actionCopy behavior])
  {
    if ([actionCopy behavior] == 1)
    {
      v10 = [infoCopy objectForKey:*MEMORY[0x277CF35E0]];
      v11 = v10;
      v12 = &stru_282FE84F8;
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      v14 = MEMORY[0x277CE2018];
      userNotification = [notificationCopy userNotification];
      identifier = [actionCopy identifier];
      v17 = [v14 responseWithNotification:userNotification actionIdentifier:identifier userText:v13];
    }

    else
    {
      v21 = *MEMORY[0x277D77DB8];
      if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
      {
        [NCNotificationContentContainerViewController _responseForAction:v21 notification:actionCopy userInfo:notificationCopy];
      }

      v17 = 0;
    }
  }

  else
  {
    v18 = MEMORY[0x277CE1FC8];
    userNotification2 = [notificationCopy userNotification];
    identifier2 = [actionCopy identifier];
    v17 = [v18 responseWithNotification:userNotification2 actionIdentifier:identifier2];
  }

  return v17;
}

- (NCNotificationCustomContentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_responseForAction:(void *)a1 notification:(void *)a2 userInfo:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 behavior];
  v7 = [a3 notificationIdentifier];
  v8 = [v7 un_logDigest];
  v9 = 134218242;
  v10 = v6;
  v11 = 2114;
  v12 = v8;
  _os_log_error_impl(&dword_21E77E000, v5, OS_LOG_TYPE_ERROR, "Unknown action behavior %lu for notification %{public}@", &v9, 0x16u);
}

@end