@interface NCCarPlayBannerPresentableViewController
- (BOOL)bannerContentViewShouldShowOKButton:(id)button;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (NCCarPlayBannerPresentableViewController)initWithNotificationRequest:(id)request;
- (NCCarPlayBannerPresentableViewControllerDelegate)delegate;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (UIEdgeInsets)bannerContentOutsets;
- (id)_platterView;
- (id)_staticContentProviderFromRequest:(id)request;
- (id)presentableDescription;
- (void)_handleBackGesture:(id)gesture;
- (void)_handleSwipeGesture:(id)gesture;
- (void)_handleTapOnContent:(id)content;
- (void)_notifyObserversWithBlock:(id)block;
- (void)_updateStaticContentProvider;
- (void)_wheelChangedWithEvent:(id)event;
- (void)addPresentableObserver:(id)observer;
- (void)loadView;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)removePresentableObserver:(id)observer;
- (void)updateRequestToInstance:(id)instance;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NCCarPlayBannerPresentableViewController

- (NSString)requestIdentifier
{
  notificationRequest = [(NCCarPlayBannerPresentableViewController *)self notificationRequest];
  notificationIdentifier = [notificationRequest notificationIdentifier];

  return notificationIdentifier;
}

- (id)presentableDescription
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"logDigest";
  requestIdentifier = [(NCCarPlayBannerPresentableViewController *)self requestIdentifier];
  un_logDigest = [requestIdentifier un_logDigest];
  v8[0] = un_logDigest;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = BNPresentableDescription();

  return v5;
}

- (NSString)requesterIdentifier
{
  v2 = objc_opt_class();

  return [v2 requesterIdentifier];
}

- (NCCarPlayBannerPresentableViewController)initWithNotificationRequest:(id)request
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = NCCarPlayBannerPresentableViewController;
  v6 = [(NCCarPlayBannerPresentableViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationRequest, request);
    v8 = [(NCCarPlayBannerPresentableViewController *)v7 _staticContentProviderFromRequest:requestCopy];
    staticContentProvider = v7->_staticContentProvider;
    v7->_staticContentProvider = v8;
  }

  return v7;
}

- (void)updateRequestToInstance:(id)instance
{
  objc_storeStrong(&self->_notificationRequest, instance);
  instanceCopy = instance;
  v6 = [(NCCarPlayBannerPresentableViewController *)self _staticContentProviderFromRequest:instanceCopy];
  staticContentProvider = self->_staticContentProvider;
  self->_staticContentProvider = v6;

  [(NCCarPlayBannerPresentableViewController *)self _updateStaticContentProvider];
}

- (void)loadView
{
  v3 = [[NCPlatterView alloc] initWithRecipe:1];
  [(NCPlatterView *)v3 setUnmanagedBackdropContrast:1];
  [(NCPlatterView *)v3 _setContinuousCornerRadius:20.0];
  [(NCCarPlayBannerPresentableViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = NCCarPlayBannerPresentableViewController;
  [(NCCarPlayBannerPresentableViewController *)&v17 viewDidLoad];
  v3 = objc_alloc_init(NCCarPlayBannerContentView);
  bannerContentView = self->_bannerContentView;
  self->_bannerContentView = v3;

  [(NCCarPlayBannerContentView *)self->_bannerContentView setDelegate:self];
  _platterView = [(NCCarPlayBannerPresentableViewController *)self _platterView];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [_platterView setMaterialGroupNameBase:v7];

  v8 = self->_bannerContentView;
  [_platterView bounds];
  [(NCCarPlayBannerContentView *)v8 setFrame:?];
  customContentView = [_platterView customContentView];
  [customContentView addSubview:self->_bannerContentView];

  [(NCCarPlayBannerContentView *)self->_bannerContentView setAutoresizingMask:18];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__NCCarPlayBannerPresentableViewController_viewDidLoad__block_invoke;
  aBlock[3] = &unk_278372A38;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  v11 = v10[2](v10, sel__handleTapOnContent_, 0);
  [v11 setAllowedTouchTypes:&unk_2830157A0];
  [(NCCarPlayBannerContentView *)self->_bannerContentView addGestureRecognizer:v11];
  v12 = (v10)[2](v10, sel__handleTapOnContent_, &unk_283015608);
  contentSelectPressGesture = self->_contentSelectPressGesture;
  self->_contentSelectPressGesture = v12;

  v14 = (v10)[2](v10, sel__handleBackGesture_, &unk_283015620);
  [(NCCarPlayBannerContentView *)self->_bannerContentView addGestureRecognizer:v14];
  v15 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel__handleSwipeGesture_];
  [v15 setAllowedTouchTypes:&unk_2830157B8];
  [v15 setDirection:4];
  [(NCCarPlayBannerContentView *)self->_bannerContentView addGestureRecognizer:v15];
  [(NCCarPlayBannerPresentableViewController *)self _updateStaticContentProvider];
}

id __55__NCCarPlayBannerPresentableViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:*(a1 + 32) action:a2];
  [v6 setNumberOfTapsRequired:1];
  [v6 setNumberOfTouchesRequired:1];
  if (v5)
  {
    v9[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v6 setAllowedPressTypes:v7];
  }

  return v6;
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = NCCarPlayBannerPresentableViewController;
  [(NCCarPlayBannerPresentableViewController *)&v6 viewDidAppear:appear];
  view = [(NCCarPlayBannerPresentableViewController *)self view];
  window = [view window];
  [window addGestureRecognizer:self->_contentSelectPressGesture];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = NCCarPlayBannerPresentableViewController;
  [(NCCarPlayBannerPresentableViewController *)&v5 viewWillDisappear:disappear];
  view = [(UITapGestureRecognizer *)self->_contentSelectPressGesture view];
  [view removeGestureRecognizer:self->_contentSelectPressGesture];
}

