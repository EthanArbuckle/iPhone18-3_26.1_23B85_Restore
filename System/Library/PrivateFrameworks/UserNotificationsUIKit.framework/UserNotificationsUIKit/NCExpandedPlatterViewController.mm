@interface NCExpandedPlatterViewController
+ (void)initialize;
- (BOOL)_canTransitionToPlatterPresentationState:(int)state;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)expandedPlatterView:(id)view tapGestureRecognizerShouldReceiveTouch:(id)touch;
- (BOOL)resignFirstResponder;
- (CGSize)_maximumPlatterSize;
- (CGSize)_preferredCustomContentSize;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (NCExpandedPlatterViewController)initWithNotificationRequest:(id)request customContentViewController:(id)controller;
- (NCExpandedPlatterViewControllerDelegate)delegate;
- (PLExpandedPlatterDismissing)dismisser;
- (id)_expandedPlatterViewLoadingIfNecessary:(BOOL)necessary;
- (void)_handleDefaultTap:(id)tap;
- (void)_notifyObserversWithBlock:(id)block;
- (void)_setCustomContentViewController:(id)controller;
- (void)_setPreferredCustomContentSize:(CGSize)size;
- (void)_setupStaticContentProviderIfNecessary;
- (void)_updatePreferredContentSize;
- (void)_updatePreferredCustomContentSize;
- (void)_updateScreenCaptureProhibited;
- (void)_updateWithProvidedCustomContent;
- (void)_updateWithProvidedStaticContent;
- (void)addExpandedPlatterObserver:(id)observer;
- (void)customContent:(id)content didUpdateUserNotificationActions:(id)actions;
- (void)customContent:(id)content forwardAction:(id)action forNotification:(id)notification withUserInfo:(id)info;
- (void)customContent:(id)content requestPermissionToExecuteAction:(id)action forNotification:(id)notification withUserInfo:(id)info completionHandler:(id)handler;
- (void)customContentDidLoadExtension:(id)extension;
- (void)customContentDidUpdateTitle:(id)title;
- (void)customContentRequestsDefaultAction:(id)action;
- (void)customContentRequestsDismiss:(id)dismiss;
- (void)expandedPlatter:(id)platter didDismissWithReason:(id)reason;
- (void)expandedPlatter:(id)platter willDismissWithReason:(id)reason;
- (void)expandedPlatterDidPresent:(id)present;
- (void)expandedPlatterPresentable:(id)presentable requestsDismissalWithTrigger:(int64_t)trigger;
- (void)expandedPlatterView:(id)view requestsInteractionWithURL:(id)l;
- (void)expandedPlatterWillPresent:(id)present;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)playMedia;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)removeExpandedPlatterObserver:(id)observer;
- (void)setNotificationRequest:(id)request;
- (void)userInteractionDidEndForExpandedPlatter:(id)platter;
- (void)userInteractionWillBeginForExpandedPlatter:(id)platter;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  v2 = *(self + 1032);
  v3 = a2;
  notificationIdentifier = [v2 notificationIdentifier];
  un_logDigest = [notificationIdentifier un_logDigest];
  v6 = 138543362;
  v7 = un_logDigest;
  _os_log_debug_impl(&dword_21E77E000, v3, OS_LOG_TYPE_DEBUG, "Setup ExpandedContentProvider for expanded platter with notification request %{public}@", &v6, 0xCu);
}

