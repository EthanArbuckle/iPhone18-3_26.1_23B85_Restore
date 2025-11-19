@interface WGWidgetHostingViewController
+ (BOOL)_canWidgetHostCaptureSnapshotForSequence:(id)a3;
+ (BOOL)_canWidgetHostConnectRemoteViewControllerByCancellingDisappearanceForSequence:(id)a3;
+ (BOOL)_canWidgetHostConnectRemoteViewControllerByRequestingForSequence:(id)a3 disconnectionTimer:(id)a4 connectionState:(int64_t)a5;
+ (BOOL)_canWidgetHostDisconnectRemoteViewControllerForSequence:(id)a3 disconnectionTimer:(id)a4 coalesce:(BOOL)a5;
+ (BOOL)_canWidgetHostEndSequenceByDisconnectingRemoteViewControllerForSequence:(id)a3;
+ (BOOL)_canWidgetHostInsertRemoteViewForSequence:(id)a3;
+ (BOOL)_canWidgetHostRequestRemoteViewControllerForSequence:(id)a3;
+ (void)setWidgetSnapshotTimestampsEnabled:(BOOL)a3;
- (BOOL)_canInsertRemoteView:(id *)a3;
- (BOOL)_hasOutstandingUpdateRequestForSequence:(id)a3;
- (BOOL)_isActiveSequence:(id)a3;
- (BOOL)_managingContainerIsVisible;
- (BOOL)_shouldRemoveSnapshotWhenNotVisible;
- (BOOL)isBrokenViewVisible;
- (BOOL)isRemoteViewVisible;
- (BSAuditToken)auditToken;
- (CGRect)_snapshotViewBounds;
- (CGSize)_maxSizeForDisplayMode:(int64_t)a3;
- (NSString)_containerIdentifier;
- (NSTimer)_disconnectionTimer;
- (UIEdgeInsets)_layoutMargins;
- (UIEdgeInsets)_marginInsets;
- (WGWidgetHostingViewController)initWithWidgetInfo:(id)a3 delegate:(id)a4 host:(id)a5;
- (WGWidgetHostingViewControllerDelegate)delegate;
- (WGWidgetHostingViewControllerHost)host;
- (id)_snapshotIdentifierForLayoutMode:(int64_t)a3;
- (id)_updateRequestForSequence:(id)a3;
- (id)_widgetSnapshotURLForLayoutMode:(int64_t)a3 ensuringDirectoryExists:(BOOL)a4;
- (id)_widgetSnapshotURLForSnapshotIdentifier:(id)a3 ensuringDirectoryExists:(BOOL)a4;
- (id)description;
- (int64_t)largestAvailableDisplayMode;
- (int64_t)userSpecifiedDisplayMode;
- (void)_abortActiveSequence;
- (void)_attemptReconnectionAfterUnanticipatedDisconnection;
- (void)_beginRemoteViewControllerAppearanceTransitionIfNecessary:(BOOL)a3 semaphore:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_beginSequenceWithReason:(id)a3 completion:(id)a4 updateHandler:(id)a5;
- (void)_captureLayerTree:(id)a3;
- (void)_captureSnapshotAndBeginDisappearanceTransitionForSequence:(id)a3 completionHandler:(id)a4;
- (void)_connectRemoteViewControllerForReason:(id)a3 sequence:(id)a4 completionHandler:(id)a5;
- (void)_disconnectRemoteViewControllerForReason:(id)a3 sequence:(id)a4 coalesce:(BOOL)a5 completionHandler:(id)a6;
- (void)_disconnectRemoteViewControllerForSequence:(id)a3 completion:(id)a4;
- (void)_disconnectionTimerDidFire:(id)a3;
- (void)_endRemoteViewControllerAppearanceTransitionIfNecessary;
- (void)_endRemoteViewControllerAppearanceTransitionIfNecessaryWithCompletion:(id)a3;
- (void)_endSequence:(id)a3 withReason:(id)a4 completion:(id)a5;
- (void)_enqueueDisconnectionRequestForSequence:(id)a3 endTransitionBlock:(id)a4 completion:(id)a5;
- (void)_enqueueRemoteServiceRequest:(id)a3 withDescription:(id)a4;
- (void)_enqueueRequest:(id)a3 inQueue:(id)a4 trampolinedToMainQueue:(BOOL)a5 withDescription:(id)a6;
- (void)_finishDisconnectingRemoteViewControllerForSequence:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_initiateNewSequenceIfNecessary;
- (void)_insertAppropriateContentView;
- (void)_insertBrokenView;
- (void)_insertContentProvidingSubview:(id)a3 sequence:(id)a4 completion:(id)a5;
- (void)_insertLockedOutViewWithExplanation:(id)a3;
- (void)_insertSnapshotViewIfAppropriate;
- (void)_insertSnapshotWithCompletionHandler:(id)a3;
- (void)_invalidateDisconnectionTimer;
- (void)_invalidateSnapshotWithForce:(BOOL)a3 removingSnapshotFilesForActiveDisplayMode:(BOOL)a4 completionHandler:(id)a5;
- (void)_invalidateVisibleFrame;
- (void)_layoutMarginsDidChange;
- (void)_loadSnapshotViewFromDiskIfNecessary:(id)a3;
- (void)_noteOutstandingUpdateRequestForSequence:(id)a3;
- (void)_packageViewFromURL:(id)a3 reply:(id)a4;
- (void)_packageViewWithBlock:(id)a3 reply:(id)a4;
- (void)_performUpdateForSequence:(id)a3 withCompletionHandler:(id)a4;
- (void)_purgeLegacySnapshotsIfNecessary;
- (void)_registerUpdateRequestCompletionHandler:(id)a3 forSequence:(id)a4;
- (void)_removeAllSnapshotFilesDueToIssue:(BOOL)a3;
- (void)_removeAllSnapshotFilesForActiveDisplayMode;
- (void)_removeAllSnapshotFilesInActiveDisplayModeForAllButActiveUserInterfaceStyle;
- (void)_removeAllSnapshotFilesInActiveDisplayModeForContentSizeCategory:(id)a3;
- (void)_removeAllSnapshotFilesMatchingPredicate:(id)a3 dueToIssue:(BOOL)a4;
- (void)_removeItemAsynchronouslyAtURL:(id)a3;
- (void)_removeItemAtURL:(id)a3;
- (void)_requestInsertionOfRemoteViewAfterViewWillAppearForSequence:(id)a3 completionHandler:(id)a4;
- (void)_requestRemoteViewControllerForSequence:(id)a3 completionHander:(id)a4;
- (void)_requestVisibilityStateUpdateForPossiblyAppearing:(BOOL)a3 sequence:(id)a4;
- (void)_rowHeightDidChange:(id)a3;
- (void)_scheduleDisconnectionTimerForSequence:(id)a3 endTransitionBlock:(id)a4 completion:(id)a5;
- (void)_setImplementsPerformUpdate:(BOOL)a3;
- (void)_setLargestAvailableDisplayMode:(int64_t)a3;
- (void)_setRemoteViewController:(id)a3;
- (void)_setSnapshotView:(id)a3;
- (void)_setupRequestQueue;
- (void)_synchronizeGeometryWithSnapshot;
- (void)_updatePreferredContentSizeWithHeight:(double)a3;
- (void)_updateWidgetWithCompletionHandler:(id)a3;
- (void)_validateSnapshotViewForActiveLayoutMode;
- (void)dealloc;
- (void)handleReconnectionRequest:(id)a3;
- (void)invalidateCachedSnapshotWithURL:(id)a3 completionHandler:(id)a4;
- (void)managingContainerDidDisappear:(id)a3;
- (void)managingContainerWillAppear:(id)a3;
- (void)maximumSizeDidChangeForDisplayMode:(int64_t)a3;
- (void)requestIconWithHandler:(id)a3;
- (void)requestSettingsIconWithHandler:(id)a3;
- (void)setActiveDisplayMode:(int64_t)a3;
- (void)setLockedOut:(BOOL)a3 withExplanation:(id)a4;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)setUserSpecifiedDisplayMode:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)widget:(id)a3 didTerminateWithError:(id)a4;
@end

@implementation WGWidgetHostingViewController

+ (void)setWidgetSnapshotTimestampsEnabled:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  __WGWidgetSnapshotDebugLabelsEnabled = a3;
  v3 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    if (__WGWidgetSnapshotDebugLabelsEnabled)
    {
      v4 = @"enabled";
    }

    else
    {
      v4 = @"disabled";
    }

    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_27425E000, v3, OS_LOG_TYPE_DEFAULT, "Widget snapshot timestamps %{public}@", &v5, 0xCu);
  }
}

- (void)_purgeLegacySnapshotsIfNecessary
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_host);
  if (!WeakRetained || (widgetInfo = self->_widgetInfo, WeakRetained, !widgetInfo))
  {
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [WGWidgetHostingViewController _purgeLegacySnapshotsIfNecessary];
    }
  }

  v5 = objc_loadWeakRetained(&self->_host);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 shouldPurgeNonCAMLSnapshotsForWidget:self])
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [(WGWidgetHostingViewController *)self appBundleID];
    v8 = WGContainingBundleCachePathForWidgetWithContainingBundleIdentifier(v7, @"Snapshots", 0);
    v9 = [v6 fileURLWithPath:v8];

    v10 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v13 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v18 = 138544130;
      v19 = v12;
      v20 = 2050;
      v21 = self;
      v22 = 2114;
      v23 = v13;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&dword_27425E000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Remove app bundle snapshots at %{public}@", &v18, 0x2Au);
    }

    [(WGWidgetHostingViewController *)self _removeItemAsynchronouslyAtURL:v9];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 shouldPurgeNonASTCSnapshotsForWidget:self])
  {
    v14 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v17 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v18 = 138543874;
      v19 = v16;
      v20 = 2050;
      v21 = self;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_27425E000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Remove all non-ASTC snapshots", &v18, 0x20u);
    }

    [(WGWidgetHostingViewController *)self _removeAllSnapshotFilesDueToIssue:0];
  }
}

- (WGWidgetHostingViewController)initWithWidgetInfo:(id)a3 delegate:(id)a4 host:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31.receiver = self;
  v31.super_class = WGWidgetHostingViewController;
  v12 = [(WGWidgetHostingViewController *)&v31 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_widgetInfo, a3);
    objc_storeWeak(&v13->_delegate, v10);
    objc_storeWeak(&v13->_host, v11);
    v14 = [(WGWidgetHostingViewController *)v13 widgetIdentifier];
    v15 = QueueName(@"com.apple.widgets.proxyconnectionqueue", v14);
    v16 = NewSerialQueue(v15);
    proxyConnectionQueue = v13->_proxyConnectionQueue;
    v13->_proxyConnectionQueue = v16;

    v18 = QueueName(@"com.apple.widgets.proxyrequestqueue", v14);
    v19 = NewSerialQueue(v18);
    proxyRequestQueue = v13->_proxyRequestQueue;
    v13->_proxyRequestQueue = v19;

    InvalidateQueue(v13->_proxyRequestQueue);
    v21 = QueueName(@"com.apple.widgets.diskqueue", v14);
    v22 = NewSerialQueue(v21);
    diskWriteQueue = v13->_diskWriteQueue;
    v13->_diskWriteQueue = v22;

    v24 = WGContainingBundleIdentifierForWidgetWithBundleIdentifier(v14);
    [(WGWidgetHostingViewController *)v13 setAppBundleID:v24];

    v25 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    openAppearanceTransactions = v13->_openAppearanceTransactions;
    v13->_openAppearanceTransactions = v25;

    v13->_implementsPerformUpdate = 1;
    [(WGWidgetInfo *)v13->_widgetInfo registerWidgetHost:v13];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v11 shouldPurgeArchivedSnapshotsForWidget:v13])
    {
      [(WGWidgetHostingViewController *)v13 _removeAllSnapshotFilesDueToIssue:1];
      [(WGWidgetHostingViewController *)v13 preferredContentSize];
      if (fabs(v27) < 2.22044605e-16)
      {
        [(WGWidgetInfo *)v13->_widgetInfo initialHeight];
        [(WGWidgetHostingViewController *)v13 _updatePreferredContentSizeWithHeight:?];
      }
    }

    else
    {
      [(WGWidgetHostingViewController *)v13 _purgeLegacySnapshotsIfNecessary];
      [(WGWidgetHostingViewController *)v13 _loadSnapshotViewFromDiskIfNecessary:&__block_literal_global_31];
    }

    if (![(WGWidgetInfo *)v13->_widgetInfo isLinkedOnOrAfterSystemVersion:@"10.0"])
    {
      v13->_activeDisplayMode = 1;
    }

    if (![(WGWidgetInfo *)v13->_widgetInfo largestAllowedDisplayMode])
    {
      [(WGWidgetHostingViewController *)v13 _maxSizeForDisplayMode:0];
      [(WGWidgetHostingViewController *)v13 _updatePreferredContentSizeWithHeight:v28];
    }

    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 addObserver:v13 selector:sel__rowHeightDidChange_ name:@"WGWidgetRowHeightDidChangeNotification" object:0];
  }

  return v13;
}

void __66__WGWidgetHostingViewController_initWithWidgetInfo_delegate_host___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  v5 = [v8 _shouldRemoveSnapshotWhenNotVisible];
  if ((v5 & 1) == 0 && (!v4 || [v8 _isActiveSequence:v4] && objc_msgSend(v4, "isCurrentStateNotYet:", 4)))
  {
    [v8 _insertSnapshotWithCompletionHandler:0];
  }

  v6 = [v8 _snapshotView];

  v7 = v5 ^ 1;
  if (!v6)
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    [v8 _synchronizeGeometryWithSnapshot];
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_disconnectionTimer);
  [WeakRetained invalidate];

  if ([(_WGWidgetRemoteViewController *)self->_remoteViewController _isValid])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WGWidgetHostingViewController dealloc];
    }

    v4 = [(_WGWidgetRemoteViewController *)self->_remoteViewController disconnect];
  }

  InvalidateQueue(self->_proxyRequestQueue);
  InvalidateQueue(self->_proxyConnectionQueue);
  InvalidateQueue(self->_diskWriteQueue);
  v5 = [(NSMapTable *)self->_openAppearanceTransactions keyEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = [(NSMapTable *)self->_openAppearanceTransactions objectForKey:v7];
      v8[2]();

      v9 = [v5 nextObject];

      v7 = v9;
    }

    while (v9);
  }

  v10.receiver = self;
  v10.super_class = WGWidgetHostingViewController;
  [(WGWidgetHostingViewController *)&v10 dealloc];
}

- (void)requestIconWithHandler:(id)a3
{
  if (a3)
  {
    [(WGWidgetInfo *)self->_widgetInfo requestIconWithHandler:?];
  }
}

- (void)requestSettingsIconWithHandler:(id)a3
{
  if (a3)
  {
    [(WGWidgetInfo *)self->_widgetInfo requestSettingsIconWithHandler:?];
  }
}

- (void)setActiveDisplayMode:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_activeDisplayMode != a3)
  {
    self->_activeDisplayMode = a3;
    v4 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v7 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v8 = NCStringFromWidgetDisplayMode();
      v11 = 138544130;
      v12 = v6;
      v13 = 2050;
      v14 = self;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_27425E000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Updated active display mode: %{public}@", &v11, 0x2Au);
    }

    v9 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
    v10 = [v9 isCurrentStateNotYet:5];

    if (v10)
    {
      [(WGWidgetHostingViewController *)self _enqueueRemoteServiceRequest:&__block_literal_global_42 withDescription:@"Setting active display mode"];
    }
  }
}

void __54__WGWidgetHostingViewController_setActiveDisplayMode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v4 = a3;
  if ([v14 _isActiveSequence:v4])
  {
    if ([v4 isCurrentStateNotYet:5])
    {
      v5 = [v14 _remoteViewController];
      [v5 _setActiveDisplayMode:{objc_msgSend(v14, "activeDisplayMode")}];

      v6 = [v14 parentViewController];
      v7 = [v14 view];
      v8 = [v7 superview];
      [v8 bounds];
      [v6 sizeForChildContentContainer:v14 withParentContainerSize:{v9, v10}];
      v12 = v11;

      [v14 preferredContentSize];
      if (v13 != v12)
      {
        [v14 _updatePreferredContentSizeWithHeight:v12];
      }
    }
  }
}

- (int64_t)userSpecifiedDisplayMode
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained userSpecifiedDisplayModeForWidget:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUserSpecifiedDisplayMode:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widget:self didChangeUserSpecifiedDisplayMode:a3];
  }

  v5 = [(WGWidgetHostingViewController *)self userSpecifiedDisplayMode];
  if (v5 <= [(WGWidgetHostingViewController *)self largestAvailableDisplayMode])
  {
    [(WGWidgetHostingViewController *)self setActiveDisplayMode:v5];
  }
}

- (BOOL)isRemoteViewVisible
{
  if ([(_WGWidgetRemoteViewController *)self->_remoteViewController isViewLoaded])
  {
    v3 = [(_WGWidgetRemoteViewController *)self->_remoteViewController view];
    contentProvidingView = self->_contentProvidingView;
    if (v3 == contentProvidingView)
    {
      v5 = ![(UIView *)contentProvidingView isHidden];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isBrokenViewVisible
{
  brokenView = self->_brokenView;
  if (brokenView && (contentProvidingView = self->_contentProvidingView, brokenView == contentProvidingView))
  {
    return ![(UIView *)contentProvidingView isHidden:v2];
  }

  else
  {
    return 0;
  }
}

- (void)invalidateCachedSnapshotWithURL:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  snapshotView = self->_snapshotView;
  if (snapshotView)
  {
    v8 = [(_WGCAPackageView *)snapshotView snapshotIdentifier];
    v9 = [(WGWidgetHostingViewController *)self _widgetSnapshotURLForSnapshotIdentifier:v8 ensuringDirectoryExists:0];
    if (v9 && [v10 isEqual:v9])
    {
      [(WGWidgetHostingViewController *)self _invalidateSnapshotWithForce:1 removingSnapshotFilesForActiveDisplayMode:0 completionHandler:v6];
    }
  }
}

- (BSAuditToken)auditToken
{
  v2 = MEMORY[0x277CF0B98];
  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    [(_UIRemoteViewController *)remoteViewController serviceAuditToken];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = [v2 tokenFromAuditToken:v6];

  return v4;
}

- (void)maximumSizeDidChangeForDisplayMode:(int64_t)a3
{
  v5 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
  v6 = [v5 isCurrentState:4];

  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Updating max size for display mode '%ld'", a3, MEMORY[0x277D85DD0], 3221225472, __68__WGWidgetHostingViewController_maximumSizeDidChangeForDisplayMode___block_invoke, &__block_descriptor_40_e72_v28__0__WGWidgetHostingViewController_8__WGWidgetLifeCycleSequence_16B24l, a3];
    [(WGWidgetHostingViewController *)self _enqueueRemoteServiceRequest:&v8 withDescription:v7];
  }
}

void __68__WGWidgetHostingViewController_maximumSizeDidChangeForDisplayMode___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    [v6 _maxSizeForDisplayMode:v5];
    v8 = v7;
    v10 = v9;
    v11 = [v6 _remoteViewController];

    [v11 _setMaximumSize:*(a1 + 32) forDisplayMode:{v8, v10}];
  }
}

- (int64_t)largestAvailableDisplayMode
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained largestAvailableDisplayModeForWidget:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLockedOut:(BOOL)a3 withExplanation:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_lockedOut != v4)
  {
    self->_lockedOut = v4;
    if (v4)
    {
      [(WGWidgetHostingViewController *)self _insertLockedOutViewWithExplanation:v6];
      v7 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __62__WGWidgetHostingViewController_setLockedOut_withExplanation___block_invoke;
      v8[3] = &unk_279ED1970;
      v8[4] = self;
      [(WGWidgetHostingViewController *)self _endSequence:v7 withReason:@"lock out began" completion:v8];
    }

    else if ([(UIViewController *)self wg_isAppearingOrAppeared])
    {
      [(WGWidgetHostingViewController *)self _beginSequenceWithReason:@"lock out ended" completion:&__block_literal_global_64 updateHandler:0];
    }
  }
}

void __62__WGWidgetHostingViewController_setLockedOut_withExplanation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 _endRemoteViewControllerAppearanceTransitionIfNecessary];
  if (([v3 isLockedOut] & 1) == 0)
  {
    v2 = [v3 _lockedOutView];
    [v2 removeFromSuperview];

    [v3 _setLockedOutView:0];
  }
}

- (void)_beginRemoteViewControllerAppearanceTransitionIfNecessary:(BOOL)a3 semaphore:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v8 = a3;
  v62 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v39 = a6;
  if (!v8)
  {
    if ((self->_ignoringParentAppearState || [(WGWidgetHostingViewController *)self _appearState]!= 1) && [(_WGWidgetRemoteViewController *)self->_remoteViewController _isValid])
    {
      v15 = [(UIViewController *)self->_remoteViewController wg_isAppearingOrAppeared];
      v14 = 0;
      goto LABEL_16;
    }

LABEL_11:
    v14 = 0;
    v15 = 0;
    goto LABEL_16;
  }

  if (!self->_ignoringParentAppearState && ![(UIViewController *)self wg_isAppearingOrAppeared])
  {
    goto LABEL_11;
  }

  if ([(_WGWidgetRemoteViewController *)self->_remoteViewController _isValid])
  {
    v11 = a5;
    contentProvidingView = self->_contentProvidingView;
    v13 = [(_WGWidgetRemoteViewController *)self->_remoteViewController view];
    v14 = contentProvidingView == v13 && [(UIViewController *)self->_remoteViewController wg_isDisappearingOrDisappeared];
    a5 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0;
LABEL_16:
  v38 = v10;
  if (v14 || v15)
  {
    v37 = a5;
    v18 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      log = v18;
      v19 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v20 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      if (v8)
      {
        v21 = @"appearing";
      }

      else
      {
        v21 = @"disappearing";
      }

      remoteViewController = self->_remoteViewController;
      v23 = WGStringForAppearState([(WGWidgetHostingViewController *)self _appearState]);
      v24 = WGStringForAppearState([(_WGWidgetRemoteViewController *)self->_remoteViewController _appearState]);
      *location = 138544898;
      *&location[4] = v19;
      v50 = 2050;
      v51 = self;
      v52 = 2114;
      v53 = v20;
      v54 = 2114;
      v55 = v21;
      v56 = 2114;
      v57 = remoteViewController;
      v58 = 2114;
      v59 = v23;
      v60 = 2114;
      v61 = v24;
      _os_log_impl(&dword_27425E000, log, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Begin appearance transition (%{public}@): _remoteViewController=%{public}@, [self _appearState]=%{public}@, [_remoteViewController _appearState]=%{public}@", location, 0x48u);
    }

    if (v14 && [(_WGWidgetRemoteViewController *)self->_remoteViewController _appearState]== 3 || v15 && [(_WGWidgetRemoteViewController *)self->_remoteViewController _appearState]== 1)
    {
      v25 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v28 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        v29 = v28;
        v30 = @"Disappearing";
        *location = 138544386;
        *&location[4] = v27;
        if (v8)
        {
          v30 = @"Appearing";
        }

        v31 = @"appearing";
        v50 = 2050;
        v51 = self;
        if (v8)
        {
          v31 = @"disappearing";
        }

        v52 = 2114;
        v53 = v28;
        v54 = 2114;
        v55 = v30;
        v56 = 2114;
        v57 = v31;
        _os_log_impl(&dword_27425E000, v26, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> %{public}@, but remote view controller is still %{public}@ - ending previous transition.", location, 0x34u);
      }

      [(_WGWidgetRemoteViewController *)self->_remoteViewController endAppearanceTransition];
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __121__WGWidgetHostingViewController__beginRemoteViewControllerAppearanceTransitionIfNecessary_semaphore_animated_completion___block_invoke;
    v44[3] = &unk_279ED1998;
    v47 = v14;
    v48 = v15;
    v45 = v38;
    v46 = v39;
    v32 = MEMORY[0x2743E8C10](v44);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __121__WGWidgetHostingViewController__beginRemoteViewControllerAppearanceTransitionIfNecessary_semaphore_animated_completion___block_invoke_83;
    v40[3] = &unk_279ED19E8;
    v33 = v32;
    v41 = v33;
    v42 = v8;
    v43 = v37;
    [(WGWidgetHostingViewController *)self _enqueueRemoteServiceRequest:v40 withDescription:@"Opening begin appearance transaction"];
    if (v8)
    {
      v34 = 1144;
    }

    else
    {
      v34 = 1136;
    }

    v35 = *(&self->super.super.super.isa + v34);
    if (v35)
    {
      dispatch_semaphore_signal(v35);
    }
  }

  else
  {
    if (v10)
    {
      dispatch_semaphore_signal(v10);
    }

    objc_initWeak(location, self);
    if (v39)
    {
      WeakRetained = objc_loadWeakRetained(location);
      v17 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      (*(v39 + 2))(v39, WeakRetained, v17);
    }

    objc_destroyWeak(location);
  }
}

void __121__WGWidgetHostingViewController__beginRemoteViewControllerAppearanceTransitionIfNecessary_semaphore_animated_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (((*(a1 + 48) & 1) != 0 || *(a1 + 49) == 1) && *(a1 + 32))
  {
    v7 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v5 widgetIdentifier];
      v10 = [v5 _containerIdentifier];
      v11 = v10;
      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v16 = 138544386;
      if (v13)
      {
        v14 = @"appearance";
      }

      else
      {
        v14 = @"disappearance";
      }

      v17 = v9;
      v18 = 2050;
      v19 = v5;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = v12;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_27425E000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Signaling semaphore '%{public}@' for %{public}@ transition", &v16, 0x34u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v5, v6);
  }
}

