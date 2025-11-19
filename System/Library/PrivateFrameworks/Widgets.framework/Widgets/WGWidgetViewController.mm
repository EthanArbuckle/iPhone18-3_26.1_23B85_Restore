@interface WGWidgetViewController
- (BOOL)isWidgetExtensionVisible:(id)a3;
- (CGSize)maxSizeForWidget:(id)a3 forDisplayMode:(int64_t)a4;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (UITraitCollection)requestedTraitCollectionOverride;
- (WGWidgetViewController)initWithWidgetInfo:(id)a3;
- (WGWidgetViewControllerDelegate)delegate;
- (id)_platterViewLoadingIfNecessary:(BOOL)a3;
- (void)_addWidgetButtonTapped:(id)a3;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)registerWidgetForRefreshEvents:(id)a3;
- (void)remoteViewControllerDidConnectForWidget:(id)a3;
- (void)remoteViewControllerViewDidAppearForWidget:(id)a3;
- (void)unregisterWidgetForRefreshEvents:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)widget:(id)a3 didRemoveSnapshotAtURL:(id)a4;
@end

@implementation WGWidgetViewController

- (WGWidgetViewController)initWithWidgetInfo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WGWidgetViewController;
  v5 = [(WGWidgetViewController *)&v9 init];
  if (v5)
  {
    v6 = [[WGWidgetHostingViewController alloc] initWithWidgetInfo:v4 delegate:v5 host:v5];
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
    v4 = [(WGWidgetHostingViewController *)self->_widgetHost widgetInfo];
    v5 = [v4 extension];
    -[WGWidgetPlatterView setAddWidgetButtonVisible:](v7, "setAddWidgetButtonVisible:", [v5 optedIn] ^ 1);

    v6 = [(WGWidgetPlatterView *)v7 addWidgetButton];
    [v6 addTarget:self action:sel__addWidgetButtonTapped_ forControlEvents:64];
  }

  [(WGWidgetViewController *)self setView:v7];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = WGWidgetViewController;
  [(WGWidgetViewController *)&v9 viewDidAppear:a3];
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

  v5 = [(WGWidgetViewController *)self _platterViewIfLoaded];
  v6 = [v5 contentView];
  [v6 setAlpha:v4];

  v7 = +[WGWidgetEventTracker sharedInstance];
  v8 = [(WGWidgetHostingViewController *)self->_widgetHost widgetIdentifier];
  [v7 widgetViewDidAppearWithWidget:v8];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = WGWidgetViewController;
  [(WGWidgetViewController *)&v8 viewDidDisappear:a3];
  v4 = [(WGWidgetViewController *)self _platterViewIfLoaded];
  v5 = [v4 contentView];
  [v5 setAlpha:1.0];

  v6 = +[WGWidgetEventTracker sharedInstance];
  v7 = [(WGWidgetHostingViewController *)self->_widgetHost widgetIdentifier];
  [v6 widgetViewDidDisappearWithWidget:v7];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = WGWidgetViewController;
  [(WGWidgetViewController *)&v19 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
  {
    v6 = [(WGWidgetViewController *)self _platterViewIfLoaded];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v6 requiredVisualStyleCategories];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * v11) integerValue];
          v13 = [(WGWidgetViewController *)self _platterViewIfLoaded];
          v14 = [v13 visualStylingProviderForCategory:v12];
          [v6 setVisualStylingProvider:v14 forCategory:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (UITraitCollection)requestedTraitCollectionOverride
{
  v2 = [(WGWidgetViewController *)self widgetHost];
  v3 = [v2 widgetIdentifier];
  v4 = WGIsWidgetWithBundleIdentifierBuiltOnOrAfterSystemVersion(v3, @"13.0");

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

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  v5 = a3;
  [v5 preferredContentSize];
  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  if (self->_widgetHost == a3)
  {
    v4 = [(WGWidgetViewController *)self _platterViewIfLoaded];
    [v4 invalidateIntrinsicContentSize];
  }
}

- (id)_platterViewLoadingIfNecessary:(BOOL)a3
{
  v3 = a3;
  if (([(WGWidgetViewController *)self isViewLoaded]& 1) != 0 || v3)
  {
    v5 = [(WGWidgetViewController *)self view];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_addWidgetButtonTapped:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = @"WGWidgetViewControllerAddRequestBundleIdentifierKey";
  v5 = [(WGWidgetHostingViewController *)self->_widgetHost widgetIdentifier];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 postNotificationName:@"WGWidgetViewControllerAddRequestNotification" object:self userInfo:v6];
}

- (CGSize)maxSizeForWidget:(id)a3 forDisplayMode:(int64_t)a4
{
  v4 = [(WGWidgetViewController *)self _platterViewIfLoaded:a3];
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

- (void)registerWidgetForRefreshEvents:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetViewControllerNeedsToBeRegisteredForRefreshNotification:self];
  }
}

- (void)unregisterWidgetForRefreshEvents:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetViewControllerNeedsToBeUnregisteredForRefreshNotification:self];
  }
}

- (void)remoteViewControllerDidConnectForWidget:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteViewControllerDidConnectForWidgetViewController:self];
  }
}

- (void)remoteViewControllerViewDidAppearForWidget:(id)a3
{
  if ([(UIViewController *)self wg_isAppearingOrAppeared])
  {
    v4 = [(WGWidgetViewController *)self _platterViewIfLoaded];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 contentView];
      [v6 alpha];
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

- (void)widget:(id)a3 didRemoveSnapshotAtURL:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultCenter];
  v12[0] = @"WGWidgetViewControllerRemovedSnapshotWidgetIdentifierKey";
  v10 = [v8 widgetIdentifier];

  v12[1] = @"WGWidgetViewControllerRemovedSnapshotURLKey";
  v13[0] = v10;
  v13[1] = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  [v9 postNotificationName:@"WGWidgetViewControllerDidRemoveSnapshotNotification" object:self userInfo:v11];
}

- (BOOL)isWidgetExtensionVisible:(id)a3
{
  v4 = a3;
  if ([(WGWidgetViewController *)self _appearState])
  {
    v5 = [(WGWidgetHostingViewController *)self->_widgetHost widgetIdentifier];
    v6 = [v5 isEqualToString:v4];
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