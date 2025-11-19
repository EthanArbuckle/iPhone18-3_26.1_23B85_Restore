@interface NCNotificationContentContainerViewController
+ (id)_defaultUIExtensionForNotificationRequest:(id)a3 visibleAttachment:(id *)a4;
+ (id)_visibleAttachmentForNotificationRequest:(id)a3;
+ (id)extensionForNotificationRequest:(id)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)defaultContentHidden;
- (BOOL)didReceiveNotificationRequest:(id)a3;
- (BOOL)overridesDefaultTitle;
- (BOOL)performAction:(id)a3 forNotification:(id)a4;
- (BOOL)performAction:(id)a3 forNotification:(id)a4 withUserInfo:(id)a5;
- (BOOL)restoreInputViews;
- (BOOL)userInteractionEnabled;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NCNotificationContentContainerViewController)initWithNotificationRequest:(id)a3;
- (NCNotificationCustomContentDelegate)delegate;
- (NSString)contentExtensionIdentifier;
- (NSString)title;
- (id)_responseForAction:(id)a3 notification:(id)a4 userInfo:(id)a5;
- (id)_textInputActionInNotification:(id)a3;
- (id)cancelTouches;
- (void)_forwardActionToExtension:(id)a3 forNotification:(id)a4 withUserInfo:(id)a5;
- (void)_loadExtensionContainerViewControllerForNotificationRequest:(id)a3;
- (void)_removeInputAccessoryView:(id)a3;
- (void)_setupExtensionContainerViewControllerController:(id)a3;
- (void)_setupQuickReplyForNotificationAction:(id)a3;
- (void)_setupQuickReplyForNotificationRequest:(id)a3;
- (void)extensionViewControllerDidLoadExtension:(id)a3;
- (void)extensionViewControllerDidUpdateActions:(id)a3;
- (void)extensionViewControllerDidUpdateTitle:(id)a3;
- (void)extensionViewControllerRequestsDefaultAction:(id)a3;
- (void)extensionViewControllerRequestsDismiss:(id)a3;
- (void)notificationTextInputView:(id)a3 didConfirmText:(id)a4 forAction:(id)a5;
- (void)playMedia;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)preserveInputViews;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation NCNotificationContentContainerViewController

- (NSString)contentExtensionIdentifier
{
  v2 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  v3 = [v2 extensionIdentifier];

  return v3;
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  v3 = [v2 canBecomeFirstResponder];

  return v3 ^ 1;
}

- (BOOL)becomeFirstResponder
{
  v9.receiver = self;
  v9.super_class = NCNotificationContentContainerViewController;
  v3 = [(NCNotificationContentContainerViewController *)&v9 becomeFirstResponder];
  if (v3)
  {
    v4 = [(NCNotificationContentContainerViewController *)self notificationRequest];
    v5 = [v4 showsTextInputOnAppearance];

    if (v5)
    {
      v6 = [(NCNotificationContentContainerViewController *)self notificationRequest];
      [(NCNotificationContentContainerViewController *)self _setupQuickReplyForNotificationRequest:v6];

      v7 = [(NCNotificationContentContainerViewController *)self textInputView];
      [v7 becomeFirstResponder];
    }
  }

  return v3;
}

- (BOOL)restoreInputViews
{
  v3 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  if ([v3 canBecomeFirstResponder] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 restoreInputViews];
  }

  else
  {
    v5 = [MEMORY[0x277D75830] sharedInstance];
    v6 = [MEMORY[0x277CCAE60] valueWithPointer:self];
    v4 = [v5 _restoreInputViewsWithId:v6 animated:1];
  }

  return v4;
}

