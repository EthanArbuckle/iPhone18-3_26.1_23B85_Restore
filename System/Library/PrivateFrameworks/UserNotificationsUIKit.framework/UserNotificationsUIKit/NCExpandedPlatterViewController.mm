@interface NCExpandedPlatterViewController
+ (void)initialize;
- (BOOL)_canTransitionToPlatterPresentationState:(int)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)expandedPlatterView:(id)a3 tapGestureRecognizerShouldReceiveTouch:(id)a4;
- (BOOL)resignFirstResponder;
- (CGSize)_maximumPlatterSize;
- (CGSize)_preferredCustomContentSize;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NCExpandedPlatterViewController)initWithNotificationRequest:(id)a3 customContentViewController:(id)a4;
- (NCExpandedPlatterViewControllerDelegate)delegate;
- (PLExpandedPlatterDismissing)dismisser;
- (id)_expandedPlatterViewLoadingIfNecessary:(BOOL)a3;
- (void)_handleDefaultTap:(id)a3;
- (void)_notifyObserversWithBlock:(id)a3;
- (void)_setCustomContentViewController:(id)a3;
- (void)_setPreferredCustomContentSize:(CGSize)a3;
- (void)_setupStaticContentProviderIfNecessary;
- (void)_updatePreferredContentSize;
- (void)_updatePreferredCustomContentSize;
- (void)_updateScreenCaptureProhibited;
- (void)_updateWithProvidedCustomContent;
- (void)_updateWithProvidedStaticContent;
- (void)addExpandedPlatterObserver:(id)a3;
- (void)customContent:(id)a3 didUpdateUserNotificationActions:(id)a4;
- (void)customContent:(id)a3 forwardAction:(id)a4 forNotification:(id)a5 withUserInfo:(id)a6;
- (void)customContent:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotification:(id)a5 withUserInfo:(id)a6 completionHandler:(id)a7;
- (void)customContentDidLoadExtension:(id)a3;
- (void)customContentDidUpdateTitle:(id)a3;
- (void)customContentRequestsDefaultAction:(id)a3;
- (void)customContentRequestsDismiss:(id)a3;
- (void)expandedPlatter:(id)a3 didDismissWithReason:(id)a4;
- (void)expandedPlatter:(id)a3 willDismissWithReason:(id)a4;
- (void)expandedPlatterDidPresent:(id)a3;
- (void)expandedPlatterPresentable:(id)a3 requestsDismissalWithTrigger:(int64_t)a4;
- (void)expandedPlatterView:(id)a3 requestsInteractionWithURL:(id)a4;
- (void)expandedPlatterWillPresent:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)playMedia;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)removeExpandedPlatterObserver:(id)a3;
- (void)setNotificationRequest:(id)a3;
- (void)userInteractionDidEndForExpandedPlatter:(id)a3;
- (void)userInteractionWillBeginForExpandedPlatter:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation NCExpandedPlatterViewController

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCExpandedPlatterViewController;
  [(NCExpandedPlatterViewController *)&v3 viewWillLayoutSubviews];
  [(NCExpandedPlatterViewController *)self _setupStaticContentProviderIfNecessary];
  [(NCExpandedPlatterViewController *)self _updatePreferredContentSize];
}

- (void)_setupStaticContentProviderIfNecessary
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1032);
  v3 = a2;
  v4 = [v2 notificationIdentifier];
  v5 = [v4 un_logDigest];
  v6 = 138543362;
  v7 = v5;
  _os_log_debug_impl(&dword_21E77E000, v3, OS_LOG_TYPE_DEBUG, "Setup ExpandedContentProvider for expanded platter with notification request %{public}@", &v6, 0xCu);
}