void __121__WGWidgetHostingViewController__beginRemoteViewControllerAppearanceTransitionIfNecessary_semaphore_animated_completion___block_invoke_83(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v6 = a2;
  if (a4)
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v6 _openAppearanceTransactions];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __121__WGWidgetHostingViewController__beginRemoteViewControllerAppearanceTransitionIfNecessary_semaphore_animated_completion___block_invoke_2;
    v17[3] = &unk_279ED19C0;
    v9 = v6;
    v18 = v9;
    v10 = *(a1 + 32);
    v19 = v7;
    v20 = v10;
    v11 = v7;
    v12 = [v17 copy];
    [v8 setObject:v12 forKey:v11];

    v13 = [v9 _remoteViewController];
    v14 = v13;
    if (*(a1 + 40))
    {
      v15 = 1;
    }

    else
    {
      v15 = 3;
    }

    [v13 _openTransactionForAppearanceCallWithState:v15 withIdentifier:v11];

    v16 = [v9 _remoteViewController];
    [v16 beginAppearanceTransition:*(a1 + 40) animated:*(a1 + 41)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __121__WGWidgetHostingViewController__beginRemoteViewControllerAppearanceTransitionIfNecessary_semaphore_animated_completion___block_invoke_2(void *a1)
{
  v1 = a1[6];
  v2 = a1[4];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Appearance completion for transactionID %@", a1[5]];
  [v2 _enqueueRemoteServiceRequest:v1 withDescription:v3];
}

- (void)_endRemoteViewControllerAppearanceTransitionIfNecessaryWithCompletion:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_ignoringParentAppearState || [(WGWidgetHostingViewController *)self _appearState]== 2)
  {
    if ([(_WGWidgetRemoteViewController *)self->_remoteViewController _isValid])
    {
      v5 = [(_WGWidgetRemoteViewController *)self->_remoteViewController _appearState]== 1 || [(_WGWidgetRemoteViewController *)self->_remoteViewController _appearState]== 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if ([(_WGWidgetRemoteViewController *)self->_remoteViewController _isValid])
  {
    v6 = [(_WGWidgetRemoteViewController *)self->_remoteViewController _appearState]== 3;
    if (v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    objc_initWeak(location, self);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(location);
      v8 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      v4[2](v4, WeakRetained, v8);
    }

    goto LABEL_22;
  }

LABEL_17:
  if (self->_viewWillAppearSemaphore && v5 || self->_viewWillDisappearSemaphore != 0 && v6)
  {
    objc_initWeak(location, self);
    if (v4)
    {
      v9 = objc_loadWeakRetained(location);
      v10 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      v4[2](v4, v9, v10);
    }

LABEL_22:
    objc_destroyWeak(location);
    goto LABEL_23;
  }

  v11 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v14 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    remoteViewController = self->_remoteViewController;
    v16 = WGStringForAppearState([(WGWidgetHostingViewController *)self _appearState]);
    v17 = WGStringForAppearState([(_WGWidgetRemoteViewController *)self->_remoteViewController _appearState]);
    *location = 138544642;
    *&location[4] = v13;
    v29 = 2050;
    v30 = self;
    v31 = 2114;
    v32 = v14;
    v33 = 2114;
    v34 = remoteViewController;
    v35 = 2114;
    v36 = v16;
    v37 = 2114;
    v38 = v17;
    _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> End appearance transition: _remoteViewController=%{public}@, [self _appearState]=%{public}@, [_remoteViewController _appearState]=%{public}@", location, 0x3Eu);
  }

  if (v4)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __103__WGWidgetHostingViewController__endRemoteViewControllerAppearanceTransitionIfNecessaryWithCompletion___block_invoke;
    v26[3] = &unk_279ED1A10;
    v18 = v4;
    v27 = v18;
    v19 = MEMORY[0x2743E8C10](v26);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __103__WGWidgetHostingViewController__endRemoteViewControllerAppearanceTransitionIfNecessaryWithCompletion___block_invoke_2;
    v22[3] = &unk_279ED1A38;
    v23 = v19;
    v25 = v5;
    v24 = v18;
    v20 = v19;
    [(WGWidgetHostingViewController *)self _enqueueRemoteServiceRequest:v22 withDescription:@"Opening end appearance transaction"];
  }

  else
  {
    v21 = [(WGWidgetHostingViewController *)self _remoteViewController];
    [v21 endAppearanceTransition];
  }

LABEL_23:
}

uint64_t __103__WGWidgetHostingViewController__endRemoteViewControllerAppearanceTransitionIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __103__WGWidgetHostingViewController__endRemoteViewControllerAppearanceTransitionIfNecessaryWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v7 _openAppearanceTransactions];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __103__WGWidgetHostingViewController__endRemoteViewControllerAppearanceTransitionIfNecessaryWithCompletion___block_invoke_3;
    v20[3] = &unk_279ED19C0;
    v11 = v7;
    v21 = v11;
    v12 = *(a1 + 32);
    v22 = v9;
    v23 = v12;
    v13 = v9;
    v14 = [v20 copy];
    [v10 setObject:v14 forKey:v13];

    v15 = [v11 _remoteViewController];
    v16 = v15;
    if (*(a1 + 48))
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    [v15 _openTransactionForAppearanceCallWithState:v17 withIdentifier:v13];

    v18 = [v11 _remoteViewController];
    [v18 endAppearanceTransition];
  }

  else
  {
    v19 = *(a1 + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, v7, v8);
    }
  }
}

void __103__WGWidgetHostingViewController__endRemoteViewControllerAppearanceTransitionIfNecessaryWithCompletion___block_invoke_3(void *a1)
{
  v1 = a1[6];
  v2 = a1[4];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Appearance completion for transactionID %@", a1[5]];
  [v2 _enqueueRemoteServiceRequest:v1 withDescription:v3];
}

- (void)_endRemoteViewControllerAppearanceTransitionIfNecessary
{
  v4 = [(WGWidgetHostingViewController *)self delegate];
  if ([(_WGWidgetRemoteViewController *)self->_remoteViewController _appearState]== 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = &__block_literal_global_98;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  [(WGWidgetHostingViewController *)self _endRemoteViewControllerAppearanceTransitionIfNecessaryWithCompletion:v3];
}

void __88__WGWidgetHostingViewController__endRemoteViewControllerAppearanceTransitionIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [v5 _remoteViewController];
  v3 = [v2 _appearState];

  if (v3 == 2)
  {
    v4 = [v5 delegate];
    [v4 remoteViewControllerViewDidAppearForWidget:v5];
  }
}

- (void)managingContainerWillAppear:(id)a3
{
  if ([(UIViewController *)self wg_isDisappearingOrDisappeared]&& [(WGWidgetHostingViewController *)self _shouldRemoveSnapshotWhenNotVisible])
  {
    [(WGWidgetHostingViewController *)self _validateSnapshotViewForActiveLayoutMode];

    [(WGWidgetHostingViewController *)self _insertSnapshotViewIfAppropriate];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WGWidgetHostingViewController;
  [(WGWidgetHostingViewController *)&v7 viewWillAppear:a3];
  v4 = [(WGWidgetHostingViewController *)self delegate];
  [v4 registerWidgetForRefreshEvents:self];

  [(WGWidgetHostingViewController *)self _validateSnapshotViewForActiveLayoutMode];
  [(WGWidgetHostingViewController *)self _insertSnapshotViewIfAppropriate];
  [(WGWidgetHostingViewController *)self _requestVisibilityStateUpdateForPossiblyAppearing:1 sequence:self->_activeLifeCycleSequence];
  if ([(WGWidgetLifeCycleSequence *)self->_activeLifeCycleSequence isCurrentStateAtLeast:4]&& [(WGWidgetLifeCycleSequence *)self->_activeLifeCycleSequence isCurrentStateAtMost:6]&& [(_WGWidgetRemoteViewController *)self->_remoteViewController _isValid])
  {
    contentProvidingView = self->_contentProvidingView;
    v6 = [(_WGWidgetRemoteViewController *)self->_remoteViewController view];

    if (contentProvidingView == v6)
    {
      [(WGWidgetHostingViewController *)self _beginSequenceWithReason:@"appearance transition" completion:&__block_literal_global_105 updateHandler:0];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WGWidgetHostingViewController;
  [(WGWidgetHostingViewController *)&v4 viewDidAppear:a3];
  [(WGWidgetHostingViewController *)self _beginSequenceWithReason:@"appearance transition" completion:&__block_literal_global_109 updateHandler:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WGWidgetHostingViewController;
  [(WGWidgetHostingViewController *)&v6 viewWillDisappear:a3];
  v4 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__WGWidgetHostingViewController_viewWillDisappear___block_invoke;
  v5[3] = &unk_279ED1970;
  v5[4] = self;
  [(WGWidgetHostingViewController *)self _endSequence:v4 withReason:@"disappearance transition" completion:v5];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WGWidgetHostingViewController;
  [(WGWidgetHostingViewController *)&v6 viewDidDisappear:a3];
  v4 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
  [(WGWidgetHostingViewController *)self _requestVisibilityStateUpdateForPossiblyAppearing:0 sequence:v4];

  v5 = [(WGWidgetHostingViewController *)self delegate];
  [v5 unregisterWidgetForRefreshEvents:self];
}

- (void)managingContainerDidDisappear:(id)a3
{
  v4 = [(WGWidgetHostingViewController *)self _snapshotView];
  if (v4)
  {
    v9 = v4;
    v5 = [(WGWidgetHostingViewController *)self _contentProvidingView];
    v6 = [(WGWidgetHostingViewController *)self _snapshotView];
    v7 = v6;
    if (v5 == v6)
    {
      v8 = [(WGWidgetHostingViewController *)self _shouldRemoveSnapshotWhenNotVisible];

      if (!v8)
      {
        return;
      }

      v9 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      [WGWidgetHostingViewController _insertContentProvidingSubview:"_insertContentProvidingSubview:sequence:completion:" sequence:0 completion:?];
    }

    else
    {
    }
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WGWidgetHostingViewController;
  [(WGWidgetHostingViewController *)&v4 viewDidLoad];
  v3 = [(WGWidgetHostingViewController *)self view];
  [v3 setAutoresizesSubviews:1];

  [(WGWidgetHostingViewController *)self _insertAppropriateContentView];
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v20 = *MEMORY[0x277D85DE8];
  v6 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v9 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    v21.width = width;
    v21.height = height;
    v10 = NSStringFromCGSize(v21);
    *buf = 138544130;
    v13 = v8;
    v14 = 2050;
    v15 = self;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_27425E000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Requested preferred content size: %{public}@", buf, 0x2Au);
  }

  v11.receiver = self;
  v11.super_class = WGWidgetHostingViewController;
  [(WGWidgetHostingViewController *)&v11 setPreferredContentSize:width, height];
  [(WGWidgetInfo *)self->_widgetInfo updatePreferredContentSize:self forWidgetHost:width, height];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WGWidgetHostingViewController;
  [(WGWidgetHostingViewController *)&v12 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];
  if (!v5 || (-[WGWidgetHostingViewController traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), [v6 preferredContentSizeCategory], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 == v5))
  {
    v9 = [v4 userInterfaceStyle];
    v10 = [(WGWidgetHostingViewController *)self traitCollection];
    v11 = [v10 userInterfaceStyle];

    if (v9 != v11)
    {
      [(WGWidgetHostingViewController *)self _removeAllSnapshotFilesInActiveDisplayModeForAllButActiveUserInterfaceStyle];
    }
  }

  else
  {
    [(WGWidgetHostingViewController *)self _removeAllSnapshotFilesInActiveDisplayModeForContentSizeCategory:v5];
    [(WGWidgetHostingViewController *)self maximumSizeDidChangeForDisplayMode:0];
    [(WGWidgetHostingViewController *)self maximumSizeDidChangeForDisplayMode:1];
    if (![(WGWidgetHostingViewController *)self activeDisplayMode])
    {
      [(WGWidgetHostingViewController *)self preferredContentSize];
      [(WGWidgetHostingViewController *)self _updatePreferredContentSizeWithHeight:v8];
    }

    [(WGWidgetHostingViewController *)self _layoutMarginsDidChange];
  }
}

- (BOOL)_isActiveSequence:(id)a3
{
  v4 = a3;
  v5 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];

  return v5 == v4;
}

- (void)_initiateNewSequenceIfNecessary
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WGWidgetHostingViewController *)self widgetIdentifier];
  v5 = [(WGWidgetHostingViewController *)self _containerIdentifier];
  v6 = MEMORY[0x277CCA968];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 localizedStringFromDate:v7 dateStyle:1 timeStyle:2];
  v9 = [v3 stringWithFormat:@"%@.%@.%@", v4, v5, v8];

  activeLifeCycleSequence = self->_activeLifeCycleSequence;
  if (activeLifeCycleSequence)
  {
    if ([(WGWidgetLifeCycleSequence *)activeLifeCycleSequence isCurrentStateAtLeast:5])
    {
      v11 = [(WGWidgetLifeCycleSequence *)self->_activeLifeCycleSequence sequenceWithIdentifier:v9];
      v12 = self->_activeLifeCycleSequence;
      self->_activeLifeCycleSequence = v11;

      v13 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v16 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        v17 = self->_activeLifeCycleSequence;
        *buf = 138544130;
        v24 = v15;
        v25 = 2050;
        v26 = self;
        v27 = 2114;
        v28 = v16;
        v29 = 2114;
        v30 = v17;
        v18 = "<%{public}@: %{public}p; container: %{public}@> Initiating new life cycle sequence: %{public}@";
LABEL_7:
        _os_log_impl(&dword_27425E000, v14, OS_LOG_TYPE_DEFAULT, v18, buf, 0x2Au);
      }
    }
  }

  else
  {
    v19 = [[WGWidgetLifeCycleSequence alloc] initWithSequenceIdentifier:v9];
    v20 = self->_activeLifeCycleSequence;
    self->_activeLifeCycleSequence = v19;

    v21 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v21;
      v15 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v16 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v22 = self->_activeLifeCycleSequence;
      *buf = 138544130;
      v24 = v15;
      v25 = 2050;
      v26 = self;
      v27 = 2114;
      v28 = v16;
      v29 = 2114;
      v30 = v22;
      v18 = "<%{public}@: %{public}p; container: %{public}@> Initiating new life cycle sequence: '%{public}@'";
      goto LABEL_7;
    }
  }
}

- (void)_abortActiveSequence
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v6 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    activeLifeCycleSequence = self->_activeLifeCycleSequence;
    v9 = 138544130;
    v10 = v5;
    v11 = 2050;
    v12 = self;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = activeLifeCycleSequence;
    _os_log_impl(&dword_27425E000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Aborting active life cycle sequence: %{public}@", &v9, 0x2Au);
  }

  v8 = self->_activeLifeCycleSequence;
  self->_activeLifeCycleSequence = 0;
}

- (void)_setupRequestQueue
{
  v19 = *MEMORY[0x277D85DE8];
  if (!self->_proxyRequestQueue)
  {
    v3 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v4 = QueueName(@"com.apple.widgets.proxyrequestqueue", v3);

    v5 = NewSerialQueue(v4);
    proxyRequestQueue = self->_proxyRequestQueue;
    self->_proxyRequestQueue = v5;

    v7 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v10 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v11 = 138544130;
      v12 = v9;
      v13 = 2050;
      v14 = self;
      v15 = 2114;
      v16 = v10;
      v17 = 2082;
      v18 = v4;
      _os_log_impl(&dword_27425E000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Setup request queue (%{public}s)", &v11, 0x2Au);
    }
  }
}

- (void)_enqueueRequest:(id)a3 inQueue:(id)a4 trampolinedToMainQueue:(BOOL)a5 withDescription:(id)a6
{
  v7 = a5;
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v11)
  {
    v13 = objc_initWeak(&v29, self);
    v14 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
    objc_initWeak(&location, self);
    v15 = v14;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = objc_loadWeakRetained(&location);
    if (v16)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;

    if (!v21)
    {
      goto LABEL_13;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __DispatchBlockForRequest_block_invoke;
    v32[3] = &unk_279ED2130;
    v33 = v17;
    objc_copyWeak(&v37, &location);
    v36 = v16;
    v34 = v18;
    v35 = v15;
    v22 = MEMORY[0x2743E8C10](v32);
    v23 = v22;
    if (v7)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __DispatchBlockForRequest_block_invoke_783;
      v30[3] = &unk_279ED0C88;
      v31 = v22;
      v24 = [v30 copy];
    }

    else
    {
      v24 = [v22 copy];
    }

    objc_destroyWeak(&v37);
    if (!v24)
    {
LABEL_13:
      v25 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
      {
        v27 = v25;
        v28 = MEMORY[0x2743E8C10](v16);
        *buf = 138543874;
        v40 = v28;
        v41 = 2114;
        v42 = v17;
        v43 = 2114;
        v44 = v18;
        _os_log_error_impl(&dword_27425E000, v27, OS_LOG_TYPE_ERROR, "Wrapped request is 'nil' (request:%{public}@, queue:%{public}@, description:%{public}@)", buf, 0x20u);
      }

      v24 = 0;
    }

    v26 = MEMORY[0x2743E8C10](v24);

    objc_destroyWeak(&location);
    dispatch_async(v17, v26);

    objc_destroyWeak(&v29);
  }
}

- (void)_enqueueRemoteServiceRequest:(id)a3 withDescription:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WGWidgetHostingViewController *)self _proxyRequestQueue];
  [(WGWidgetHostingViewController *)self _enqueueRequest:v7 inQueue:v8 trampolinedToMainQueue:1 withDescription:v6];
}

- (void)_beginSequenceWithReason:(id)a3 completion:(id)a4 updateHandler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v14 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    *buf = 138544130;
    v22 = v13;
    v23 = 2050;
    v24 = self;
    v25 = 2114;
    v26 = v14;
    v27 = 2114;
    v28 = v8;
    _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Begin sequence with reason: %{public}@", buf, 0x2Au);
  }

  [(WGWidgetHostingViewController *)self _initiateNewSequenceIfNecessary];
  [(WGWidgetHostingViewController *)self _validateSnapshotViewForActiveLayoutMode];
  v15 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__WGWidgetHostingViewController__beginSequenceWithReason_completion_updateHandler___block_invoke;
  v18[3] = &unk_279ED1A88;
  v19 = v10;
  v20 = v9;
  v18[4] = self;
  v16 = v9;
  v17 = v10;
  [(WGWidgetHostingViewController *)self _connectRemoteViewControllerForReason:v8 sequence:v15 completionHandler:v18];
}

void __83__WGWidgetHostingViewController__beginSequenceWithReason_completion_updateHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 _isActiveSequence:v6];
  if ([(__CFString *)v6 isCurrentStateAtLeast:2])
  {
    v8 = [(__CFString *)v6 isCurrentStateAtMost:4];
    v9 = v8;
    if ((v7 & v8) == 1)
    {
      [v5 _noteOutstandingUpdateRequestForSequence:v6];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __83__WGWidgetHostingViewController__beginSequenceWithReason_completion_updateHandler___block_invoke_2;
      v27[3] = &unk_279ED1A60;
      v10 = v5;
      v28 = v10;
      v11 = v6;
      v29 = v11;
      v30 = *(a1 + 40);
      [v10 _performUpdateForSequence:v11 withCompletionHandler:v27];
      [v10 _requestInsertionOfRemoteViewAfterViewWillAppearForSequence:v11 completionHandler:*(a1 + 48)];

      goto LABEL_22;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = 0;
  if (v7 && (v9 & 1) == 0)
  {
    v12 = [(__CFString *)v6 isCurrentStateNotYet:4];
  }

  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      v13 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [v5 widgetIdentifier];
        v16 = [v5 _containerIdentifier];
        if (v12)
        {
          v17 = @"Aborting";
        }

        else
        {
          v17 = @"Can't continue";
        }

        v18 = WGStringFromWidgetLifeCycleSequenceState(2uLL);
        v19 = WGStringFromWidgetLifeCycleSequenceState(4uLL);
        *buf = 138544898;
        v32 = v15;
        v33 = 2050;
        v34 = v5;
        v35 = 2114;
        v36 = v16;
        v37 = 2114;
        v38 = v17;
        v39 = 2114;
        v40 = v6;
        v41 = 2114;
        v42 = v18;
        v43 = 2114;
        v44 = v19;
        _os_log_impl(&dword_27425E000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> %{public}@ sequence as argument sequence (%{public}@) isn't in expected range (%{public}@ – %{public}@)", buf, 0x48u);
      }
    }
  }

  else
  {
    v20 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v5 widgetIdentifier];
      v23 = [v5 _containerIdentifier];
      v24 = [v5 _activeLifeCycleSequence];
      *buf = 138544386;
      v32 = v22;
      v33 = 2050;
      v34 = v5;
      v35 = 2114;
      v36 = v23;
      v37 = 2114;
      v38 = v6;
      v39 = 2114;
      v40 = v24;
      _os_log_impl(&dword_27425E000, v21, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't continue sequence as argument sequence (%{public}@) doesn't match active sequence (%{public}@)", buf, 0x34u);
    }
  }

  if (v12)
  {
    [v5 _abortActiveSequence];
  }

  objc_initWeak(buf, *(a1 + 32));
  v25 = *(a1 + 48);
  if (v25)
  {
    WeakRetained = objc_loadWeakRetained(buf);
    (*(v25 + 16))(v25, WeakRetained, v6);
  }

  objc_destroyWeak(buf);
LABEL_22:
}

uint64_t __83__WGWidgetHostingViewController__beginSequenceWithReason_completion_updateHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) _isActiveSequence:*(a1 + 40)])
  {
    v6 = [*(a1 + 32) _updateRequestForSequence:*(a1 + 40)];
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, *(a1 + 32), *(a1 + 40));
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, a2, a3);
    }
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  return [v9 _registerUpdateRequestCompletionHandler:0 forSequence:v10];
}

