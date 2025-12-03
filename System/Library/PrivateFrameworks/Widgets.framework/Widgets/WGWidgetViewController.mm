@interface WGWidgetViewController
- (BOOL)isWidgetExtensionVisible:(id)visible;
- (CGSize)maxSizeForWidget:(id)widget forDisplayMode:(int64_t)mode;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (UITraitCollection)requestedTraitCollectionOverride;
- (WGWidgetViewController)initWithWidgetInfo:(id)info;
- (WGWidgetViewControllerDelegate)delegate;
- (id)_platterViewLoadingIfNecessary:(BOOL)necessary;
- (void)_addWidgetButtonTapped:(id)tapped;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)registerWidgetForRefreshEvents:(id)events;
- (void)remoteViewControllerDidConnectForWidget:(id)widget;
- (void)remoteViewControllerViewDidAppearForWidget:(id)widget;
- (void)unregisterWidgetForRefreshEvents:(id)events;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)widget:(id)widget didRemoveSnapshotAtURL:(id)l;
@end

@implementation WGWidgetViewController

- (WGWidgetViewController)initWithWidgetInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = WGWidgetViewController;
  v5 = [(WGWidgetViewController *)&v9 init];
  if (v5)
  {
    v6 = [[WGWidgetHostingViewController alloc] initWithWidgetInfo:infoCopy delegate:v5 host:v5];
    widgetHost = v5->_widgetHost;
    v5->_widgetHost = v6;

    [(WGWidgetViewController *)v5 addChildViewController:v5->_widgetHost];
    [(WGWidgetHostingViewController *)v5->_widgetHost didMoveToParentViewController:v5];
  }

  return v5;
}

- (void)loadView
{
  v3 = [WGWidgetPlatterView alloc];
  v7 = [(WGWidgetPlatterView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(WGWidgetPlatterView *)v7 setBackgroundHidden:1];
  [(WGWidgetPlatterView *)v7 _setContinuousCornerRadius:0.0];
  [(WGWidgetPlatterView *)v7 setButtonMode:1];
  if (self->_widgetHost)
  {
    [(WGWidgetPlatterView *)v7 setWidgetHost:?];
    widgetInfo = [(WGWidgetHostingViewController *)self->_widgetHost widgetInfo];
    extension = [widgetInfo extension];
    -[WGWidgetPlatterView setAddWidgetButtonVisible:](v7, "setAddWidgetButtonVisible:", [extension optedIn] ^ 1);

    addWidgetButton = [(WGWidgetPlatterView *)v7 addWidgetButton];
    [addWidgetButton addTarget:self action:sel__addWidgetButtonTapped_ forControlEvents:64];
  }

  [(WGWidgetViewController *)self setView:v7];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = WGWidgetViewController;
  [(WGWidgetViewController *)&v9 viewDidAppear:appear];
  v4 = 1.0;
  if (![(WGWidgetHostingViewController *)self->_widgetHost isRemoteViewVisible])
  {
    if ([(WGWidgetHostingViewController *)self->_widgetHost isSnapshotLoaded])
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.0;
    }
  }

  _platterViewIfLoaded = [(WGWidgetViewController *)self _platterViewIfLoaded];
  contentView = [_platterViewIfLoaded contentView];
  [contentView setAlpha:v4];

  v7 = +[WGWidgetEventTracker sharedInstance];
  widgetIdentifier = [(WGWidgetHostingViewController *)self->_widgetHost widgetIdentifier];
  [v7 widgetViewDidAppearWithWidget:widgetIdentifier];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = WGWidgetViewController;
  [(WGWidgetViewController *)&v8 viewDidDisappear:disappear];
  _platterViewIfLoaded = [(WGWidgetViewController *)self _platterViewIfLoaded];
  contentView = [_platterViewIfLoaded contentView];
  [contentView setAlpha:1.0];

  v6 = +[WGWidgetEventTracker sharedInstance];
  widgetIdentifier = [(WGWidgetHostingViewController *)self->_widgetHost widgetIdentifier];
  [v6 widgetViewDidDisappearWithWidget:widgetIdentifier];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = WGWidgetViewController;
  [(WGWidgetViewController *)&v19 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    _platterViewIfLoaded = [(WGWidgetViewController *)self _platterViewIfLoaded];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    requiredVisualStyleCategories = [_platterViewIfLoaded requiredVisualStyleCategories];
    v8 = [requiredVisualStyleCategories countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(requiredVisualStyleCategories);
          }

          integerValue = [*(*(&v15 + 1) + 8 * v11) integerValue];
          _platterViewIfLoaded2 = [(WGWidgetViewController *)self _platterViewIfLoaded];
          v14 = [_platterViewIfLoaded2 visualStylingProviderForCategory:integerValue];
          [_platterViewIfLoaded setVisualStylingProvider:v14 forCategory:integerValue];

          ++v11;
        }

        while (v9 != v11);
        v9 = [requiredVisualStyleCategories countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (UITraitCollection)requestedTraitCollectionOverride
{
  widgetHost = [(WGWidgetViewController *)self widgetHost];
  widgetIdentifier = [widgetHost widgetIdentifier];
  v4 = WGIsWidgetWithBundleIdentifierBuiltOnOrAfterSystemVersion(widgetIdentifier, @"13.0");

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  }

  return v5;
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  containerCopy = container;
  [containerCopy preferredContentSize];
  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = containerCopy;
  }

  else
  {
    v8 = 0;
  }

  [(WGWidgetViewController *)self maxSizeForWidget:v8 forDisplayMode:0];
  v10 = v9;

  v11 = v7;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  if (self->_widgetHost == container)
  {
    _platterViewIfLoaded = [(WGWidgetViewController *)self _platterViewIfLoaded];
    [_platterViewIfLoaded invalidateIntrinsicContentSize];
  }
}

