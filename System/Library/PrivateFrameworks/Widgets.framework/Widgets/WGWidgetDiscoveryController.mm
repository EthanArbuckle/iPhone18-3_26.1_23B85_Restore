@interface WGWidgetDiscoveryController
+ (int64_t)layoutModeForSize:(CGSize)a3;
- (BOOL)_isElementWithIdentifierEnabled:(id)a3;
- (BOOL)_isElementWithIdentifierFavorited:(id)a3;
- (BOOL)_isElementWithIdentifierKnown:(id)a3;
- (BOOL)_setEnabled:(BOOL)a3 forElementWithIdentifier:(id)a4;
- (BOOL)alwaysShowsFavoriteWidgets;
- (BOOL)areWidgetsPinned;
- (BOOL)shouldPurgeArchivedSnapshotsForWidget:(id)a3;
- (BOOL)shouldShowWidgetsPinButtonForWidgetListEditViewController:(id)a3;
- (BOOL)shouldShowWidgetsPinningTeachingView;
- (BOOL)widgetListEditViewControllerShouldIncludeInternalWidgets:(id)a3;
- (BOOL)widgetListEditViewControllerShouldShowFavorites:(id)a3;
- (WGWidgetDebugging)debuggingHandler;
- (WGWidgetDiscoveryController)init;
- (WGWidgetDiscoveryControllerDelegate)delegate;
- (WGWidgetListEditViewController)presentedEditViewController;
- (id)_disabledIdentifiers;
- (id)_groupForWidgetWithIdentifier:(id)a3;
- (id)_insertWidgetWithIdentifier:(id)a3 atTop:(BOOL)a4;
- (id)_newWidgetListEditViewController;
- (id)_newWidgetListEditViewControllerStatusBarAssertion;
- (id)_newWidgetWithIdentifier:(id)a3 delegate:(id)a4;
- (id)_orderedEnabledIdentifiersForGroup:(id)a3;
- (id)_orderedEnabledWidgetIdentifiersForGroup:(id)a3 includingNoContent:(BOOL)a4;
- (id)_orderedVisibleIdentifiersForGroup:(id)a3;
- (id)_orderedVisibleIdentifiersForTodayGroup;
- (id)_orderedVisibleIdentifiersForWidgetGroup;
- (id)_preferredViewControllerForPresentingFromViewController:(id)a3;
- (id)_updatePublicationStateOfDatumWithIdentifier:(id)a3 visibilityChanged:(BOOL)a4 contentStateChanged:(BOOL)a5 insertAtTop:(BOOL)a6 notifyingObservers:(BOOL)a7;
- (id)enabledWidgetIdentifiersForAllGroups;
- (id)widgetListEditViewController:(id)a3 displayNameForItemWithIdentifier:(id)a4;
- (id)widgetWithIdentifier:(id)a3 delegate:(id)a4 forRequesterWithIdentifier:(id)a5;
- (int64_t)_widgetListEditViewControllerStatusBarLegibilityStyle;
- (int64_t)largestAvailableDisplayModeForWidget:(id)a3;
- (int64_t)layoutModeForWidgetListEditViewController:(id)a3;
- (int64_t)userSpecifiedDisplayModeForWidget:(id)a3;
- (unint64_t)visibleWidgetsCount;
- (void)_addDefaultPinnedWidgets;
- (void)_applicationIconChanged:(id)a3;
- (void)_beginObservingDataSourcesIfNecessary;
- (void)_calculateAndPostNewWidgetsCount;
- (void)_dataSourcesDidChange:(id)a3;
- (void)_externalSourceRequestsInsertionOfWidgetWithIdentifier:(id)a3 insertAtTop:(BOOL)a4;
- (void)_invalidateVisibleIdentifiersForGroup:(id)a3;
- (void)_invalidateWidgetListEditViewControllerStatusBarAssertion:(id)a3;
- (void)_notifyObserversOfOrderChangeForWidgetIdentifiers:(id)a3;
- (void)_notifyObserversOfSignificantWidgetsChange;
- (void)_notifyObserversOfVisibilityChange:(BOOL)a3 ofWidgetWithIdentifier:(id)a4 inGroup:(id)a5;
- (void)_removeWidgetWithIdentifier:(id)a3;
- (void)_requestUnlockWithCompletion:(id)a3;
- (void)_setWidgetsPinned:(BOOL)a3;
- (void)_updateFavoriteWidgetIDs:(id)a3;
- (void)_updateLockedOutStateForWidget:(id)a3;
- (void)_updateLockedOutStateForWidget:(id)a3 withContainingAppProxy:(id)a4;
- (void)_widget:(id)a3 withIdentifier:(id)a4 didRemoveSnapshotAtURL:(id)a5;
- (void)_widgetListEditViewControllerWillDisappear:(id)a3;
- (void)_widgetViewControllerDidRemoveSnapshot:(id)a3;
- (void)_widgetViewControllerRequestsAdd:(id)a3;
- (void)addDiscoveryObserver:(id)a3;
- (void)beginDiscovery;
- (void)debugWidgetWithBundleID:(id)a3 options:(id)a4 completion:(id)a5;
- (void)deviceManagementPolicyDidChange:(id)a3;
- (void)dismissWidgetListEditViewController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (void)dismissWidgetListEditViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleWidgetLaunchRecommendation:(id)a3 completion:(id)a4;
- (void)invalidateVisibleIdentifiers;
- (void)noteWidgetsPinningViewControllerDidDismiss:(BOOL)a3;
- (void)presentWidgetListEditViewControllerFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)remoteViewControllerDidConnectForWidgetViewController:(id)a3;
- (void)remoteViewControllerViewDidAppearForWidgetViewController:(id)a3;
- (void)removeDiscoveryObserver:(id)a3;
- (void)removeWidgetIdentifiersFromToday:(id)a3;
- (void)setHasContent:(BOOL)a3 forWidgetWithIdentifier:(id)a4;
- (void)widget:(id)a3 didChangeLargestAvailableDisplayMode:(int64_t)a4;
- (void)widget:(id)a3 didChangeUserSpecifiedDisplayMode:(int64_t)a4;
- (void)widget:(id)a3 didEncounterProblematicSnapshotAtURL:(id)a4;
- (void)widget:(id)a3 didRemoveSnapshotAtURL:(id)a4;
- (void)widgetDataSource:(id)a3 removeDatum:(id)a4;
- (void)widgetDataSource:(id)a3 replaceWithDatum:(id)a4;
- (void)widgetEditListViewController:(id)a3 traitCollectionDidChange:(id)a4;
- (void)widgetListEditViewController:(id)a3 acknowledgeInterfaceItemsWithIdentifiers:(id)a4;
- (void)widgetListEditViewController:(id)a3 didReorderItemsWithIdentifiersInGroups:(id)a4;
- (void)widgetListEditViewController:(id)a3 requestsIconForItemWithIdentifier:(id)a4 withHandler:(id)a5;
- (void)widgetListEditViewController:(id)a3 setEnabled:(BOOL)a4 forItemsWithIdentifiers:(id)a5;
- (void)widgetViewControllerNeedsToBeRegisteredForRefreshNotification:(id)a3;
- (void)widgetViewControllerNeedsToBeUnregisteredForRefreshNotification:(id)a3;
@end

@implementation WGWidgetDiscoveryController

+ (int64_t)layoutModeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = 3;
  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = 1;
  }

  if (width <= height)
  {
    return 2 * ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1);
  }

  else
  {
    return v7;
  }
}

- (WGWidgetDiscoveryController)init
{
  v12.receiver = self;
  v12.super_class = WGWidgetDiscoveryController;
  v2 = [(WGWidgetDiscoveryController *)&v12 init];
  if (v2)
  {
    WGRegisterWidgetsLogging();
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    defaultEnabledIDs = v2->_defaultEnabledIDs;
    v2->_defaultEnabledIDs = v3;

    v5 = [[WGWidgetPersistentStateController alloc] initWithDiscoveryController:v2];
    persistentStateController = v2->_persistentStateController;
    v2->_persistentStateController = v5;

    v7 = [[WGWidgetStatsController alloc] initWithDiscoveryController:v2];
    statsController = v2->_statsController;
    v2->_statsController = v7;

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v2 selector:sel__widgetViewControllerRequestsAdd_ name:@"WGWidgetViewControllerAddRequestNotification" object:0];
    [v9 addObserver:v2 selector:sel__widgetViewControllerDidRemoveSnapshot_ name:@"WGWidgetViewControllerDidRemoveSnapshotNotification" object:0];
    [v9 addObserver:v2 selector:sel__widgetListEditViewControllerWillDisappear_ name:@"WGWidgetListEditViewControllerWillDisappear" object:0];
    v10 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v10 addObserver:v2 selector:sel__applicationIconChanged_ name:@"com.apple.LaunchServices.applicationIconChanged" object:0];
  }

  return v2;
}