- (void)_connectRemoteViewControllerForReason:(id)a3 sequence:(id)a4 completionHandler:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WGWidgetHostingViewController *)self _isActiveSequence:v9];
  v12 = WGLogWidgets;
  v13 = os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = v12;
      v15 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v16 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      *buf = 138544130;
      v46 = v15;
      v47 = 2050;
      v48 = self;
      v49 = 2114;
      v50 = v16;
      v51 = 2114;
      v52 = v8;
      _os_log_impl(&dword_27425E000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Connection requested with reason: '%{public}@'", buf, 0x2Au);
    }

    WeakRetained = objc_loadWeakRetained(&self->_disconnectionTimer);
    if ([objc_opt_class() _canWidgetHostConnectRemoteViewControllerByRequestingForSequence:v9 disconnectionTimer:WeakRetained connectionState:self->_connectionState])
    {
      v18 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v21 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        *buf = 138543874;
        v46 = v20;
        v47 = 2050;
        v48 = self;
        v49 = 2114;
        v50 = v21;
        _os_log_impl(&dword_27425E000, v19, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Will request remote view controller", buf, 0x20u);
      }

      v22 = [v9 transitionToState:1];
      if (v22)
      {
        v23 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
        {
          [WGWidgetHostingViewController _connectRemoteViewControllerForReason:v23 sequence:? completionHandler:?];
        }

        objc_initWeak(buf, self);
        if (v10)
        {
          v24 = objc_loadWeakRetained(buf);
          v10[2](v10, v24, v9);
        }

        objc_destroyWeak(buf);
      }

      else
      {
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __98__WGWidgetHostingViewController__connectRemoteViewControllerForReason_sequence_completionHandler___block_invoke;
        v43[3] = &unk_279ED1AB0;
        v44 = v10;
        [(WGWidgetHostingViewController *)self _requestRemoteViewControllerForSequence:v9 completionHander:v43];
      }
    }

    else if ([objc_opt_class() _canWidgetHostConnectRemoteViewControllerByCancellingDisappearanceForSequence:v9])
    {
      if (WeakRetained)
      {
        v30 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          v32 = [(WGWidgetHostingViewController *)self widgetIdentifier];
          v33 = [(WGWidgetHostingViewController *)self _containerIdentifier];
          *buf = 138543874;
          v46 = v32;
          v47 = 2050;
          v48 = self;
          v49 = 2114;
          v50 = v33;
          _os_log_impl(&dword_27425E000, v31, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Connection requested with pending disconnection - invalidating disconnection timer", buf, 0x20u);
        }

        [(WGWidgetHostingViewController *)self _invalidateDisconnectionTimer];
      }

      v34 = [v9 transitionToState:2];
      if (v34)
      {
        v35 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
        {
          [WGWidgetHostingViewController _connectRemoteViewControllerForReason:v35 sequence:? completionHandler:?];
        }

        objc_initWeak(buf, self);
        if (v10)
        {
          v36 = objc_loadWeakRetained(buf);
          v10[2](v10, v36, v9);
        }
      }

      else
      {
        ValidateQueue(self->_proxyRequestQueue);
        objc_initWeak(buf, self);
        if (v10)
        {
          v42 = objc_loadWeakRetained(buf);
          v10[2](v10, v42, v9);
        }
      }

      objc_destroyWeak(buf);
    }

    else
    {
      v37 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
        v39 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v40 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        *buf = 138544130;
        v46 = v39;
        v47 = 2050;
        v48 = self;
        v49 = 2114;
        v50 = v40;
        v51 = 2114;
        v52 = v9;
        _os_log_impl(&dword_27425E000, v38, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Sequence already at satisfactory state: %{public}@", buf, 0x2Au);
      }

      objc_initWeak(buf, self);
      if (v10)
      {
        v41 = objc_loadWeakRetained(buf);
        v10[2](v10, v41, v9);
      }

      objc_destroyWeak(buf);
    }
  }

  else
  {
    if (v13)
    {
      v25 = v12;
      v26 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v27 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v28 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      *buf = 138544386;
      v46 = v26;
      v47 = 2050;
      v48 = self;
      v49 = 2114;
      v50 = v27;
      v51 = 2114;
      v52 = v9;
      v53 = 2114;
      v54 = v28;
      _os_log_impl(&dword_27425E000, v25, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't request remote view controller as argument sequence (%{public}@) doesn't match active sequence (%{public}@)", buf, 0x34u);
    }

    objc_initWeak(buf, self);
    if (v10)
    {
      v29 = objc_loadWeakRetained(buf);
      v10[2](v10, v29, v9);
    }

    objc_destroyWeak(buf);
  }
}

void __98__WGWidgetHostingViewController__connectRemoteViewControllerForReason_sequence_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v10 _remoteViewController];
  v7 = [v6 _isValid];

  if (v7)
  {
    v8 = [v10 _proxyRequestQueue];
    ValidateQueue(v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v5);
  }
}

- (void)_requestRemoteViewControllerForSequence:(id)a3 completionHander:(id)a4
{
  v110 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(WGWidgetHostingViewController *)self _isActiveSequence:v7];
  v10 = [objc_opt_class() _canWidgetHostRequestRemoteViewControllerForSequence:v7];
  if (v9 && v10)
  {
    v11 = [(WGWidgetHostingViewController *)self _isBlacklisted];
    v12 = [(WGWidgetHostingViewController *)self isLockedOut];
    if (!v11 && !v12)
    {
      *v99 = 0;
      *&v99[8] = v99;
      *&v99[16] = 0x3032000000;
      v100 = __Block_byref_object_copy__5;
      *v101 = __Block_byref_object_dispose__5;
      *&v101[8] = 0;
      v93 = 0;
      v94 = &v93;
      v95 = 0x3032000000;
      v96 = __Block_byref_object_copy__5;
      v97 = __Block_byref_object_dispose__5;
      v98 = MEMORY[0x2743E8C10](v8);
      v13 = [(WGWidgetHostingViewController *)self _remoteViewControllerConnectionHandler];
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke;
      v87[3] = &unk_279ED1AD8;
      v70 = v13;
      v89 = v70;
      v14 = v7;
      v88 = v14;
      v90 = v99;
      v91 = &v93;
      v92 = 2;
      v71 = MEMORY[0x2743E8C10](v87);
      if ([(WGWidgetHostingViewController *)self _connectionState]== 1)
      {
        v15 = WGLogWidgets;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(WGWidgetHostingViewController *)self widgetIdentifier];
          v17 = [(WGWidgetHostingViewController *)self _containerIdentifier];
          *buf = 138543874;
          v103 = v16;
          v104 = 2050;
          v105 = self;
          v106 = 2114;
          v107 = v17;
          _os_log_impl(&dword_27425E000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Already have an outstanding request, so updating connection handler", buf, 0x20u);
        }

        v72 = 0;
        v18 = [v14 beginTransitionToState:2 error:&v72];
        v19 = v72;
        v20 = *(*&v99[8] + 40);
        *(*&v99[8] + 40) = v18;

        if (*(*&v99[8] + 40) | v19)
        {
          if (v19)
          {
            v21 = WGLogWidgets;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              WGStringFromWidgetLifeCycleSequenceState(2uLL);
              objc_claimAutoreleasedReturnValue();
              [WGWidgetHostingViewController _requestRemoteViewControllerForSequence:completionHander:];
            }

            objc_initWeak(&location, self);
            if (v8)
            {
              v22 = objc_loadWeakRetained(&location);
              v8[2](v8, v22, v14);
            }

            objc_destroyWeak(&location);
            goto LABEL_64;
          }
        }

        else
        {
          v63 = [MEMORY[0x277CCA890] currentHandler];
          [v63 handleFailureInMethod:a2 object:self file:@"WGWidgetHostingViewController.m" lineNumber:982 description:{@"Invalid parameter not satisfying: %@", @"endTransitionBlock || error"}];
        }

        [(WGWidgetHostingViewController *)self _setRemoteViewControllerConnectionHandler:v71];
LABEL_64:

        _Block_object_dispose(&v93, 8);
        _Block_object_dispose(v99, 8);

        goto LABEL_65;
      }

      if ([(_WGWidgetRemoteViewController *)self->_remoteViewController _isValid])
      {
        v86 = 0;
        v43 = [v14 beginTransitionToState:2 error:&v86];
        v19 = v86;
        v44 = *(*&v99[8] + 40);
        *(*&v99[8] + 40) = v43;

        if (*(*&v99[8] + 40) | v19)
        {
          if (v19)
          {
            v45 = WGLogWidgets;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              WGStringFromWidgetLifeCycleSequenceState(2uLL);
              objc_claimAutoreleasedReturnValue();
              [WGWidgetHostingViewController _requestRemoteViewControllerForSequence:completionHander:];
            }

            objc_initWeak(&location, self);
            if (v8)
            {
              v46 = objc_loadWeakRetained(&location);
              v8[2](v8, v46, v14);
            }

            objc_destroyWeak(&location);
            goto LABEL_64;
          }
        }

        else
        {
          v64 = [MEMORY[0x277CCA890] currentHandler];
          [v64 handleFailureInMethod:a2 object:self file:@"WGWidgetHostingViewController.m" lineNumber:849 description:{@"Invalid parameter not satisfying: %@", @"endTransitionBlock || error"}];
        }

        [(WGWidgetHostingViewController *)self _setRemoteViewControllerConnectionHandler:0];
        if (v71)
        {
          v71[2]();
        }

        goto LABEL_64;
      }

      v19 = [(WGWidgetInfo *)self->_widgetInfo extension];
      v47 = WGLogWidgets;
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
      if (!v19)
      {
        if (v48)
        {
          v59 = [(WGWidgetHostingViewController *)self widgetIdentifier];
          v60 = [(WGWidgetHostingViewController *)self _containerIdentifier];
          v61 = [(WGWidgetHostingViewController *)self widgetIdentifier];
          *buf = 138544130;
          v103 = v59;
          v104 = 2050;
          v105 = self;
          v106 = 2114;
          v107 = v60;
          v108 = 2114;
          v109 = v61;
          _os_log_impl(&dword_27425E000, v47, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> No extension found for identifier (%{public}@)", buf, 0x2Au);
        }

        objc_initWeak(buf, self);
        if (v8)
        {
          WeakRetained = objc_loadWeakRetained(buf);
          v8[2](v8, WeakRetained, v14);
        }

        objc_destroyWeak(buf);
        goto LABEL_64;
      }

      if (v48)
      {
        v69 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v49 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        v50 = [v19 wg_description];
        *buf = 138544130;
        v103 = v69;
        v104 = 2050;
        v105 = self;
        v106 = 2114;
        v107 = v49;
        v108 = 2114;
        v109 = v50;
        _os_log_impl(&dword_27425E000, v47, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Will request remote view controller from extension %{public}@", buf, 0x2Au);
      }

      SuspendQueueIfNecessary(self->_proxyRequestQueue);
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_147;
      v83[3] = &unk_279ED1AB0;
      v51 = v8;
      v84 = v51;
      v52 = MEMORY[0x2743E8C10](v83);
      v53 = v94[5];
      v94[5] = v52;

      v82 = 0;
      v54 = [v14 beginTransitionToState:2 error:&v82];
      v55 = v82;
      v56 = *(*&v99[8] + 40);
      *(*&v99[8] + 40) = v54;

      if (*(*&v99[8] + 40) | v55)
      {
        if (v55)
        {
          v57 = WGLogWidgets;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            WGStringFromWidgetLifeCycleSequenceState(2uLL);
            objc_claimAutoreleasedReturnValue();
            [WGWidgetHostingViewController _requestRemoteViewControllerForSequence:completionHander:];
          }

          objc_initWeak(&location, self);
          if (v51)
          {
            v58 = objc_loadWeakRetained(&location);
            v51[2](v51, v58, v14);
          }

          objc_destroyWeak(&location);
          goto LABEL_63;
        }
      }

      else
      {
        v65 = [MEMORY[0x277CCA890] currentHandler];
        [v65 handleFailureInMethod:a2 object:self file:@"WGWidgetHostingViewController.m" lineNumber:871 description:{@"Invalid parameter not satisfying: %@", @"endTransitionBlock || error"}];
      }

      v66 = dispatch_semaphore_create(0);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_148;
      v75[3] = &unk_279ED1B78;
      v79 = v71;
      v76 = v19;
      v67 = v66;
      v80 = &v93;
      v81 = a2;
      v77 = v67;
      v78 = self;
      [(WGWidgetHostingViewController *)self _enqueueRequest:v75 inQueue:self->_proxyConnectionQueue trampolinedToMainQueue:1 withDescription:@"Requesting remote view controller"];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_177;
      v73[3] = &unk_279ED1BA0;
      v68 = v67;
      v74 = v68;
      [(WGWidgetHostingViewController *)self _enqueueRequest:v73 inQueue:self->_proxyConnectionQueue trampolinedToMainQueue:0 withDescription:@"Blocking proxy connetion queue on connection semaphore"];

LABEL_63:
      goto LABEL_64;
    }

    if (v11)
    {
      v34 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
        v36 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v37 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        *v99 = 138543874;
        *&v99[4] = v36;
        *&v99[12] = 2050;
        *&v99[14] = self;
        *&v99[22] = 2114;
        v100 = v37;
        _os_log_impl(&dword_27425E000, v35, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't request remote view controller that is blacklisted", v99, 0x20u);
      }
    }

    else if (v12)
    {
      v38 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
        v40 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v41 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        *v99 = 138543874;
        *&v99[4] = v40;
        *&v99[12] = 2050;
        *&v99[14] = self;
        *&v99[22] = 2114;
        v100 = v41;
        _os_log_impl(&dword_27425E000, v39, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't request remote view controller that is locked out", v99, 0x20u);
      }
    }

    objc_initWeak(v99, self);
    if (v8)
    {
      v42 = objc_loadWeakRetained(v99);
      v8[2](v8, v42, v7);
    }
  }

  else
  {
    if (v9)
    {
      if ((v10 & 1) == 0)
      {
        v23 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          v25 = [(WGWidgetHostingViewController *)self widgetIdentifier];
          v26 = [(WGWidgetHostingViewController *)self _containerIdentifier];
          v27 = WGStringFromWidgetLifeCycleSequenceState(1uLL);
          *v99 = 138544386;
          *&v99[4] = v25;
          *&v99[12] = 2050;
          *&v99[14] = self;
          *&v99[22] = 2114;
          v100 = v26;
          *v101 = 2114;
          *&v101[2] = v7;
          *&v101[10] = 2114;
          *&v101[12] = v27;
          _os_log_impl(&dword_27425E000, v24, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't request remote view controller as argument sequence (%{public}@) isn't in expected state (%{public}@)", v99, 0x34u);
        }
      }
    }

    else
    {
      v28 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        v30 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v31 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        v32 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
        *v99 = 138544386;
        *&v99[4] = v30;
        *&v99[12] = 2050;
        *&v99[14] = self;
        *&v99[22] = 2114;
        v100 = v31;
        *v101 = 2114;
        *&v101[2] = v7;
        *&v101[10] = 2114;
        *&v101[12] = v32;
        _os_log_impl(&dword_27425E000, v29, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't request remote view controller as argument sequence (%{public}@) doesn't match active sequence (%{public}@)", v99, 0x34u);
      }
    }

    objc_initWeak(v99, self);
    if (v8)
    {
      v33 = objc_loadWeakRetained(v99);
      v8[2](v8, v33, v7);
    }
  }

  objc_destroyWeak(v99);
LABEL_65:
}

void __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v5 widgetIdentifier];
    v11 = [v5 _containerIdentifier];
    v12 = *(a1 + 32);
    v27 = 138544130;
    v28 = v10;
    v29 = 2050;
    v30 = v5;
    v31 = 2114;
    v32 = v11;
    v33 = 2114;
    v34 = v12;
    _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Handling connection for sequence '%{public}@'", &v27, 0x2Au);
  }

  if (!v6)
  {
    v13 = [v5 _isActiveSequence:*(a1 + 32)];
    v14 = [*(a1 + 32) isCurrentStateAtLeast:1];
    if (v13 && v14)
    {
      v15 = (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
      if (!v15)
      {
        goto LABEL_19;
      }

      v16 = WGLogWidgets;
      if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v17 = v16;
      v18 = [v5 widgetIdentifier];
      v19 = [v5 _containerIdentifier];
      v20 = WGStringFromWidgetLifeCycleSequenceState(*(a1 + 64));
      v27 = 138544386;
      v28 = v18;
      v29 = 2050;
      v30 = v5;
      v31 = 2114;
      v32 = v19;
      v33 = 2114;
      v34 = v20;
      v35 = 2114;
      v36 = v15;
      _os_log_impl(&dword_27425E000, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Encountered error transitioning to target state '%{public}@': %{public}@", &v27, 0x34u);
    }

    else
    {
      if (v13)
      {
        if ((v14 & 1) != 0 || (v21 = WGLogWidgets, !os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT)))
        {
LABEL_20:
          v26 = *(*(*(a1 + 56) + 8) + 40);
          if (v26)
          {
            (*(v26 + 16))(v26, v5, *(a1 + 32));
          }

          goto LABEL_22;
        }

        v15 = v21;
        v17 = [v5 widgetIdentifier];
        v18 = [v5 _containerIdentifier];
        v22 = *(a1 + 32);
        v19 = WGStringFromWidgetLifeCycleSequenceState(1uLL);
        v27 = 138544386;
        v28 = v17;
        v29 = 2050;
        v30 = v5;
        v31 = 2114;
        v32 = v18;
        v33 = 2114;
        v34 = v22;
        v35 = 2114;
        v36 = v19;
        v23 = "<%{public}@: %{public}p; container: %{public}@> Argument sequence (%{public}@) isn't in expected state (%{public}@)";
      }

      else
      {
        v24 = WGLogWidgets;
        if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v15 = v24;
        v17 = [v5 widgetIdentifier];
        v18 = [v5 _containerIdentifier];
        v25 = *(a1 + 32);
        v19 = [v5 _activeLifeCycleSequence];
        v27 = 138544386;
        v28 = v17;
        v29 = 2050;
        v30 = v5;
        v31 = 2114;
        v32 = v18;
        v33 = 2114;
        v34 = v25;
        v35 = 2114;
        v36 = v19;
        v23 = "<%{public}@: %{public}p; container: %{public}@> Argument sequence (%{public}@) doesn't match active sequence (%{public}@)";
      }

      _os_log_impl(&dword_27425E000, v15, OS_LOG_TYPE_DEFAULT, v23, &v27, 0x34u);
    }

LABEL_19:
    goto LABEL_20;
  }

LABEL_22:
}

void __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_147(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 _proxyRequestQueue];
  ResumeQueueIfNecessary(v6);

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

void __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_148(uint64_t a1, void *a2, void *a3, int a4)
{
  v69[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v7 _isActiveSequence:v8];
  v10 = [v8 isCurrentState:1];
  if (a4 && v9 && v10)
  {
    v11 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v7 widgetIdentifier];
      v14 = [v7 _containerIdentifier];
      *buf = 138543874;
      v60 = v13;
      v61 = 2050;
      v62 = v7;
      v63 = 2114;
      v64 = v14;
      _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Establishing remote view controller connection...", buf, 0x20u);
    }

    [v7 _setRemoteViewControllerConnectionHandler:*(a1 + 56)];
    [v7 _setConnectionState:1];
    v15 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    v16 = [MEMORY[0x277CBEB38] dictionary];
    v17 = [v7 widgetIdentifier];
    if (!v17 && os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_148_cold_1();
    }

    if ([v17 length])
    {
      [v16 setObject:v17 forKey:*MEMORY[0x277CD9358]];
    }

    v18 = [v7 _containerIdentifier];
    if (![v18 length])
    {
      v19 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [v7 widgetIdentifier];
        v22 = [v7 _containerIdentifier];
        *buf = 138543874;
        v60 = v21;
        v61 = 2050;
        v62 = v7;
        v63 = 2114;
        v64 = v22;
        _os_log_impl(&dword_27425E000, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> No container identifier", buf, 0x20u);
      }
    }

    if ([v18 length])
    {
      [v16 setObject:v18 forKey:*MEMORY[0x277CD9310]];
    }

    v23 = [v7 widgetInfo];
    v24 = [v23 isLinkedOnOrAfterSystemVersion:@"10.0"];

    if ((v24 & 1) == 0)
    {
      [v7 _marginInsets];
      v25 = NSStringFromUIEdgeInsets(v72);
      [v16 setObject:v25 forKey:*MEMORY[0x277CD9318]];
    }

    [v7 _maxSizeForDisplayMode:0];
    v26 = NSStringFromCGSize(v70);
    [v16 setObject:v26 forKey:*MEMORY[0x277CD9338]];

    [v7 _maxSizeForDisplayMode:1];
    v27 = NSStringFromCGSize(v71);
    [v16 setObject:v27 forKey:*MEMORY[0x277CD9340]];

    v28 = [v7 view];
    [v28 bounds];
    v29 = NSStringFromCGRect(v73);
    [v16 setObject:v29 forKey:*MEMORY[0x277CD9328]];

    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "userSpecifiedDisplayMode")}];
    [v16 setObject:v30 forKey:*MEMORY[0x277CD9320]];

    v31 = [v7 _appearState] != 0;
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:v31];
    [v16 setObject:v32 forKey:*MEMORY[0x277CD9348]];

    [v7 _layoutMargins];
    v33 = NSStringFromUIEdgeInsets(v74);
    [v16 setObject:v33 forKey:*MEMORY[0x277CD9330]];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:__WGWidgetSnapshotDebugLabelsEnabled];
    [v16 setObject:v34 forKey:*MEMORY[0x277CD9350]];

    [v15 setUserInfo:v16];
    v69[0] = v15;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:1];
    v36 = *(a1 + 32);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_156;
    v53[3] = &unk_279ED1B50;
    v54 = v7;
    v55 = *(a1 + 40);
    v37 = *(a1 + 32);
    v58 = *(a1 + 64);
    v38 = *(a1 + 48);
    v56 = v37;
    v57 = v38;
    [v36 instantiateViewControllerWithInputItems:v35 connectionHandler:v53];

    goto LABEL_34;
  }

  if (a4)
  {
    if (v9)
    {
      if (v10)
      {
        goto LABEL_30;
      }

      v39 = WGLogWidgets;
      if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v40 = v39;
      v41 = [v7 widgetIdentifier];
      v42 = [v7 _containerIdentifier];
      v43 = WGStringFromWidgetLifeCycleSequenceState(1uLL);
      *buf = 138544386;
      v60 = v41;
      v61 = 2050;
      v62 = v7;
      v63 = 2114;
      v64 = v42;
      v65 = 2114;
      v66 = v8;
      v67 = 2114;
      v68 = v43;
      v44 = "<%{public}@: %{public}p; container: %{public}@> Can't request remote view controller as argument sequence (%{public}@) isn't in expected state (%{public}@)";
      goto LABEL_28;
    }

    v46 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v46;
      v41 = [v7 widgetIdentifier];
      v42 = [v7 _containerIdentifier];
      v43 = [v7 _activeLifeCycleSequence];
      *buf = 138544386;
      v60 = v41;
      v61 = 2050;
      v62 = v7;
      v63 = 2114;
      v64 = v42;
      v65 = 2114;
      v66 = v8;
      v67 = 2114;
      v68 = v43;
      v44 = "<%{public}@: %{public}p; container: %{public}@> Can't request remote view controller as argument sequence (%{public}@) doesn't match active sequence (%{public}@)";
LABEL_28:
      _os_log_impl(&dword_27425E000, v40, OS_LOG_TYPE_DEFAULT, v44, buf, 0x34u);

      goto LABEL_29;
    }
  }

  else
  {
    v45 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v45;
      v41 = [v7 widgetIdentifier];
      v42 = [v7 _containerIdentifier];
      *buf = 138543874;
      v60 = v41;
      v61 = 2050;
      v62 = v7;
      v63 = 2114;
      v64 = v42;
      _os_log_impl(&dword_27425E000, v40, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't request remote view controller as queue is no longer valid", buf, 0x20u);
LABEL_29:
    }
  }