- (void)_updateWithProvidedStaticContent
{
  _expandedPlatterViewIfLoaded = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  if (_expandedPlatterViewIfLoaded)
  {
    v23 = _expandedPlatterViewIfLoaded;
    if (objc_opt_respondsToSelector())
    {
      badgedIconDescription = [(NCNotificationStaticContentProviding *)self->_staticContentProvider badgedIconDescription];
      [v23 setBadgedIconDescription:badgedIconDescription];
    }

    date = [(NCNotificationStaticContentProviding *)self->_staticContentProvider date];
    [v23 setDate:date];

    [v23 setDateAllDay:{-[NCNotificationStaticContentProviding isDateAllDay](self->_staticContentProvider, "isDateAllDay")}];
    timeZone = [(NCNotificationStaticContentProviding *)self->_staticContentProvider timeZone];
    [v23 setTimeZone:timeZone];

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
    primaryText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primaryText];
    [v23 setPrimaryText:primaryText];

    primarySubtitleText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primarySubtitleText];
    [v23 setPrimarySubtitleText:primarySubtitleText];

    secondaryText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider secondaryText];
    [v23 setSecondaryText:secondaryText];

    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v12 = [WeakRetained importantAdornmentEligibleOptionsForNotificationViewController:self];
    }

    else
    {
      v12 = -1;
    }

    staticContentProvider = self->_staticContentProvider;
    importantTextImageConfiguration = [v23 importantTextImageConfiguration];
    v15 = [(NCNotificationStaticContentProviding *)staticContentProvider importantAttributedTextWithImageConfiguration:importantTextImageConfiguration importantAdornmentEligibleOptions:v12];

    if ([v15 length])
    {
      [v23 setImportantAttributedText:v15];
    }

    else
    {
      importantText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider importantText];
      [v23 setImportantText:importantText];
    }

    importantTextVisualStylingProvider = [(NCNotificationStaticContentProviding *)self->_staticContentProvider importantTextVisualStylingProvider];
    [v23 setImportantTextVisualStylingProvider:importantTextVisualStylingProvider];

    v18 = MEMORY[0x277CCA898];
    footerText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider footerText];
    v20 = [v18 nc_safeAttributedStringWithString:footerText];
    [v23 setFooterText:v20];

    if (objc_opt_respondsToSelector())
    {
      thumbnail = [(NCNotificationStaticContentProviding *)self->_staticContentProvider thumbnail];
      [v23 setThumbnail:thumbnail];
    }

    defaultTapGestureRecognizer = [v23 defaultTapGestureRecognizer];
    [defaultTapGestureRecognizer addTarget:self action:sel__handleDefaultTap_];

    _expandedPlatterViewIfLoaded = v23;
  }
}