- (unint64_t)visibleWidgetsCount
{
  v3 = [(WGWidgetDiscoveryController *)self _orderedVisibleIdentifiersForTodayGroup];
  v4 = [v3 count];
  v5 = [(WGWidgetDiscoveryController *)self _orderedVisibleIdentifiersForWidgetGroup];
  v6 = [v5 count];

  return v6 + v4;
}

- (void)addDiscoveryObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      v7 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    v4 = [(NSPointerArray *)observers addPointer:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)removeDiscoveryObserver:(id)a3
{
  v5 = a3;
  if (v5)
  {
    [(NSPointerArray *)self->_observers compact];
    if ([(NSPointerArray *)self->_observers count])
    {
      v4 = 0;
      while ([(NSPointerArray *)self->_observers pointerAtIndex:v4]!= v5)
      {
        if (++v4 >= [(NSPointerArray *)self->_observers count])
        {
          goto LABEL_8;
        }
      }

      [(NSPointerArray *)self->_observers removePointerAtIndex:v4];
    }
  }

LABEL_8:
}

- (void)_updateLockedOutStateForWidget:(id)a3 withContainingAppProxy:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(WGWidgetDiscoveryController *)self _isApplicationLockedOutWithProxy:v6];
  if (v7)
  {
    v8 = MEMORY[0x277D24400];
    if (v6)
    {
      v9 = [v6 localizedName];
      [v8 messageForApplicationName:v9 style:2];
    }

    else
    {
      v9 = [v11 widgetIdentifier];
      [v8 messageForBundleIdentifier:v9 style:2];
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  [v11 setLockedOut:v7 withExplanation:v10];
}

- (void)_updateLockedOutStateForWidget:(id)a3
{
  v8 = a3;
  v4 = [v8 widgetIdentifier];
  v5 = WGContainingBundleProxyForWidgetWithBundleIdentifer(v4);

  if (v5)
  {
    v6 = [v5 bundleType];
    if (([v6 isEqualToString:*MEMORY[0x277CC1E08]] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CC1E30]) & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CC1E40]))
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    [(WGWidgetDiscoveryController *)self _updateLockedOutStateForWidget:v8 withContainingAppProxy:v7];
  }
}

- (id)_newWidgetWithIdentifier:(id)a3 delegate:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:v6];
    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_identifiersToWidgetInfos objectForKey:v6];
      if (v9)
      {
        v10 = [[WGWidgetHostingViewController alloc] initWithWidgetInfo:v9 delegate:v7 host:self];
        [(WGWidgetDiscoveryController *)self _updateLockedOutStateForWidget:v10];
      }

      else
      {
        v12 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543362;
          v15 = v6;
          _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "Couldn't find widget info for widget with ID '%{public}@'", &v14, 0xCu);
        }

        v10 = 0;
      }
    }

    else
    {
      v11 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v6;
        _os_log_impl(&dword_27425E000, v11, OS_LOG_TYPE_DEFAULT, "Couldn't find widget datum for widget with ID '%{public}@'", &v14, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)widgetWithIdentifier:(id)a3 delegate:(id)a4 forRequesterWithIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    [WGWidgetDiscoveryController widgetWithIdentifier:delegate:forRequesterWithIdentifier:];
  }

  if ([v8 length] && objc_msgSend(v10, "length"))
  {
    widgetIDsToWidgets = self->_widgetIDsToWidgets;
    if (!widgetIDsToWidgets)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = self->_widgetIDsToWidgets;
      self->_widgetIDsToWidgets = v12;

      widgetIDsToWidgets = self->_widgetIDsToWidgets;
    }

    v14 = [(NSMutableDictionary *)widgetIDsToWidgets objectForKey:v8];
    if (!v14)
    {
      v14 = [(WGWidgetDiscoveryController *)self _newWidgetWithIdentifier:v8 delegate:v9];
      if (v14)
      {
        [(NSMutableDictionary *)self->_widgetIDsToWidgets setObject:v14 forKey:v8];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_orderedEnabledIdentifiersForGroup:(id)a3
{
  v4 = [a3 isEqual:@"WidgetGroup"];
  v5 = 64;
  if (v4)
  {
    v5 = 80;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (id)_orderedVisibleIdentifiersForTodayGroup
{
  orderedVisibleTodayIdentifiers = self->_orderedVisibleTodayIdentifiers;
  if (!orderedVisibleTodayIdentifiers)
  {
    v4 = [(WGWidgetDiscoveryController *)self _orderedEnabledIdentifiersForGroup:@"TodayGroup"];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__WGWidgetDiscoveryController__orderedVisibleIdentifiersForTodayGroup__block_invoke;
    v9[3] = &unk_279ED0C38;
    v9[4] = self;
    v5 = [MEMORY[0x277CCAC30] predicateWithBlock:v9];
    v6 = [v4 filteredArrayUsingPredicate:v5];
    v7 = self->_orderedVisibleTodayIdentifiers;
    self->_orderedVisibleTodayIdentifiers = v6;

    orderedVisibleTodayIdentifiers = self->_orderedVisibleTodayIdentifiers;
  }

  return orderedVisibleTodayIdentifiers;
}

- (id)_orderedVisibleIdentifiersForWidgetGroup
{
  orderedVisibleWidgetsIdentifiers = self->_orderedVisibleWidgetsIdentifiers;
  if (!orderedVisibleWidgetsIdentifiers)
  {
    v4 = [(WGWidgetDiscoveryController *)self _orderedEnabledIdentifiersForGroup:@"WidgetGroup"];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__WGWidgetDiscoveryController__orderedVisibleIdentifiersForWidgetGroup__block_invoke;
    v9[3] = &unk_279ED0C38;
    v9[4] = self;
    v5 = [MEMORY[0x277CCAC30] predicateWithBlock:v9];
    v6 = [v4 filteredArrayUsingPredicate:v5];
    v7 = self->_orderedVisibleWidgetsIdentifiers;
    self->_orderedVisibleWidgetsIdentifiers = v6;

    orderedVisibleWidgetsIdentifiers = self->_orderedVisibleWidgetsIdentifiers;
  }

  return orderedVisibleWidgetsIdentifiers;
}

- (void)invalidateVisibleIdentifiers
{
  [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:@"TodayGroup"];

  [(WGWidgetDiscoveryController *)self _notifyObserversOfSignificantWidgetsChange];
}

- (void)_invalidateVisibleIdentifiersForGroup:(id)a3
{
  v6 = a3;
  if ([v6 isEqual:@"TodayGroup"])
  {
    v4 = 72;
  }

  else
  {
    if (![v6 isEqual:@"WidgetGroup"])
    {
      goto LABEL_6;
    }

    v4 = 88;
  }

  v5 = *(&self->super.isa + v4);
  *(&self->super.isa + v4) = 0;

LABEL_6:
}

- (id)_orderedVisibleIdentifiersForGroup:(id)a3
{
  if ([a3 isEqual:@"WidgetGroup"])
  {
    [(WGWidgetDiscoveryController *)self _orderedVisibleIdentifiersForWidgetGroup];
  }

  else
  {
    [(WGWidgetDiscoveryController *)self _orderedVisibleIdentifiersForTodayGroup];
  }
  v4 = ;

  return v4;
}

- (id)_disabledIdentifiers
{
  v3 = [(NSMutableDictionary *)self->_identifiersToDatums allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__WGWidgetDiscoveryController__disabledIdentifiers__block_invoke;
  v7[3] = &unk_279ED0C38;
  v7[4] = self;
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v7];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)_orderedEnabledWidgetIdentifiersForGroup:(id)a3 includingNoContent:(BOOL)a4
{
  if (a4)
  {
    [(WGWidgetDiscoveryController *)self _orderedEnabledIdentifiersForGroup:a3];
  }

  else
  {
    [(WGWidgetDiscoveryController *)self _orderedVisibleIdentifiersForGroup:a3];
  }
  v4 = ;

  return v4;
}

- (id)enabledWidgetIdentifiersForAllGroups
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(WGWidgetDiscoveryController *)self _orderedEnabledIdentifiersForGroup:@"TodayGroup"];
  if (v4)
  {
    [v3 addObjectsFromArray:v4];
  }

  v5 = [(WGWidgetDiscoveryController *)self _orderedEnabledIdentifiersForGroup:@"WidgetGroup"];
  if (v5)
  {
    [v3 addObjectsFromArray:v5];
  }

  return v3;
}

- (void)setHasContent:(BOOL)a3 forWidgetWithIdentifier:(id)a4
{
  v8 = a4;
  if ([v8 length])
  {
    if (!a3)
    {
      v6 = [(NSMutableDictionary *)self->_widgetIDsToWidgets objectForKey:v8];
      [v6 invalidateCachedSnapshotWithCompletionHandler:0];
    }

    v7 = [(WGWidgetDiscoveryController *)self _updatePublicationStateOfDatumWithIdentifier:v8 visibilityChanged:0 contentStateChanged:1 insertAtTop:0 notifyingObservers:1];
  }
}

- (void)_externalSourceRequestsInsertionOfWidgetWithIdentifier:(id)a3 insertAtTop:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if ([v8 length])
  {
    v6 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:v8];

    if (v6)
    {
      v7 = [(WGWidgetDiscoveryController *)self _updatePublicationStateOfDatumWithIdentifier:v8 visibilityChanged:[(WGWidgetDiscoveryController *)self _setEnabled:1 forElementWithIdentifier:v8] contentStateChanged:0 insertAtTop:v4 notifyingObservers:1];
      if (!v7)
      {
        v7 = [(WGWidgetDiscoveryController *)self _defaultGroupForWidgetWithIdentifier:v8];
      }

      WGTodayViewArchiveSetKnownForIdentifier(self->_archive, v8, 0);
      WGTodayViewArchiveSetOrderedIdentifiersInGroup(self->_archive, self->_orderedEnabledTodayIdentifiers, v7, self->_archiveWriteQueue);
    }
  }
}