LABEL_30:
  v47 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v47;
    v49 = [v7 widgetIdentifier];
    v50 = [v7 _containerIdentifier];
    v51 = *(a1 + 40);
    *buf = 138544130;
    v60 = v49;
    v61 = 2050;
    v62 = v7;
    v63 = 2114;
    v64 = v50;
    v65 = 2114;
    v66 = v51;
    _os_log_impl(&dword_27425E000, v48, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Signaling connection semaphore (%{public}@)", buf, 0x2Au);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v52 = *(*(*(a1 + 64) + 8) + 40);
  if (v52)
  {
    (*(v52 + 16))(v52, v7, v8);
  }

LABEL_34:
}

void __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_156(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = v10;
    v13 = [v11 widgetIdentifier];
    v14 = *(a1 + 32);
    v15 = [v14 _containerIdentifier];
    *buf = 138543874;
    v31 = v13;
    v32 = 2050;
    v33 = v14;
    v34 = 2114;
    v35 = v15;
    _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Extension called handler", buf, 0x20u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_157;
  block[3] = &unk_279ED1B28;
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v24 = v7;
  v25 = v9;
  v16 = *(a1 + 48);
  v29 = *(a1 + 64);
  v17 = *(a1 + 56);
  v26 = v16;
  v27 = v17;
  v28 = v8;
  v18 = v8;
  v19 = v9;
  v20 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_157(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 widgetIdentifier];
    v6 = *(a1 + 32);
    v7 = [v6 _containerIdentifier];
    *buf = 138543874;
    v51 = v5;
    v52 = 2050;
    v53 = v6;
    v54 = 2114;
    v55 = v7;
    _os_log_impl(&dword_27425E000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Handling new connection", buf, 0x20u);
  }

  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 widgetIdentifier];
    v12 = *(a1 + 32);
    v13 = [v12 _containerIdentifier];
    v14 = *(a1 + 40);
    *buf = 138544130;
    v51 = v11;
    v52 = 2050;
    v53 = v12;
    v54 = 2114;
    v55 = v13;
    v56 = 2114;
    v57 = v14;
    _os_log_impl(&dword_27425E000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Signaling connection semaphore (%{public}@)", buf, 0x2Au);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  [*(a1 + 32) _setExtensionRequest:*(a1 + 48)];
  if (*(a1 + 56))
  {
    v15 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = v15;
      v18 = [v16 widgetIdentifier];
      v19 = *(a1 + 32);
      v20 = [v19 _containerIdentifier];
      v21 = [*(a1 + 64) identifier];
      v22 = [*(a1 + 56) localizedDescription];
      *buf = 138544386;
      v51 = v18;
      v52 = 2050;
      v53 = v19;
      v54 = 2114;
      v55 = v20;
      v56 = 2114;
      v57 = v21;
      v58 = 2114;
      v59 = v22;
      _os_log_impl(&dword_27425E000, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Unable to load widget view controller with service (%{public}@): %{public}@", buf, 0x34u);
    }

    v23 = *(a1 + 32);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_158;
    v46[3] = &unk_279ED1B00;
    v24 = &v47;
    v47 = *(a1 + 64);
    v25 = *(a1 + 56);
    v26 = *(a1 + 88);
    v48 = v25;
    v49 = v26;
    v27 = [*(a1 + 32) _proxyConnectionQueue];
    [v23 _enqueueRequest:v46 inQueue:v27 trampolinedToMainQueue:1 withDescription:@"Finishing disconnection for failed connection"];

    v28 = v48;
  }

  else
  {
    v29 = [*(a1 + 32) _extensionRequest];

    if (!v29)
    {
      __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_157_cold_1(a1);
    }

    v30 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      v32 = v30;
      v33 = [v31 widgetIdentifier];
      v34 = *(a1 + 32);
      v35 = [v34 _containerIdentifier];
      *buf = 138543874;
      v51 = v33;
      v52 = 2050;
      v53 = v34;
      v54 = 2114;
      v55 = v35;
      _os_log_impl(&dword_27425E000, v32, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Established remote view controller connection", buf, 0x20u);
    }

    [*(a1 + 32) _setConnectionState:0];
    [*(a1 + 32) _setRemoteViewController:*(a1 + 80)];
    v36 = [*(a1 + 32) _remoteViewController];
    [v36 setInheritsSecurity:1];

    v37 = [*(a1 + 32) _remoteViewController];
    [v37 _setValid:1];

    v38 = [*(a1 + 32) _remoteViewController];
    [v38 setManagingHost:*(a1 + 32)];

    v39 = [*(a1 + 32) _remoteViewController];
    [v39 setServiceViewShouldShareTouchesWithHost:1];

    v40 = [*(a1 + 32) _remoteViewController];
    [v40 _setShouldUpdateRemoteTextEffectsWindow:0];

    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_170;
    v44 = &unk_279ED0948;
    v24 = &v45;
    v45 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], &v41);
    v28 = [*(a1 + 32) _remoteViewControllerConnectionHandler];
    [*(a1 + 32) _setRemoteViewControllerConnectionHandler:0];
    if (v28)
    {
      v28[2](v28, *(a1 + 32), *(a1 + 56));
    }
  }
}

void __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_158(uint64_t a1, void *a2, void *a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v9 = [v6 identifier];
  v10 = [*(a1 + 40) localizedDescription];
  v11 = [v5 stringWithFormat:@"Unable to load widget view controller with service (%@): %@", v9, v10];

  v12 = MEMORY[0x277CCA9B8];
  v13 = *MEMORY[0x277CCA7E8];
  v17[0] = *MEMORY[0x277CCA450];
  v17[1] = v13;
  v14 = *(a1 + 40);
  v18[0] = v11;
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v16 = [v12 errorWithDomain:@"WGWidgetHostingViewControllerErrorDomain" code:0 userInfo:v15];

  [v8 _finishDisconnectingRemoteViewControllerForSequence:v7 error:v16 completion:*(*(*(a1 + 48) + 8) + 40)];
}

void __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_170(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 remoteViewControllerDidConnectForWidget:*(a1 + 32)];
  }
}

void __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_177(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 widgetIdentifier];
    v10 = [v5 _containerIdentifier];
    v11 = *(a1 + 32);
    v17 = 138544130;
    v18 = v9;
    v19 = 2050;
    v20 = v5;
    v21 = 2114;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_27425E000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Waiting on connection semaphore (%{public}@)", &v17, 0x2Au);
  }

  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v12 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v5 widgetIdentifier];
    v15 = [v5 _containerIdentifier];
    v16 = *(a1 + 32);
    v17 = 138544130;
    v18 = v14;
    v19 = 2050;
    v20 = v5;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    _os_log_impl(&dword_27425E000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> No longer waiting on connection semaphore (%{public}@)", &v17, 0x2Au);
  }
}

- (void)_setImplementsPerformUpdate:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_implementsPerformUpdate != a3)
  {
    self->_implementsPerformUpdate = a3;
    v4 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v7 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v8 = v7;
      implementsPerformUpdate = self->_implementsPerformUpdate;
      v11 = 138544130;
      v12 = v6;
      v13 = 2050;
      if (implementsPerformUpdate)
      {
        v10 = @"does";
      }

      else
      {
        v10 = @"does not";
      }

      v14 = self;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_27425E000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Recording that widget %{public}@ implement 'performUpdate...'", &v11, 0x2Au);
    }
  }
}

- (void)_performUpdateForSequence:(id)a3 withCompletionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(WGWidgetHostingViewController *)self implementsPerformUpdate])
  {
    v6 = [(WGWidgetHostingViewController *)self _didUpdate];
    v7 = 1;
    if (v5)
    {
      if (!v6)
      {
        v8 = [(WGWidgetHostingViewController *)self _remoteViewController];
        v9 = [v8 _isValid];

        if (v9)
        {
          [(WGWidgetHostingViewController *)self _setDidUpdate:1];
          v10 = WGLogWidgets;
          if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v10;
            v12 = [(WGWidgetHostingViewController *)self widgetIdentifier];
            v13 = [(WGWidgetHostingViewController *)self _containerIdentifier];
            *buf = 138543874;
            v31 = v12;
            v32 = 2050;
            v33 = self;
            v34 = 2114;
            v35 = v13;
            _os_log_impl(&dword_27425E000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Performing update", buf, 0x20u);
          }

          objc_initWeak(buf, self);
          v14 = dispatch_get_global_queue(25, 0);
          v7 = v14 == 0;
          if (v14)
          {
            v15 = dispatch_semaphore_create(0);
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke;
            v26[3] = &unk_279ED1BF0;
            objc_copyWeak(&v29, buf);
            v16 = v15;
            v27 = v16;
            v17 = v5;
            v28 = v17;
            v18 = MEMORY[0x2743E8C10](v26);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke_2;
            block[3] = &unk_279ED1C40;
            objc_copyWeak(&v25, buf);
            v22 = v16;
            v23 = v18;
            v24 = v17;
            v19 = v16;
            v20 = v18;
            dispatch_async(v14, block);

            objc_destroyWeak(&v25);
            objc_destroyWeak(&v29);
          }

          objc_destroyWeak(buf);
        }
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (v5 && v7)
  {
    (*(v5 + 2))(v5, 2, [(WGWidgetHostingViewController *)self implementsPerformUpdate]);
  }
}

void __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = dispatch_semaphore_signal(*(a1 + 32));
  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [WeakRetained widgetIdentifier];
    v11 = [WeakRetained _containerIdentifier];
    v12 = v11;
    v13 = @"did wake";
    *buf = 138544130;
    v19 = 2050;
    v18 = v10;
    if (!v7)
    {
      v13 = @"didn't wake";
    }

    v20 = WeakRetained;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Signaled update semaphore - %{public}@", buf, 0x2Au);
  }

  if (v7)
  {
    [WeakRetained _setImplementsPerformUpdate:a3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke_193;
    block[3] = &unk_279ED1BC8;
    v15 = *(a1 + 40);
    v16 = a2;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke_193(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = [*(a1 + 32) implementsPerformUpdate];
  v4 = *(v2 + 16);

  return v4(v2, v1, v3);
}

void __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke_3;
  block[3] = &unk_279ED0E68;
  objc_copyWeak(&v10, (a1 + 56));
  v9 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v2, v3))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke_6;
    v5[3] = &unk_279ED0E68;
    objc_copyWeak(&v7, (a1 + 56));
    v6 = *(a1 + 48);
    v4 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], v5);

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&v10);
}

void __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke_4;
  v3[3] = &unk_279ED1A10;
  v4 = *(a1 + 32);
  [WeakRetained _enqueueRemoteServiceRequest:v3 withDescription:@"Performing update"];
}

void __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = [a2 _remoteViewController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke_5;
    v9[3] = &unk_279ED1C18;
    v10 = *(a1 + 32);
    [v5 _performUpdateWithReplyHandler:v9];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [a2 implementsPerformUpdate];
    v8 = *(v6 + 16);

    v8(v6, 2, v7);
  }
}

void __81__WGWidgetHostingViewController__performUpdateForSequence_withCompletionHandler___block_invoke_6(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [WeakRetained widgetIdentifier];
    v6 = [WeakRetained _containerIdentifier];
    v7 = MEMORY[0x2743E8C10](*(a1 + 32));
    v8 = 138544130;
    v9 = v5;
    v10 = 2050;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_27425E000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Update semaphore timed out - calling completion (%{public}@)", &v8, 0x2Au);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), 2, [WeakRetained implementsPerformUpdate]);
}

- (void)_updateWidgetWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(WGWidgetHostingViewController *)self _setIgnoringParentAppearState:1];
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__WGWidgetHostingViewController__updateWidgetWithCompletionHandler___block_invoke;
  v21[3] = &unk_279ED1C68;
  objc_copyWeak(&v23, &location);
  v5 = v4;
  v22 = v5;
  v6 = MEMORY[0x2743E8C10](v21);
  v7 = [(WGWidgetHostingViewController *)self implementsPerformUpdate];
  if (v7 && (-[WGWidgetHostingViewController _remoteViewController](self, "_remoteViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 _isValid], v8, (v9 & 1) == 0))
  {
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    dispatch_group_enter(v10);
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__WGWidgetHostingViewController__updateWidgetWithCompletionHandler___block_invoke_2;
    v18[3] = &unk_279ED1C90;
    v19 = v11;
    v20 = v10;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__WGWidgetHostingViewController__updateWidgetWithCompletionHandler___block_invoke_5;
    v14[3] = &unk_279ED1A60;
    v12 = v19;
    v15 = v12;
    v13 = v20;
    v16 = v13;
    v17 = v6;
    [(WGWidgetHostingViewController *)self _beginSequenceWithReason:@"requested update" completion:v18 updateHandler:v14];
  }

  else
  {
    v6[2](v6, 2, v7);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

uint64_t __68__WGWidgetHostingViewController__updateWidgetWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setIgnoringParentAppearState:0];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __68__WGWidgetHostingViewController__updateWidgetWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__WGWidgetHostingViewController__updateWidgetWithCompletionHandler___block_invoke_3;
  block[3] = &unk_279ED0B58;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_group_notify(v7, MEMORY[0x277D85CD0], block);
}

void __68__WGWidgetHostingViewController__updateWidgetWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) wg_isAppearingOrAppeared])
  {
    v2 = *(a1 + 48);

    dispatch_group_leave(v2);
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __68__WGWidgetHostingViewController__updateWidgetWithCompletionHandler___block_invoke_4;
    v5[3] = &unk_279ED1970;
    v6 = *(a1 + 48);
    [v3 _endSequence:v4 withReason:@"requested update" completion:v5];
  }
}

void __68__WGWidgetHostingViewController__updateWidgetWithCompletionHandler___block_invoke_5(uint64_t a1, uint64_t a2, char a3)
{
  dispatch_group_leave(*(a1 + 32));
  dispatch_group_leave(*(a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__WGWidgetHostingViewController__updateWidgetWithCompletionHandler___block_invoke_6;
  block[3] = &unk_279ED1CB8;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = a2;
  v10 = a3;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);
}

- (BOOL)_shouldRemoveSnapshotWhenNotVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained shouldRemoveSnapshotWhenNotVisibleForWidget:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_captureSnapshotAndBeginDisappearanceTransitionForSequence:(id)a3 completionHandler:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(WGWidgetHostingViewController *)self _isActiveSequence:v6])
  {
    v11 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v14 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v15 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      *location = 138544386;
      *&location[4] = v13;
      v32 = 2050;
      v33 = self;
      v34 = 2114;
      v35 = v14;
      v36 = 2114;
      v37 = v6;
      v38 = 2114;
      v39 = v15;
      _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't begin disappearance transition as argument sequence (%{public}@) doesn't match active sequence (%{public}@)", location, 0x34u);
    }

    objc_initWeak(location, self);
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained(location);
      v7[2](v7, WeakRetained, v6);
    }

    goto LABEL_13;
  }

  if (![objc_opt_class() _canWidgetHostCaptureSnapshotForSequence:v6])
  {
    v17 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v20 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      *location = 138544130;
      *&location[4] = v19;
      v32 = 2050;
      v33 = self;
      v34 = 2114;
      v35 = v20;
      v36 = 2114;
      v37 = v6;
      _os_log_impl(&dword_27425E000, v18, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Sequence already at satisfactory state: %{public}@", location, 0x2Au);
    }

    objc_initWeak(location, self);
    if (v7)
    {
      v21 = objc_loadWeakRetained(location);
      v7[2](v7, v21, v6);
    }

LABEL_13:
    objc_destroyWeak(location);
    goto LABEL_21;
  }

  v8 = [v6 transitionToState:5];
  if (v8)
  {
    v9 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [WGWidgetHostingViewController _captureSnapshotAndBeginDisappearanceTransitionForSequence:v9 completionHandler:?];
    }

    objc_initWeak(location, self);
    if (v7)
    {
      v10 = objc_loadWeakRetained(location);
      v7[2](v7, v10, v6);
    }

    objc_destroyWeak(location);
  }

  else
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke;
    v29[3] = &unk_279ED1A10;
    v22 = v7;
    v30 = v22;
    v23 = MEMORY[0x2743E8C10](v29);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_5;
    v25[3] = &unk_279ED1D80;
    v28 = 5;
    v26 = v23;
    v27 = v22;
    v24 = v23;
    [(WGWidgetHostingViewController *)self _enqueueRemoteServiceRequest:v25 withDescription:@"Requesting snapshot"];
  }

LABEL_21:
}

void __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 widgetIdentifier];
    v12 = [v7 _containerIdentifier];
    v13 = [v7 _viewWillDisappearSemaphore];
    *buf = 138544130;
    v20 = v11;
    v21 = 2050;
    v22 = v7;
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&dword_27425E000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Releasing '_viewWillDisappearSemaphore' (%{public}@)", buf, 0x2Au);
  }

  [v7 _setViewWillDisappearSemaphore:0];
  if (a4)
  {
    [v7 _removeAllSnapshotFilesForActiveDisplayMode];
    v14 = [v7 _diskWriteQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_202;
    v16[3] = &unk_279ED14A8;
    v17 = v7;
    v18 = *(a1 + 32);
    dispatch_async(v14, v16);
  }

  else
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      (*(v15 + 16))(v15, v7, v8);
    }
  }
}

void __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_202(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_2;
  v3[3] = &unk_279ED1D30;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 _captureLayerTree:v3];
}

void __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_3;
  v11[3] = &unk_279ED1D08;
  v12 = v6;
  v13 = v7;
  v8 = *(a1 + 32);
  v14 = *(a1 + 40);
  v9 = v7;
  v10 = v6;
  [v8 _enqueueRemoteServiceRequest:v11 withDescription:@"Snapshot completion"];
}

void __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a4 && (v9 = *(a1 + 32)) != 0 && !*(a1 + 40))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_4;
    v11[3] = &unk_279ED1CE0;
    v12 = v7;
    v14 = *(a1 + 48);
    v13 = v8;
    [v12 _packageViewFromURL:v9 reply:v11];
  }

  else
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, v7, v8);
    }
  }
}

void __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7 && !v5)
  {
    [*(a1 + 32) _setSnapshotView:v7];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32), *(a1 + 40));
  }
}

void __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3, int a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (!a4 || ([v7 _viewWillDisappearSemaphore], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
LABEL_3:
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v7, v8);
    }

    goto LABEL_5;
  }

  v11 = [v7 _isActiveSequence:v8];
  v12 = [v8 isCurrentState:*(a1 + 48)];
  if (!v11 || !v12)
  {
    if (v11)
    {
      if (v12)
      {
        goto LABEL_3;
      }

      v15 = WGLogWidgets;
      if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_3;
      }

      v16 = v15;
      v17 = [v7 widgetIdentifier];
      v18 = [v7 _containerIdentifier];
      v19 = WGStringFromWidgetLifeCycleSequenceState(*(a1 + 48));
      *buf = 138544386;
      v33 = v17;
      v34 = 2050;
      v35 = v7;
      v36 = 2114;
      v37 = v18;
      v38 = 2114;
      v39 = v8;
      v40 = 2114;
      v41 = v19;
      v20 = "<%{public}@: %{public}p; container: %{public}@> Can't continue disappearance transition as argument sequence (%{public}@) isn't in expected state (%{public}@)";
    }

    else
    {
      v21 = WGLogWidgets;
      if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_3;
      }

      v16 = v21;
      v17 = [v7 widgetIdentifier];
      v18 = [v7 _containerIdentifier];
      v19 = [v7 _activeLifeCycleSequence];
      *buf = 138544386;
      v33 = v17;
      v34 = 2050;
      v35 = v7;
      v36 = 2114;
      v37 = v18;
      v38 = 2114;
      v39 = v8;
      v40 = 2114;
      v41 = v19;
      v20 = "<%{public}@: %{public}p; container: %{public}@> Can't continue disappearance transition as argument sequence (%{public}@) doesn't match active sequence (%{public}@)";
    }

    _os_log_impl(&dword_27425E000, v16, OS_LOG_TYPE_DEFAULT, v20, buf, 0x34u);

    goto LABEL_3;
  }

  v13 = dispatch_semaphore_create(0);
  [v7 _setViewWillDisappearSemaphore:v13];
  v14 = dispatch_get_global_queue(25, 0);
  if (v14)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_6;
    v27[3] = &unk_279ED1D58;
    v28 = v7;
    v29 = v13;
    v31 = *(a1 + 32);
    v30 = v8;
    dispatch_async(v14, v27);
  }

  else
  {
    v22 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [v7 widgetIdentifier];
      v25 = [v7 _containerIdentifier];
      *buf = 138543874;
      v33 = v24;
      v34 = 2050;
      v35 = v7;
      v36 = 2114;
      v37 = v25;
      _os_log_impl(&dword_27425E000, v23, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Failed to obtain a queue", buf, 0x20u);
    }

    v26 = *(a1 + 32);
    if (v26)
    {
      (*(v26 + 16))(v26, v7, v8, 0);
    }
  }

LABEL_5:
}

void __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_6(id *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_7;
  block[3] = &unk_279ED0A40;
  v24 = a1[4];
  v25 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], block);
  v2 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = [v3 widgetIdentifier];
    v6 = a1[4];
    v7 = [v6 _containerIdentifier];
    v8 = a1[5];
    *buf = 138544130;
    v27 = v5;
    v28 = 2050;
    v29 = v6;
    v30 = 2114;
    v31 = v7;
    v32 = 2114;
    v33 = v8;
    _os_log_impl(&dword_27425E000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> About to wait on '_viewWillDisappearSemaphore' (%{public}@)", buf, 0x2Au);
  }

  v9 = a1[5];
  v10 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    v11 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      v13 = v11;
      v14 = [v12 widgetIdentifier];
      v15 = a1[4];
      v16 = [v15 _containerIdentifier];
      v17 = a1[5];
      *buf = 138544130;
      v27 = v14;
      v28 = 2050;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      v32 = 2114;
      v33 = v17;
      _os_log_impl(&dword_27425E000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> _viewWillDisappearSemaphore (%{public}@) timed out!", buf, 0x2Au);
    }
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_208;
  v19[3] = &unk_279ED19C0;
  v20 = a1[4];
  v22 = a1[7];
  v21 = a1[6];
  v18 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v19);
}

uint64_t __110__WGWidgetHostingViewController__captureSnapshotAndBeginDisappearanceTransitionForSequence_completionHandler___block_invoke_208(uint64_t a1)
{
  [*(a1 + 32) delegate];

  v2 = [*(a1 + 32) view];
  [v2 window];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)_snapshotIdentifierForLayoutMode:(int64_t)a3
{
  [(WGWidgetHostingViewController *)self _maxSizeForDisplayMode:[(WGWidgetHostingViewController *)self activeDisplayMode]];
  v6 = v5;
  v7 = MEMORY[0x277CCACA8];
  v8 = [(WGWidgetHostingViewController *)self widgetIdentifier];
  v9 = WGShortStringFromLayoutMode(a3);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v6];
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = [v11 localeIdentifier];
  v13 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  v14 = NCStringFromWidgetDisplayMode();
  v15 = [(WGWidgetHostingViewController *)self traitCollection];
  v16 = WGStringFromUserInterfaceStyle([v15 userInterfaceStyle]);
  v17 = [v7 stringWithFormat:@"%@-%@-%@-%@-%@-%@-%@", v8, v9, v10, v12, v13, v14, v16];

  return v17;
}