- (CGSize)_preferredCustomContentSize
{
  _expandedPlatterViewIfLoaded = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  [_expandedPlatterViewIfLoaded customContentSize];
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
  nc_presentationControllerIfPresented = [(UIViewController *)self nc_presentationControllerIfPresented];
  containerView = [nc_presentationControllerIfPresented containerView];

  if (containerView)
  {
    [containerView bounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v5 = v9;
    v7 = v10;
  }

  [(NCExpandedPlatterViewController *)self sizeForChildContentContainer:self->_customContentViewController withParentContainerSize:v5, v7];
  [(NCExpandedPlatterViewController *)self _setPreferredCustomContentSize:?];
}

- (CGSize)_maximumPlatterSize
{
  traitCollection = [(NCExpandedPlatterViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
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
  _expandedPlatterViewIfLoaded = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  if (_expandedPlatterViewIfLoaded)
  {
    [(NCExpandedPlatterViewController *)self _preferredCustomContentSize];
    v5 = v4;
    v7 = v6;
    [(NCExpandedPlatterViewController *)self _updatePreferredCustomContentSize];
    [_expandedPlatterViewIfLoaded customContentSize];
    v9 = v8;
    v11 = v10;
    [_expandedPlatterViewIfLoaded sizeThatFitsContentWithSize:?];
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
        customContentView = [_expandedPlatterViewIfLoaded customContentView];
        [v24 _setContainerView:customContentView];

        [v24 _setAnimator:v23];
        _transitionCoordinator = [v24 _transitionCoordinator];
        v27 = _transitionCoordinator;
        if (v20)
        {
          [_transitionCoordinator animateAlongsideTransition:v22 completion:0];
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
  if (objc_opt_class() == self)
  {

    NCRegisterUserNotificationsUILogging();
  }
}

- (NCExpandedPlatterViewController)initWithNotificationRequest:(id)request customContentViewController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = NCExpandedPlatterViewController;
  v8 = [(NCExpandedPlatterViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NCExpandedPlatterViewController *)v8 setNotificationRequest:requestCopy];
    [(NCExpandedPlatterViewController *)v9 _setCustomContentViewController:controllerCopy];
  }

  return v9;
}

- (void)setNotificationRequest:(id)request
{
  requestCopy = request;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_notificationRequest, request);
    staticContentProvider = self->_staticContentProvider;
    self->_staticContentProvider = 0;

    viewIfLoaded = [(NCExpandedPlatterViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];

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

- (void)keyboardWillShow:(id)show
{
  if ([(NCExpandedPlatterViewController *)self bs_isAppearingOrAppeared]&& [(NCNotificationCustomContent *)self->_customContentViewController _containsFirstResponder])
  {
    _expandedPlatterViewIfLoaded = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
    [_expandedPlatterViewIfLoaded setScrollViewPinnedToBottom:1];
  }
}

- (void)keyboardWillHide:(id)hide
{
  _expandedPlatterViewIfLoaded = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  [_expandedPlatterViewIfLoaded setScrollViewPinnedToBottom:0];
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

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = NCExpandedPlatterViewController;
  [(NCExpandedPlatterViewController *)&v8 viewWillAppear:appear];
  view = [(NCExpandedPlatterViewController *)self view];
  window = [view window];
  [window makeKeyAndVisible];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = NCExpandedPlatterViewController;
  [(NCExpandedPlatterViewController *)&v6 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = NCExpandedPlatterViewController;
  [(NCExpandedPlatterViewController *)&v6 viewDidDisappear:disappear];
  view = [(NCExpandedPlatterViewController *)self view];
  window = [view window];
  [window resignKeyWindow];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4.receiver = self;
  v4.super_class = NCExpandedPlatterViewController;
  [(NCExpandedPlatterViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:container];
  [(NCExpandedPlatterViewController *)self _updatePreferredContentSize];
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_customContentViewController == container)
  {
    containerCopy = container;
    [(NCExpandedPlatterViewController *)self _maximumPlatterSize];
    if (width < v11)
    {
      v11 = width;
    }

    [containerCopy sizeForChildContentContainer:containerCopy withParentContainerSize:{v11, height}];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NCExpandedPlatterViewController;
    [(NCExpandedPlatterViewController *)&v16 sizeForChildContentContainer:container withParentContainerSize:size.width, size.height];
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
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_dismisser);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    selfCopy = WeakRetained;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (void)expandedPlatterPresentable:(id)presentable requestsDismissalWithTrigger:(int64_t)trigger
{
  presentableCopy = presentable;
  if (!self->_dismissalReason)
  {
    v11 = presentableCopy;
    if (trigger == 2)
    {
      v7 = @"dismissalReasonHomeAction";
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (trigger == 2)
    {
      dismissalReason = self->_dismissalReason;
      self->_dismissalReason = @"dismissalReasonHomeAction";

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained expandedPlatterViewController:self requestsDismissalWithReason:self->_dismissalReason userInfo:0];
      }
    }

    presentableCopy = v11;
  }
}

- (void)addExpandedPlatterObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
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

    observerCopy = [(NSHashTable *)observers addObject:v9];
  }

  MEMORY[0x2821F96F8](observerCopy);
}

- (void)removeExpandedPlatterObserver:(id)observer
{
  if (observer)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (void)_notifyObserversWithBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
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
            blockCopy[2](blockCopy, self, v10);

            objc_destroyWeak(&location);
          }

          v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)expandedPlatterWillPresent:(id)present
{
  v15 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  v5 = [(NCExpandedPlatterViewController *)self _canTransitionToPlatterPresentationState:1];
  v6 = *MEMORY[0x277D77DB0];
  if (v5)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest = self->_notificationRequest;
      v8 = v6;
      notificationIdentifier = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543362;
      v14 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Expanded platter will present for request %{public}@", buf, 0xCu);
    }

    self->_expandedPlatterPresentationState = 1;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__NCExpandedPlatterViewController_expandedPlatterWillPresent___block_invoke;
    v11[3] = &unk_278371710;
    v12 = presentCopy;
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

- (void)expandedPlatterDidPresent:(id)present
{
  v15 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  v5 = [(NCExpandedPlatterViewController *)self _canTransitionToPlatterPresentationState:2];
  v6 = *MEMORY[0x277D77DB0];
  if (v5)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest = self->_notificationRequest;
      v8 = v6;
      notificationIdentifier = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543362;
      v14 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Expanded platter did present for request %{public}@", buf, 0xCu);
    }

    self->_expandedPlatterPresentationState = 2;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__NCExpandedPlatterViewController_expandedPlatterDidPresent___block_invoke;
    v11[3] = &unk_278371710;
    v12 = presentCopy;
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

- (void)expandedPlatter:(id)platter willDismissWithReason:(id)reason
{
  v21 = *MEMORY[0x277D85DE8];
  platterCopy = platter;
  reasonCopy = reason;
  v8 = [(NCExpandedPlatterViewController *)self _canTransitionToPlatterPresentationState:3];
  v9 = *MEMORY[0x277D77DB0];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest = self->_notificationRequest;
      v11 = v9;
      notificationIdentifier = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543618;
      v18 = un_logDigest;
      v19 = 2114;
      v20 = reasonCopy;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "Expanded platter will dismiss for request %{public}@ (reason: %{public}@)", buf, 0x16u);
    }

    self->_expandedPlatterPresentationState = 3;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__NCExpandedPlatterViewController_expandedPlatter_willDismissWithReason___block_invoke;
    v14[3] = &unk_278371738;
    v15 = platterCopy;
    v16 = reasonCopy;
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

- (void)expandedPlatter:(id)platter didDismissWithReason:(id)reason
{
  v21 = *MEMORY[0x277D85DE8];
  platterCopy = platter;
  reasonCopy = reason;
  v8 = [(NCExpandedPlatterViewController *)self _canTransitionToPlatterPresentationState:0];
  v9 = *MEMORY[0x277D77DB0];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest = self->_notificationRequest;
      v11 = v9;
      notificationIdentifier = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543618;
      v18 = un_logDigest;
      v19 = 2114;
      v20 = reasonCopy;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "Expanded platter did dismiss for request %{public}@ (reason: %{public}@)", buf, 0x16u);
    }

    self->_expandedPlatterPresentationState = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__NCExpandedPlatterViewController_expandedPlatter_didDismissWithReason___block_invoke;
    v14[3] = &unk_278371738;
    v15 = platterCopy;
    v16 = reasonCopy;
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