- (void)_widgetViewControllerRequestsAdd:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"WGWidgetViewControllerAddRequestBundleIdentifierKey"];

  [(WGWidgetDiscoveryController *)self _externalSourceRequestsInsertionOfWidgetWithIdentifier:v5 insertAtTop:0];
}

- (void)_widget:(id)a3 withIdentifier:(id)a4 didRemoveSnapshotAtURL:(id)a5
{
  v11 = a5;
  widgetIDsToWidgets = self->_widgetIDsToWidgets;
  v9 = a3;
  v10 = [(NSMutableDictionary *)widgetIDsToWidgets objectForKey:a4];

  if (v10 != v9)
  {
    [v10 invalidateCachedSnapshotWithURL:v11 completionHandler:0];
  }
}

- (void)_widgetViewControllerDidRemoveSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v8 = [v5 objectForKey:@"WGWidgetViewControllerRemovedSnapshotWidgetIdentifierKey"];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"WGWidgetViewControllerRemovedSnapshotURLKey"];

  [(WGWidgetDiscoveryController *)self _widget:0 withIdentifier:v8 didRemoveSnapshotAtURL:v7];
}

- (void)_widgetListEditViewControllerWillDisappear:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__WGWidgetDiscoveryController__widgetListEditViewControllerWillDisappear___block_invoke;
  v15[3] = &unk_279ED0AB8;
  objc_copyWeak(&v16, &location);
  v5 = MEMORY[0x2743E8C10](v15);
  WeakRetained = objc_loadWeakRetained(&self->_presentedEditViewController);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained transitionCoordinator];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__WGWidgetDiscoveryController__widgetListEditViewControllerWillDisappear___block_invoke_2;
    v13[3] = &unk_279ED0C60;
    v14 = v5;
    [v8 animateAlongsideTransition:v13 completion:0];
    v9 = &v14;
  }

  else
  {
    v10 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__WGWidgetDiscoveryController__widgetListEditViewControllerWillDisappear___block_invoke_3;
    v11[3] = &unk_279ED0C88;
    v12 = v5;
    [v10 animateWithDuration:v11 animations:0.35];
    v9 = &v12;
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __74__WGWidgetDiscoveryController__widgetListEditViewControllerWillDisappear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _presentedEditViewControllerStatusBarAssertion];
  [WeakRetained _invalidateWidgetListEditViewControllerStatusBarAssertion:v1];

  [WeakRetained _setPresentedEditViewControllerStatusBarAssertion:0];
}

- (void)_applicationIconChanged:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"CFBundleIdentifier"];

  if (v5)
  {
    v14 = v5;
    v6 = WGPlugInBundleIdentifiersForContainingBundleIdentifier(v5);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = WGLogWidgets;
          if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v20 = v11;
            _os_log_impl(&dword_27425E000, v12, OS_LOG_TYPE_DEFAULT, "Widget icon changed for bundle ID: %{public}@)", buf, 0xCu);
          }

          v13 = [(NSMutableDictionary *)self->_identifiersToWidgetInfos objectForKey:v11];
          [v13 _resetIcons];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v8);
    }

    v5 = v14;
  }
}

- (BOOL)areWidgetsPinned
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained areWidgetsPinnedForWidgetDiscoveryController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)alwaysShowsFavoriteWidgets
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"WGAlwaysShowFavorites"];

  return v3;
}

- (void)handleWidgetLaunchRecommendation:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = a4;
  v7 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_27425E000, v7, OS_LOG_TYPE_DEFAULT, "Handling recommendation to update widgets with bundle IDs: %{public}@)", &buf, 0xCu);
  }

  v8 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = self->_statsController;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [(WGWidgetDiscoveryController *)self widgetWithIdentifier:v13 delegate:0 forRequesterWithIdentifier:@"Duet"];
        if (v14)
        {
          dispatch_group_enter(v8);
          v15 = [(WGWidgetDiscoveryController *)self _nextSequenceNumber];
          [(WGWidgetStatsController *)v9 notePreWarmHasStarted:v13 withTriggerType:1 withSequence:v15];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __75__WGWidgetDiscoveryController_handleWidgetLaunchRecommendation_completion___block_invoke;
          v22[3] = &unk_279ED0CB0;
          v22[4] = v13;
          p_buf = &buf;
          v23 = v9;
          v26 = v15;
          v24 = v8;
          [v14 _updateWidgetWithCompletionHandler:v22];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__WGWidgetDiscoveryController_handleWidgetLaunchRecommendation_completion___block_invoke_72;
  block[3] = &unk_279ED0CD8;
  v20 = v17;
  v21 = &buf;
  v16 = v17;
  dispatch_group_notify(v8, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(&buf, 8);
}

void __75__WGWidgetDiscoveryController_handleWidgetLaunchRecommendation_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"is not";
    *v9 = 138543874;
    if (a3)
    {
      v8 = @"is";
    }

    *&v9[4] = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_27425E000, v6, OS_LOG_TYPE_DEFAULT, "Widget with ID '%{public}@' did update with result %ld, %{public}@ implemented", v9, 0x20u);
  }

  if (!a2)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:*(a1 + 32)];
  }

  [*(a1 + 40) notePreWarmHasEnded:*(a1 + 32) withResult:a2 withTriggerType:1 withSequence:{*(a1 + 64), *v9}];
  dispatch_group_leave(*(a1 + 48));
}