- (id)_widgetSnapshotURLForSnapshotIdentifier:(id)a3 ensuringDirectoryExists:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 stringByAppendingPathExtension:@"ca"];
  v7 = MEMORY[0x277CBEBC0];
  v8 = [(WGWidgetHostingViewController *)self widgetIdentifier];
  v9 = WGWidgetCachePathForWidgetWithBundleIdentifier(v8, @"Snapshots", v4);
  v10 = [v7 fileURLWithPath:v9 isDirectory:1];
  v11 = [v10 URLByAppendingPathComponent:v6 isDirectory:1];

  return v11;
}

- (id)_widgetSnapshotURLForLayoutMode:(int64_t)a3 ensuringDirectoryExists:(BOOL)a4
{
  v4 = a4;
  v6 = [(WGWidgetHostingViewController *)self _snapshotIdentifierForLayoutMode:a3];
  v7 = [(WGWidgetHostingViewController *)self _widgetSnapshotURLForSnapshotIdentifier:v6 ensuringDirectoryExists:v4];

  return v7;
}

- (void)_removeItemAtURL:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = 0;
    v6 = [v5 removeItemAtURL:v4 error:&v16];
    v7 = v16;

    v8 = WGLogWidgets;
    v9 = os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        v10 = v8;
        v11 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v12 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        *buf = 138544130;
        v18 = v11;
        v19 = 2050;
        v20 = self;
        v21 = 2114;
        v22 = v12;
        v23 = 2114;
        v24 = v4;
        v13 = "<%{public}@: %{public}p; container: %{public}@> Removed item at %{public}@";
        v14 = v10;
        v15 = 42;
LABEL_7:
        _os_log_impl(&dword_27425E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }

    else if (v9)
    {
      v10 = v8;
      v11 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v12 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      *buf = 138544386;
      v18 = v11;
      v19 = 2050;
      v20 = self;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v4;
      v25 = 2114;
      v26 = v7;
      v13 = "<%{public}@: %{public}p; container: %{public}@> Failed to remove item at %{public}@: %{public}@";
      v14 = v10;
      v15 = 52;
      goto LABEL_7;
    }
  }
}

- (void)_removeItemAsynchronouslyAtURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(WGWidgetHostingViewController *)self _diskWriteQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__WGWidgetHostingViewController__removeItemAsynchronouslyAtURL___block_invoke;
    block[3] = &unk_279ED09F0;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __64__WGWidgetHostingViewController__removeItemAsynchronouslyAtURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeItemAtURL:*(a1 + 32)];
}

- (void)_removeAllSnapshotFilesMatchingPredicate:(id)a3 dueToIssue:(BOOL)a4
{
  v4 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v10 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    v11 = v10;
    v12 = &stru_2883435D8;
    *buf = 138544130;
    v30 = 2050;
    v29 = v9;
    if (v4)
    {
      v12 = @" due to issue";
    }

    v31 = self;
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = v12;
    _os_log_impl(&dword_27425E000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Removing snapshots matching predicate%{public}@", buf, 0x2Au);
  }

  v13 = MEMORY[0x277CBEBC0];
  v14 = [(WGWidgetHostingViewController *)self widgetIdentifier];
  v15 = WGWidgetCachePathForWidgetWithBundleIdentifier(v14, @"Snapshots", 0);
  v16 = [v13 fileURLWithPath:v15 isDirectory:1];

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  objc_initWeak(buf, self);
  v18 = [(WGWidgetHostingViewController *)self _diskWriteQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__WGWidgetHostingViewController__removeAllSnapshotFilesMatchingPredicate_dueToIssue___block_invoke;
  block[3] = &unk_279ED1DA8;
  objc_copyWeak(&v26, buf);
  v23 = v17;
  v24 = v16;
  v25 = v6;
  v27 = v4;
  v19 = v6;
  v20 = v16;
  v21 = v17;
  dispatch_async(v18, block);

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

void __85__WGWidgetHostingViewController__removeAllSnapshotFilesMatchingPredicate_dueToIssue___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v37 = 0;
  v5 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v37];
  v6 = v37;
  if (v6)
  {
    v7 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [WeakRetained widgetIdentifier];
      v10 = [WeakRetained _containerIdentifier];
      v11 = *(a1 + 40);
      *buf = 138544386;
      v39 = v9;
      v40 = 2050;
      v41 = WeakRetained;
      v42 = 2114;
      v43 = v10;
      v44 = 2114;
      v45 = v11;
      v46 = 2114;
      v47 = v6;
      _os_log_impl(&dword_27425E000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Encountered error obtaining contents of directory at URL '%{public}@': %{public}@", buf, 0x34u);
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v12 = [v5 filteredArrayUsingPredicate:?];

      v5 = v12;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = v5;
    v13 = [v5 countByEnumeratingWithState:&v33 objects:v48 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      obj = v5;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          v18 = [WeakRetained _snapshotView];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 snapshotIdentifier];
            v21 = [WeakRetained _widgetSnapshotURLForSnapshotIdentifier:v20 ensuringDirectoryExists:0];
            if (v21 && [v17 isEqual:v21])
            {
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __85__WGWidgetHostingViewController__removeAllSnapshotFilesMatchingPredicate_dueToIssue___block_invoke_2;
              block[3] = &unk_279ED0948;
              block[4] = WeakRetained;
              dispatch_async(MEMORY[0x277D85CD0], block);
            }
          }

          v22 = [WeakRetained host];
          if (*(a1 + 64) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __85__WGWidgetHostingViewController__removeAllSnapshotFilesMatchingPredicate_dueToIssue___block_invoke_3;
            v28[3] = &unk_279ED0B58;
            v29 = v22;
            v30 = WeakRetained;
            v31 = v17;
            dispatch_async(MEMORY[0x277D85CD0], v28);
          }

          [WeakRetained _removeItemAtURL:v17];
          if (objc_opt_respondsToSelector())
          {
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __85__WGWidgetHostingViewController__removeAllSnapshotFilesMatchingPredicate_dueToIssue___block_invoke_4;
            v24[3] = &unk_279ED0B58;
            v25 = v22;
            v26 = WeakRetained;
            v27 = v17;
            dispatch_async(MEMORY[0x277D85CD0], v24);
          }
        }

        v5 = obj;
        v14 = [obj countByEnumeratingWithState:&v33 objects:v48 count:16];
      }

      while (v14);
    }

    v6 = 0;
  }
}

- (void)_removeAllSnapshotFilesDueToIssue:(BOOL)a3
{
  v3 = a3;
  v5 = [(WGWidgetHostingViewController *)self widgetIdentifier];
  v6 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__WGWidgetHostingViewController__removeAllSnapshotFilesDueToIssue___block_invoke;
  v9[3] = &unk_279ED1DD0;
  v10 = v5;
  v7 = v5;
  v8 = [v6 predicateWithBlock:v9];
  [(WGWidgetHostingViewController *)self _removeAllSnapshotFilesMatchingPredicate:v8 dueToIssue:v3];
}

uint64_t __67__WGWidgetHostingViewController__removeAllSnapshotFilesDueToIssue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

- (void)_removeAllSnapshotFilesForActiveDisplayMode
{
  v3 = [(WGWidgetHostingViewController *)self widgetIdentifier];
  v4 = [(WGWidgetHostingViewController *)self activeDisplayMode];
  v5 = v4 == 0;
  [(WGWidgetHostingViewController *)self _maxSizeForDisplayMode:v4];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v6];
  v8 = MEMORY[0x277CCAC30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__WGWidgetHostingViewController__removeAllSnapshotFilesForActiveDisplayMode__block_invoke;
  v12[3] = &unk_279ED1DF8;
  v13 = v3;
  v14 = v7;
  v15 = v5;
  v9 = v7;
  v10 = v3;
  v11 = [v8 predicateWithBlock:v12];
  [(WGWidgetHostingViewController *)self _removeAllSnapshotFilesMatchingPredicate:v11 dueToIssue:0];
}

uint64_t __76__WGWidgetHostingViewController__removeAllSnapshotFilesForActiveDisplayMode__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  if ([v3 hasPrefix:*(a1 + 32)] && objc_msgSend(v3, "containsString:", *(a1 + 40)))
  {
    v4 = NCStringFromWidgetDisplayMode();
    v5 = [v3 containsString:v4] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_removeAllSnapshotFilesInActiveDisplayModeForContentSizeCategory:(id)a3
{
  v4 = a3;
  v5 = [(WGWidgetHostingViewController *)self widgetIdentifier];
  v6 = [(WGWidgetHostingViewController *)self activeDisplayMode];
  v7 = MEMORY[0x277CCAC30];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__WGWidgetHostingViewController__removeAllSnapshotFilesInActiveDisplayModeForContentSizeCategory___block_invoke;
  v11[3] = &unk_279ED1DF8;
  v13 = v4;
  v14 = v6;
  v12 = v5;
  v8 = v4;
  v9 = v5;
  v10 = [v7 predicateWithBlock:v11];
  [(WGWidgetHostingViewController *)self _removeAllSnapshotFilesMatchingPredicate:v10 dueToIssue:0];
}

uint64_t __98__WGWidgetHostingViewController__removeAllSnapshotFilesInActiveDisplayModeForContentSizeCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  if ([v3 hasPrefix:*(a1 + 32)])
  {
    v4 = NCStringFromWidgetDisplayMode();
    if ([v3 containsString:v4])
    {
      v5 = [v3 containsString:*(a1 + 40)];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_removeAllSnapshotFilesInActiveDisplayModeForAllButActiveUserInterfaceStyle
{
  v3 = [(WGWidgetHostingViewController *)self widgetIdentifier];
  v4 = [(WGWidgetHostingViewController *)self activeDisplayMode];
  v5 = [(WGWidgetHostingViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = MEMORY[0x277CCAC30];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __108__WGWidgetHostingViewController__removeAllSnapshotFilesInActiveDisplayModeForAllButActiveUserInterfaceStyle__block_invoke;
  v10[3] = &unk_279ED1E20;
  v11 = v3;
  v12 = v4;
  v13 = v6;
  v8 = v3;
  v9 = [v7 predicateWithBlock:v10];
  [(WGWidgetHostingViewController *)self _removeAllSnapshotFilesMatchingPredicate:v9 dueToIssue:0];
}

uint64_t __108__WGWidgetHostingViewController__removeAllSnapshotFilesInActiveDisplayModeForAllButActiveUserInterfaceStyle__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  if ([v3 hasPrefix:*(a1 + 32)])
  {
    v4 = NCStringFromWidgetDisplayMode();
    if ([v3 containsString:v4])
    {
      v5 = WGStringFromUserInterfaceStyle(*(a1 + 48));
      v6 = [v3 containsString:v5] ^ 1;
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

- (void)_setSnapshotView:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_snapshotView != v5)
  {
    objc_storeStrong(&self->_snapshotView, a3);
    p_snapshotViewBounds = &self->_snapshotViewBounds;
    snapshotView = self->_snapshotView;
    if (snapshotView)
    {
      [(_WGCAPackageView *)snapshotView bounds];
      p_snapshotViewBounds->origin.x = v8;
      self->_snapshotViewBounds.origin.y = v9;
      self->_snapshotViewBounds.size.width = v10;
      self->_snapshotViewBounds.size.height = v11;
    }

    else
    {
      v12 = *(MEMORY[0x277CBF3A0] + 16);
      p_snapshotViewBounds->origin = *MEMORY[0x277CBF3A0];
      self->_snapshotViewBounds.size = v12;
    }

    v13 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v16 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v17 = self->_snapshotView;
      v18 = 138544130;
      v19 = v15;
      v20 = 2050;
      v21 = self;
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_27425E000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Set snapshot view: %{public}@", &v18, 0x2Au);
    }
  }
}

- (void)_invalidateSnapshotWithForce:(BOOL)a3 removingSnapshotFilesForActiveDisplayMode:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = v8;
  snapshotView = self->_snapshotView;
  if (!a3 && snapshotView && snapshotView == self->_contentProvidingView)
  {
    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }
  }

  else
  {
    v11 = snapshotView;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __122__WGWidgetHostingViewController__invalidateSnapshotWithForce_removingSnapshotFilesForActiveDisplayMode_completionHandler___block_invoke;
    v18[3] = &unk_279ED1E48;
    v12 = v11;
    v19 = v12;
    v21 = a3;
    v22 = a4;
    v20 = v9;
    v13 = MEMORY[0x2743E8C10](v18);
    if (v12 == self->_contentProvidingView)
    {
      v16 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      [(WGWidgetHostingViewController *)self _insertContentProvidingSubview:0 sequence:v16 completion:v13];
    }

    else
    {
      objc_initWeak(&v17, self);
      if (v13)
      {
        v14 = objc_loadWeakRetained(&v17);
        v15 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
        (v13)[2](v13, v14, v15);
      }

      objc_destroyWeak(&v17);
    }
  }
}

void __122__WGWidgetHostingViewController__invalidateSnapshotWithForce_removingSnapshotFilesForActiveDisplayMode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 _contentProvidingView];

  if (v4 != v5 || *(a1 + 48) == 1)
  {
    v6 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v3 widgetIdentifier];
      v9 = [v3 _containerIdentifier];
      v10 = NSStringFromBOOL();
      v11 = *(a1 + 32);
      v13 = 138544386;
      v14 = v8;
      v15 = 2050;
      v16 = v3;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_27425E000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Invalidating snapshot (force=%{public}@): %{public}@", &v13, 0x34u);
    }

    objc_removeAssociatedObjects(*(a1 + 32));
    [*(a1 + 32) removeFromSuperview];
    [v3 _setSnapshotView:0];
    if (*(a1 + 49) == 1)
    {
      [v3 _removeAllSnapshotFilesForActiveDisplayMode];
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v4 != v5);
  }
}

- (void)_captureLayerTree:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WGWidgetHostingViewController *)self isRemoteViewVisible])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__WGWidgetHostingViewController__captureLayerTree___block_invoke;
    v8[3] = &unk_279ED1A10;
    v9 = v4;
    [(WGWidgetHostingViewController *)self _enqueueRemoteServiceRequest:v8 withDescription:@"Encoding layer tree"];
    v5 = v9;
LABEL_5:

    goto LABEL_6;
  }

  if (v4)
  {
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"No visible remote view";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v6 errorWithDomain:@"WGWidgetHostingViewControllerErrorDomain" code:1 userInfo:v7];

    (*(v4 + 2))(v4, 0, -1, v5);
    goto LABEL_5;
  }

LABEL_6:
}

void __51__WGWidgetHostingViewController__captureLayerTree___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (!a4 || ([v7 _isEncodingLayerTree] & 1) != 0)
  {
    if (!*(a1 + 32))
    {
LABEL_8:
      [v7 _setEncodingLayerTree:0];
      goto LABEL_9;
    }

    v9 = @"Encoding request no longer valid";
    if (a4)
    {
      v9 = @"Already encoding snapshot";
    }

    v10 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = v9;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v9;
    v13 = [v11 dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v14 = [v10 errorWithDomain:@"WGWidgetHostingViewControllerErrorDomain" code:1 userInfo:v13];

    (*(*(a1 + 32) + 16))();
LABEL_7:

    goto LABEL_8;
  }

  [v7 _setEncodingLayerTree:1];
  if (![v7 isRemoteViewVisible])
  {
    if (!*(a1 + 32))
    {
      goto LABEL_8;
    }

    v17 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"No visible remote view";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v14 = [v17 errorWithDomain:@"WGWidgetHostingViewControllerErrorDomain" code:1 userInfo:v18];

    (*(*(a1 + 32) + 16))();
    goto LABEL_7;
  }

  ADClientAddValueForScalarKey();
  v15 = [v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 activeLayoutModeForWidget:v7];
  }

  else
  {
    v19 = [MEMORY[0x277D75418] currentDevice];
    v20 = [v19 userInterfaceIdiom];

    v16 = 2 * ((v20 & 0xFFFFFFFFFFFFFFFBLL) == 1);
  }

  v21 = [v7 _widgetSnapshotURLForLayoutMode:v16 ensuringDirectoryExists:1];
  v22 = [v7 _remoteViewController];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __51__WGWidgetHostingViewController__captureLayerTree___block_invoke_2;
  v24[3] = &unk_279ED1E98;
  v25 = v7;
  v26 = v21;
  v27 = *(a1 + 32);
  v28 = v16;
  v23 = v21;
  [v22 _requestEncodedLayerTreeAtURL:v23 withReplyHandler:v24];

LABEL_9:
}

void __51__WGWidgetHostingViewController__captureLayerTree___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__WGWidgetHostingViewController__captureLayerTree___block_invoke_3;
  v8[3] = &unk_279ED1E70;
  v9 = v3;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v7 = v3;
  [v4 _enqueueRemoteServiceRequest:v8 withDescription:@"Handling layer tree encoding reply"];
}

void __51__WGWidgetHostingViewController__captureLayerTree___block_invoke_3(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = WGLogWidgets;
  v9 = os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = v8;
      v11 = [v5 widgetIdentifier];
      v12 = [v5 _containerIdentifier];
      v23 = 138543874;
      v24 = v11;
      v25 = 2050;
      v26 = v5;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_27425E000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Failed to capture a snapshot", &v23, 0x20u);
    }

    ADClientAddValueForScalarKey();
  }

  else if (v9)
  {
    v13 = v8;
    v14 = [v5 widgetIdentifier];
    v15 = [v5 _containerIdentifier];
    v16 = a1[5];
    v23 = 138544130;
    v24 = v14;
    v25 = 2050;
    v26 = v5;
    v27 = 2114;
    v28 = v15;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&dword_27425E000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Saved snapshot to %{public}@", &v23, 0x2Au);
  }

  if (a1[4])
  {
    v17 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v5 widgetIdentifier];
      v20 = [v5 _containerIdentifier];
      v21 = a1[4];
      v23 = 138544130;
      v24 = v19;
      v25 = 2050;
      v26 = v5;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      _os_log_impl(&dword_27425E000, v18, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Encountered an error while attempting to encode layer tree: %{public}@", &v23, 0x2Au);
    }
  }

  v22 = a1[6];
  if (v22)
  {
    (*(v22 + 16))(v22, a1[5], a1[7], a1[4]);
  }

  [v5 _setEncodingLayerTree:0];
}

- (void)_packageViewWithBlock:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || !v6)
  {
    [WGWidgetHostingViewController _packageViewWithBlock:reply:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__WGWidgetHostingViewController__packageViewWithBlock_reply___block_invoke;
  v10[3] = &unk_279ED1EC0;
  v11 = v7;
  v8 = v5[2];
  v9 = v7;
  v8(v5, v10);
}

void __61__WGWidgetHostingViewController__packageViewWithBlock_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!v5)
  {
    [v6 setClipsToBounds:1];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_packageViewFromURL:(id)a3 reply:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [WGWidgetHostingViewController _packageViewFromURL:reply:];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"No URL";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v9 errorWithDomain:@"WGWidgetHostingViewControllerErrorDomain" code:2 userInfo:v10];

    v7[2](v7, 0, v8);
    goto LABEL_6;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__WGWidgetHostingViewController__packageViewFromURL_reply___block_invoke;
  v11[3] = &unk_279ED1EE8;
  v12 = v6;
  [(WGWidgetHostingViewController *)self _packageViewWithBlock:v11 reply:v7];
  v8 = v12;
LABEL_6:
}

- (void)_loadSnapshotViewFromDiskIfNecessary:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  if (!self->_snapshotView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v7 = [WeakRetained activeLayoutModeForWidget:self];
    }

    else
    {
      v8 = [MEMORY[0x277D75418] currentDevice];
      v9 = [v8 userInterfaceIdiom];

      v7 = 2 * ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1);
    }

    v10 = [(WGWidgetHostingViewController *)self _widgetSnapshotURLForLayoutMode:v7 ensuringDirectoryExists:0];
    v11 = WGLogWidgets;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v13 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      *buf = 138544130;
      v20 = v12;
      v21 = 2050;
      v22 = self;
      v23 = 2114;
      v24 = v13;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&dword_27425E000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Attempting to load snapshot at URL: %{public}@", buf, 0x2Au);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__WGWidgetHostingViewController__loadSnapshotViewFromDiskIfNecessary___block_invoke;
    v14[3] = &unk_279ED1F10;
    objc_copyWeak(&v17, &location);
    v16 = v4;
    v6 = v10;
    v15 = v6;
    [(WGWidgetHostingViewController *)self _packageViewFromURL:v6 reply:v14];

    objc_destroyWeak(&v17);
    goto LABEL_10;
  }

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&location);
    v6 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
    (*(v4 + 2))(v4, WeakRetained, v6);
LABEL_10:
  }

  objc_destroyWeak(&location);
}

void __70__WGWidgetHostingViewController__loadSnapshotViewFromDiskIfNecessary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v8 widgetIdentifier];
      v12 = [v8 _containerIdentifier];
      v13 = *(a1 + 32);
      v20 = 138544386;
      v21 = v11;
      v22 = 2050;
      v23 = v8;
      v24 = 2114;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&dword_27425E000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Remove snapshots at %{public}@ due to error: %{public}@", &v20, 0x34u);
    }

    [v8 _removeItemAsynchronouslyAtURL:*(a1 + 32)];
  }

  else
  {
    [WeakRetained _setSnapshotView:v5];
    v14 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v8 widgetIdentifier];
      v17 = [v8 _containerIdentifier];
      v20 = 138544130;
      v21 = v16;
      v22 = 2050;
      v23 = v8;
      v24 = 2114;
      v25 = v17;
      v26 = 2114;
      v27 = v5;
      _os_log_impl(&dword_27425E000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Loaded snapshot from disk: %{public}@", &v20, 0x2Au);
    }
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = [v8 _activeLifeCycleSequence];
    (*(v18 + 16))(v18, v8, v19);
  }
}

- (void)_validateSnapshotViewForActiveLayoutMode
{
  snapshotView = self->_snapshotView;
  if (snapshotView)
  {
    v4 = [(_WGCAPackageView *)snapshotView snapshotIdentifier];
    if (v4)
    {
      v10 = v4;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v6 = [WeakRetained activeLayoutModeForWidget:self];
      }

      else
      {
        v7 = [MEMORY[0x277D75418] currentDevice];
        v8 = [v7 userInterfaceIdiom];

        v6 = 2 * ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1);
      }

      v9 = [(WGWidgetHostingViewController *)self _snapshotIdentifierForLayoutMode:v6];
      if (([v10 isEqual:v9] & 1) == 0)
      {
        [(WGWidgetHostingViewController *)self _invalidateSnapshotWithForce:1 removingSnapshotFilesForActiveDisplayMode:1 completionHandler:0];
      }

      v4 = v10;
    }
  }
}

- (void)_requestVisibilityStateUpdateForPossiblyAppearing:(BOOL)a3 sequence:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(_WGWidgetRemoteViewController *)self->_remoteViewController _isValid];
  if (!v7 || !v4)
  {
    if (v7)
    {
LABEL_7:
      v9 = [v6 currentState];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __92__WGWidgetHostingViewController__requestVisibilityStateUpdateForPossiblyAppearing_sequence___block_invoke;
      v12[3] = &__block_descriptor_41_e72_v28__0__WGWidgetHostingViewController_8__WGWidgetLifeCycleSequence_16B24l;
      v12[4] = v9;
      v13 = v4;
      [(WGWidgetHostingViewController *)self _enqueueRemoteServiceRequest:v12 withDescription:@"Updating visibility state"];
    }
  }

  else
  {
    contentProvidingView = self->_contentProvidingView;
    v11 = [(_WGWidgetRemoteViewController *)self->_remoteViewController view];

    if (contentProvidingView == v11)
    {
      goto LABEL_7;
    }
  }
}