- (void)_updateWithProvidedStaticContent
{
  v3 = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  if (v3)
  {
    v23 = v3;
    if (objc_opt_respondsToSelector())
    {
      v4 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider badgedIconDescription];
      [v23 setBadgedIconDescription:v4];
    }

    v5 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider date];
    [v23 setDate:v5];

    [v23 setDateAllDay:{-[NCNotificationStaticContentProviding isDateAllDay](self->_staticContentProvider, "isDateAllDay")}];
    v6 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider timeZone];
    [v23 setTimeZone:v6];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v8 = [WeakRetained expandedPlatterViewController:self dateFormatStyleForNotificationRequest:self->_notificationRequest];
    }

    else
    {
      v8 = 1;
    }

    [v23 setDateFormatStyle:v8];
    v9 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primaryText];
    [v23 setPrimaryText:v9];

    v10 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primarySubtitleText];
    [v23 setPrimarySubtitleText:v10];

    v11 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider secondaryText];
    [v23 setSecondaryText:v11];

    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v12 = [WeakRetained importantAdornmentEligibleOptionsForNotificationViewController:self];
    }

    else
    {
      v12 = -1;
    }

    staticContentProvider = self->_staticContentProvider;
    v14 = [v23 importantTextImageConfiguration];
    v15 = [(NCNotificationStaticContentProviding *)staticContentProvider importantAttributedTextWithImageConfiguration:v14 importantAdornmentEligibleOptions:v12];

    if ([v15 length])
    {
      [v23 setImportantAttributedText:v15];
    }

    else
    {
      v16 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider importantText];
      [v23 setImportantText:v16];
    }

    v17 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider importantTextVisualStylingProvider];
    [v23 setImportantTextVisualStylingProvider:v17];

    v18 = MEMORY[0x277CCA898];
    v19 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider footerText];
    v20 = [v18 nc_safeAttributedStringWithString:v19];
    [v23 setFooterText:v20];

    if (objc_opt_respondsToSelector())
    {
      v21 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider thumbnail];
      [v23 setThumbnail:v21];
    }

    v22 = [v23 defaultTapGestureRecognizer];
    [v22 addTarget:self action:sel__handleDefaultTap_];

    v3 = v23;
  }
}