- (void)userInteractionWillBeginForExpandedPlatter:(id)platter
{
  v15 = *MEMORY[0x277D85DE8];
  platterCopy = platter;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    notificationRequest = self->_notificationRequest;
    v7 = v5;
    notificationIdentifier = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543362;
    v14 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "User interaction will begin for expanded platter for request %{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__NCExpandedPlatterViewController_userInteractionWillBeginForExpandedPlatter___block_invoke;
  v11[3] = &unk_278371710;
  v12 = platterCopy;
  v10 = platterCopy;
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

- (void)userInteractionDidEndForExpandedPlatter:(id)platter
{
  v15 = *MEMORY[0x277D85DE8];
  platterCopy = platter;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    notificationRequest = self->_notificationRequest;
    v7 = v5;
    notificationIdentifier = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543362;
    v14 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "User interaction did end for expanded platter for request %{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__NCExpandedPlatterViewController_userInteractionDidEndForExpandedPlatter___block_invoke;
  v11[3] = &unk_278371710;
  v12 = platterCopy;
  v10 = platterCopy;
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

- (void)expandedPlatterView:(id)view requestsInteractionWithURL:(id)l
{
  v14[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  viewCopy = view;
  WeakRetained = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];

  if (WeakRetained == viewCopy)
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
      v14[0] = lCopy;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [WeakRetained expandedPlatterViewController:self requestsDismissalWithReason:v11 userInfo:v12];
    }
  }

LABEL_3:
}