- (id)_platterViewLoadingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (([(WGWidgetViewController *)self isViewLoaded]& 1) != 0 || necessaryCopy)
  {
    view = [(WGWidgetViewController *)self view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)_addWidgetButtonTapped:(id)tapped
{
  v8[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = @"WGWidgetViewControllerAddRequestBundleIdentifierKey";
  widgetIdentifier = [(WGWidgetHostingViewController *)self->_widgetHost widgetIdentifier];
  v8[0] = widgetIdentifier;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [defaultCenter postNotificationName:@"WGWidgetViewControllerAddRequestNotification" object:self userInfo:v6];
}

- (CGSize)maxSizeForWidget:(id)widget forDisplayMode:(int64_t)mode
{
  v4 = [(WGWidgetViewController *)self _platterViewIfLoaded:widget];
  v5 = v4;
  if (v4)
  {
    [v4 bounds];
    Width = CGRectGetWidth(v12);
  }

  else
  {
    Width = 0.0;
  }

  +[WGWidgetInfo maximumContentHeightForCompactDisplayMode];
  v8 = v7;

  v9 = Width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)registerWidgetForRefreshEvents:(id)events
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetViewControllerNeedsToBeRegisteredForRefreshNotification:self];
  }
}

- (void)unregisterWidgetForRefreshEvents:(id)events
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetViewControllerNeedsToBeUnregisteredForRefreshNotification:self];
  }
}

- (void)remoteViewControllerDidConnectForWidget:(id)widget
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteViewControllerDidConnectForWidgetViewController:self];
  }
}

- (void)remoteViewControllerViewDidAppearForWidget:(id)widget
{
  if ([(UIViewController *)self wg_isAppearingOrAppeared])
  {
    _platterViewIfLoaded = [(WGWidgetViewController *)self _platterViewIfLoaded];
    v5 = _platterViewIfLoaded;
    if (_platterViewIfLoaded)
    {
      contentView = [_platterViewIfLoaded contentView];
      [contentView alpha];
      v8 = v7;

      if (v8 == 0.0)
      {
        v9 = MEMORY[0x277D75D18];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __69__WGWidgetViewController_remoteViewControllerViewDidAppearForWidget___block_invoke;
        v11[3] = &unk_279ED0948;
        v12 = v5;
        [v9 animateWithDuration:v11 animations:0.25];
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteViewControllerViewDidAppearForWidgetViewController:self];
  }
}

void __69__WGWidgetViewController_remoteViewControllerViewDidAppearForWidget___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 setAlpha:1.0];
}

- (void)widget:(id)widget didRemoveSnapshotAtURL:(id)l
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAB98];
  lCopy = l;
  widgetCopy = widget;
  defaultCenter = [v6 defaultCenter];
  v12[0] = @"WGWidgetViewControllerRemovedSnapshotWidgetIdentifierKey";
  widgetIdentifier = [widgetCopy widgetIdentifier];

  v12[1] = @"WGWidgetViewControllerRemovedSnapshotURLKey";
  v13[0] = widgetIdentifier;
  v13[1] = lCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  [defaultCenter postNotificationName:@"WGWidgetViewControllerDidRemoveSnapshotNotification" object:self userInfo:v11];
}

- (BOOL)isWidgetExtensionVisible:(id)visible
{
  visibleCopy = visible;
  if ([(WGWidgetViewController *)self _appearState])
  {
    widgetIdentifier = [(WGWidgetHostingViewController *)self->_widgetHost widgetIdentifier];
    v6 = [widgetIdentifier isEqualToString:visibleCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WGWidgetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end