void __92__WGWidgetHostingViewController__requestVisibilityStateUpdateForPossiblyAppearing_sequence___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v14 = a2;
  v7 = a3;
  if (a4)
  {
    v8 = [v14 _isActiveSequence:v7];
    if ([v7 isCurrentStateAtLeast:*(a1 + 32)])
    {
      v9 = 1;
    }

    else
    {
      if (*(a1 + 40))
      {
        goto LABEL_13;
      }

      v9 = [v7 isCurrentState:0];
    }

    if ((v8 & v9) == 1)
    {
      if (*(a1 + 40) == 1)
      {
        v10 = [v14 _appearState] == 0;
        v11 = v14;
        v12 = !v10;
      }

      else
      {
        v12 = 0;
        v11 = v14;
      }

      v13 = [v11 _remoteViewController];
      [v13 _updateVisibilityState:v12];
    }
  }

LABEL_13:
}

- (void)_insertContentProvidingSubview:(id)a3 sequence:(id)a4 completion:(id)a5
{
  v83 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(WGWidgetHostingViewController *)self _isActiveSequence:v9])
  {
    if ([(_WGWidgetRemoteViewController *)self->_remoteViewController isViewLoaded])
    {
      v59 = [(_WGWidgetRemoteViewController *)self->_remoteViewController view];
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v59 = 0;
      if (!v8)
      {
LABEL_16:
        if (self->_contentProvidingView == v8)
        {
          v58 = 0;
        }

        else
        {
          v58 = [(WGWidgetHostingViewController *)self _contentProvidingView];
        }

        v21 = self->_contentProvidingView == v8;
        [(WGWidgetHostingViewController *)self _setContentProvidingView:v8];
        v22 = v59 != v8 || v21;
        if ((v22 & 1) == 0)
        {
          [(UIView *)v8 setHidden:1];
        }

        if (v8)
        {
          v23 = [(WGWidgetHostingViewController *)self view];
          [v23 addSubview:v8];
        }

        v24 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
          v26 = [(WGWidgetHostingViewController *)self widgetIdentifier];
          v27 = [(WGWidgetHostingViewController *)self _containerIdentifier];
          v28 = [(WGWidgetHostingViewController *)self view];
          v29 = [v28 subviews];
          *buf = 138544386;
          v72 = v26;
          v73 = 2050;
          v74 = self;
          v75 = 2114;
          v76 = v27;
          v77 = 2114;
          v78 = v8;
          v79 = 2114;
          v80 = v29;
          _os_log_impl(&dword_27425E000, v25, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Inserted content providing subview: %{public}@ (subviews=%{public}@)", buf, 0x34u);
        }

        v30 = [(WGWidgetHostingViewController *)self view];
        [v30 bounds];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        [(UIView *)v8 setFrame:v32, v34, v36, v38];
        [(UIView *)v8 setAutoresizingMask:18];
        v39 = [v9 currentState];
        if (v8 == 0 || v59 != v8)
        {
          if (v58 == v59)
          {
            [(UIView *)v58 setHidden:1];
            [(WGWidgetHostingViewController *)self _requestVisibilityStateUpdateForPossiblyAppearing:0 sequence:v9];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            if (objc_opt_respondsToSelector())
            {
              [WeakRetained remoteViewControllerViewDidHideForWidget:self];
            }
          }

          else
          {
            [(UIView *)v58 removeFromSuperview];
          }

          objc_initWeak(buf, self);
          if (v10)
          {
            v52 = objc_loadWeakRetained(buf);
            v10[2](v10, v52, v9);
          }

          objc_destroyWeak(buf);
        }

        else
        {
          v40 = v39;
          v41 = dispatch_get_global_queue(25, 0);
          if (v41)
          {
            if (self->_viewWillAppearSemaphore)
            {
              v42 = WGLogWidgets;
              if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
              {
                v43 = v42;
                v44 = [(WGWidgetHostingViewController *)self widgetIdentifier];
                v45 = [(WGWidgetHostingViewController *)self _containerIdentifier];
                *buf = 138543874;
                v72 = v44;
                v73 = 2050;
                v74 = self;
                v75 = 2114;
                v76 = v45;
                _os_log_impl(&dword_27425E000, v43, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> '_viewWillAppearSemaphore' already exists", buf, 0x20u);
              }
            }

            v46 = dispatch_semaphore_create(0);
            [(WGWidgetHostingViewController *)self _setViewWillAppearSemaphore:v46];
            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v65[2] = __84__WGWidgetHostingViewController__insertContentProvidingSubview_sequence_completion___block_invoke;
            v65[3] = &unk_279ED1F58;
            v47 = v46;
            v66 = v47;
            v70 = v40;
            v67 = v8;
            v68 = v58;
            v69 = v10;
            v48 = MEMORY[0x2743E8C10](v65);
            objc_initWeak(buf, self);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __84__WGWidgetHostingViewController__insertContentProvidingSubview_sequence_completion___block_invoke_277;
            block[3] = &unk_279ED1F80;
            objc_copyWeak(&v64, buf);
            v61 = v47;
            v63 = v48;
            v62 = v9;
            v49 = v48;
            v50 = v47;
            dispatch_async(v41, block);

            objc_destroyWeak(&v64);
            objc_destroyWeak(buf);
          }

          else
          {
            v53 = WGLogWidgets;
            if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
            {
              v54 = v53;
              v55 = [(WGWidgetHostingViewController *)self widgetIdentifier];
              v56 = [(WGWidgetHostingViewController *)self _containerIdentifier];
              *buf = 138543874;
              v72 = v55;
              v73 = 2050;
              v74 = self;
              v75 = 2114;
              v76 = v56;
              _os_log_impl(&dword_27425E000, v54, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Failed to obtain a queue", buf, 0x20u);
            }

            objc_initWeak(buf, self);
            if (v10)
            {
              v57 = objc_loadWeakRetained(buf);
              v10[2](v10, v57, v9);
            }

            objc_destroyWeak(buf);
          }
        }

        goto LABEL_49;
      }
    }

    v17 = [(WGWidgetHostingViewController *)self view];
    v18 = [v17 subviews];
    if ([v18 count] > 1)
    {
      v19 = [(UIView *)v8 superview];
      v20 = [(WGWidgetHostingViewController *)self view];

      if (v19 != v20 && os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
      {
        [WGWidgetHostingViewController _insertContentProvidingSubview:sequence:completion:];
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  v11 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v14 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    v15 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
    *buf = 138544642;
    v72 = v13;
    v73 = 2050;
    v74 = self;
    v75 = 2114;
    v76 = v14;
    v77 = 2114;
    v78 = v8;
    v79 = 2114;
    v80 = v9;
    v81 = 2114;
    v82 = v15;
    _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't insert view '%{public}@' as argument sequence (%{public}@) doesn't match active sequence (%{public}@)", buf, 0x3Eu);
  }

  objc_initWeak(buf, self);
  if (v10)
  {
    v16 = objc_loadWeakRetained(buf);
    v10[2](v10, v16, v9);
  }

  objc_destroyWeak(buf);
LABEL_49:
}

void __84__WGWidgetHostingViewController__insertContentProvidingSubview_sequence_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 _viewWillAppearSemaphore];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    [v5 _setViewWillAppearSemaphore:0];
  }

  v9 = [v5 _isActiveSequence:v6];
  v10 = [v6 isCurrentState:*(a1 + 64)];
  if (v9 && v10)
  {
    [*(a1 + 40) setHidden:0];
    v11 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v5 widgetIdentifier];
      v14 = [v5 _containerIdentifier];
      *buf = 138543874;
      v34 = v13;
      v35 = 2050;
      v36 = v5;
      v37 = 2114;
      v38 = v14;
      _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Unhid remote view", buf, 0x20u);
    }

    [v5 _endRemoteViewControllerAppearanceTransitionIfNecessary];
    [*(a1 + 48) removeFromSuperview];
    [v5 _requestVisibilityStateUpdateForPossiblyAppearing:1 sequence:v6];
  }

  else
  {
    v15 = MEMORY[0x277CCACA8];
    if (v9)
    {
      v16 = WGStringFromWidgetLifeCycleSequenceState(*(a1 + 64));
      [v15 stringWithFormat:@"isn't in expected state (%@)", v16];
    }

    else
    {
      v16 = [v5 _activeLifeCycleSequence];
      [v15 stringWithFormat:@"doesn't match active sequence (%@)", v16];
    }
    v17 = ;

    v18 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v5 widgetIdentifier];
      v21 = [v5 _containerIdentifier];
      v22 = *(a1 + 40);
      *buf = 138544642;
      v34 = v20;
      v35 = 2050;
      v36 = v5;
      v37 = 2114;
      v38 = v21;
      v39 = 2114;
      v40 = v22;
      v41 = 2114;
      v42 = v6;
      v43 = 2114;
      v44 = v17;
      _os_log_impl(&dword_27425E000, v19, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't insert view '%{public}@' as argument sequence (%{public}@) %{public}@", buf, 0x3Eu);
    }

    v23 = *(a1 + 40);
    v24 = [v5 _contentProvidingView];

    if (v23 == v24)
    {
      [*(a1 + 40) removeFromSuperview];
      [v5 _setContentProvidingView:*(a1 + 48)];
      v25 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [v5 widgetIdentifier];
        v28 = [v5 _containerIdentifier];
        v29 = *(a1 + 40);
        v30 = [v5 view];
        v31 = [v30 subviews];
        *buf = 138544386;
        v34 = v27;
        v35 = 2050;
        v36 = v5;
        v37 = 2114;
        v38 = v28;
        v39 = 2114;
        v40 = v29;
        v41 = 2114;
        v42 = v31;
        _os_log_impl(&dword_27425E000, v26, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Aborted insertion of view: %{public}@ (subviews=%{public}@)", buf, 0x34u);
      }
    }
  }

  v32 = *(a1 + 56);
  if (v32)
  {
    (*(v32 + 16))(v32, v5, v6);
  }
}

void __84__WGWidgetHostingViewController__insertContentProvidingSubview_sequence_completion___block_invoke_277(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__WGWidgetHostingViewController__insertContentProvidingSubview_sequence_completion___block_invoke_2;
  block[3] = &unk_279ED09F0;
  objc_copyWeak(&v20, a1 + 7);
  v19 = a1[4];
  dispatch_async(MEMORY[0x277D85CD0], block);
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WGLogWidgets;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained widgetIdentifier];
    v5 = [WeakRetained _containerIdentifier];
    v6 = a1[4];
    *buf = 138544130;
    v22 = v4;
    v23 = 2050;
    v24 = WeakRetained;
    v25 = 2114;
    v26 = v5;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_27425E000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> About to wait on '_viewWillAppearSemaphore' (%{public}@)", buf, 0x2Au);
  }

  v7 = a1[4];
  v8 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = WGLogWidgets;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [WeakRetained widgetIdentifier];
      v11 = [WeakRetained _containerIdentifier];
      v12 = a1[4];
      *buf = 138544130;
      v22 = v10;
      v23 = 2050;
      v24 = WeakRetained;
      v25 = 2114;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> _viewWillAppearSemaphore (%{public}@) timed out!", buf, 0x2Au);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__WGWidgetHostingViewController__insertContentProvidingSubview_sequence_completion___block_invoke_278;
  v14[3] = &unk_279ED18B8;
  v16 = a1[6];
  objc_copyWeak(&v17, a1 + 7);
  v15 = a1[5];
  v13 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
}

void __84__WGWidgetHostingViewController__insertContentProvidingSubview_sequence_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _beginRemoteViewControllerAppearanceTransitionIfNecessary:1 semaphore:*(a1 + 32) animated:0 completion:0];
}

void __84__WGWidgetHostingViewController__insertContentProvidingSubview_sequence_completion___block_invoke_278(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v2 + 16))(v2, WeakRetained, *(a1 + 32));
}

- (BOOL)_canInsertRemoteView:(id *)a3
{
  if ([(WGWidgetHostingViewController *)self isViewLoaded])
  {
    v5 = [(_WGWidgetRemoteViewController *)self->_remoteViewController _isValid];
    if (!a3)
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
    if (!a3)
    {
      return v5;
    }
  }

  if (!v5)
  {
    v6 = MEMORY[0x277CCACA8];
    [(WGWidgetHostingViewController *)self isViewLoaded];
    v7 = NSStringFromBOOL();
    [(_WGWidgetRemoteViewController *)self->_remoteViewController _isValid];
    v8 = NSStringFromBOOL();
    *a3 = [v6 stringWithFormat:@"Can't insert remote view: isViewLoaded: %@ _remoteViewController isValid: %@", v7, v8];;
  }

  return v5;
}

- (void)_insertAppropriateContentView
{
  if ([(_WGWidgetRemoteViewController *)self->_remoteViewController _isValid])
  {
    v3 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
    [(WGWidgetHostingViewController *)self _requestInsertionOfRemoteViewAfterViewWillAppearForSequence:v3 completionHandler:0];
  }

  else if (self->_snapshotView)
  {

    [(WGWidgetHostingViewController *)self _insertSnapshotWithCompletionHandler:0];
  }
}

- (void)_insertSnapshotViewIfAppropriate
{
  if (![(WGWidgetHostingViewController *)self _isBlacklisted]&& ![(WGWidgetHostingViewController *)self isLockedOut])
  {
    activeLifeCycleSequence = self->_activeLifeCycleSequence;
    if (!activeLifeCycleSequence || [(WGWidgetLifeCycleSequence *)activeLifeCycleSequence isCurrentStateNotYet:4])
    {

      [(WGWidgetHostingViewController *)self _loadSnapshotViewFromDiskIfNecessary:&__block_literal_global_285];
    }
  }
}

void __65__WGWidgetHostingViewController__insertSnapshotViewIfAppropriate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v4 = a3;
  v5 = [v10 _contentProvidingView];
  if (v5)
  {

    goto LABEL_8;
  }

  v6 = [v10 _activeLifeCycleSequence];
  if (!v6)
  {
LABEL_6:
    [v10 _insertSnapshotWithCompletionHandler:0];
    goto LABEL_8;
  }

  v7 = v6;
  if ([v10 _isActiveSequence:v4])
  {
    v8 = [v10 _activeLifeCycleSequence];
    v9 = [v8 isCurrentStateNotYet:4];

    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_8:
}

- (void)_requestInsertionOfRemoteViewAfterViewWillAppearForSequence:(id)a3 completionHandler:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(WGWidgetHostingViewController *)self _isActiveSequence:v6])
  {
    v44 = 0;
    v8 = [(WGWidgetHostingViewController *)self _canInsertRemoteView:&v44];
    v9 = v44;
    if (v8)
    {
      if ([objc_opt_class() _canWidgetHostInsertRemoteViewForSequence:v6])
      {
        if (([v6 isCurrentStateNotYet:3] & 1) != 0 || objc_msgSend(v6, "isCurrentStateAtLeast:", 5))
        {
          v10 = [v6 transitionToState:3];
          if (v10)
          {
            v11 = WGLogWidgets;
            if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
            {
              [WGWidgetHostingViewController _requestInsertionOfRemoteViewAfterViewWillAppearForSequence:v11 completionHandler:?];
            }

            objc_initWeak(location, self);
            if (v7)
            {
              WeakRetained = objc_loadWeakRetained(location);
              v7[2](v7, WeakRetained, v6);
            }

            objc_destroyWeak(location);
            goto LABEL_42;
          }

          v43 = 0;
          v29 = [v6 beginTransitionToState:4 error:&v43];
          v30 = v43;
          v31 = v30;
          if (v29 | v30)
          {
            if (v30)
            {
              v32 = WGLogWidgets;
              if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
              {
                [WGWidgetHostingViewController _requestInsertionOfRemoteViewAfterViewWillAppearForSequence:v32 completionHandler:?];
              }

              objc_initWeak(location, self);
              if (v7)
              {
                v33 = objc_loadWeakRetained(location);
                v7[2](v7, v33, v6);
              }

              objc_destroyWeak(location);
              goto LABEL_41;
            }
          }

          else
          {
            [WGWidgetHostingViewController _requestInsertionOfRemoteViewAfterViewWillAppearForSequence:completionHandler:];
          }

          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __111__WGWidgetHostingViewController__requestInsertionOfRemoteViewAfterViewWillAppearForSequence_completionHandler___block_invoke;
          v39[3] = &unk_279ED1FD0;
          v39[4] = self;
          v40 = v29;
          v42 = 4;
          v41 = v7;
          [(WGWidgetHostingViewController *)self _enqueueRemoteServiceRequest:v39 withDescription:@"Inserting remote view"];

LABEL_41:
LABEL_42:

          goto LABEL_43;
        }

        v34 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
          v36 = [(WGWidgetHostingViewController *)self widgetIdentifier];
          v37 = [(WGWidgetHostingViewController *)self _containerIdentifier];
          *location = 138544130;
          *&location[4] = v36;
          v46 = 2050;
          v47 = self;
          v48 = 2114;
          v49 = v37;
          v50 = 2114;
          v51 = v6;
          _os_log_impl(&dword_27425E000, v35, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Sequence already at satisfactory state: %{public}@", location, 0x2Au);
        }

        objc_initWeak(location, self);
        if (v7)
        {
          v38 = objc_loadWeakRetained(location);
          v7[2](v7, v38, v6);
        }
      }

      else
      {
        v24 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
          v26 = [(WGWidgetHostingViewController *)self widgetIdentifier];
          v27 = [(WGWidgetHostingViewController *)self _containerIdentifier];
          *location = 138544130;
          *&location[4] = v26;
          v46 = 2050;
          v47 = self;
          v48 = 2114;
          v49 = v27;
          v50 = 2114;
          v51 = v6;
          _os_log_impl(&dword_27425E000, v25, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Sequence state where insertion of remote view isn't possible: %{public}@", location, 0x2Au);
        }

        objc_initWeak(location, self);
        if (v7)
        {
          v28 = objc_loadWeakRetained(location);
          v7[2](v7, v28, v6);
        }
      }
    }

    else
    {
      v19 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v22 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        *location = 138544130;
        *&location[4] = v21;
        v46 = 2050;
        v47 = self;
        v48 = 2114;
        v49 = v22;
        v50 = 2114;
        v51 = v9;
        _os_log_impl(&dword_27425E000, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> %{public}@", location, 0x2Au);
      }

      objc_initWeak(location, self);
      if (v7)
      {
        v23 = objc_loadWeakRetained(location);
        v7[2](v7, v23, v6);
      }
    }

    objc_destroyWeak(location);
LABEL_43:

    goto LABEL_44;
  }

  v13 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v16 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    v17 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
    *location = 138544386;
    *&location[4] = v15;
    v46 = 2050;
    v47 = self;
    v48 = 2114;
    v49 = v16;
    v50 = 2114;
    v51 = v6;
    v52 = 2114;
    v53 = v17;
    _os_log_impl(&dword_27425E000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't insert remote view as argument sequence (%{public}@) doesn't match active sequence (%{public}@)", location, 0x34u);
  }

  objc_initWeak(location, self);
  if (v7)
  {
    v18 = objc_loadWeakRetained(location);
    v7[2](v7, v18, v6);
  }

  objc_destroyWeak(location);
LABEL_44:
}

void __111__WGWidgetHostingViewController__requestInsertionOfRemoteViewAfterViewWillAppearForSequence_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v7 _isActiveSequence:v8];
  v10 = [v8 isCurrentState:3];
  if (a4 && v9 && v10)
  {
    v11 = *(a1 + 32);
    v12 = [v7 _remoteViewController];
    v13 = [v12 view];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __111__WGWidgetHostingViewController__requestInsertionOfRemoteViewAfterViewWillAppearForSequence_completionHandler___block_invoke_2;
    v26[3] = &unk_279ED1FA8;
    v14 = *(a1 + 40);
    v16 = *(a1 + 48);
    v15 = *(a1 + 56);
    v27 = v14;
    v29 = v15;
    v28 = v16;
    [v11 _insertContentProvidingSubview:v13 sequence:v8 completion:v26];

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
    v23 = WGLogWidgets;
    if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v18 = v23;
    v19 = [v7 widgetIdentifier];
    v20 = [v7 _containerIdentifier];
    *buf = 138543874;
    v31 = v19;
    v32 = 2050;
    v33 = v7;
    v34 = 2114;
    v35 = v20;
    _os_log_impl(&dword_27425E000, v18, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't insert remote view as queue is no longer valid", buf, 0x20u);
    goto LABEL_15;
  }

  if ((v9 & 1) == 0)
  {
    v24 = WGLogWidgets;
    if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v18 = v24;
    v19 = [v7 widgetIdentifier];
    v20 = [v7 _containerIdentifier];
    v21 = [v7 _activeLifeCycleSequence];
    *buf = 138544386;
    v31 = v19;
    v32 = 2050;
    v33 = v7;
    v34 = 2114;
    v35 = v20;
    v36 = 2114;
    v37 = v8;
    v38 = 2114;
    v39 = v21;
    v22 = "<%{public}@: %{public}p; container: %{public}@> Can't insert remote view as argument sequence (%{public}@) doesn't match active sequence (%{public}@)";
    goto LABEL_14;
  }

  if ((v10 & 1) == 0)
  {
    v17 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v7 widgetIdentifier];
      v20 = [v7 _containerIdentifier];
      v21 = WGStringFromWidgetLifeCycleSequenceState(3uLL);
      *buf = 138544386;
      v31 = v19;
      v32 = 2050;
      v33 = v7;
      v34 = 2114;
      v35 = v20;
      v36 = 2114;
      v37 = v8;
      v38 = 2114;
      v39 = v21;
      v22 = "<%{public}@: %{public}p; container: %{public}@> Can't insert remote view as argument sequence (%{public}@) isn't in expected state (%{public}@)";
LABEL_14:
      _os_log_impl(&dword_27425E000, v18, OS_LOG_TYPE_DEFAULT, v22, buf, 0x34u);

LABEL_15:
    }
  }

LABEL_16:
  v25 = *(a1 + 48);
  if (v25)
  {
    (*(v25 + 16))(v25, v7, v8);
  }

LABEL_18:
}

void __111__WGWidgetHostingViewController__requestInsertionOfRemoteViewAfterViewWillAppearForSequence_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = (*(a1[4] + 16))();
  if (v7)
  {
    v8 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v5 widgetIdentifier];
      v11 = [v5 _containerIdentifier];
      v12 = WGStringFromWidgetLifeCycleSequenceState(a1[6]);
      v14 = 138544386;
      v15 = v10;
      v16 = 2050;
      v17 = v5;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Encountered error transitioning to target state '%{public}@': %{public}@", &v14, 0x34u);
    }
  }

  v13 = a1[5];
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }
}

- (void)_synchronizeGeometryWithSnapshot
{
  v3 = [(WGWidgetHostingViewController *)self _snapshotView];
  if (v3)
  {
    v4 = v3;
    v5 = [(WGWidgetHostingViewController *)self isRemoteViewVisible];

    if (!v5)
    {
      [(WGWidgetHostingViewController *)self _snapshotViewBounds];
      Height = CGRectGetHeight(v8);

      [(WGWidgetHostingViewController *)self _updatePreferredContentSizeWithHeight:Height];
    }
  }
}