- (UIEdgeInsets)bannerContentOutsets
{
  [(NCCarPlayBannerPresentableViewController *)self loadViewIfNeeded];
  _platterView = [(NCCarPlayBannerPresentableViewController *)self _platterView];
  [_platterView shadowOutsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  if (self->_fillsContainer)
  {
    width = containerSize.width;
  }

  else
  {
    width = size.width;
  }

  if (self->_fillsContainer)
  {
    height = containerSize.height;
  }

  else
  {
    height = size.height;
  }

  [(NCCarPlayBannerPresentableViewController *)self setPreferredContentSize:width, height];
  v6 = width;
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__NCCarPlayBannerPresentableViewController_presentableWillAppearAsBanner___block_invoke;
  v6[3] = &unk_278372A60;
  v7 = bannerCopy;
  v5 = bannerCopy;
  [(NCCarPlayBannerPresentableViewController *)self _notifyObserversWithBlock:v6];
}

void __74__NCCarPlayBannerPresentableViewController_presentableWillAppearAsBanner___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 presentableWillAppearAsBanner:*(a1 + 32)];
  }
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__NCCarPlayBannerPresentableViewController_presentableDidAppearAsBanner___block_invoke;
  v6[3] = &unk_278372A60;
  v7 = bannerCopy;
  v5 = bannerCopy;
  [(NCCarPlayBannerPresentableViewController *)self _notifyObserversWithBlock:v6];
}

void __73__NCCarPlayBannerPresentableViewController_presentableDidAppearAsBanner___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 presentableDidAppearAsBanner:*(a1 + 32)];
  }
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__NCCarPlayBannerPresentableViewController_presentableWillDisappearAsBanner_withReason___block_invoke;
  v10[3] = &unk_278372A88;
  v11 = bannerCopy;
  v12 = reasonCopy;
  v8 = reasonCopy;
  v9 = bannerCopy;
  [(NCCarPlayBannerPresentableViewController *)self _notifyObserversWithBlock:v10];
}

void __88__NCCarPlayBannerPresentableViewController_presentableWillDisappearAsBanner_withReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 presentableWillDisappearAsBanner:*(a1 + 32) withReason:*(a1 + 40)];
  }
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__NCCarPlayBannerPresentableViewController_presentableDidDisappearAsBanner_withReason___block_invoke;
  v10[3] = &unk_278372A88;
  v11 = bannerCopy;
  v12 = reasonCopy;
  v8 = reasonCopy;
  v9 = bannerCopy;
  [(NCCarPlayBannerPresentableViewController *)self _notifyObserversWithBlock:v10];
}

void __87__NCCarPlayBannerPresentableViewController_presentableDidDisappearAsBanner_withReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 presentableDidDisappearAsBanner:*(a1 + 32) withReason:*(a1 + 40)];
  }
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__NCCarPlayBannerPresentableViewController_userInteractionWillBeginForBannerForPresentable___block_invoke;
  v6[3] = &unk_278372A60;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(NCCarPlayBannerPresentableViewController *)self _notifyObserversWithBlock:v6];
}