- (CGSize)_preferredCustomContentSize
{
  v2 = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  [v2 customContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_updatePreferredCustomContentSize
{
  v3 = [(UIViewController *)self nc_presentationControllerIfPresented];
  v11 = [v3 containerView];

  if (v11)
  {
    [v11 bounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 bounds];
    v5 = v9;
    v7 = v10;
  }

  [(NCExpandedPlatterViewController *)self sizeForChildContentContainer:self->_customContentViewController withParentContainerSize:v5, v7];
  [(NCExpandedPlatterViewController *)self _setPreferredCustomContentSize:?];
}

- (CGSize)_maximumPlatterSize
{
  v2 = [(NCExpandedPlatterViewController *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 _referenceBounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v19.origin.x = v6;
    v19.origin.y = v8;
    v19.size.width = v10;
    v19.size.height = v12;
    CGRectGetWidth(v19);
    UICeilToScale();
    v14 = v13;
    v20.origin.x = v6;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v12;
    CGRectGetHeight(v20);
    UICeilToScale();
    v16 = v15;
  }

  else
  {
    v16 = 1.79769313e308;
    *&v14 = 556.0;
  }

  v17 = *&v14;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)_updatePreferredContentSize
{
  v3 = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  if (v3)
  {
    [(NCExpandedPlatterViewController *)self _preferredCustomContentSize];
    v5 = v4;
    v7 = v6;
    [(NCExpandedPlatterViewController *)self _updatePreferredCustomContentSize];
    [v3 customContentSize];
    v9 = v8;
    v11 = v10;
    [v3 sizeThatFitsContentWithSize:?];
    v13 = v12;
    v15 = v14;
    [(NCExpandedPlatterViewController *)self _maximumPlatterSize];
    if (v13 > v16)
    {
      v13 = v16;
    }

    if (v15 > v17)
    {
      v15 = v17;
    }

    [(NCExpandedPlatterViewController *)self preferredContentSize];
    v20 = v19 != v15 || v18 != v13;
    v21 = v7 != v11 || v5 != v9;
    if (v20 || v21)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__NCExpandedPlatterViewController__updatePreferredContentSize__block_invoke;
      aBlock[3] = &unk_278371760;
      aBlock[4] = self;
      *&aBlock[5] = v13;
      *&aBlock[6] = v15;
      v22 = _Block_copy(aBlock);
      if ([(NCExpandedPlatterViewController *)self _appearState]== 2)
      {
        v23 = objc_alloc_init(_NCExpandedPlatterViewControllerAnimator);
        v24 = objc_alloc_init(MEMORY[0x277D763A0]);
        v25 = [v3 customContentView];
        [v24 _setContainerView:v25];

        [v24 _setAnimator:v23];
        v26 = [v24 _transitionCoordinator];
        v27 = v26;
        if (v20)
        {
          [v26 animateAlongsideTransition:v22 completion:0];
        }

        if (v21)
        {
          [(NCNotificationCustomContent *)self->_customContentViewController viewWillTransitionToSize:v27 withTransitionCoordinator:v9, v11];
        }

        [(_NCExpandedPlatterViewControllerAnimator *)v23 animateTransition:v24];
      }

      else
      {
        v22[2](v22, 0);
      }
    }
  }
}

- (BOOL)canBecomeFirstResponder
{
  if (self->_customContentViewController)
  {
    customContentViewController = self->_customContentViewController;

    return [(NCNotificationCustomContent *)customContentViewController canBecomeFirstResponder];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = NCExpandedPlatterViewController;
    return [(NCExpandedPlatterViewController *)&v6 canBecomeFirstResponder];
  }
}

- (BOOL)becomeFirstResponder
{
  if (self->_customContentViewController)
  {
    v3 = objc_opt_respondsToSelector();
    customContentViewController = self->_customContentViewController;
    if (v3)
    {

      return [(NCNotificationCustomContent *)customContentViewController restoreInputViews];
    }

    else
    {

      return [(NCNotificationCustomContent *)customContentViewController becomeFirstResponder];
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCExpandedPlatterViewController;
    return [(NCExpandedPlatterViewController *)&v6 becomeFirstResponder];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    NCRegisterUserNotificationsUILogging();
  }
}

- (NCExpandedPlatterViewController)initWithNotificationRequest:(id)a3 customContentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NCExpandedPlatterViewController;
  v8 = [(NCExpandedPlatterViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NCExpandedPlatterViewController *)v8 setNotificationRequest:v6];
    [(NCExpandedPlatterViewController *)v9 _setCustomContentViewController:v7];
  }

  return v9;
}

- (void)setNotificationRequest:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_notificationRequest, a3);
    staticContentProvider = self->_staticContentProvider;
    self->_staticContentProvider = 0;

    v6 = [(NCExpandedPlatterViewController *)self viewIfLoaded];
    [v6 setNeedsLayout];

    [(NCExpandedPlatterViewController *)self _updateScreenCaptureProhibited];
  }
}

- (void)playMedia
{
  if (objc_opt_respondsToSelector())
  {
    customContentViewController = self->_customContentViewController;

    [(NCNotificationCustomContent *)customContentViewController playMedia];
  }
}

- (BOOL)canResignFirstResponder
{
  if (self->_customContentViewController)
  {
    customContentViewController = self->_customContentViewController;

    return [(NCNotificationCustomContent *)customContentViewController canResignFirstResponder];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = NCExpandedPlatterViewController;
    return [(NCExpandedPlatterViewController *)&v6 canResignFirstResponder];
  }
}

- (BOOL)resignFirstResponder
{
  if (self->_customContentViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationCustomContent *)self->_customContentViewController preserveInputViews];
    }

    customContentViewController = self->_customContentViewController;

    return [(NCNotificationCustomContent *)customContentViewController resignFirstResponder];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NCExpandedPlatterViewController;
    return [(NCExpandedPlatterViewController *)&v5 resignFirstResponder];
  }
}

- (void)keyboardWillShow:(id)a3
{
  if ([(NCExpandedPlatterViewController *)self bs_isAppearingOrAppeared]&& [(NCNotificationCustomContent *)self->_customContentViewController _containsFirstResponder])
  {
    v4 = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
    [v4 setScrollViewPinnedToBottom:1];
  }
}

- (void)keyboardWillHide:(id)a3
{
  v3 = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  [v3 setScrollViewPinnedToBottom:0];
}