+ (id)extensionForNotificationRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CE2188] sharedInstance];
    v6 = [v4 sectionIdentifier];
    v7 = [v4 categoryIdentifier];
    v8 = [v5 extensionForNotificationSourceIdentifier:v6 categoryIdentifier:v7];

    if (!v8)
    {
      v8 = [a1 _defaultUIExtensionForNotificationRequest:v4 visibleAttachment:0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NCNotificationContentContainerViewController)initWithNotificationRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NCNotificationContentContainerViewController;
  v6 = [(NCNotificationContentContainerViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationRequest, a3);
    [(NCNotificationContentContainerViewController *)v7 _loadExtensionContainerViewControllerForNotificationRequest:v5];
  }

  return v7;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  if (a3)
  {
    [(NCNotificationContentContainerViewController *)self becomeFirstResponder:a3];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = NCNotificationContentContainerViewController;
  [(NCNotificationContentContainerViewController *)&v4 viewDidLoad];
  v3 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  [(NCNotificationContentContainerViewController *)self _setupExtensionContainerViewControllerController:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
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
  [(NCNotificationContentContainerViewController *)&v6 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
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
  [(NCNotificationContentContainerViewController *)&v7 viewWillDisappear:v3];
  v6 = [(NCNotificationContentContainerViewController *)self firstResponder];
  [v6 resignFirstResponder];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
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
  [(NCNotificationContentContainerViewController *)&v6 viewDidAppear:v3];
  [(NCNotificationContentContainerViewController *)self becomeFirstResponder];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
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
  [(NCNotificationContentContainerViewController *)&v6 viewDidDisappear:v3];
}

- (NSString)title
{
  v2 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  v3 = [v2 title];

  return v3;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NCNotificationContentContainerViewController;
  [(NCNotificationContentContainerViewController *)&v12 preferredContentSizeDidChangeForChildContentContainer:v4];
  [(NCNotificationContentContainerViewController *)self preferredContentSize];
  v6 = v5;
  v8 = v7;
  [v4 preferredContentSize];
  if (v6 != v10 || v8 != v9)
  {
    [v4 preferredContentSize];
    [(NCNotificationContentContainerViewController *)self setPreferredContentSize:?];
  }
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];

  if (v7)
  {
    v8 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
    v9 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
    [v8 sizeForChildContentContainer:v9 withParentContainerSize:{width, height}];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = NCNotificationContentContainerViewController;
  v7 = a4;
  [(NCNotificationContentContainerViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController:v9.receiver];
  [v8 viewWillTransitionToSize:v7 withTransitionCoordinator:{width, height}];
}

- (void)extensionViewControllerDidLoadExtension:(id)a3
{
  v4 = [(NCNotificationContentContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 customContentDidLoadExtension:self];
  }
}

- (void)extensionViewControllerDidUpdateTitle:(id)a3
{
  v4 = [(NCNotificationContentContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 customContentDidUpdateTitle:self];
  }
}

- (void)extensionViewControllerDidUpdateActions:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(NCNotificationContentContainerViewController *)self notificationRequest];
  v6 = [v4 actions];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __88__NCNotificationContentContainerViewController_extensionViewControllerDidUpdateActions___block_invoke;
  v16 = &unk_2783715E8;
  v7 = v5;
  v17 = v7;
  v18 = &v19;
  [v6 enumerateObjectsUsingBlock:&v13];
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

  v12 = [(NCNotificationContentContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v12 customContent:self didUpdateUserNotificationActions:v20[5]];
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

- (void)extensionViewControllerRequestsDefaultAction:(id)a3
{
  v4 = [(NCNotificationContentContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 customContentRequestsDefaultAction:self];
  }
}

- (void)extensionViewControllerRequestsDismiss:(id)a3
{
  v4 = [(NCNotificationContentContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 customContentRequestsDismiss:self];
  }
}

- (BOOL)didReceiveNotificationRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 notificationIdentifier];
    v8 = [v7 un_logDigest];
    v9 = [v4 threadIdentifier];
    v10 = [v9 un_logDigest];
    v14 = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Content container received additional notification %{public}@ for thread %{public}@", &v14, 0x16u);
  }

  v11 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  v12 = [v4 userNotification];
  [v11 didReceiveNotification:v12];

  return v11 != 0;
}

- (BOOL)performAction:(id)a3 forNotification:(id)a4 withUserInfo:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identifier];
  v12 = [v11 isEqual:*MEMORY[0x277CE20E8]];

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
      v17 = [v8 identifier];
      v18 = [v9 notificationIdentifier];
      v19 = [v18 un_logDigest];
      *buf = 138543618;
      v28 = v17;
      v29 = 2114;
      v30 = v19;
      _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "Sending action %{public}@ for notification %{public}@ to extension container", buf, 0x16u);
    }

    if ([v8 requiresAuthentication])
    {
      v20 = [(NCNotificationContentContainerViewController *)self delegate];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __91__NCNotificationContentContainerViewController_performAction_forNotification_withUserInfo___block_invoke;
      v23[3] = &unk_278371610;
      v23[4] = self;
      v24 = v8;
      v25 = v9;
      v26 = v10;
      [v20 customContent:self requestPermissionToExecuteAction:v24 forNotification:v25 withUserInfo:v26 completionHandler:v23];
    }

    else
    {
      [(NCNotificationContentContainerViewController *)self _forwardActionToExtension:v8 forNotification:v9 withUserInfo:v10];
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

- (BOOL)performAction:(id)a3 forNotification:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 behavior] == 1 && (-[NCNotificationContentContainerViewController extensionContainerViewController](self, "extensionContainerViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "canBecomeFirstResponder"), v8, (v9 & 1) == 0))
  {
    v11 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(NCNotificationContentContainerViewController *)self notificationRequest];
      v14 = [v13 notificationIdentifier];
      v15 = [v14 un_logDigest];
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "Setup quick reply for request %{public}@", &v18, 0xCu);
    }

    [(NCNotificationContentContainerViewController *)self _setupQuickReplyForNotificationAction:v6];
    [(NCNotificationContentContainerViewController *)self becomeFirstResponder];
    v16 = [(NCNotificationContentContainerViewController *)self textInputView];
    [v16 becomeFirstResponder];

    v10 = 1;
  }

  else
  {
    v10 = [(NCNotificationContentContainerViewController *)self performAction:v6 forNotification:v7 withUserInfo:MEMORY[0x277CBEC10]];
  }

  return v10;
}