void __75__WGWidgetDiscoveryController_handleWidgetLaunchRecommendation_completion___block_invoke_72(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(*(a1 + 40) + 8) + 40);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_27425E000, v2, OS_LOG_TYPE_DEFAULT, "Informing Duet of updated widget bundle IDs: %{public}@)", &v6, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = [*(*(*(a1 + 40) + 8) + 40) allObjects];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)_dataSourcesDidChange:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(NSMutableDictionary *)self->_identifiersToDataSources mutableCopy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v13 = [v12 dataSourceIdentifier];
        v14 = [(NSMutableDictionary *)self->_identifiersToDataSources objectForKey:v13];
        v15 = v14;
        if (v14)
        {
          if (([v14 isEqual:v12] & 1) == 0)
          {
            [v5 addObject:v12];
          }
        }

        else
        {
          [v5 addObject:v12];
          [v6 removeObjectForKey:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v9);
  }

  v34 = v7;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v39 + 1) + 8 * j);
        v22 = [v16 objectForKey:v21];
        [(NSMutableDictionary *)self->_identifiersToDataSources removeObjectForKey:v21];
        [(NSMutableDictionary *)self->_dataSourceIdentifiersToDatumIdentifiers removeObjectForKey:v21];
        [v22 removeWidgetObserver:self completion:0];
      }

      v18 = [v16 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v18);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v5;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v35 + 1) + 8 * k);
        identifiersToDataSources = self->_identifiersToDataSources;
        v30 = [v28 dataSourceIdentifier];
        [(NSMutableDictionary *)identifiersToDataSources setObject:v28 forKey:v30];

        dataSourceIdentifiersToDatumIdentifiers = self->_dataSourceIdentifiersToDatumIdentifiers;
        v32 = [MEMORY[0x277CBEB18] array];
        v33 = [v28 dataSourceIdentifier];
        [(NSMutableDictionary *)dataSourceIdentifiersToDatumIdentifiers setObject:v32 forKey:v33];

        [v28 addWidgetObserver:self completion:0];
      }

      v25 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v25);
  }
}

- (void)_beginObservingDataSourcesIfNecessary
{
  if (!self->_archive)
  {
    v3 = dispatch_queue_create("com.apple.widgets.todayviewarchive.diskwritequeue", 0);
    archiveWriteQueue = self->_archiveWriteQueue;
    self->_archiveWriteQueue = v3;

    v5 = WGTodayViewArchiveGetArchive(self->_defaultEnabledIDs, self->_archiveWriteQueue);
    archive = self->_archive;
    self->_archive = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifiersToDataSources = self->_identifiersToDataSources;
    self->_identifiersToDataSources = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataSourceIdentifiersToDatumIdentifiers = self->_dataSourceIdentifiersToDatumIdentifiers;
    self->_dataSourceIdentifiersToDatumIdentifiers = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifiersToDatums = self->_identifiersToDatums;
    self->_identifiersToDatums = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifiersToWidgetInfos = self->_identifiersToWidgetInfos;
    self->_identifiersToWidgetInfos = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedEnabledTodayIdentifiers = self->_orderedEnabledTodayIdentifiers;
    self->_orderedEnabledTodayIdentifiers = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedEnabledWidgetsIdentifiers = self->_orderedEnabledWidgetsIdentifiers;
    self->_orderedEnabledWidgetsIdentifiers = v17;

    objc_initWeak(&location, self);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __68__WGWidgetDiscoveryController__beginObservingDataSourcesIfNecessary__block_invoke;
    v23 = &unk_279ED0D28;
    objc_copyWeak(&v24, &location);
    [WGDataSourceManager requestSharedDataSourceManager:&v20];
    v19 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v19 addObserver:self];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __68__WGWidgetDiscoveryController__beginObservingDataSourcesIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__WGWidgetDiscoveryController__beginObservingDataSourcesIfNecessary__block_invoke_2;
  v4[3] = &unk_279ED0D00;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 addWidgetDataSourceChangeHandler:v4 forIdentifier:@"com.apple.widgets.widgetdiscoverycontroller.datasourcemanagerchangehandler"];
  objc_destroyWeak(&v5);
}

void __68__WGWidgetDiscoveryController__beginObservingDataSourcesIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dataSourcesDidChange:v3];
}

- (void)beginDiscovery
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    self->_shouldPurgeNonCAMLSnapshots = [WeakRetained didPurgeNonCAMLSnapshotsForWidgetDiscoveryController:self] ^ 1;
  }

  if (_WGSupportsASTC() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    self->_shouldPurgeNonASTCSnapshots = [WeakRetained didPurgeNonASTCSnapshotsForWidgetDiscoveryController:self] ^ 1;
  }

  [(WGWidgetDiscoveryController *)self _beginObservingDataSourcesIfNecessary];
}

- (BOOL)_isElementWithIdentifierEnabled:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:v4];
    v6 = [v5 representedExtension];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 optedIn];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_setEnabled:(BOOL)a3 forElementWithIdentifier:(id)a4
{
  v4 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = [(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:v6];
    v8 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:v6];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 representedExtension], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      LOBYTE(v17) = 0;
LABEL_18:

      goto LABEL_19;
    }

    v10 = v9;
    v11 = [v9 optedIn];
    if (v4)
    {
      if ((v11 & 1) == 0)
      {
        v21 = 0;
        [v10 attemptOptIn:&v21];
        v12 = v21;
        if (!v12)
        {
          goto LABEL_16;
        }

        v13 = WGLogWidgets;
        if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        v14 = v13;
        v15 = [v10 identifier];
        *buf = 138543618;
        v23 = v15;
        v24 = 2114;
        v25 = v12;
        v16 = "Encountered error attempting to opt in extension with ID '%{public}@': %{public}@";
LABEL_15:
        _os_log_impl(&dword_27425E000, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);

LABEL_16:
      }
    }

    else if (v11)
    {
      v20 = 0;
      [v10 attemptOptOut:&v20];
      v12 = v20;
      if (!v12)
      {
        goto LABEL_16;
      }

      v18 = WGLogWidgets;
      if (!os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v14 = v18;
      v15 = [v10 identifier];
      *buf = 138543618;
      v23 = v15;
      v24 = 2114;
      v25 = v12;
      v16 = "Encountered error attempting to opt out extension with ID '%{public}@': %{public}@";
      goto LABEL_15;
    }

    v17 = v7 ^ [(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:v6];

    goto LABEL_18;
  }

  LOBYTE(v17) = 0;
LABEL_19:

  return v17;
}

- (BOOL)_isElementWithIdentifierKnown:(id)a3
{
  v4 = a3;
  if (WGTodayViewArchiveGetKnownForIdentifier(self->_archive, v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = WGIsWidgetWithBundleIdentifierInternal(v4);
  }

  return v5;
}

- (BOOL)_isElementWithIdentifierFavorited:(id)a3
{
  archive = self->_archive;
  v4 = a3;
  v5 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(archive, @"FavoriteGroup");
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)_calculateAndPostNewWidgetsCount
{
  v3 = [(NSMutableDictionary *)self->_identifiersToDatums allValues];
  if (self->_newWidgetsCountPostQueue || (v4 = dispatch_queue_create("com.apple.notificationcenter.newwidgetscountpostqueue", 0), v5 = self->_newWidgetsCountPostQueue, self->_newWidgetsCountPostQueue = v4, v5, self->_newWidgetsCountPostQueue))
  {
    objc_initWeak(&location, self);
    newWidgetsCountPostQueue = self->_newWidgetsCountPostQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__WGWidgetDiscoveryController__calculateAndPostNewWidgetsCount__block_invoke;
    block[3] = &unk_279ED0DA0;
    v8 = v3;
    objc_copyWeak(&v9, &location);
    dispatch_async(newWidgetsCountPostQueue, block);
    objc_destroyWeak(&v9);

    objc_destroyWeak(&location);
  }
}

void __63__WGWidgetDiscoveryController__calculateAndPostNewWidgetsCount__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v19;
    v6 = MEMORY[0x277D85CD0];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __63__WGWidgetDiscoveryController__calculateAndPostNewWidgetsCount__block_invoke_2;
        block[3] = &unk_279ED0D50;
        objc_copyWeak(&v13, (a1 + 40));
        block[4] = v8;
        block[5] = &v14;
        dispatch_sync(v6, block);
        v4 += *(v15 + 24);
        objc_destroyWeak(&v13);
        _Block_object_dispose(&v14, 8);
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__WGWidgetDiscoveryController__calculateAndPostNewWidgetsCount__block_invoke_3;
  v10[3] = &unk_279ED0D78;
  v11[1] = v4;
  objc_copyWeak(v11, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], v10);
  objc_destroyWeak(v11);
}

void __63__WGWidgetDiscoveryController__calculateAndPostNewWidgetsCount__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) datumIdentifier];
  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained _isElementWithIdentifierKnown:v2] ^ 1;
}