- (void)loadView
{
  v3 = objc_alloc_init(NCExpandedPlatterView);
  [(PLExpandedPlatterView *)v3 setDelegate:self];
  [(PLExpandedPlatterView *)v3 setHeaderEnabled:0];
  [(PLExpandedPlatterView *)v3 setDismissControlEnabled:0];
  [(NCExpandedPlatterViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NCExpandedPlatterViewController;
  [(NCExpandedPlatterViewController *)&v3 viewDidLoad];
  [(NCExpandedPlatterViewController *)self _updateWithProvidedStaticContent];
  [(NCExpandedPlatterViewController *)self _updateWithProvidedCustomContent];
  [(NCExpandedPlatterViewController *)self _updatePreferredContentSize];
  [(NCExpandedPlatterViewController *)self _updateScreenCaptureProhibited];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = NCExpandedPlatterViewController;
  [(NCExpandedPlatterViewController *)&v8 viewWillAppear:a3];
  v4 = [(NCExpandedPlatterViewController *)self view];
  v5 = [v4 window];
  [v5 makeKeyAndVisible];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = NCExpandedPlatterViewController;
  [(NCExpandedPlatterViewController *)&v6 viewWillDisappear:a3];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76C60] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = NCExpandedPlatterViewController;
  [(NCExpandedPlatterViewController *)&v6 viewDidDisappear:a3];
  v4 = [(NCExpandedPlatterViewController *)self view];
  v5 = [v4 window];
  [v5 resignKeyWindow];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4.receiver = self;
  v4.super_class = NCExpandedPlatterViewController;
  [(NCExpandedPlatterViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:a3];
  [(NCExpandedPlatterViewController *)self _updatePreferredContentSize];
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  if (self->_customContentViewController == a3)
  {
    v10 = a3;
    [(NCExpandedPlatterViewController *)self _maximumPlatterSize];
    if (width < v11)
    {
      v11 = width;
    }

    [v10 sizeForChildContentContainer:v10 withParentContainerSize:{v11, height}];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NCExpandedPlatterViewController;
    [(NCExpandedPlatterViewController *)&v16 sizeForChildContentContainer:a3 withParentContainerSize:a4.width, a4.height];
  }

  v12 = v8;
  v13 = v9;

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (PLExpandedPlatterDismissing)dismisser
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_dismisser);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v2 = WeakRetained;
  }

  v5 = v2;

  return v2;
}

- (void)expandedPlatterPresentable:(id)a3 requestsDismissalWithTrigger:(int64_t)a4
{
  v6 = a3;
  if (!self->_dismissalReason)
  {
    v11 = v6;
    if (a4 == 2)
    {
      v7 = @"dismissalReasonHomeAction";
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (a4 == 2)
    {
      dismissalReason = self->_dismissalReason;
      self->_dismissalReason = @"dismissalReasonHomeAction";

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained expandedPlatterViewController:self requestsDismissalWithReason:self->_dismissalReason userInfo:0];
      }
    }

    v6 = v11;
  }
}

- (void)addExpandedPlatterObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    v4 = [(NSHashTable *)observers addObject:v9];
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)removeExpandedPlatterObserver:(id)a3
{
  if (a3)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (void)_notifyObserversWithBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    if (observers)
    {
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [(NSHashTable *)observers copy];
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            v11 = objc_initWeak(&location, self);
            v4[2](v4, self, v10);

            objc_destroyWeak(&location);
          }

          v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)expandedPlatterWillPresent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCExpandedPlatterViewController *)self _canTransitionToPlatterPresentationState:1];
  v6 = *MEMORY[0x277D77DB0];
  if (v5)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest = self->_notificationRequest;
      v8 = v6;
      v9 = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
      v10 = [v9 un_logDigest];
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Expanded platter will present for request %{public}@", buf, 0xCu);
    }

    self->_expandedPlatterPresentationState = 1;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__NCExpandedPlatterViewController_expandedPlatterWillPresent___block_invoke;
    v11[3] = &unk_278371710;
    v12 = v4;
    [(NCExpandedPlatterViewController *)self _notifyObserversWithBlock:v11];
  }

  else if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
  {
    [(NCExpandedPlatterViewController *)self expandedPlatterWillPresent:v6];
  }
}