- (BOOL)defaultContentHidden
{
  v3 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  if (v3)
  {
    v4 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
    v5 = [v4 isDefaultContentHidden];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)overridesDefaultTitle
{
  v3 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  if (v3)
  {
    v4 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
    v5 = [v4 isDefaultTitleOverridden];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)preserveInputViews
{
  v5 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  if ([v5 canBecomeFirstResponder] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 preserveInputViews];
  }

  else
  {
    v3 = [MEMORY[0x277D75830] sharedInstance];
    v4 = [MEMORY[0x277CCAE60] valueWithPointer:self];
    [v3 _preserveInputViewsWithId:v4 animated:1];
  }
}

- (BOOL)userInteractionEnabled
{
  v2 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  v3 = [v2 isUserInteractionEnabled];

  return v3;
}

- (void)playMedia
{
  v2 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  [v2 playMedia];
}

- (id)cancelTouches
{
  v2 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  v3 = [v2 cancelTouchesForCurrentEventInExtension];

  return v3;
}

- (void)notificationTextInputView:(id)a3 didConfirmText:(id)a4 forAction:(id)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v14 = *MEMORY[0x277CF35E0];
  v15[0] = a4;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a4;
  v10 = [v8 dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v11 = [(NCNotificationContentContainerViewController *)self notificationRequest];
  LOBYTE(v9) = [(NCNotificationContentContainerViewController *)self performAction:v7 forNotification:v11 withUserInfo:v10];

  if ((v9 & 1) == 0)
  {
    v12 = [(NCNotificationContentContainerViewController *)self delegate];
    v13 = [(NCNotificationContentContainerViewController *)self notificationRequest];
    [v12 customContent:self forwardAction:v7 forNotification:v13 withUserInfo:v10];
  }
}

- (void)_setupExtensionContainerViewControllerController:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationContentContainerViewController *)self isViewLoaded];
  if (v4)
  {
    if (v5)
    {
      v6 = [v4 parentViewController];

      if (!v6)
      {
        v7 = *MEMORY[0x277D77DB8];
        if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = [(NCNotificationContentContainerViewController *)self notificationRequest];
          v12 = [v11 notificationIdentifier];
          v13 = [v12 un_logDigest];
          *buf = 138543618;
          v22 = v10;
          v23 = 2114;
          v24 = v13;
          _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Setting up content container view controller %{public}@ for notification %{public}@", buf, 0x16u);
        }

        [(NCNotificationContentContainerViewController *)self addChildViewController:v4];
        v14 = [v4 view];
        v15 = [(NCNotificationContentContainerViewController *)self view];
        [v15 bounds];
        [v14 setFrame:?];

        [v14 setAutoresizingMask:18];
        v16 = [(NCNotificationContentContainerViewController *)self view];
        [v16 addSubview:v14];

        [v4 didMoveToParentViewController:self];
        [v14 setAlpha:0.0];
        v17 = MEMORY[0x277D75D18];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __97__NCNotificationContentContainerViewController__setupExtensionContainerViewControllerController___block_invoke;
        v19[3] = &unk_27836F6A8;
        v20 = v14;
        v18 = v14;
        [v17 animateWithDuration:v19 animations:0.25];
      }
    }
  }
}