void __63__WGWidgetDiscoveryController__calculateAndPostNewWidgetsCount__block_invoke_3(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"WGNewWidgetsCountKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v4 postNotificationName:@"WGAvailableWidgetsUpdatedNotification" object:WeakRetained userInfo:v3];
}

- (void)_notifyObserversOfVisibilityChange:(BOOL)a3 ofWidgetWithIdentifier:(id)a4 inGroup:(id)a5
{
  v6 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v8 = a5;
  [(NSPointerArray *)self->_observers compact];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_observers;
  v10 = [(NSPointerArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (v6)
        {
          if (objc_opt_respondsToSelector())
          {
            [v14 widgetDiscoveryController:self widgetWithIdentifier:v15 shouldBecomeVisibleInGroup:v8];
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          [v14 widgetDiscoveryController:self widgetWithIdentifier:v15 shouldBecomeHiddenInGroup:v8];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSPointerArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)_notifyObserversOfSignificantWidgetsChange
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSPointerArray *)self->_observers compact];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_observers;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 widgetDiscoveryControllerSignificantWidgetsChange:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversOfOrderChangeForWidgetIdentifiers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSPointerArray *)self->_observers compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_observers;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 widgetDiscoveryController:self orderDidChangeForWidgetIdentifiers:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_groupForWidgetWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = @"TodayGroup";
    v6 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(self->_archive, @"TodayGroup");
    v7 = [v6 containsObject:v4];

    if ((v7 & 1) == 0)
    {
      v8 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(self->_archive, @"WidgetGroup");
      v9 = [v8 containsObject:v4];

      if (v9)
      {
        v5 = @"WidgetGroup";
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_insertWidgetWithIdentifier:(id)a3 atTop:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 length])
  {
    v7 = [(WGWidgetDiscoveryController *)self _groupForWidgetWithIdentifier:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(WGWidgetDiscoveryController *)self _defaultGroupForWidgetWithIdentifier:v6];
    }

    v10 = v9;

    v11 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(self->_archive, v10);
    v12 = [(WGWidgetDiscoveryController *)self _orderedEnabledIdentifiersForGroup:v10];
    [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:v10];
    if (v4)
    {
      [v12 insertObject:v6 atIndex:0];
    }

    else
    {
      [v12 addObject:v6];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __65__WGWidgetDiscoveryController__insertWidgetWithIdentifier_atTop___block_invoke;
      v14[3] = &unk_279ED0DC8;
      v14[4] = self;
      v15 = v11;
      [v12 sortWithOptions:16 usingComparator:v14];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __65__WGWidgetDiscoveryController__insertWidgetWithIdentifier_atTop___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 40);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(*(a1 + 32) + 40) objectForKey:v6];

  v9 = *(a1 + 40);
  v10 = [v7 datumIdentifier];
  v11 = [v9 indexOfObject:v10];

  v12 = [v8 datumIdentifier];
  v13 = [v9 indexOfObject:v12];

  if (v11 < v13)
  {
    v14 = -1;
  }

  else
  {
    v14 = v11 > v13;
  }

  return v14;
}

- (void)_removeWidgetWithIdentifier:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    [(NSMutableArray *)self->_orderedEnabledTodayIdentifiers removeObject:v5];
    [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:@"TodayGroup"];
    [(NSMutableArray *)self->_orderedEnabledWidgetsIdentifiers removeObject:v5];
    [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:@"WidgetGroup"];
    orderedVisibleWidgetsIdentifiers = self->_orderedVisibleWidgetsIdentifiers;
    self->_orderedVisibleWidgetsIdentifiers = 0;
  }
}

- (id)_updatePublicationStateOfDatumWithIdentifier:(id)a3 visibilityChanged:(BOOL)a4 contentStateChanged:(BOOL)a5 insertAtTop:(BOOL)a6 notifyingObservers:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138544386;
    v23 = v12;
    v24 = 1024;
    v25 = v10;
    v26 = 1024;
    v27 = v9;
    v28 = 1024;
    v29 = v8;
    v30 = 1024;
    v31 = v7;
    _os_log_impl(&dword_27425E000, v13, OS_LOG_TYPE_DEFAULT, "Will update publication state of %{public}@ visibilityChanged: %d contentStateChanged: %d insertAtTop: %d notifyingObservers: %d", &v22, 0x24u);
  }

  if (![v12 length])
  {
    v14 = 0;
    goto LABEL_25;
  }

  if (v10 || v9)
  {
    v15 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:v12];
    if (v15)
    {
      v16 = [(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:v12];
    }

    else
    {
      v16 = 0;
    }

    v17 = [(WGWidgetPersistentStateController *)self->_persistentStateController doesWidgetWithIdentifierHaveContent:v12];
    v14 = [(WGWidgetDiscoveryController *)self _groupForWidgetWithIdentifier:v12];
    v18 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543874;
      v23 = v12;
      v24 = 1024;
      v25 = v16;
      v26 = 1024;
      v27 = v17;
      _os_log_impl(&dword_27425E000, v18, OS_LOG_TYPE_DEFAULT, "Publication state of %{public}@ isVisible: %d hasContent: %d", &v22, 0x18u);
      if (!v9)
      {
LABEL_13:
        if (!v10)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

    else if (!v9)
    {
      goto LABEL_13;
    }

    v19 = [(WGWidgetDiscoveryController *)self _groupForWidgetWithIdentifier:v12];
    [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:v19];

    if (!v10)
    {
LABEL_14:
      if (!v7)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v10 && v17 || v16 && v9)
      {
        [(WGWidgetDiscoveryController *)self _notifyObserversOfVisibilityChange:v16 & v17 ofWidgetWithIdentifier:v12 inGroup:v14];
      }

      goto LABEL_24;
    }

LABEL_20:
    if (v16)
    {
      v20 = [(WGWidgetDiscoveryController *)self _insertWidgetWithIdentifier:v12 atTop:v8];

      v14 = v20;
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      [(WGWidgetDiscoveryController *)self _removeWidgetWithIdentifier:v12];
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_15;
  }

  v14 = 0;
LABEL_24:
  [(WGWidgetDiscoveryController *)self _calculateAndPostNewWidgetsCount];
LABEL_25:

  return v14;
}

- (void)presentWidgetListEditViewControllerFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_presentedEditViewController);
  v11 = WeakRetained;
  if (v8 && ([WeakRetained wg_isAppearanceTransitioning] & 1) == 0)
  {
    objc_initWeak(&location, self);
    if (v11)
    {
      v12 = v19;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __105__WGWidgetDiscoveryController_presentWidgetListEditViewControllerFromViewController_animated_completion___block_invoke;
      v19[3] = &unk_279ED0DF0;
      objc_copyWeak(&v22, &location);
      v20 = v8;
      v23 = a4;
      v21 = v9;
      [(WGWidgetDiscoveryController *)self dismissWidgetListEditViewControllerAnimated:1 completion:v19];

      v13 = v20;
    }

    else
    {
      v12 = v14;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __105__WGWidgetDiscoveryController_presentWidgetListEditViewControllerFromViewController_animated_completion___block_invoke_2;
      v14[3] = &unk_279ED0E40;
      objc_copyWeak(&v17, &location);
      v15 = v8;
      v18 = a4;
      v16 = v9;
      [(WGWidgetDiscoveryController *)self _requestUnlockWithCompletion:v14];

      v13 = v15;
    }

    objc_destroyWeak(v12 + 6);
    objc_destroyWeak(&location);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __105__WGWidgetDiscoveryController_presentWidgetListEditViewControllerFromViewController_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained presentWidgetListEditViewControllerFromViewController:*(a1 + 32) animated:*(a1 + 56) completion:*(a1 + 40)];
}

void __105__WGWidgetDiscoveryController_presentWidgetListEditViewControllerFromViewController_animated_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = [WeakRetained _newWidgetListEditViewController];
    [v4 setDelegate:WeakRetained];
    [WeakRetained _setPresentedEditViewController:v4];
    v5 = [WeakRetained _preferredViewControllerForPresentingFromViewController:*(a1 + 32)];
    v6 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __105__WGWidgetDiscoveryController_presentWidgetListEditViewControllerFromViewController_animated_completion___block_invoke_3;
    v11[3] = &unk_279ED0C88;
    v12 = *(a1 + 40);
    [v5 presentViewController:v4 animated:v6 completion:v11];

    v7 = [v4 transitionCoordinator];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __105__WGWidgetDiscoveryController_presentWidgetListEditViewControllerFromViewController_animated_completion___block_invoke_4;
    v10[3] = &unk_279ED0E18;
    v10[4] = WeakRetained;
    [v7 animateAlongsideTransition:v10 completion:0];
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