void __62__NCExpandedPlatterViewController_expandedPlatterWillPresent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 expandedPlatterWillPresent:*(a1 + 32)];
  }
}

- (void)expandedPlatterDidPresent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCExpandedPlatterViewController *)self _canTransitionToPlatterPresentationState:2];
  v6 = *MEMORY[0x277D77DB0];
  if (v5)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest = self->_notificationRequest;
      v8 = v6;
      v9 = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
      v10 = [v9 un_logDigest];
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Expanded platter did present for request %{public}@", buf, 0xCu);
    }

    self->_expandedPlatterPresentationState = 2;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__NCExpandedPlatterViewController_expandedPlatterDidPresent___block_invoke;
    v11[3] = &unk_278371710;
    v12 = v4;
    [(NCExpandedPlatterViewController *)self _notifyObserversWithBlock:v11];
  }

  else if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
  {
    [(NCExpandedPlatterViewController *)self expandedPlatterDidPresent:v6];
  }
}

void __61__NCExpandedPlatterViewController_expandedPlatterDidPresent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 expandedPlatterDidPresent:*(a1 + 32)];
  }
}

- (void)expandedPlatter:(id)a3 willDismissWithReason:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NCExpandedPlatterViewController *)self _canTransitionToPlatterPresentationState:3];
  v9 = *MEMORY[0x277D77DB0];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest = self->_notificationRequest;
      v11 = v9;
      v12 = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
      v13 = [v12 un_logDigest];
      *buf = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "Expanded platter will dismiss for request %{public}@ (reason: %{public}@)", buf, 0x16u);
    }

    self->_expandedPlatterPresentationState = 3;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__NCExpandedPlatterViewController_expandedPlatter_willDismissWithReason___block_invoke;
    v14[3] = &unk_278371738;
    v15 = v6;
    v16 = v7;
    [(NCExpandedPlatterViewController *)self _notifyObserversWithBlock:v14];
  }

  else if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
  {
    [NCExpandedPlatterViewController expandedPlatter:v9 willDismissWithReason:?];
  }
}

void __73__NCExpandedPlatterViewController_expandedPlatter_willDismissWithReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 expandedPlatter:*(a1 + 32) willDismissWithReason:*(a1 + 40)];
  }
}

- (void)expandedPlatter:(id)a3 didDismissWithReason:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NCExpandedPlatterViewController *)self _canTransitionToPlatterPresentationState:0];
  v9 = *MEMORY[0x277D77DB0];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest = self->_notificationRequest;
      v11 = v9;
      v12 = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
      v13 = [v12 un_logDigest];
      *buf = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "Expanded platter did dismiss for request %{public}@ (reason: %{public}@)", buf, 0x16u);
    }

    self->_expandedPlatterPresentationState = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__NCExpandedPlatterViewController_expandedPlatter_didDismissWithReason___block_invoke;
    v14[3] = &unk_278371738;
    v15 = v6;
    v16 = v7;
    [(NCExpandedPlatterViewController *)self _notifyObserversWithBlock:v14];
  }

  else if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
  {
    [NCExpandedPlatterViewController expandedPlatter:v9 didDismissWithReason:?];
  }
}

void __72__NCExpandedPlatterViewController_expandedPlatter_didDismissWithReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 expandedPlatter:*(a1 + 32) didDismissWithReason:*(a1 + 40)];
  }
}

- (void)userInteractionWillBeginForExpandedPlatter:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    notificationRequest = self->_notificationRequest;
    v7 = v5;
    v8 = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
    v9 = [v8 un_logDigest];
    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "User interaction will begin for expanded platter for request %{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__NCExpandedPlatterViewController_userInteractionWillBeginForExpandedPlatter___block_invoke;
  v11[3] = &unk_278371710;
  v12 = v4;
  v10 = v4;
  [(NCExpandedPlatterViewController *)self _notifyObserversWithBlock:v11];
}