- (void)_insertSnapshotWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(WGWidgetHostingViewController *)self isViewLoaded]&& (snapshotView = self->_snapshotView) != 0 && ([(WGWidgetHostingViewController *)self _contentProvidingView], v6 = objc_claimAutoreleasedReturnValue(), v6, snapshotView != v6))
  {
    [(WGWidgetHostingViewController *)self _beginRemoteViewControllerAppearanceTransitionIfNecessary:0 semaphore:0 animated:0 completion:0];
    v7 = [(_WGCAPackageView *)self->_snapshotView layer];
    [v7 setSecurityMode:*MEMORY[0x277CDA770]];

    v8 = [(WGWidgetHostingViewController *)self _snapshotView];
    v9 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__WGWidgetHostingViewController__insertSnapshotWithCompletionHandler___block_invoke;
    v13[3] = &unk_279ED1AB0;
    v14 = v4;
    [(WGWidgetHostingViewController *)self _insertContentProvidingSubview:v8 sequence:v9 completion:v13];
  }

  else
  {
    objc_initWeak(&v12, self);
    if (v4)
    {
      v10 = objc_loadWeakRetained(&v12);
      v11 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      (*(v4 + 2))(v4, v10, v11);
    }

    objc_destroyWeak(&v12);
  }
}

void __70__WGWidgetHostingViewController__insertSnapshotWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 _snapshotView];
  v7 = [v9 _contentProvidingView];

  if (v6 == v7)
  {
    [v9 _endRemoteViewControllerAppearanceTransitionIfNecessary];
    [v9 _synchronizeGeometryWithSnapshot];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

- (BOOL)_managingContainerIsVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained managingContainerIsVisibleForWidget:self];
  }

  else
  {
    v5 = [(WGWidgetHostingViewController *)self parentViewController];
    v4 = [v5 wg_isAppearingOrAppeared];
  }

  return v4;
}

- (void)_endSequence:(id)a3 withReason:(id)a4 completion:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v14 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    *buf = 138544386;
    v32 = v13;
    v33 = 2050;
    v34 = self;
    v35 = 2114;
    v36 = v14;
    v37 = 2114;
    v38 = v8;
    v39 = 2114;
    v40 = v9;
    _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> End sequence '%{public}@' with reason: %{public}@", buf, 0x34u);
  }

  v15 = ![(WGWidgetHostingViewController *)self _isActiveSequence:v8];
  if (!v8)
  {
    LOBYTE(v15) = 1;
  }

  if (v15)
  {
    v17 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v20 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v21 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      *buf = 138544386;
      v32 = v19;
      v33 = 2050;
      v34 = self;
      v35 = 2114;
      v36 = v20;
      v37 = 2114;
      v38 = v8;
      v39 = 2114;
      v40 = v21;
      _os_log_impl(&dword_27425E000, v18, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't end sequence as argument sequence (%{public}@) doesn't match active sequence (%{public}@), or there's no active sequence", buf, 0x34u);
    }

    objc_initWeak(buf, self);
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained(buf);
      v10[2](v10, WeakRetained, v8);
    }

    goto LABEL_13;
  }

  if (![objc_opt_class() _canWidgetHostEndSequenceByDisconnectingRemoteViewControllerForSequence:v8])
  {
    v23 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v26 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      *buf = 138544130;
      v32 = v25;
      v33 = 2050;
      v34 = self;
      v35 = 2114;
      v36 = v26;
      v37 = 2114;
      v38 = v8;
      _os_log_impl(&dword_27425E000, v24, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Sequence already at satisfactory state: %{public}@", buf, 0x2Au);
    }

    objc_initWeak(buf, self);
    if (v10)
    {
      v27 = objc_loadWeakRetained(buf);
      v10[2](v10, v27, v8);
    }

LABEL_13:
    objc_destroyWeak(buf);
    goto LABEL_21;
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __68__WGWidgetHostingViewController__endSequence_withReason_completion___block_invoke;
  v28[3] = &unk_279ED2020;
  v28[4] = self;
  v29 = v9;
  v30 = v10;
  v16 = MEMORY[0x2743E8C10](v28);
  if ([(WGWidgetHostingViewController *)self _hasOutstandingUpdateRequestForSequence:v8])
  {
    [(WGWidgetHostingViewController *)self _registerUpdateRequestCompletionHandler:v16 forSequence:v8];
  }

  else
  {
    (v16)[2](v16, self, v8);
  }

LABEL_21:
}

void __68__WGWidgetHostingViewController__endSequence_withReason_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__WGWidgetHostingViewController__endSequence_withReason_completion___block_invoke_2;
  v6[3] = &unk_279ED1FF8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v5 _captureSnapshotAndBeginDisappearanceTransitionForSequence:a3 completionHandler:v6];
}

void __68__WGWidgetHostingViewController__endSequence_withReason_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 _isActiveSequence:v6];
  v8 = [v6 isCurrentState:5];
  if (v7 && v8)
  {
    [v5 _endRemoteViewControllerAppearanceTransitionIfNecessary];
    if (([v5 _managingContainerIsVisible] & 1) != 0 || (objc_msgSend(v5, "_shouldRemoveSnapshotWhenNotVisible") & 1) == 0)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __68__WGWidgetHostingViewController__endSequence_withReason_completion___block_invoke_3;
      v17[3] = &unk_279ED1FF8;
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      [v5 _insertSnapshotWithCompletionHandler:v17];
    }

    else
    {
      [v5 _disconnectRemoteViewControllerForReason:*(a1 + 32) sequence:v6 coalesce:objc_msgSend(v5 completionHandler:{"disconnectsImmediately") ^ 1, *(a1 + 40)}];
    }

    goto LABEL_16;
  }

  if ((v7 & 1) == 0)
  {
    v15 = WGLogWidgets;
    if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v10 = v15;
    v11 = [v5 widgetIdentifier];
    v12 = [v5 _containerIdentifier];
    v13 = [v5 _activeLifeCycleSequence];
    *buf = 138544386;
    v21 = v11;
    v22 = 2050;
    v23 = v5;
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = v6;
    v28 = 2114;
    v29 = v13;
    v14 = "<%{public}@: %{public}p; container: %{public}@> Can't disconnect remote view controller as argument sequence (%{public}@) doesn't match active sequence (%{public}@)";
    goto LABEL_13;
  }

  if ((v8 & 1) == 0)
  {
    v9 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v5 widgetIdentifier];
      v12 = [v5 _containerIdentifier];
      v13 = WGStringFromWidgetLifeCycleSequenceState(5uLL);
      *buf = 138544386;
      v21 = v11;
      v22 = 2050;
      v23 = v5;
      v24 = 2114;
      v25 = v12;
      v26 = 2114;
      v27 = v6;
      v28 = 2114;
      v29 = v13;
      v14 = "<%{public}@: %{public}p; container: %{public}@> Can't disconnect remote view controller as argument sequence (%{public}@) isn't in expected state (%{public}@)";
LABEL_13:
      _os_log_impl(&dword_27425E000, v10, OS_LOG_TYPE_DEFAULT, v14, buf, 0x34u);
    }
  }

LABEL_14:
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v5, v6);
  }

LABEL_16:
}

void __68__WGWidgetHostingViewController__endSequence_withReason_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 _isActiveSequence:v6];
  v8 = [v6 isCurrentState:5];
  if (v7 && v8)
  {
    [v5 _disconnectRemoteViewControllerForReason:*(a1 + 32) sequence:v6 coalesce:objc_msgSend(v5 completionHandler:{"disconnectsImmediately") ^ 1, *(a1 + 40)}];
    goto LABEL_13;
  }

  if ((v7 & 1) == 0)
  {
    v15 = WGLogWidgets;
    if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v10 = v15;
    v11 = [v5 widgetIdentifier];
    v12 = [v5 _containerIdentifier];
    v13 = [v5 _activeLifeCycleSequence];
    v17 = 138544386;
    v18 = v11;
    v19 = 2050;
    v20 = v5;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v6;
    v25 = 2114;
    v26 = v13;
    v14 = "<%{public}@: %{public}p; container: %{public}@> Can't disconnect remote view controller as argument sequence (%{public}@) doesn't match active sequence (%{public}@)";
    goto LABEL_10;
  }

  if ((v8 & 1) == 0)
  {
    v9 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v5 widgetIdentifier];
      v12 = [v5 _containerIdentifier];
      v13 = WGStringFromWidgetLifeCycleSequenceState(5uLL);
      v17 = 138544386;
      v18 = v11;
      v19 = 2050;
      v20 = v5;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = v13;
      v14 = "<%{public}@: %{public}p; container: %{public}@> Can't disconnect remote view controller as argument sequence (%{public}@) isn't in expected state (%{public}@)";
LABEL_10:
      _os_log_impl(&dword_27425E000, v10, OS_LOG_TYPE_DEFAULT, v14, &v17, 0x34u);
    }
  }

LABEL_11:
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v5, v6);
  }

LABEL_13:
}

- (void)_disconnectRemoteViewControllerForReason:(id)a3 sequence:(id)a4 coalesce:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v64 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(WGWidgetHostingViewController *)self _isActiveSequence:v10];
  v13 = WGLogWidgets;
  v14 = os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = v13;
      v16 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v17 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v18 = NSStringFromBOOL();
      *buf = 138544386;
      v55 = v16;
      v56 = 2050;
      v57 = self;
      v58 = 2114;
      v59 = v17;
      v60 = 2114;
      v61 = v52;
      v62 = 2114;
      v63 = v18;
      _os_log_impl(&dword_27425E000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Disconnection requested with reason: '%{public}@'; shouldCoalesce: %{public}@", buf, 0x34u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_disconnectionTimer);
    if (![objc_opt_class() _canWidgetHostDisconnectRemoteViewControllerForSequence:v10 disconnectionTimer:WeakRetained coalesce:v7])
    {
      v33 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        v35 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v36 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        *buf = 138544130;
        v55 = v35;
        v56 = 2050;
        v57 = self;
        v58 = 2114;
        v59 = v36;
        v60 = 2114;
        v61 = v10;
        _os_log_impl(&dword_27425E000, v34, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Sequence already at satisfactory state: %{public}@", buf, 0x2Au);
      }

      objc_initWeak(buf, self);
      if (v11)
      {
        v37 = objc_loadWeakRetained(buf);
        v11[2](v11, v37, v10);
      }

      objc_destroyWeak(buf);
      goto LABEL_43;
    }

    v20 = [v10 transitionToState:6];
    if (v20)
    {
      v21 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
      {
        [WGWidgetHostingViewController _disconnectRemoteViewControllerForReason:v21 sequence:? coalesce:? completionHandler:?];
      }

      v22 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v25 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        v26 = WGStringFromWidgetLifeCycleSequenceState(6uLL);
        *buf = 138544386;
        v55 = v24;
        v56 = 2050;
        v57 = self;
        v58 = 2114;
        v59 = v25;
        v60 = 2112;
        v61 = v26;
        v62 = 2112;
        v63 = v20;
        _os_log_impl(&dword_27425E000, v23, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Encountered error transitioning to target state '%@': %@", buf, 0x34u);
      }

      objc_initWeak(buf, self);
      if (v11)
      {
        v27 = objc_loadWeakRetained(buf);
        v11[2](v11, v27, v10);
      }

      objc_destroyWeak(buf);
      goto LABEL_42;
    }

    v53 = 0;
    v51 = [v10 beginTransitionToState:0 error:&v53];
    v38 = v53;
    v39 = v38;
    if (v51 | v38)
    {
      if (v38)
      {
        v40 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
        {
          [WGWidgetHostingViewController _disconnectRemoteViewControllerForReason:v40 sequence:? coalesce:? completionHandler:?];
        }

        v41 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v41;
          v43 = [(WGWidgetHostingViewController *)self widgetIdentifier];
          v44 = [(WGWidgetHostingViewController *)self _containerIdentifier];
          v45 = WGStringFromWidgetLifeCycleSequenceState(0);
          *buf = 138544386;
          v55 = v43;
          v56 = 2050;
          v57 = self;
          v58 = 2114;
          v59 = v44;
          v60 = 2112;
          v61 = v45;
          v62 = 2112;
          v63 = v39;
          _os_log_impl(&dword_27425E000, v42, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Encountered error transitioning to target state '%@': %@", buf, 0x34u);
        }

        objc_initWeak(buf, self);
        if (v11)
        {
          v46 = objc_loadWeakRetained(buf);
          v11[2](v11, v46, v10);
        }

        objc_destroyWeak(buf);
LABEL_41:

LABEL_42:
LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
      [WGWidgetHostingViewController _disconnectRemoteViewControllerForReason:sequence:coalesce:completionHandler:];
    }

    if (v7)
    {
      if (WeakRetained && os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
      {
        [WGWidgetHostingViewController _disconnectRemoteViewControllerForReason:sequence:coalesce:completionHandler:];
      }

      v47 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
        v49 = [(WGWidgetHostingViewController *)self widgetIdentifier];
        v50 = [(WGWidgetHostingViewController *)self _containerIdentifier];
        *buf = 138543874;
        v55 = v49;
        v56 = 2050;
        v57 = self;
        v58 = 2114;
        v59 = v50;
        _os_log_impl(&dword_27425E000, v48, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Disconnection requested - scheduling disconnection timer", buf, 0x20u);
      }

      [(WGWidgetHostingViewController *)self _scheduleDisconnectionTimerForSequence:v10 endTransitionBlock:v51 completion:v11];
    }

    else
    {
      [(WGWidgetHostingViewController *)self _invalidateDisconnectionTimer];
      [(WGWidgetHostingViewController *)self _enqueueDisconnectionRequestForSequence:v10 endTransitionBlock:v51 completion:v11];
    }

    goto LABEL_41;
  }

  if (v14)
  {
    v28 = v13;
    v29 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v30 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    v31 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
    *buf = 138544386;
    v55 = v29;
    v56 = 2050;
    v57 = self;
    v58 = 2114;
    v59 = v30;
    v60 = 2114;
    v61 = v10;
    v62 = 2114;
    v63 = v31;
    _os_log_impl(&dword_27425E000, v28, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Can't disconnect remote view controller as argument sequence (%{public}@) doesn't match active sequence (%{public}@)", buf, 0x34u);
  }

  objc_initWeak(buf, self);
  if (v11)
  {
    v32 = objc_loadWeakRetained(buf);
    v11[2](v11, v32, v10);
  }

  objc_destroyWeak(buf);
LABEL_44:
}

- (void)_enqueueDisconnectionRequestForSequence:(id)a3 endTransitionBlock:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v12 = MEMORY[0x277D85DD0];
  v13 = v7;
  v14 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [(WGWidgetHostingViewController *)self _proxyConnectionQueue:v12];
  [(WGWidgetHostingViewController *)self _enqueueRequest:&v12 inQueue:v11 trampolinedToMainQueue:1 withDescription:@"Disconnecting remote view controller"];
}

void __103__WGWidgetHostingViewController__enqueueDisconnectionRequestForSequence_endTransitionBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v7 _isActiveSequence:v8];
  v10 = [v8 isCurrentState:6];
  if (a4 && v9 && v10)
  {
    v11 = *(a1 + 32);
    if (v11 && ((*(v11 + 16))(v11, 0), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
      v14 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = [v7 widgetIdentifier];
        v17 = [v7 _containerIdentifier];
        v18 = WGStringFromWidgetLifeCycleSequenceState(0);
        v29 = 138544386;
        v30 = v16;
        v31 = 2050;
        v32 = v7;
        v33 = 2114;
        v34 = v17;
        v35 = 2112;
        v36 = v18;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_27425E000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Encountered error transitioning to target state '%@': %@", &v29, 0x34u);
      }

      v19 = *(a1 + 40);
      if (v19)
      {
        (*(v19 + 16))(v19, v7, v8);
      }
    }

    else
    {
      [v7 _disconnectRemoteViewControllerForSequence:v8 completion:*(a1 + 40)];
      v13 = 0;
    }

    goto LABEL_25;
  }

  if ((a4 & 1) == 0)
  {
    v26 = WGLogWidgets;
    if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v21 = v26;
    v22 = [v7 widgetIdentifier];
    v23 = [v7 _containerIdentifier];
    v29 = 138543874;
    v30 = v22;
    v31 = 2050;
    v32 = v7;
    v33 = 2114;
    v34 = v23;
    _os_log_impl(&dword_27425E000, v21, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Remote view controller instantiation request no longer valid", &v29, 0x20u);
    goto LABEL_22;
  }

  if ((v9 & 1) == 0)
  {
    v27 = WGLogWidgets;
    if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v21 = v27;
    v22 = [v7 widgetIdentifier];
    v23 = [v7 _containerIdentifier];
    v24 = [v7 _activeLifeCycleSequence];
    v29 = 138544386;
    v30 = v22;
    v31 = 2050;
    v32 = v7;
    v33 = 2114;
    v34 = v23;
    v35 = 2112;
    v36 = v8;
    v37 = 2112;
    v38 = v24;
    v25 = "<%{public}@: %{public}p; container: %{public}@> Disconnecting remote view controller as argument sequence (%@) doesn't match active sequence (%@)";
    goto LABEL_21;
  }

  if ((v10 & 1) == 0)
  {
    v20 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v7 widgetIdentifier];
      v23 = [v7 _containerIdentifier];
      v24 = WGStringFromWidgetLifeCycleSequenceState(1uLL);
      v29 = 138544386;
      v30 = v22;
      v31 = 2050;
      v32 = v7;
      v33 = 2114;
      v34 = v23;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v24;
      v25 = "<%{public}@: %{public}p; container: %{public}@> Disconnecting remote view controller as argument sequence (%@) isn't in expected state (%@)";
LABEL_21:
      _os_log_impl(&dword_27425E000, v21, OS_LOG_TYPE_DEFAULT, v25, &v29, 0x34u);

LABEL_22:
    }
  }

LABEL_23:
  v28 = *(a1 + 40);
  if (v28)
  {
    (*(v28 + 16))(v28, v7, v8);
  }

LABEL_25:
}

- (void)_disconnectRemoteViewControllerForSequence:(id)a3 completion:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v11 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    *buf = 138543874;
    v35 = v10;
    v36 = 2050;
    v37 = self;
    v38 = 2114;
    v39 = v11;
    _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Severing remote view controller connection...", buf, 0x20u);
  }

  if (self->_remoteViewControllerDisconnectionHandler)
  {
    v12 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v15 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      *buf = 138543874;
      v35 = v14;
      v36 = 2050;
      v37 = self;
      v38 = 2114;
      v39 = v15;
      _os_log_impl(&dword_27425E000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Already had a remote view controller disconnection handler", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v16 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33 = @"Already had a remote view controller disconnection handler";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v18 = [v16 errorWithDomain:@"WGWidgetHostingViewControllerErrorDomain" code:0 userInfo:v17];

    remoteViewControllerDisconnectionHandler = self->_remoteViewControllerDisconnectionHandler;
    WeakRetained = objc_loadWeakRetained(buf);
    remoteViewControllerDisconnectionHandler[2](remoteViewControllerDisconnectionHandler, WeakRetained, v6, v18);

    objc_destroyWeak(buf);
  }

  v21 = dispatch_semaphore_create(0);
  v22 = self->_remoteViewController;
  [(_WGWidgetRemoteViewController *)v22 _setValid:0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__WGWidgetHostingViewController__disconnectRemoteViewControllerForSequence_completion___block_invoke;
  v29[3] = &unk_279ED2070;
  v23 = v21;
  v30 = v23;
  v24 = v7;
  v31 = v24;
  [(WGWidgetHostingViewController *)self _setRemoteViewControllerDisconnectionHandler:v29];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __87__WGWidgetHostingViewController__disconnectRemoteViewControllerForSequence_completion___block_invoke_301;
  v27[3] = &unk_279ED1BA0;
  v25 = v23;
  v28 = v25;
  [(WGWidgetHostingViewController *)self _enqueueRequest:v27 inQueue:self->_proxyConnectionQueue trampolinedToMainQueue:0 withDescription:@"Blocking proxy connection queue on connection semaphore"];
  [(WGWidgetHostingViewController *)self _setConnectionState:2];
  if (v22)
  {
    v26 = [(_WGWidgetRemoteViewController *)v22 disconnect];
  }

  else
  {
    [(WGWidgetHostingViewController *)self widget:0 didTerminateWithError:0];
  }
}

void __87__WGWidgetHostingViewController__disconnectRemoteViewControllerForSequence_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__WGWidgetHostingViewController__disconnectRemoteViewControllerForSequence_completion___block_invoke_2;
  v8[3] = &unk_279ED1FF8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  [a2 _finishDisconnectingRemoteViewControllerForSequence:a3 error:a4 completion:v8];
}

void __87__WGWidgetHostingViewController__disconnectRemoteViewControllerForSequence_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 widgetIdentifier];
    v10 = [v5 _containerIdentifier];
    v11 = *(a1 + 32);
    v13 = 138544130;
    v14 = v9;
    v15 = 2050;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_27425E000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Signaling disconnection semaphore (%{public}@)", &v13, 0x2Au);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v5, v6);
  }
}

void __87__WGWidgetHostingViewController__disconnectRemoteViewControllerForSequence_completion___block_invoke_301(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 widgetIdentifier];
    v10 = [v5 _containerIdentifier];
    v11 = *(a1 + 32);
    v17 = 138544130;
    v18 = v9;
    v19 = 2050;
    v20 = v5;
    v21 = 2114;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_27425E000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Waiting on disconnection semaphore (%{public}@)", &v17, 0x2Au);
  }

  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v12 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v5 widgetIdentifier];
    v15 = [v5 _containerIdentifier];
    v16 = *(a1 + 32);
    v17 = 138544130;
    v18 = v14;
    v19 = 2050;
    v20 = v5;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    _os_log_impl(&dword_27425E000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> No longer waiting on disconnection semaphore (%{public}@)", &v17, 0x2Au);
  }
}

- (void)_finishDisconnectingRemoteViewControllerForSequence:(id)a3 error:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v14 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    v25 = 138543874;
    v26 = v13;
    v27 = 2050;
    v28 = self;
    v29 = 2114;
    v30 = v14;
    _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Severed remote view controller connection", &v25, 0x20u);
  }

  [(WGWidgetHostingViewController *)self _setConnectionState:0];
  v15 = [(WGWidgetHostingViewController *)self _viewWillAppearSemaphore];

  if (v15)
  {
    v16 = [(WGWidgetHostingViewController *)self _viewWillAppearSemaphore];
    dispatch_semaphore_signal(v16);
  }

  [(WGWidgetHostingViewController *)self _setRemoteViewController:0];
  [(WGWidgetHostingViewController *)self _setDidUpdate:0];
  if (([v8 isCurrentState:0] & 1) == 0)
  {
    v17 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v20 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v25 = 138543874;
      v26 = v19;
      v27 = 2050;
      v28 = self;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&dword_27425E000, v18, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Widget disconnected unexpectedly", &v25, 0x20u);
    }

    [(WGWidgetHostingViewController *)self _invalidateDisconnectionTimer];
    [(WGWidgetHostingViewController *)self _abortActiveSequence];
    if ([(UIViewController *)self wg_isAppearingOrAppeared])
    {
      [(WGWidgetHostingViewController *)self _attemptReconnectionAfterUnanticipatedDisconnection];
    }
  }

  v21 = [(WGWidgetHostingViewController *)self _extensionRequest];
  [(WGWidgetHostingViewController *)self _setExtensionRequest:0];
  if (v21)
  {
    v22 = [(WGWidgetHostingViewController *)self widgetInfo];
    v23 = [v22 extension];

    [v23 cancelExtensionRequestWithIdentifier:v21];
  }

  if (v10)
  {
    v10[2](v10, self, v8);
  }

  v24 = [(WGWidgetHostingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v24 remoteViewControllerDidDisconnectForWidget:self];
  }
}