+ (id)_visibleAttachmentForNotificationRequest:(id)a3
{
  v3 = [a3 userNotification];
  v4 = [v3 request];
  v5 = [v4 content];
  v6 = [v5 attachments];

  v7 = [v6 bs_firstObjectPassingTest:&__block_literal_global_18];

  return v7;
}

BOOL __89__NCNotificationContentContainerViewController__visibleAttachmentForNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 options];
  v3 = [v2 displayLocation] != 1;

  return v3;
}

+ (id)_defaultUIExtensionForNotificationRequest:(id)a3 visibleAttachment:(id *)a4
{
  if (a3)
  {
    v5 = [a1 _visibleAttachmentForNotificationRequest:?];
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.UserNotificationsUIKit.DefaultUIExtension" error:0];
      if (a4)
      {
        v7 = v5;
        *a4 = v5;
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

- (void)_loadExtensionContainerViewControllerForNotificationRequest:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_customContentLocation = 0;
  v5 = [MEMORY[0x277CE2188] sharedInstance];
  v6 = [v4 sectionIdentifier];
  v7 = [v4 categoryIdentifier];
  v8 = [v5 extensionForNotificationSourceIdentifier:v6 categoryIdentifier:v7];

  v9 = v8;
  v10 = v9;
  if (!v9)
  {
    v23 = 0;
    v10 = [objc_opt_class() _defaultUIExtensionForNotificationRequest:v4 visibleAttachment:&v23];
    if (!v10)
    {
      [(NCNotificationContentContainerViewController *)self setExtensionContainerViewController:0];
      v16 = 0;
LABEL_11:
      v21 = [(NCNotificationContentContainerViewController *)self notificationRequest];
      v22 = [v21 showsTextInputOnAppearance];

      if (v22)
      {
        [(NCNotificationContentContainerViewController *)self _setupQuickReplyForNotificationRequest:v4];
      }

      goto LABEL_13;
    }

    if ([v23 family] == 1)
    {
      self->_customContentLocation = 1;
    }
  }

  v11 = [(NCNotificationContentContainerViewController *)self notificationRequest];
  v12 = [v11 defaultEnvironmentActions];

  v13 = [v12 bs_map:&__block_literal_global_44];
  v14 = objc_alloc(MEMORY[0x277CE2180]);
  v15 = [v4 userNotification];
  v16 = [v14 initWithExtension:v10 notification:v15 actions:v13];

  [v16 setDelegate:self];
  [(NCNotificationContentContainerViewController *)self setExtensionContainerViewController:v16];
  if (v16)
  {
    v17 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v4 notificationIdentifier];
      v20 = [v19 un_logDigest];
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_21E77E000, v18, OS_LOG_TYPE_DEFAULT, "Created extension container view controller for notification %{public}@", buf, 0xCu);
    }
  }

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_13:
}