void __78__NCExpandedPlatterViewController_userInteractionWillBeginForExpandedPlatter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 userInteractionWillBeginForExpandedPlatter:*(a1 + 32)];
  }
}

- (void)userInteractionDidEndForExpandedPlatter:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    notificationRequest = self->_notificationRequest;
    v7 = v5;
    v8 = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
    v9 = [v8 un_logDigest];
    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "User interaction did end for expanded platter for request %{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__NCExpandedPlatterViewController_userInteractionDidEndForExpandedPlatter___block_invoke;
  v11[3] = &unk_278371710;
  v12 = v4;
  v10 = v4;
  [(NCExpandedPlatterViewController *)self _notifyObserversWithBlock:v11];
}

void __75__NCExpandedPlatterViewController_userInteractionDidEndForExpandedPlatter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 userInteractionDidEndForExpandedPlatter:*(a1 + 32)];
  }
}

- (void)expandedPlatterView:(id)a3 requestsInteractionWithURL:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  WeakRetained = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];

  if (WeakRetained == v7)
  {
    if (self->_dismissalReason)
    {
      v9 = BSEqualStrings();

      if ((v9 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    dismissalReason = self->_dismissalReason;
    self->_dismissalReason = @"dismissalReasonURL";

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v11 = self->_dismissalReason;
      v13 = @"NCExpandedPlatterObservableDismissalReasonUserInfoKeyURL";
      v14[0] = v6;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [WeakRetained expandedPlatterViewController:self requestsDismissalWithReason:v11 userInfo:v12];
    }
  }

LABEL_3:
}

- (BOOL)expandedPlatterView:(id)a3 tapGestureRecognizerShouldReceiveTouch:(id)a4
{
  v5 = a4;
  if ([(NCNotificationCustomContent *)self->_customContentViewController userInteractionEnabled])
  {
    v6 = [v5 view];
    v7 = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
    v8 = [v7 customContentView];
    v9 = [v6 isDescendantOfView:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)customContent:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotification:(id)a5 withUserInfo:(id)a6 completionHandler:(id)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContent:v17 requestPermissionToExecuteAction:v12 forNotification:v13 withUserInfo:v14 completionHandler:v15];
  }
}

- (void)customContent:(id)a3 forwardAction:(id)a4 forNotification:(id)a5 withUserInfo:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContent:v14 forwardAction:v10 forNotification:v11 withUserInfo:v12];
  }
}

- (void)customContentRequestsDefaultAction:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContentRequestsDefaultAction:v5];
  }
}

- (void)customContentRequestsDismiss:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContentRequestsDismiss:v5];
  }
}

- (void)customContentDidLoadExtension:(id)a3
{
  if ([(NCExpandedPlatterViewController *)self bs_isAppearingOrAppeared])
  {
    v5 = [(NCExpandedPlatterViewController *)self view];
    v4 = [v5 window];
    [v4 makeKeyAndVisible];
  }
}

- (void)customContentDidUpdateTitle:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContentDidUpdateTitle:v5];
  }
}

- (void)customContent:(id)a3 didUpdateUserNotificationActions:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContent:v8 didUpdateUserNotificationActions:v6];
  }
}

- (BOOL)_canTransitionToPlatterPresentationState:(int)a3
{
  result = 0;
  expandedPlatterPresentationState = self->_expandedPlatterPresentationState;
  if (expandedPlatterPresentationState > 1)
  {
    if (expandedPlatterPresentationState == 2)
    {
      return 1;
    }

    else if (expandedPlatterPresentationState == 3)
    {
      return a3 < 2;
    }
  }

  else if (expandedPlatterPresentationState)
  {
    if (expandedPlatterPresentationState != 1)
    {
      return result;
    }

    return (a3 & 0xFFFFFFFE) == 2;
  }

  else
  {
    return a3 == 1;
  }

  return result;
}

- (id)_expandedPlatterViewLoadingIfNecessary:(BOOL)a3
{
  if (a3)
  {
    [(NCExpandedPlatterViewController *)self view];
  }

  else
  {
    [(NCExpandedPlatterViewController *)self viewIfLoaded];
  }
  v3 = ;

  return v3;
}