- (void)_scheduleDisconnectionTimerForSequence:(id)a3 endTransitionBlock:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CCACC8];
  v11 = a3;
  if (([v10 isMainThread] & 1) == 0 && (v12 = WGLogWidgets, os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR)))
  {
    [WGWidgetHostingViewController _scheduleDisconnectionTimerForSequence:v12 endTransitionBlock:self completion:?];
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else if (v11)
  {
    goto LABEL_4;
  }

  [WGWidgetHostingViewController _scheduleDisconnectionTimerForSequence:endTransitionBlock:completion:];
LABEL_4:
  v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v11, @"WGWidgetHostingViewControllerDisconnectionTimerSequenceKey", 0}];

  if (v8)
  {
    v14 = [v8 copy];
    [v13 setObject:v14 forKey:@"WGWidgetHostingViewControllerDisconnectionTimerEndTransitionBlockKey"];
  }

  if (v9)
  {
    v15 = [v9 copy];
    [v13 setObject:v15 forKey:@"WGWidgetHostingViewControllerDisconnectionTimerCompletionKey"];
  }

  v16 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__disconnectionTimerDidFire_ selector:v13 userInfo:0 repeats:1.0];
  objc_storeWeak(&self->_disconnectionTimer, v16);
}

- (void)_disconnectionTimerDidFire:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v5 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [(WGWidgetHostingViewController *)v5 _disconnectionTimerDidFire:?];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_disconnectionTimer);

  if (WeakRetained == v4)
  {
    v7 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v10 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v17 = 138543874;
      v18 = v9;
      v19 = 2050;
      v20 = self;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_27425E000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Disconnection timer fired", &v17, 0x20u);
    }

    v11 = objc_opt_class();
    v12 = [v4 userInfo];
    v13 = WGSafeCast(v11, v12);

    v14 = [v13 objectForKey:@"WGWidgetHostingViewControllerDisconnectionTimerSequenceKey"];
    v15 = [v13 objectForKey:@"WGWidgetHostingViewControllerDisconnectionTimerEndTransitionBlockKey"];
    v16 = [v13 objectForKey:@"WGWidgetHostingViewControllerDisconnectionTimerCompletionKey"];
    [(WGWidgetHostingViewController *)self _enqueueDisconnectionRequestForSequence:v14 endTransitionBlock:v15 completion:v16];
  }
}

- (void)_invalidateDisconnectionTimer
{
  v3 = a1;
  v4 = [a2 widgetIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_27425E000, v5, v6, "%{public}@: Attempting to invalidate disconnection timer on non-main thread!", v7, v8, v9, v10, v11);
}

- (void)_attemptReconnectionAfterUnanticipatedDisconnection
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v6 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    v19 = 138543874;
    v20 = v5;
    v21 = 2050;
    v22 = self;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_27425E000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Remote view controller disconnected unexpectedly", &v19, 0x20u);
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  if (self->_lastUnanticipatedDisconnectionDate && ([MEMORY[0x277CBEAA8] date], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "timeIntervalSinceDate:", self->_lastUnanticipatedDisconnectionDate), v10 = v9, v8, v10 < 8.0))
  {
    v11 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v14 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v19 = 138544130;
      v20 = v13;
      v21 = 2050;
      v22 = self;
      v23 = 2114;
      v24 = v14;
      v25 = 2050;
      v26 = 8;
      _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Two crashes within interval (%{public}ld) - we're done", &v19, 0x2Au);
    }

    [(WGWidgetHostingViewController *)self _setBlacklisted:1];
    [(WGWidgetHostingViewController *)self invalidateCachedSnapshotWithCompletionHandler:0];
    [(WGWidgetHostingViewController *)self _setLargestAvailableDisplayMode:[(WGWidgetInfo *)self->_widgetInfo isLinkedOnOrAfterSystemVersion:@"10.0"]^ 1];
    [(WGWidgetHostingViewController *)self _insertBrokenView];
  }

  else
  {
    v15 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(WGWidgetHostingViewController *)self widgetIdentifier];
      v18 = [(WGWidgetHostingViewController *)self _containerIdentifier];
      v19 = 138543874;
      v20 = v17;
      v21 = 2050;
      v22 = self;
      v23 = 2114;
      v24 = v18;
      _os_log_impl(&dword_27425E000, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Attempting to reconnect to remote view controller", &v19, 0x20u);
    }

    [(WGWidgetHostingViewController *)self _beginSequenceWithReason:@"reconnection attempt" completion:0 updateHandler:0];
  }

  [(WGWidgetHostingViewController *)self _setLastUnanticipatedDisconnectionDate:v7];
}

- (void)_insertBrokenView
{
  v3 = [(WGWidgetHostingViewController *)self _brokenView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(_WGBrokenWidgetView);
  }

  v7 = v5;

  [(WGWidgetHostingViewController *)self _setBrokenView:v7];
  v6 = [(WGWidgetHostingViewController *)self _brokenView];
  [(WGWidgetHostingViewController *)self _insertContentProvidingSubview:v6 sequence:self->_activeLifeCycleSequence completion:&__block_literal_global_328];
}

void __50__WGWidgetHostingViewController__insertBrokenView__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v2 = [v7 _brokenView];
  v3 = [v7 _contentProvidingView];

  v4 = v7;
  if (v2 == v3)
  {
    v5 = [v7 _brokenView];
    [v5 addTarget:v7 action:sel_handleReconnectionRequest_];

    v6 = [v7 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 brokenViewDidAppearForWidget:v7];
    }

    v4 = v7;
  }
}

- (void)handleReconnectionRequest:(id)a3
{
  [(WGWidgetHostingViewController *)self _setBlacklisted:0];

  [(WGWidgetHostingViewController *)self _beginSequenceWithReason:@"reconnection attempt" completion:0 updateHandler:0];
}

- (CGSize)_maxSizeForDisplayMode:(int64_t)a3
{
  +[WGWidgetInfo maximumContentHeightForCompactDisplayMode];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = [(WGWidgetHostingViewController *)self delegate];
    [v8 maxSizeForWidget:self forDisplayMode:a3];
    v10 = v9;
    v6 = v11;
  }

  else
  {
    v10 = 0.0;
  }

  v12 = v10;
  v13 = v6;
  result.height = v13;
  result.width = v12;
  return result;
}

- (UIEdgeInsets)_marginInsets
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained marginInsetsForWidget:self];
    v5 = v4;
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v5 = *MEMORY[0x277D768C8];
    v7 = *(MEMORY[0x277D768C8] + 8);
    v9 = *(MEMORY[0x277D768C8] + 24);
  }

  v10 = 39.0;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.right = v13;
  result.bottom = v10;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UIEdgeInsets)_layoutMargins
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained layoutMarginForWidget:self];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277CD9380];
    v7 = *(MEMORY[0x277CD9380] + 8);
    v9 = *(MEMORY[0x277CD9380] + 16);
    v11 = *(MEMORY[0x277CD9380] + 24);
  }

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

- (void)_layoutMarginsDidChange
{
  v3 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
  v4 = [v3 isCurrentState:4];

  if (v4)
  {
    [(WGWidgetHostingViewController *)self _layoutMargins];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__WGWidgetHostingViewController__layoutMarginsDidChange__block_invoke;
    v8[3] = &__block_descriptor_64_e72_v28__0__WGWidgetHostingViewController_8__WGWidgetLifeCycleSequence_16B24l;
    v9 = v10;
    v5 = MEMORY[0x277CCACA8];
    v6 = NSStringFromUIEdgeInsets(v10);
    v7 = [v5 stringWithFormat:@"Updating layout margins: '%@'", v6];
    [(WGWidgetHostingViewController *)self _enqueueRemoteServiceRequest:v8 withDescription:v7];
  }
}

void __56__WGWidgetHostingViewController__layoutMarginsDidChange__block_invoke(double *a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = [a2 _remoteViewController];
    [v5 _updateLayoutMargins:{a1[4], a1[5], a1[6], a1[7]}];
  }
}

- (void)_updatePreferredContentSizeWithHeight:(double)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v8 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    v9 = 138544130;
    v10 = v7;
    v11 = 2050;
    v12 = self;
    v13 = 2114;
    v14 = v8;
    v15 = 2050;
    v16 = a3;
    _os_log_impl(&dword_27425E000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Requested preferred height: %{public}ld", &v9, 0x2Au);
  }

  [(WGWidgetHostingViewController *)self preferredContentSize];
  [(WGWidgetHostingViewController *)self setPreferredContentSize:?];
}

- (void)_setLargestAvailableDisplayMode:(int64_t)a3
{
  if ([(WGWidgetHostingViewController *)self largestAvailableDisplayMode]!= a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_host);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained widget:self didChangeLargestAvailableDisplayMode:a3];
    }

    v6 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [v6 widget:self didChangeLargestSupportedDisplayMode:a3];
    }
  }

  if ([(WGWidgetHostingViewController *)self userSpecifiedDisplayMode]>= a3)
  {

    [(WGWidgetHostingViewController *)self setActiveDisplayMode:a3];
  }
}

- (void)_noteOutstandingUpdateRequestForSequence:(id)a3
{
  v4 = a3;
  if (v4)
  {
    sequenceIDsToOutstandingWidgetUpdateCompletionHandlers = self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers;
    if (!sequenceIDsToOutstandingWidgetUpdateCompletionHandlers)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers;
      self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers = v6;

      sequenceIDsToOutstandingWidgetUpdateCompletionHandlers = self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers;
    }

    v8 = [v4 sequenceIdentifier];
    v9 = [(NSMutableDictionary *)sequenceIDsToOutstandingWidgetUpdateCompletionHandlers objectForKey:v8];

    if (v9 && os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
    {
      [WGWidgetHostingViewController _noteOutstandingUpdateRequestForSequence:];
    }

    v10 = self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers;
    v11 = [v4 sequenceIdentifier];
    [(NSMutableDictionary *)v10 setObject:&__block_literal_global_10 forKey:v11];
  }

  else if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    [WGWidgetHostingViewController _noteOutstandingUpdateRequestForSequence:];
  }
}

- (BOOL)_hasOutstandingUpdateRequestForSequence:(id)a3
{
  sequenceIDsToOutstandingWidgetUpdateCompletionHandlers = self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers;
  v4 = [a3 sequenceIdentifier];
  v5 = [(NSMutableDictionary *)sequenceIDsToOutstandingWidgetUpdateCompletionHandlers objectForKey:v4];
  LOBYTE(sequenceIDsToOutstandingWidgetUpdateCompletionHandlers) = v5 == &__block_literal_global_10;

  return sequenceIDsToOutstandingWidgetUpdateCompletionHandlers;
}

- (void)_registerUpdateRequestCompletionHandler:(id)a3 forSequence:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      sequenceIDsToOutstandingWidgetUpdateCompletionHandlers = self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers;
      self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers = v8;
    }

    v10 = self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers;
    v11 = [v7 sequenceIdentifier];
    if (v6)
    {
      v12 = [(NSMutableDictionary *)v10 objectForKey:v11];

      if (v12)
      {
        v13 = v12 == &__block_literal_global_10;
      }

      else
      {
        v13 = 1;
      }

      if (!v13 && os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
      {
        [WGWidgetHostingViewController _noteOutstandingUpdateRequestForSequence:];
      }

      v14 = self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers;
      v15 = MEMORY[0x2743E8C10](v6);
      v16 = [v7 sequenceIdentifier];
      [(NSMutableDictionary *)v14 setObject:v15 forKey:v16];
    }

    else
    {
      [(NSMutableDictionary *)v10 removeObjectForKey:v11];
    }
  }

  else if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    [WGWidgetHostingViewController _noteOutstandingUpdateRequestForSequence:];
  }
}

- (id)_updateRequestForSequence:(id)a3
{
  if (a3)
  {
    sequenceIDsToOutstandingWidgetUpdateCompletionHandlers = self->_sequenceIDsToOutstandingWidgetUpdateCompletionHandlers;
    v4 = [a3 sequenceIdentifier];
    v5 = [(NSMutableDictionary *)sequenceIDsToOutstandingWidgetUpdateCompletionHandlers objectForKey:v4];
    v6 = MEMORY[0x2743E8C10]();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setRemoteViewController:(id)a3
{
  v5 = a3;
  remoteViewController = self->_remoteViewController;
  v9 = v5;
  if (remoteViewController != v5)
  {
    [(_WGWidgetRemoteViewController *)remoteViewController willMoveToParentViewController:0];
    v7 = [(WGWidgetHostingViewController *)self isRemoteViewVisible];
    [(WGWidgetHostingViewController *)self _beginRemoteViewControllerAppearanceTransitionIfNecessary:0 semaphore:0 animated:0 completion:0];
    v8 = [(_WGWidgetRemoteViewController *)self->_remoteViewController view];
    [v8 removeFromSuperview];

    if (v7)
    {
      [(WGWidgetHostingViewController *)self _setContentProvidingView:0];
    }

    [(WGWidgetHostingViewController *)self _endRemoteViewControllerAppearanceTransitionIfNecessary];
    [(_WGWidgetRemoteViewController *)self->_remoteViewController removeFromParentViewController];
    objc_storeStrong(&self->_remoteViewController, a3);
    if (self->_remoteViewController)
    {
      [(WGWidgetHostingViewController *)self addChildViewController:?];
      [(_UIRemoteViewController *)self->_remoteViewController didMoveToParentViewController:self];
    }
  }
}

- (void)widget:(id)a3 didTerminateWithError:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(WGWidgetHostingViewController *)self widgetIdentifier];
    v11 = [(WGWidgetHostingViewController *)self _containerIdentifier];
    v15 = 138544130;
    v16 = v10;
    v17 = 2050;
    v18 = self;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Remote view controller did terminate with error: %{public}@", &v15, 0x2Au);
  }

  v12 = [(WGWidgetHostingViewController *)self _remoteViewController];

  if (v12 == v6)
  {
    v13 = [(WGWidgetHostingViewController *)self _remoteViewControllerDisconnectionHandler];
    if (v13)
    {
      [(WGWidgetHostingViewController *)self _setRemoteViewControllerDisconnectionHandler:0];
      v14 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      (v13)[2](v13, self, v14, v7);
    }

    else
    {
      v14 = [(WGWidgetHostingViewController *)self _activeLifeCycleSequence];
      [(WGWidgetHostingViewController *)self _finishDisconnectingRemoteViewControllerForSequence:v14 error:v7 completion:0];
    }
  }
}

- (void)_rowHeightDidChange:(id)a3
{
  [(WGWidgetHostingViewController *)self preferredContentSize];

  [(WGWidgetHostingViewController *)self _updatePreferredContentSizeWithHeight:v4];
}

- (NSString)_containerIdentifier
{
  v2 = [(WGWidgetHostingViewController *)self parentViewController];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_invalidateVisibleFrame
{
  if ([(WGWidgetInfo *)self->_widgetInfo wantsVisibleFrame]&& [(UIViewController *)self->_remoteViewController wg_isAppearingOrAppeared])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained visibleFrameForWidget:self];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __56__WGWidgetHostingViewController__invalidateVisibleFrame__block_invoke;
      v8[3] = &__block_descriptor_64_e72_v28__0__WGWidgetHostingViewController_8__WGWidgetLifeCycleSequence_16B24l;
      v8[4] = v4;
      v8[5] = v5;
      v8[6] = v6;
      v8[7] = v7;
      [(WGWidgetHostingViewController *)self _enqueueRemoteServiceRequest:v8 withDescription:@"Requesting visible frame"];
    }
  }
}

void __56__WGWidgetHostingViewController__invalidateVisibleFrame__block_invoke(double *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _remoteViewController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__WGWidgetHostingViewController__invalidateVisibleFrame__block_invoke_2;
  v10[3] = &unk_279ED17A0;
  v11 = v3;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = v3;
  [v4 _updateVisibleFrame:v10 withReplyHandler:{v5, v6, v7, v8}];
}

void __56__WGWidgetHostingViewController__invalidateVisibleFrame__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) widgetInfo];
  [v3 _setWantsVisibleFrame:a2];
}

- (void)_insertLockedOutViewWithExplanation:(id)a3
{
  v8 = a3;
  v4 = [(WGWidgetHostingViewController *)self _lockedOutView];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [[_WGLockedOutWidgetView alloc] initWithExplanation:v8];
  }

  v7 = v6;

  [(WGWidgetHostingViewController *)self _setLockedOutView:v7];
  [(WGWidgetHostingViewController *)self _insertContentProvidingSubview:v7 sequence:self->_activeLifeCycleSequence completion:0];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(WGWidgetHostingViewController *)self widgetIdentifier];
  v6 = [(WGWidgetHostingViewController *)self _remoteViewController];
  v7 = [(WGWidgetHostingViewController *)self _contentProvidingView];
  v8 = [v3 stringWithFormat:@"<%@: %p widgetIdentifier = %@; _remoteViewController = %@; _contentProvidingView = %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (WGWidgetHostingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WGWidgetHostingViewControllerHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (CGRect)_snapshotViewBounds
{
  x = self->_snapshotViewBounds.origin.x;
  y = self->_snapshotViewBounds.origin.y;
  width = self->_snapshotViewBounds.size.width;
  height = self->_snapshotViewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSTimer)_disconnectionTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_disconnectionTimer);

  return WeakRetained;
}

+ (BOOL)_canWidgetHostConnectRemoteViewControllerByRequestingForSequence:(id)a3 disconnectionTimer:(id)a4 connectionState:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    +[WGWidgetHostingViewController(Testing) _canWidgetHostConnectRemoteViewControllerByRequestingForSequence:disconnectionTimer:connectionState:];
  }

  v9 = 1;
  if (([v7 isCurrentStateNotYet:1] & 1) == 0)
  {
    v10 = [v7 isCurrentState:6];
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v9 = a5 == 1 || v11;
  }

  return v9;
}

+ (BOOL)_canWidgetHostConnectRemoteViewControllerByCancellingDisappearanceForSequence:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    +[WGWidgetHostingViewController(Testing) _canWidgetHostConnectRemoteViewControllerByCancellingDisappearanceForSequence:];
  }

  v4 = [v3 isCurrentStateAtLeast:5];

  return v4;
}

+ (BOOL)_canWidgetHostRequestRemoteViewControllerForSequence:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    +[WGWidgetHostingViewController(Testing) _canWidgetHostRequestRemoteViewControllerForSequence:];
  }

  v4 = [v3 isCurrentState:1];

  return v4;
}

+ (BOOL)_canWidgetHostCaptureSnapshotForSequence:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    +[WGWidgetHostingViewController(Testing) _canWidgetHostCaptureSnapshotForSequence:];
  }

  v4 = [v3 isCurrentStateNotYet:5];

  return v4;
}

+ (BOOL)_canWidgetHostInsertRemoteViewForSequence:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    +[WGWidgetHostingViewController(Testing) _canWidgetHostInsertRemoteViewForSequence:];
  }

  if ([v3 isCurrentStateAtLeast:2])
  {
    v4 = [v3 isCurrentStateNotYet:6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)_canWidgetHostEndSequenceByDisconnectingRemoteViewControllerForSequence:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    +[WGWidgetHostingViewController(Testing) _canWidgetHostEndSequenceByDisconnectingRemoteViewControllerForSequence:];
  }

  if ([v3 isCurrentState:0])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isCurrentStateNotYet:6];
  }

  return v4;
}

+ (BOOL)_canWidgetHostDisconnectRemoteViewControllerForSequence:(id)a3 disconnectionTimer:(id)a4 coalesce:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    +[WGWidgetHostingViewController(Testing) _canWidgetHostDisconnectRemoteViewControllerForSequence:disconnectionTimer:coalesce:];
  }

  v9 = [v7 isCurrentStateNotYet:6];
  v10 = !a5;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = (v9 & 1) != 0 || v10;

  return v11;
}

- (void)_connectRemoteViewControllerForReason:(void *)a1 sequence:completionHandler:.cold.1(void *a1)
{
  v1 = a1;
  v2 = WGStringFromWidgetLifeCycleSequenceState(2uLL);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_27425E000, v3, v4, "Encountered error transitioning to target state '%{public}@': %{public}@", v5, v6, v7, v8, v9);
}

- (void)_connectRemoteViewControllerForReason:(void *)a1 sequence:completionHandler:.cold.2(void *a1)
{
  v1 = a1;
  v2 = WGStringFromWidgetLifeCycleSequenceState(1uLL);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_27425E000, v3, v4, "Encountered error transitioning to target state '%{public}@': %{public}@", v5, v6, v7, v8, v9);
}

- (void)_requestRemoteViewControllerForSequence:completionHander:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_9(&dword_27425E000, "Encountered error transitioning to target state '%{public}@': %{public}@", v4, v5);
}

void __90__WGWidgetHostingViewController__requestRemoteViewControllerForSequence_completionHander___block_invoke_157_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 96) object:*(a1 + 72) file:@"WGWidgetHostingViewController.m" lineNumber:926 description:@"Extension request is nil"];
}

- (void)_captureSnapshotAndBeginDisappearanceTransitionForSequence:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = a1;
  v2 = WGStringFromWidgetLifeCycleSequenceState(5uLL);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_27425E000, v3, v4, "Encountered error transitioning to target state '%{public}@': %{public}@", v5, v6, v7, v8, v9);
}

- (void)_packageViewWithBlock:reply:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"loadPackageViewBlock && reply" object:? file:? lineNumber:? description:?];
}

- (void)_packageViewFromURL:reply:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"reply" object:? file:? lineNumber:? description:?];
}

- (void)_requestInsertionOfRemoteViewAfterViewWillAppearForSequence:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = a1;
  v2 = WGStringFromWidgetLifeCycleSequenceState(3uLL);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_27425E000, v3, v4, "Encountered error transitioning to target state '%{public}@': %{public}@", v5, v6, v7, v8, v9);
}

- (void)_requestInsertionOfRemoteViewAfterViewWillAppearForSequence:(void *)a1 completionHandler:.cold.2(void *a1)
{
  v1 = a1;
  v2 = WGStringFromWidgetLifeCycleSequenceState(4uLL);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_27425E000, v3, v4, "Encountered error transitioning to target state '%{public}@': %{public}@", v5, v6, v7, v8, v9);
}

- (void)_requestInsertionOfRemoteViewAfterViewWillAppearForSequence:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"endTransitionBlock || error" object:? file:? lineNumber:? description:?];
}

- (void)_disconnectRemoteViewControllerForReason:(void *)a1 sequence:coalesce:completionHandler:.cold.1(void *a1)
{
  v1 = a1;
  v2 = WGStringFromWidgetLifeCycleSequenceState(6uLL);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_27425E000, v3, v4, "Encountered error transitioning to target state '%{public}@': %{public}@", v5, v6, v7, v8, v9);
}

- (void)_disconnectRemoteViewControllerForReason:(void *)a1 sequence:coalesce:completionHandler:.cold.2(void *a1)
{
  v1 = a1;
  v2 = WGStringFromWidgetLifeCycleSequenceState(0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_27425E000, v3, v4, "Encountered error transitioning to target state '%{public}@': %{public}@", v5, v6, v7, v8, v9);
}

- (void)_disconnectRemoteViewControllerForReason:sequence:coalesce:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"endTransitionBlock || error" object:? file:? lineNumber:? description:?];
}

- (void)_scheduleDisconnectionTimerForSequence:(void *)a1 endTransitionBlock:(void *)a2 completion:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 widgetIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_27425E000, v5, v6, "%{public}@: Attempting to schedule disconnection timer on non-main thread!", v7, v8, v9, v10, v11);
}

- (void)_scheduleDisconnectionTimerForSequence:endTransitionBlock:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"sequence" object:? file:? lineNumber:? description:?];
}

- (void)_disconnectionTimerDidFire:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 widgetIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_27425E000, v5, v6, "%{public}@: Timer fired on non-main thread!", v7, v8, v9, v10, v11);
}

- (void)_noteOutstandingUpdateRequestForSequence:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end