uint64_t __105__WGWidgetDiscoveryController_presentWidgetListEditViewControllerFromViewController_animated_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __105__WGWidgetDiscoveryController_presentWidgetListEditViewControllerFromViewController_animated_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _newWidgetListEditViewControllerStatusBarAssertion];
  [v1 _setPresentedEditViewControllerStatusBarAssertion:v2];
}

- (void)dismissWidgetListEditViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_presentedEditViewController);
  if (WeakRetained)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__WGWidgetDiscoveryController_dismissWidgetListEditViewControllerAnimated_completion___block_invoke;
    v8[3] = &unk_279ED0E68;
    objc_copyWeak(&v10, &location);
    v9 = v6;
    [WeakRetained dismissViewControllerAnimated:v4 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

uint64_t __86__WGWidgetDiscoveryController_dismissWidgetListEditViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setPresentedEditViewController:0];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)_newWidgetListEditViewController
{
  v3 = objc_alloc_init(WGWidgetListEditViewController);
  [(WGWidgetListEditViewController *)v3 setModalPresentationStyle:5];
  [(WGWidgetListEditViewController *)v3 setDataSource:self];
  return v3;
}

- (id)_newWidgetListEditViewControllerStatusBarAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained statusBarAssertionForWidgetDiscoveryController:self legibilityStyle:{-[WGWidgetDiscoveryController _widgetListEditViewControllerStatusBarLegibilityStyle](self, "_widgetListEditViewControllerStatusBarLegibilityStyle")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_widgetListEditViewControllerStatusBarLegibilityStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedEditViewController);
  v3 = [WeakRetained traitCollection];

  if ([v3 userInterfaceStyle] == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)_invalidateWidgetListEditViewControllerStatusBarAssertion:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetDiscoveryController:self didEndUsingStatusBarAssertion:v5];
  }
}

- (id)_preferredViewControllerForPresentingFromViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = v4;
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained widgetDiscoveryController:self preferredViewControllerForPresentingFromViewController:v4];
  }

  return v6;
}

- (void)_requestUnlockWithCompletion:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetDiscoveryController:self requestUnlockWithCompletion:v5];
  }

  else if (v5)
  {
    v5[2](v5, 0);
  }
}

- (void)dismissWidgetListEditViewController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v11 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_presentedEditViewController);

  if (WeakRetained != v11)
  {
    [WGWidgetDiscoveryController dismissWidgetListEditViewController:a2 animated:self withCompletion:v11];
  }

  [(WGWidgetDiscoveryController *)self dismissWidgetListEditViewControllerAnimated:v6 completion:v9];
}

- (void)widgetEditListViewController:(id)a3 traitCollectionDidChange:(id)a4
{
  v6 = a4;
  v7 = [a3 traitCollection];
  v8 = [v7 userInterfaceStyle];

  v9 = [v6 userInterfaceStyle];
  if (v9 != v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(WGWidgetDiscoveryController *)self _widgetListEditViewControllerStatusBarLegibilityStyle];
      v11 = [(WGWidgetDiscoveryController *)self _presentedEditViewControllerStatusBarAssertion];
      [WeakRetained widgetDiscoveryController:self updateStatusBarAssertion:v11 withLegibilityStyle:v10];
    }
  }
}

- (void)widgetDataSource:(id)a3 replaceWithDatum:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 datumIdentifier];
    v11 = [v7 representedExtension];
    v12 = [v11 _plugIn];
    v13 = [v12 uuid];
    v31 = 138543874;
    v32 = v6;
    v33 = 2114;
    v34 = v10;
    v35 = 2114;
    v36 = v13;
    _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "Widget data source %{public}@ asking to replace with datum with ID '%{public}@ (%{public}@)'", &v31, 0x20u);
  }

  identifiersToDataSources = self->_identifiersToDataSources;
  v15 = [v6 dataSourceIdentifier];
  v16 = [(NSMutableDictionary *)identifiersToDataSources objectForKey:v15];

  if (v16)
  {
    v17 = [v7 datumIdentifier];
    v18 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:v17];

    [(NSMutableDictionary *)self->_identifiersToDatums setObject:v7 forKey:v17];
    v19 = [(NSMutableDictionary *)self->_identifiersToWidgetInfos objectForKey:v17];
    if (v19)
    {
      v20 = v19;
      v21 = [v7 representedExtension];
      v22 = [v20 widgetInfoWithExtension:v21];
    }

    else
    {
      v21 = [v7 representedExtension];
      v22 = [WGWidgetInfo widgetInfoWithExtension:v21];
    }

    if (v22)
    {
      [(NSMutableDictionary *)self->_identifiersToWidgetInfos setObject:v22 forKey:v17];
    }

    else if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [WGWidgetDiscoveryController widgetDataSource:replaceWithDatum:];
    }

    dataSourceIdentifiersToDatumIdentifiers = self->_dataSourceIdentifiersToDatumIdentifiers;
    v25 = [v6 dataSourceIdentifier];
    v26 = [(NSMutableDictionary *)dataSourceIdentifiersToDatumIdentifiers objectForKey:v25];
    [v26 addObject:v17];

    if (WGIsWidgetWithBundleIdentifierInternal(v17))
    {
      WGTodayViewArchiveSetKnownForIdentifier(self->_archive, v17, self->_archiveWriteQueue);
    }

    if (!v18 && (WGTodayViewArchiveGetPenalizedForIdentifier(self->_archive, v17) & 1) == 0 && !WGIsWidgetWithBundleIdentifierBuiltOnOrAfterSystemVersion(v17, @"10.0"))
    {
      WGTodayViewArchiveRemoveFromOrderedIdentifiers(self->_archive, v17, 0);
      WGTodayViewArchiveSetPenalizedForIdentifier(self->_archive, v17, 0);
    }

    v27 = [(NSMutableSet *)self->_defaultEnabledIDs containsObject:v17];
    if (v27)
    {
      [(NSMutableSet *)self->_defaultEnabledIDs removeObject:v17];
    }

    v28 = [(WGWidgetDiscoveryController *)self _setEnabled:v27 | [(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:v17] forElementWithIdentifier:v17];
    if (v18)
    {
      v29 = 0;
    }

    else
    {
      v28 |= [(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:v17];
      v29 = WGIsWidgetWithBundleIdentifierWantsTop(v17);
    }

    v30 = [(WGWidgetDiscoveryController *)self _updatePublicationStateOfDatumWithIdentifier:v17 visibilityChanged:v28 & 1 contentStateChanged:0 insertAtTop:v29 notifyingObservers:1];
  }

  else
  {
    v23 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [WGWidgetDiscoveryController widgetDataSource:v23 replaceWithDatum:v6];
    }
  }
}

- (void)widgetDataSource:(id)a3 removeDatum:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 datumIdentifier];
    v11 = [v7 representedExtension];
    v12 = [v11 _plugIn];
    v13 = [v12 uuid];
    v24 = 138543874;
    v25 = v6;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "Widget data source %{public}@ asking to remove datum with ID '%{public}@ (%{public}@)'", &v24, 0x20u);
  }

  identifiersToDataSources = self->_identifiersToDataSources;
  v15 = [v6 dataSourceIdentifier];
  v16 = [(NSMutableDictionary *)identifiersToDataSources objectForKey:v15];

  if (!v16)
  {
    v17 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [WGWidgetDiscoveryController widgetDataSource:v17 removeDatum:v6];
    }
  }

  v18 = [v7 datumIdentifier];
  v19 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:v18];
  if (v19)
  {
    if ([(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:v18])
    {
      v20 = [(WGWidgetPersistentStateController *)self->_persistentStateController doesWidgetWithIdentifierHaveContent:v18];
    }

    else
    {
      v20 = 0;
    }

    [(NSMutableDictionary *)self->_identifiersToDatums removeObjectForKey:v18];
    [(NSMutableDictionary *)self->_identifiersToWidgetInfos removeObjectForKey:v18];
    v21 = [v6 dataSourceIdentifier];
    v22 = [(NSMutableDictionary *)self->_dataSourceIdentifiersToDatumIdentifiers objectForKey:v21];
    [v22 removeObject:v18];
    [(NSMutableDictionary *)self->_widgetIDsToWidgets removeObjectForKey:v18];
    v23 = [(WGWidgetDiscoveryController *)self _updatePublicationStateOfDatumWithIdentifier:v18 visibilityChanged:1 contentStateChanged:0 insertAtTop:0 notifyingObservers:v20];
  }

  else if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
  {
    [WGWidgetDiscoveryController widgetDataSource:removeDatum:];
  }
}