- (void)_setPreferredCustomContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  [v5 setCustomContentSize:{width, height}];
}

- (void)_updateScreenCaptureProhibited
{
  v4 = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  v3 = [(NCNotificationRequest *)self->_notificationRequest options];
  [v4 setScreenCaptureProhibited:{objc_msgSend(v3, "screenCaptureProhibited")}];
}

- (void)_setCustomContentViewController:(id)a3
{
  v5 = a3;
  customContentViewController = self->_customContentViewController;
  v8 = v5;
  if (customContentViewController != v5)
  {
    [(NCNotificationCustomContent *)customContentViewController willMoveToParentViewController:0];
    [(NCNotificationCustomContent *)self->_customContentViewController removeFromParentViewController];
    objc_storeStrong(&self->_customContentViewController, a3);
    v7 = self->_customContentViewController;
    if (v7)
    {
      [(NCNotificationCustomContent *)v7 setDelegate:self];
      [(NCExpandedPlatterViewController *)self addChildViewController:self->_customContentViewController];
      [(NCNotificationCustomContent *)self->_customContentViewController didMoveToParentViewController:self];
    }
  }
}

- (void)_updateWithProvidedCustomContent
{
  v3 = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  if (v3)
  {
    v7 = v3;
    [(NCExpandedPlatterViewController *)self _updatePreferredCustomContentSize];
    v4 = [(NCNotificationCustomContent *)self->_customContentViewController view];
    v5 = [v7 customContentView];
    [v7 setHidesNotificationContent:{-[NCNotificationCustomContent defaultContentHidden](self->_customContentViewController, "defaultContentHidden")}];
    v6 = [v4 superview];

    if (v6 != v5)
    {
      [v5 addSubview:v4];
      [v5 bounds];
      [v4 setFrame:?];
      [v4 setAutoresizingMask:18];
    }

    v3 = v7;
  }
}

- (void)_handleDefaultTap:(id)a3
{
  if ([a3 state] == 3 && !self->_dismissalReason)
  {
    self->_dismissalReason = @"dismissalReasonDefaultTap";

    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__NCExpandedPlatterViewController__handleDefaultTap___block_invoke;
    v4[3] = &unk_27836F498;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x277D85CD0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

uint64_t __53__NCExpandedPlatterViewController__handleDefaultTap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (BSEqualStrings())
    {
      v2 = [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v2 expandedPlatterViewController:v4 requestsDismissalWithReason:v4[126] userInfo:0];
      }
    }
  }

  return MEMORY[0x2821F9730]();
}

- (NCExpandedPlatterViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)expandedPlatterWillPresent:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OUTLINED_FUNCTION_1_0();
  v5 = NCStringForAppearState(v4);
  v6 = NCStringForAppearState(1u);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_21E77E000, v7, v8, "%{public}@: Illegal transition attempted from '%{public}@' to '%{public}@' – aborting", v9, v10, v11, v12, v13);
}

- (void)expandedPlatterDidPresent:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OUTLINED_FUNCTION_1_0();
  v5 = NCStringForAppearState(v4);
  v6 = NCStringForAppearState(2u);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_21E77E000, v7, v8, "%{public}@: Illegal transition attempted from '%{public}@' to '%{public}@' – aborting", v9, v10, v11, v12, v13);
}

- (void)expandedPlatter:(uint64_t)a1 willDismissWithReason:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OUTLINED_FUNCTION_1_0();
  v5 = NCStringForAppearState(v4);
  v6 = NCStringForAppearState(3u);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_21E77E000, v7, v8, "%{public}@: Illegal transition attempted from '%{public}@' to '%{public}@' – aborting", v9, v10, v11, v12, v13);
}

- (void)expandedPlatter:(uint64_t)a1 didDismissWithReason:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OUTLINED_FUNCTION_1_0();
  v5 = NCStringForAppearState(v4);
  v6 = NCStringForAppearState(0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_21E77E000, v7, v8, "%{public}@: Illegal transition attempted from '%{public}@' to '%{public}@' – aborting", v9, v10, v11, v12, v13);
}

@end