- (void)_setupQuickReplyForNotificationRequest:(id)a3
{
  v4 = [(NCNotificationContentContainerViewController *)self _textInputActionInNotification:a3];
  if (v4)
  {
    v4 = [(NCNotificationContentContainerViewController *)self _setupQuickReplyForNotificationAction:v4];
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)_setupQuickReplyForNotificationAction:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationContentContainerViewController *)self textInputView];

  if (v5)
  {
    v15 = [(NCNotificationContentContainerViewController *)self textInputView];
    [(NCNotificationTextInputView *)v15 setAction:v4];
  }

  else
  {
    v6 = [NCNotificationTextInputView alloc];
    v15 = [(NCNotificationTextInputView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(NCNotificationTextInputView *)v15 setDelegate:self];
    [(NCNotificationTextInputView *)v15 setAction:v4];

    [(NCNotificationTextInputView *)v15 sizeToFit];
    v4 = [(NCNotificationContentContainerViewController *)self notificationRequest];
    v7 = [v4 content];
    v8 = [v7 communicationContext];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277D75600]);
      v10 = [v7 message];
      v11 = [v4 timestamp];
      v12 = [v8 sender];
      v13 = [v12 handle];
      [v9 addTextEntry:v10 timestamp:v11 senderIdentifier:v13];

      [(NCNotificationTextInputView *)v15 setInputContextHistory:v9];
    }

    [(NCNotificationContentContainerViewController *)self setTextInputView:v15];
    [(NCNotificationContentContainerViewController *)self reloadInputViews];
    if (([v4 showsTextInputOnAppearance] & 1) == 0)
    {
      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      [v14 addObserver:self selector:sel__removeInputAccessoryView_ name:*MEMORY[0x277D76BA0] object:0];
    }
  }
}

- (id)_textInputActionInNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  [a3 defaultEnvironmentActions];
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

- (void)_removeInputAccessoryView:(id)a3
{
  v4 = [(NCNotificationContentContainerViewController *)self notificationRequest];
  v5 = [v4 showsTextInputOnAppearance];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];

    [(NCNotificationContentContainerViewController *)self setTextInputView:0];

    [(NCNotificationContentContainerViewController *)self reloadInputViews];
  }
}

- (void)_forwardActionToExtension:(id)a3 forNotification:(id)a4 withUserInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NCNotificationContentContainerViewController *)self _responseForAction:v8 notification:a4 userInfo:v9];
  v11 = [(NCNotificationContentContainerViewController *)self extensionContainerViewController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__NCNotificationContentContainerViewController__forwardActionToExtension_forNotification_withUserInfo___block_invoke;
  v15[3] = &unk_2783716A0;
  v16 = v10;
  v17 = self;
  v18 = v8;
  v19 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [v11 didReceiveNotificationResponse:v14 completionHandler:v15];
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

- (id)_responseForAction:(id)a3 notification:(id)a4 userInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 behavior])
  {
    if ([v7 behavior] == 1)
    {
      v10 = [v9 objectForKey:*MEMORY[0x277CF35E0]];
      v11 = v10;
      v12 = &stru_282FE84F8;
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      v14 = MEMORY[0x277CE2018];
      v15 = [v8 userNotification];
      v16 = [v7 identifier];
      v17 = [v14 responseWithNotification:v15 actionIdentifier:v16 userText:v13];
    }

    else
    {
      v21 = *MEMORY[0x277D77DB8];
      if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
      {
        [NCNotificationContentContainerViewController _responseForAction:v21 notification:v7 userInfo:v8];
      }

      v17 = 0;
    }
  }

  else
  {
    v18 = MEMORY[0x277CE1FC8];
    v19 = [v8 userNotification];
    v20 = [v7 identifier];
    v17 = [v18 responseWithNotification:v19 actionIdentifier:v20];
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