- (int64_t)userSpecifiedDisplayModeForWidget:(id)a3
{
  v4 = a3;
  v5 = [v4 widgetInfo];
  if ([v5 isLinkedOnOrAfterSystemVersion:@"10.0"])
  {
    v6 = [v4 widgetIdentifier];
    v7 = [(WGWidgetDiscoveryController *)self userSpecifiedDisplayModeForWidgetWithIdentifier:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)widget:(id)a3 didChangeUserSpecifiedDisplayMode:(int64_t)a4
{
  v9 = a3;
  if ([(WGWidgetDiscoveryController *)self userSpecifiedDisplayModeForWidget:?]!= a4)
  {
    v6 = [v9 widgetIdentifier];
    [(WGWidgetDiscoveryController *)self setUserSpecifiedDisplayMode:a4 forWidgetWithIdentifier:v6];

    v7 = +[WGWidgetEventTracker sharedInstance];
    v8 = [v9 widgetIdentifier];
    [v7 widget:v8 didChangeUserSpecifiedDisplayMode:a4];
  }
}

- (int64_t)largestAvailableDisplayModeForWidget:(id)a3
{
  v4 = a3;
  v5 = [v4 widgetInfo];
  if ([v5 isLinkedOnOrAfterSystemVersion:@"10.0"])
  {
    v6 = [v4 widgetIdentifier];
    v7 = [(WGWidgetDiscoveryController *)self largestAvailableDisplayModeForWidgetWithIdentifier:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)widget:(id)a3 didChangeLargestAvailableDisplayMode:(int64_t)a4
{
  v6 = [a3 widgetIdentifier];
  [(WGWidgetDiscoveryController *)self setLargestAvailableDisplayMode:a4 forWidgetWithIdentifier:v6];
}

- (void)widget:(id)a3 didEncounterProblematicSnapshotAtURL:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v8 = [v9 widgetIdentifier];
    [WeakRetained widgetDiscoveryController:self widgetWithBundleIdentifier:v8 didEncounterProblematicSnapshotAtURL:v6];
  }
}

- (void)widget:(id)a3 didRemoveSnapshotAtURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 widgetIdentifier];
  [(WGWidgetDiscoveryController *)self _widget:v7 withIdentifier:v8 didRemoveSnapshotAtURL:v6];
}

- (BOOL)shouldPurgeArchivedSnapshotsForWidget:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 widgetIdentifier];
    v7 = [WeakRetained widgetDiscoveryController:self shouldPurgeArchivedSnapshotsForWidgetWithBundleIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)widgetListEditViewController:(id)a3 didReorderItemsWithIdentifiersInGroups:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        WGTodayViewArchiveSetOrderedIdentifiersInGroup(self->_archive, v11, v10, self->_archiveWriteQueue);
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v12 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(self->_archive, @"TodayGroup");
  v13 = [v12 mutableCopy];
  orderedEnabledTodayIdentifiers = self->_orderedEnabledTodayIdentifiers;
  self->_orderedEnabledTodayIdentifiers = v13;

  [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:@"TodayGroup"];
  v15 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(self->_archive, @"WidgetGroup");
  v16 = [v15 mutableCopy];
  orderedEnabledWidgetsIdentifiers = self->_orderedEnabledWidgetsIdentifiers;
  self->_orderedEnabledWidgetsIdentifiers = v16;

  [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:@"WidgetGroup"];
  orderedVisibleWidgetsIdentifiers = self->_orderedVisibleWidgetsIdentifiers;
  self->_orderedVisibleWidgetsIdentifiers = 0;

  [(WGWidgetDiscoveryController *)self _notifyObserversOfSignificantWidgetsChange];
}

- (void)widgetListEditViewController:(id)a3 setEnabled:(BOOL)a4 forItemsWithIdentifiers:(id)a5
{
  v5 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(WGWidgetDiscoveryController *)self _updatePublicationStateOfDatumWithIdentifier:*(*(&v13 + 1) + 8 * v11) visibilityChanged:[(WGWidgetDiscoveryController *)self _setEnabled:v5 forElementWithIdentifier:*(*(&v13 + 1) + 8 * v11)] contentStateChanged:0 insertAtTop:0 notifyingObservers:1];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)shouldShowWidgetsPinButtonForWidgetListEditViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained shouldShowWidgetsPinButtonForWidgetDiscoveryController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldShowWidgetsPinningTeachingView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained shouldShowWidgetsPinningTeachingViewForWidgetDiscoveryController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)noteWidgetsPinningViewControllerDidDismiss:(BOOL)a3
{
  v3 = a3;
  [(WGWidgetDiscoveryController *)self _setWidgetsPinned:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetDiscoveryControllerDidDismissWidgetsPinningTeachingView:self];
  }

  if (v3)
  {
    [(WGWidgetDiscoveryController *)self _addDefaultPinnedWidgets];
  }
}

- (void)_addDefaultPinnedWidgets
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (([(NSMutableArray *)self->_orderedEnabledTodayIdentifiers containsObject:@"com.apple.weather.WeatherAppTodayWidget"]& 1) == 0)
  {
    [(WGWidgetDiscoveryController *)self _externalSourceRequestsInsertionOfWidgetWithIdentifier:@"com.apple.weather.WeatherAppTodayWidget" insertAtTop:0];
  }

  if (([(NSMutableArray *)self->_orderedEnabledTodayIdentifiers containsObject:@"com.apple.UpNextWidget.extension"]& 1) == 0)
  {
    [(WGWidgetDiscoveryController *)self _externalSourceRequestsInsertionOfWidgetWithIdentifier:@"com.apple.UpNextWidget.extension" insertAtTop:0];
  }

  v3 = [(NSMutableArray *)self->_orderedEnabledTodayIdentifiers indexOfObject:@"com.apple.weather.WeatherAppTodayWidget"];
  v4 = [(NSMutableArray *)self->_orderedEnabledTodayIdentifiers indexOfObject:@"com.apple.UpNextWidget.extension"];
  if (v3 > 1 || v4 >= 2)
  {
    v6 = [(NSMutableArray *)self->_orderedEnabledTodayIdentifiers mutableCopy];
    [v6 removeObject:@"com.apple.weather.WeatherAppTodayWidget"];
    [v6 insertObject:@"com.apple.weather.WeatherAppTodayWidget" atIndex:0];
    [v6 removeObject:@"com.apple.UpNextWidget.extension"];
    [v6 insertObject:@"com.apple.UpNextWidget.extension" atIndex:1];
    WGTodayViewArchiveSetOrderedIdentifiersInGroup(self->_archive, v6, @"TodayGroup", self->_archiveWriteQueue);
    v7 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(self->_archive, @"TodayGroup");
    v8 = [v7 mutableCopy];
    orderedEnabledTodayIdentifiers = self->_orderedEnabledTodayIdentifiers;
    self->_orderedEnabledTodayIdentifiers = v8;

    [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:@"TodayGroup"];
    v14[0] = @"com.apple.weather.WeatherAppTodayWidget";
    v14[1] = @"com.apple.UpNextWidget.extension";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
    [(WGWidgetDiscoveryController *)self _notifyObserversOfOrderChangeForWidgetIdentifiers:v11];
  }

  v12 = [(WGWidgetDiscoveryController *)self favoriteWidgetIdentifiers];
  v13 = [v12 mutableCopy];

  if (([v13 containsObject:@"com.apple.weather.WeatherAppTodayWidget"] & 1) == 0)
  {
    [v13 insertObject:@"com.apple.weather.WeatherAppTodayWidget" atIndex:0];
  }

  if (([v13 containsObject:@"com.apple.UpNextWidget.extension"] & 1) == 0)
  {
    [v13 insertObject:@"com.apple.UpNextWidget.extension" atIndex:1];
  }

  [(WGWidgetDiscoveryController *)self _updateFavoriteWidgetIDs:v13];
}