- (BOOL)expandedPlatterView:(id)view tapGestureRecognizerShouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if ([(NCNotificationCustomContent *)self->_customContentViewController userInteractionEnabled])
  {
    view = [touchCopy view];
    _expandedPlatterViewIfLoaded = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
    customContentView = [_expandedPlatterViewIfLoaded customContentView];
    v9 = [view isDescendantOfView:customContentView] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)customContent:(id)content requestPermissionToExecuteAction:(id)action forNotification:(id)notification withUserInfo:(id)info completionHandler:(id)handler
{
  contentCopy = content;
  actionCopy = action;
  notificationCopy = notification;
  infoCopy = info;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContent:contentCopy requestPermissionToExecuteAction:actionCopy forNotification:notificationCopy withUserInfo:infoCopy completionHandler:handlerCopy];
  }
}

- (void)customContent:(id)content forwardAction:(id)action forNotification:(id)notification withUserInfo:(id)info
{
  contentCopy = content;
  actionCopy = action;
  notificationCopy = notification;
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContent:contentCopy forwardAction:actionCopy forNotification:notificationCopy withUserInfo:infoCopy];
  }
}

- (void)customContentRequestsDefaultAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContentRequestsDefaultAction:actionCopy];
  }
}

- (void)customContentRequestsDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContentRequestsDismiss:dismissCopy];
  }
}

- (void)customContentDidLoadExtension:(id)extension
{
  if ([(NCExpandedPlatterViewController *)self bs_isAppearingOrAppeared])
  {
    view = [(NCExpandedPlatterViewController *)self view];
    window = [view window];
    [window makeKeyAndVisible];
  }
}

- (void)customContentDidUpdateTitle:(id)title
{
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContentDidUpdateTitle:titleCopy];
  }
}

- (void)customContent:(id)content didUpdateUserNotificationActions:(id)actions
{
  contentCopy = content;
  actionsCopy = actions;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customContent:contentCopy didUpdateUserNotificationActions:actionsCopy];
  }
}

- (BOOL)_canTransitionToPlatterPresentationState:(int)state
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
      return state < 2;
    }
  }

  else if (expandedPlatterPresentationState)
  {
    if (expandedPlatterPresentationState != 1)
    {
      return result;
    }

    return (state & 0xFFFFFFFE) == 2;
  }

  else
  {
    return state == 1;
  }

  return result;
}

- (id)_expandedPlatterViewLoadingIfNecessary:(BOOL)necessary
{
  if (necessary)
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

- (void)_setPreferredCustomContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _expandedPlatterViewIfLoaded = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  [_expandedPlatterViewIfLoaded setCustomContentSize:{width, height}];
}

- (void)_updateScreenCaptureProhibited
{
  _expandedPlatterViewIfLoaded = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  options = [(NCNotificationRequest *)self->_notificationRequest options];
  [_expandedPlatterViewIfLoaded setScreenCaptureProhibited:{objc_msgSend(options, "screenCaptureProhibited")}];
}

- (void)_setCustomContentViewController:(id)controller
{
  controllerCopy = controller;
  customContentViewController = self->_customContentViewController;
  v8 = controllerCopy;
  if (customContentViewController != controllerCopy)
  {
    [(NCNotificationCustomContent *)customContentViewController willMoveToParentViewController:0];
    [(NCNotificationCustomContent *)self->_customContentViewController removeFromParentViewController];
    objc_storeStrong(&self->_customContentViewController, controller);
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
  _expandedPlatterViewIfLoaded = [(NCExpandedPlatterViewController *)self _expandedPlatterViewIfLoaded];
  if (_expandedPlatterViewIfLoaded)
  {
    v7 = _expandedPlatterViewIfLoaded;
    [(NCExpandedPlatterViewController *)self _updatePreferredCustomContentSize];
    view = [(NCNotificationCustomContent *)self->_customContentViewController view];
    customContentView = [v7 customContentView];
    [v7 setHidesNotificationContent:{-[NCNotificationCustomContent defaultContentHidden](self->_customContentViewController, "defaultContentHidden")}];
    superview = [view superview];

    if (superview != customContentView)
    {
      [customContentView addSubview:view];
      [customContentView bounds];
      [view setFrame:?];
      [view setAutoresizingMask:18];
    }

    _expandedPlatterViewIfLoaded = v7;
  }
}

- (void)_handleDefaultTap:(id)tap
{
  if ([tap state] == 3 && !self->_dismissalReason)
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