void __92__NCCarPlayBannerPresentableViewController_userInteractionWillBeginForBannerForPresentable___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 userInteractionWillBeginForBannerForPresentable:*(a1 + 32)];
  }
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__NCCarPlayBannerPresentableViewController_userInteractionDidEndForBannerForPresentable___block_invoke;
  v6[3] = &unk_278372A60;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(NCCarPlayBannerPresentableViewController *)self _notifyObserversWithBlock:v6];
}

void __89__NCCarPlayBannerPresentableViewController_userInteractionDidEndForBannerForPresentable___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 userInteractionDidEndForBannerForPresentable:*(a1 + 32)];
  }
}

- (void)addPresentableObserver:(id)observer
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

- (void)removePresentableObserver:(id)observer
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

- (BOOL)bannerContentViewShouldShowOKButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained presentableViewControllerClosesByDefault:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_staticContentProviderFromRequest:(id)request
{
  v4 = [NCNotificationRequestCarPlayContentProvider alloc];
  notificationRequest = [(NCCarPlayBannerPresentableViewController *)self notificationRequest];
  v6 = [(NCNotificationRequestCoalescingContentProvider *)v4 initWithNotificationRequest:notificationRequest];

  return v6;
}

- (void)_updateStaticContentProvider
{
  bannerContentView = self->_bannerContentView;
  if (bannerContentView)
  {
    badgedIconDescription = [(NCNotificationStaticContentProviding *)self->_staticContentProvider badgedIconDescription];
    [(NCCarPlayBannerContentView *)bannerContentView setBadgedIconDescription:badgedIconDescription];

    v5 = self->_bannerContentView;
    date = [(NCNotificationStaticContentProviding *)self->_staticContentProvider date];
    [(NCCarPlayBannerContentView *)v5 setDate:date];

    [(NCCarPlayBannerContentView *)self->_bannerContentView setDateAllDay:[(NCNotificationStaticContentProviding *)self->_staticContentProvider isDateAllDay]];
    v7 = self->_bannerContentView;
    timeZone = [(NCNotificationStaticContentProviding *)self->_staticContentProvider timeZone];
    [(NCCarPlayBannerContentView *)v7 setTimeZone:timeZone];

    [(NCCarPlayBannerContentView *)self->_bannerContentView setDateFormatStyle:1];
    v9 = self->_bannerContentView;
    primaryText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primaryText];
    [(NCCarPlayBannerContentView *)v9 setPrimaryText:primaryText];

    v11 = self->_bannerContentView;
    primarySubtitleText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primarySubtitleText];
    [(NCCarPlayBannerContentView *)v11 setPrimarySubtitleText:primarySubtitleText];

    v13 = self->_bannerContentView;
    primaryText2 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primaryText];
    [(NCCarPlayBannerContentView *)v13 setPrimaryText:primaryText2];

    v15 = self->_bannerContentView;
    primarySubtitleText2 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primarySubtitleText];
    if ([primarySubtitleText2 length])
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    [(NCCarPlayBannerContentView *)v15 setPrimaryTextMaximumNumberOfLines:v17];

    v18 = self->_bannerContentView;

    [(NCCarPlayBannerContentView *)v18 setPrimarySubtitleTextMaximumNumberOfLines:1];
  }
}

- (id)_platterView
{
  view = [(NCCarPlayBannerPresentableViewController *)self view];
  v3 = objc_opt_class();
  v4 = view;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)_handleTapOnContent:(id)content
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didSelectBannerOfPresentableViewController:self];
  }
}

- (void)_handleBackGesture:(id)gesture
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didCancelBannerOfPresentableViewController:self reason:@"NCCarPlayBannerRevocationReasonBackGesture"];
  }
}

- (void)_handleSwipeGesture:(id)gesture
{
  if ([gesture direction] == 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained didCancelBannerOfPresentableViewController:self reason:@"NCCarPlayBannerRevocationReasonTouchPadSwipeGesture"];
    }
  }
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] != 7 || objc_msgSend(eventCopy, "subtype") != 202 && objc_msgSend(eventCopy, "subtype") != 200 && objc_msgSend(eventCopy, "subtype") != 201)
  {
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_8:
    v6.receiver = self;
    v6.super_class = NCCarPlayBannerPresentableViewController;
    [(NCCarPlayBannerPresentableViewController *)&v6 _wheelChangedWithEvent:eventCopy];
    goto LABEL_9;
  }

  [WeakRetained didCancelBannerOfPresentableViewController:self reason:@"NCCarPlayBannerRevocationReasonWheelEvent"];

LABEL_9:
}

- (NCCarPlayBannerPresentableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end