- (void)_setWidgetsPinned:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetDiscoveryController:self didChangeWidgetsPinning:v3];
  }
}

- (void)widgetListEditViewController:(id)a3 acknowledgeInterfaceItemsWithIdentifiers:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        WGTodayViewArchiveSetKnownForIdentifier(self->_archive, *(*(&v10 + 1) + 8 * v9++), 0);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  WGTodayViewArchiveSave(self->_archive, self->_archiveWriteQueue, 0);
}

- (id)widgetListEditViewController:(id)a3 displayNameForItemWithIdentifier:(id)a4
{
  v5 = a4;
  if (![v5 length])
  {
    v6 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [(WGWidgetDiscoveryController *)v6 widgetListEditViewController:v7 displayNameForItemWithIdentifier:v8, v9, v10, v11, v12, v13];
    }
  }

  v14 = [(NSMutableDictionary *)self->_identifiersToWidgetInfos objectForKey:v5];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 displayName];
  }

  else
  {
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [WGWidgetDiscoveryController widgetListEditViewController:displayNameForItemWithIdentifier:];
    }

    v16 = 0;
  }

  return v16;
}

- (void)widgetListEditViewController:(id)a3 requestsIconForItemWithIdentifier:(id)a4 withHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (![v7 length])
  {
    v9 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [(WGWidgetDiscoveryController *)v9 widgetListEditViewController:v10 displayNameForItemWithIdentifier:v11, v12, v13, v14, v15, v16];
    }
  }

  v17 = [(NSMutableDictionary *)self->_identifiersToWidgetInfos objectForKey:v7];
  v18 = v17;
  if (v17)
  {
    [v17 requestSettingsIconWithHandler:v8];
  }

  else if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
  {
    [WGWidgetDiscoveryController widgetListEditViewController:displayNameForItemWithIdentifier:];
  }
}

- (BOOL)widgetListEditViewControllerShouldIncludeInternalWidgets:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained widgetDiscoveryControllerShouldIncludeInternalWidgets:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)layoutModeForWidgetListEditViewController:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 presentingViewController];

  v6 = [v5 view];
  [v6 bounds];
  v9 = [v4 layoutModeForSize:{v7, v8}];

  return v9;
}

- (BOOL)widgetListEditViewControllerShouldShowFavorites:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained widgetDiscoveryControllerShouldRespectFavorites:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)remoteViewControllerDidConnectForWidgetViewController:(id)a3
{
  v4 = [a3 widgetHost];
  v7 = [v4 widgetIdentifier];

  v5 = [(NSMutableDictionary *)self->_widgetIDsToPendingTestCompletions objectForKey:v7];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 1, 0);
    [(NSMutableDictionary *)self->_widgetIDsToPendingTestCompletions removeObjectForKey:v7];
  }
}

- (void)remoteViewControllerViewDidAppearForWidgetViewController:(id)a3
{
  v4 = [a3 widgetHost];
  v7 = [v4 widgetIdentifier];

  v5 = [(NSMutableDictionary *)self->_widgetIDsToPendingTestTearDowns objectForKey:v7];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
    [(NSMutableDictionary *)self->_widgetIDsToPendingTestTearDowns removeObjectForKey:v7];
  }
}

- (void)widgetViewControllerNeedsToBeUnregisteredForRefreshNotification:(id)a3
{
  statsController = self->_statsController;
  v5 = [a3 widgetHost];
  v4 = [v5 widgetIdentifier];
  [(WGWidgetStatsController *)statsController unregisterWidgetForPredictionEvents:v4];
}

- (void)widgetViewControllerNeedsToBeRegisteredForRefreshNotification:(id)a3
{
  statsController = self->_statsController;
  v5 = [a3 widgetHost];
  v4 = [v5 widgetIdentifier];
  [(WGWidgetStatsController *)statsController registerWidgetForPredictionEvents:v4];
}

- (void)deviceManagementPolicyDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WGWidgetDiscoveryController_deviceManagementPolicyDidChange___block_invoke;
  block[3] = &unk_279ED09F0;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __63__WGWidgetDiscoveryController_deviceManagementPolicyDidChange___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v15 = *v22;
    do
    {
      v3 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v21 + 1) + 8 * v3);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v5 = [v4 plugInKitPlugins];
        v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v18;
          do
          {
            v9 = 0;
            do
            {
              if (*v18 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v17 + 1) + 8 * v9);
              v11 = [WeakRetained _widgetIDsToWidgets];
              v12 = [v10 bundleIdentifier];
              v13 = [v11 objectForKey:v12];

              [WeakRetained _updateLockedOutStateForWidget:v13 withContainingAppProxy:v4];
              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v7);
        }

        ++v3;
      }

      while (v3 != v16);
      v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }
}

- (void)debugWidgetWithBundleID:(id)a3 options:(id)a4 completion:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v8;
    _os_log_impl(&dword_27425E000, v11, OS_LOG_TYPE_DEFAULT, "Asked to debug widget with ID '%{public}@'", &v16, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_debuggingHandler);
  if ([v8 length])
  {
    v13 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:v8];
    v14 = v13;
    if (v13 && WeakRetained)
    {
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        [(WGWidgetDiscoveryController *)self _externalSourceRequestsInsertionOfWidgetWithIdentifier:v8 insertAtTop:0];
        [WeakRetained makeVisibleWidgetWithIdentifier:v8 completion:v10];
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  if (v10)
  {
    v10[2](v10, 0);
  }

LABEL_11:
}

- (void)removeWidgetIdentifiersFromToday:(id)a3
{
  v4 = a3;
  v5 = [(WGWidgetDiscoveryController *)self todayWidgetIdentifiers];
  v9 = [v5 mutableCopy];

  [v9 removeObjectsInArray:v4];
  WGTodayViewArchiveSetOrderedIdentifiersInGroup(self->_archive, v9, @"TodayGroup", self->_archiveWriteQueue);
  v6 = [(WGWidgetDiscoveryController *)self todayWidgetIdentifiers];
  v7 = [v6 mutableCopy];
  orderedEnabledTodayIdentifiers = self->_orderedEnabledTodayIdentifiers;
  self->_orderedEnabledTodayIdentifiers = v7;

  [(WGWidgetDiscoveryController *)self invalidateVisibleIdentifiers];
}

- (void)_updateFavoriteWidgetIDs:(id)a3
{
  v6 = a3;
  v4 = [(WGWidgetDiscoveryController *)self favoriteWidgetIdentifiers];
  if (([v4 isEqualToArray:v6] & 1) == 0)
  {
    WGTodayViewArchiveSetOrderedIdentifiersInGroup(self->_archive, v6, @"FavoriteGroup", self->_archiveWriteQueue);
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"WGWidgetFavoritesDidChange" object:self];
  }
}

- (WGWidgetDiscoveryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WGWidgetDebugging)debuggingHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_debuggingHandler);

  return WeakRetained;
}

- (WGWidgetListEditViewController)presentedEditViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedEditViewController);

  return WeakRetained;
}

- (void)widgetWithIdentifier:delegate:forRequesterWithIdentifier:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_27425E000, v1, OS_LOG_TYPE_DEBUG, "Requester with ID '%{public}@' is requesting widget with ID '%{public}@'", v2, 0x16u);
}

- (void)dismissWidgetListEditViewController:(uint64_t)a1 animated:(uint64_t)a2 withCompletion:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"WGWidgetDiscoveryController.m" lineNumber:807 description:{@"Unknown edit view controller (%@) requesting dismissal", a3}];
}

- (void)widgetDataSource:(void *)a1 replaceWithDatum:(void *)a2 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 dataSourceIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_27425E000, v5, v6, "Unknown data source (%{public}@) called observer", v7, v8, v9, v10, v11);
}

- (void)widgetDataSource:(void *)a1 removeDatum:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 dataSourceIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_27425E000, v5, v6, "Unknown data source (%@{public}) called observer", v7, v8, v9, v10, v11);
}

@end