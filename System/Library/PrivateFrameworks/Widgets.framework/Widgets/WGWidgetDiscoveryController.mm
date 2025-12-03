@interface WGWidgetDiscoveryController
+ (int64_t)layoutModeForSize:(CGSize)size;
- (BOOL)_isElementWithIdentifierEnabled:(id)enabled;
- (BOOL)_isElementWithIdentifierFavorited:(id)favorited;
- (BOOL)_isElementWithIdentifierKnown:(id)known;
- (BOOL)_setEnabled:(BOOL)enabled forElementWithIdentifier:(id)identifier;
- (BOOL)alwaysShowsFavoriteWidgets;
- (BOOL)areWidgetsPinned;
- (BOOL)shouldPurgeArchivedSnapshotsForWidget:(id)widget;
- (BOOL)shouldShowWidgetsPinButtonForWidgetListEditViewController:(id)controller;
- (BOOL)shouldShowWidgetsPinningTeachingView;
- (BOOL)widgetListEditViewControllerShouldIncludeInternalWidgets:(id)widgets;
- (BOOL)widgetListEditViewControllerShouldShowFavorites:(id)favorites;
- (WGWidgetDebugging)debuggingHandler;
- (WGWidgetDiscoveryController)init;
- (WGWidgetDiscoveryControllerDelegate)delegate;
- (WGWidgetListEditViewController)presentedEditViewController;
- (id)_disabledIdentifiers;
- (id)_groupForWidgetWithIdentifier:(id)identifier;
- (id)_insertWidgetWithIdentifier:(id)identifier atTop:(BOOL)top;
- (id)_newWidgetListEditViewController;
- (id)_newWidgetListEditViewControllerStatusBarAssertion;
- (id)_newWidgetWithIdentifier:(id)identifier delegate:(id)delegate;
- (id)_orderedEnabledIdentifiersForGroup:(id)group;
- (id)_orderedEnabledWidgetIdentifiersForGroup:(id)group includingNoContent:(BOOL)content;
- (id)_orderedVisibleIdentifiersForGroup:(id)group;
- (id)_orderedVisibleIdentifiersForTodayGroup;
- (id)_orderedVisibleIdentifiersForWidgetGroup;
- (id)_preferredViewControllerForPresentingFromViewController:(id)controller;
- (id)_updatePublicationStateOfDatumWithIdentifier:(id)identifier visibilityChanged:(BOOL)changed contentStateChanged:(BOOL)stateChanged insertAtTop:(BOOL)top notifyingObservers:(BOOL)observers;
- (id)enabledWidgetIdentifiersForAllGroups;
- (id)widgetListEditViewController:(id)controller displayNameForItemWithIdentifier:(id)identifier;
- (id)widgetWithIdentifier:(id)identifier delegate:(id)delegate forRequesterWithIdentifier:(id)withIdentifier;
- (int64_t)_widgetListEditViewControllerStatusBarLegibilityStyle;
- (int64_t)largestAvailableDisplayModeForWidget:(id)widget;
- (int64_t)layoutModeForWidgetListEditViewController:(id)controller;
- (int64_t)userSpecifiedDisplayModeForWidget:(id)widget;
- (unint64_t)visibleWidgetsCount;
- (void)_addDefaultPinnedWidgets;
- (void)_applicationIconChanged:(id)changed;
- (void)_beginObservingDataSourcesIfNecessary;
- (void)_calculateAndPostNewWidgetsCount;
- (void)_dataSourcesDidChange:(id)change;
- (void)_externalSourceRequestsInsertionOfWidgetWithIdentifier:(id)identifier insertAtTop:(BOOL)top;
- (void)_invalidateVisibleIdentifiersForGroup:(id)group;
- (void)_invalidateWidgetListEditViewControllerStatusBarAssertion:(id)assertion;
- (void)_notifyObserversOfOrderChangeForWidgetIdentifiers:(id)identifiers;
- (void)_notifyObserversOfSignificantWidgetsChange;
- (void)_notifyObserversOfVisibilityChange:(BOOL)change ofWidgetWithIdentifier:(id)identifier inGroup:(id)group;
- (void)_removeWidgetWithIdentifier:(id)identifier;
- (void)_requestUnlockWithCompletion:(id)completion;
- (void)_setWidgetsPinned:(BOOL)pinned;
- (void)_updateFavoriteWidgetIDs:(id)ds;
- (void)_updateLockedOutStateForWidget:(id)widget;
- (void)_updateLockedOutStateForWidget:(id)widget withContainingAppProxy:(id)proxy;
- (void)_widget:(id)_widget withIdentifier:(id)identifier didRemoveSnapshotAtURL:(id)l;
- (void)_widgetListEditViewControllerWillDisappear:(id)disappear;
- (void)_widgetViewControllerDidRemoveSnapshot:(id)snapshot;
- (void)_widgetViewControllerRequestsAdd:(id)add;
- (void)addDiscoveryObserver:(id)observer;
- (void)beginDiscovery;
- (void)debugWidgetWithBundleID:(id)d options:(id)options completion:(id)completion;
- (void)deviceManagementPolicyDidChange:(id)change;
- (void)dismissWidgetListEditViewController:(id)controller animated:(BOOL)animated withCompletion:(id)completion;
- (void)dismissWidgetListEditViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)handleWidgetLaunchRecommendation:(id)recommendation completion:(id)completion;
- (void)invalidateVisibleIdentifiers;
- (void)noteWidgetsPinningViewControllerDidDismiss:(BOOL)dismiss;
- (void)presentWidgetListEditViewControllerFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)remoteViewControllerDidConnectForWidgetViewController:(id)controller;
- (void)remoteViewControllerViewDidAppearForWidgetViewController:(id)controller;
- (void)removeDiscoveryObserver:(id)observer;
- (void)removeWidgetIdentifiersFromToday:(id)today;
- (void)setHasContent:(BOOL)content forWidgetWithIdentifier:(id)identifier;
- (void)widget:(id)widget didChangeLargestAvailableDisplayMode:(int64_t)mode;
- (void)widget:(id)widget didChangeUserSpecifiedDisplayMode:(int64_t)mode;
- (void)widget:(id)widget didEncounterProblematicSnapshotAtURL:(id)l;
- (void)widget:(id)widget didRemoveSnapshotAtURL:(id)l;
- (void)widgetDataSource:(id)source removeDatum:(id)datum;
- (void)widgetDataSource:(id)source replaceWithDatum:(id)datum;
- (void)widgetEditListViewController:(id)controller traitCollectionDidChange:(id)change;
- (void)widgetListEditViewController:(id)controller acknowledgeInterfaceItemsWithIdentifiers:(id)identifiers;
- (void)widgetListEditViewController:(id)controller didReorderItemsWithIdentifiersInGroups:(id)groups;
- (void)widgetListEditViewController:(id)controller requestsIconForItemWithIdentifier:(id)identifier withHandler:(id)handler;
- (void)widgetListEditViewController:(id)controller setEnabled:(BOOL)enabled forItemsWithIdentifiers:(id)identifiers;
- (void)widgetViewControllerNeedsToBeRegisteredForRefreshNotification:(id)notification;
- (void)widgetViewControllerNeedsToBeUnregisteredForRefreshNotification:(id)notification;
@end

@implementation WGWidgetDiscoveryController

+ (int64_t)layoutModeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = 3;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = 1;
  }

  if (width <= height)
  {
    return 2 * ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1);
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__widgetViewControllerRequestsAdd_ name:@"WGWidgetViewControllerAddRequestNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__widgetViewControllerDidRemoveSnapshot_ name:@"WGWidgetViewControllerDidRemoveSnapshotNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__widgetListEditViewControllerWillDisappear_ name:@"WGWidgetListEditViewControllerWillDisappear" object:0];
    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__applicationIconChanged_ name:@"com.apple.LaunchServices.applicationIconChanged" object:0];
  }

  return v2;
}

- (unint64_t)visibleWidgetsCount
{
  _orderedVisibleIdentifiersForTodayGroup = [(WGWidgetDiscoveryController *)self _orderedVisibleIdentifiersForTodayGroup];
  v4 = [_orderedVisibleIdentifiersForTodayGroup count];
  _orderedVisibleIdentifiersForWidgetGroup = [(WGWidgetDiscoveryController *)self _orderedVisibleIdentifiersForWidgetGroup];
  v6 = [_orderedVisibleIdentifiersForWidgetGroup count];

  return v6 + v4;
}

- (void)addDiscoveryObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
      v8 = self->_observers;
      self->_observers = weakObjectsPointerArray;

      observers = self->_observers;
    }

    observerCopy = [(NSPointerArray *)observers addPointer:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](observerCopy, v5);
}

- (void)removeDiscoveryObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    [(NSPointerArray *)self->_observers compact];
    if ([(NSPointerArray *)self->_observers count])
    {
      v4 = 0;
      while ([(NSPointerArray *)self->_observers pointerAtIndex:v4]!= observerCopy)
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

- (void)_updateLockedOutStateForWidget:(id)widget withContainingAppProxy:(id)proxy
{
  widgetCopy = widget;
  proxyCopy = proxy;
  v7 = [(WGWidgetDiscoveryController *)self _isApplicationLockedOutWithProxy:proxyCopy];
  if (v7)
  {
    v8 = MEMORY[0x277D24400];
    if (proxyCopy)
    {
      localizedName = [proxyCopy localizedName];
      [v8 messageForApplicationName:localizedName style:2];
    }

    else
    {
      localizedName = [widgetCopy widgetIdentifier];
      [v8 messageForBundleIdentifier:localizedName style:2];
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  [widgetCopy setLockedOut:v7 withExplanation:v10];
}

- (void)_updateLockedOutStateForWidget:(id)widget
{
  widgetCopy = widget;
  widgetIdentifier = [widgetCopy widgetIdentifier];
  v5 = WGContainingBundleProxyForWidgetWithBundleIdentifer(widgetIdentifier);

  if (v5)
  {
    bundleType = [v5 bundleType];
    if (([bundleType isEqualToString:*MEMORY[0x277CC1E08]] & 1) != 0 || (objc_msgSend(bundleType, "isEqualToString:", *MEMORY[0x277CC1E30]) & 1) != 0 || objc_msgSend(bundleType, "isEqualToString:", *MEMORY[0x277CC1E40]))
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    [(WGWidgetDiscoveryController *)self _updateLockedOutStateForWidget:widgetCopy withContainingAppProxy:v7];
  }
}

- (id)_newWidgetWithIdentifier:(id)identifier delegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  delegateCopy = delegate;
  if ([identifierCopy length])
  {
    v8 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:identifierCopy];
    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_identifiersToWidgetInfos objectForKey:identifierCopy];
      if (v9)
      {
        v10 = [[WGWidgetHostingViewController alloc] initWithWidgetInfo:v9 delegate:delegateCopy host:self];
        [(WGWidgetDiscoveryController *)self _updateLockedOutStateForWidget:v10];
      }

      else
      {
        v12 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543362;
          v15 = identifierCopy;
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
        v15 = identifierCopy;
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

- (id)widgetWithIdentifier:(id)identifier delegate:(id)delegate forRequesterWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  withIdentifierCopy = withIdentifier;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    [WGWidgetDiscoveryController widgetWithIdentifier:delegate:forRequesterWithIdentifier:];
  }

  if ([identifierCopy length] && objc_msgSend(withIdentifierCopy, "length"))
  {
    widgetIDsToWidgets = self->_widgetIDsToWidgets;
    if (!widgetIDsToWidgets)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = self->_widgetIDsToWidgets;
      self->_widgetIDsToWidgets = v12;

      widgetIDsToWidgets = self->_widgetIDsToWidgets;
    }

    v14 = [(NSMutableDictionary *)widgetIDsToWidgets objectForKey:identifierCopy];
    if (!v14)
    {
      v14 = [(WGWidgetDiscoveryController *)self _newWidgetWithIdentifier:identifierCopy delegate:delegateCopy];
      if (v14)
      {
        [(NSMutableDictionary *)self->_widgetIDsToWidgets setObject:v14 forKey:identifierCopy];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_orderedEnabledIdentifiersForGroup:(id)group
{
  v4 = [group isEqual:@"WidgetGroup"];
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

- (void)_invalidateVisibleIdentifiersForGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy isEqual:@"TodayGroup"])
  {
    v4 = 72;
  }

  else
  {
    if (![groupCopy isEqual:@"WidgetGroup"])
    {
      goto LABEL_6;
    }

    v4 = 88;
  }

  v5 = *(&self->super.isa + v4);
  *(&self->super.isa + v4) = 0;

LABEL_6:
}

- (id)_orderedVisibleIdentifiersForGroup:(id)group
{
  if ([group isEqual:@"WidgetGroup"])
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
  allKeys = [(NSMutableDictionary *)self->_identifiersToDatums allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__WGWidgetDiscoveryController__disabledIdentifiers__block_invoke;
  v7[3] = &unk_279ED0C38;
  v7[4] = self;
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v7];
  v5 = [allKeys filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)_orderedEnabledWidgetIdentifiersForGroup:(id)group includingNoContent:(BOOL)content
{
  if (content)
  {
    [(WGWidgetDiscoveryController *)self _orderedEnabledIdentifiersForGroup:group];
  }

  else
  {
    [(WGWidgetDiscoveryController *)self _orderedVisibleIdentifiersForGroup:group];
  }
  v4 = ;

  return v4;
}

- (id)enabledWidgetIdentifiersForAllGroups
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(WGWidgetDiscoveryController *)self _orderedEnabledIdentifiersForGroup:@"TodayGroup"];
  if (v4)
  {
    [array addObjectsFromArray:v4];
  }

  v5 = [(WGWidgetDiscoveryController *)self _orderedEnabledIdentifiersForGroup:@"WidgetGroup"];
  if (v5)
  {
    [array addObjectsFromArray:v5];
  }

  return array;
}

- (void)setHasContent:(BOOL)content forWidgetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    if (!content)
    {
      v6 = [(NSMutableDictionary *)self->_widgetIDsToWidgets objectForKey:identifierCopy];
      [v6 invalidateCachedSnapshotWithCompletionHandler:0];
    }

    v7 = [(WGWidgetDiscoveryController *)self _updatePublicationStateOfDatumWithIdentifier:identifierCopy visibilityChanged:0 contentStateChanged:1 insertAtTop:0 notifyingObservers:1];
  }
}

- (void)_externalSourceRequestsInsertionOfWidgetWithIdentifier:(id)identifier insertAtTop:(BOOL)top
{
  topCopy = top;
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v6 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:identifierCopy];

    if (v6)
    {
      v7 = [(WGWidgetDiscoveryController *)self _updatePublicationStateOfDatumWithIdentifier:identifierCopy visibilityChanged:[(WGWidgetDiscoveryController *)self _setEnabled:1 forElementWithIdentifier:identifierCopy] contentStateChanged:0 insertAtTop:topCopy notifyingObservers:1];
      if (!v7)
      {
        v7 = [(WGWidgetDiscoveryController *)self _defaultGroupForWidgetWithIdentifier:identifierCopy];
      }

      WGTodayViewArchiveSetKnownForIdentifier(self->_archive, identifierCopy, 0);
      WGTodayViewArchiveSetOrderedIdentifiersInGroup(self->_archive, self->_orderedEnabledTodayIdentifiers, v7, self->_archiveWriteQueue);
    }
  }
}

- (void)_widgetViewControllerRequestsAdd:(id)add
{
  userInfo = [add userInfo];
  v5 = [userInfo objectForKey:@"WGWidgetViewControllerAddRequestBundleIdentifierKey"];

  [(WGWidgetDiscoveryController *)self _externalSourceRequestsInsertionOfWidgetWithIdentifier:v5 insertAtTop:0];
}

- (void)_widget:(id)_widget withIdentifier:(id)identifier didRemoveSnapshotAtURL:(id)l
{
  lCopy = l;
  widgetIDsToWidgets = self->_widgetIDsToWidgets;
  _widgetCopy = _widget;
  v10 = [(NSMutableDictionary *)widgetIDsToWidgets objectForKey:identifier];

  if (v10 != _widgetCopy)
  {
    [v10 invalidateCachedSnapshotWithURL:lCopy completionHandler:0];
  }
}

- (void)_widgetViewControllerDidRemoveSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  userInfo = [snapshotCopy userInfo];
  v8 = [userInfo objectForKey:@"WGWidgetViewControllerRemovedSnapshotWidgetIdentifierKey"];

  userInfo2 = [snapshotCopy userInfo];

  v7 = [userInfo2 objectForKey:@"WGWidgetViewControllerRemovedSnapshotURLKey"];

  [(WGWidgetDiscoveryController *)self _widget:0 withIdentifier:v8 didRemoveSnapshotAtURL:v7];
}

- (void)_widgetListEditViewControllerWillDisappear:(id)disappear
{
  disappearCopy = disappear;
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
    transitionCoordinator = [WeakRetained transitionCoordinator];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__WGWidgetDiscoveryController__widgetListEditViewControllerWillDisappear___block_invoke_2;
    v13[3] = &unk_279ED0C60;
    v14 = v5;
    [transitionCoordinator animateAlongsideTransition:v13 completion:0];
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

- (void)_applicationIconChanged:(id)changed
{
  v22 = *MEMORY[0x277D85DE8];
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:@"CFBundleIdentifier"];

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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"WGAlwaysShowFavorites"];

  return v3;
}

- (void)handleWidgetLaunchRecommendation:(id)recommendation completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  recommendationCopy = recommendation;
  completionCopy = completion;
  v7 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = recommendationCopy;
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
  obj = recommendationCopy;
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
          _nextSequenceNumber = [(WGWidgetDiscoveryController *)self _nextSequenceNumber];
          [(WGWidgetStatsController *)v9 notePreWarmHasStarted:v13 withTriggerType:1 withSequence:_nextSequenceNumber];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __75__WGWidgetDiscoveryController_handleWidgetLaunchRecommendation_completion___block_invoke;
          v22[3] = &unk_279ED0CB0;
          v22[4] = v13;
          p_buf = &buf;
          v23 = v9;
          v26 = _nextSequenceNumber;
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
  v20 = completionCopy;
  v21 = &buf;
  v16 = completionCopy;
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

- (void)_dataSourcesDidChange:(id)change
{
  v50 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [(NSMutableDictionary *)self->_identifiersToDataSources mutableCopy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = changeCopy;
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
        dataSourceIdentifier = [v12 dataSourceIdentifier];
        v14 = [(NSMutableDictionary *)self->_identifiersToDataSources objectForKey:dataSourceIdentifier];
        v15 = v14;
        if (v14)
        {
          if (([v14 isEqual:v12] & 1) == 0)
          {
            [array addObject:v12];
          }
        }

        else
        {
          [array addObject:v12];
          [v6 removeObjectForKey:dataSourceIdentifier];
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
  v23 = array;
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
        dataSourceIdentifier2 = [v28 dataSourceIdentifier];
        [(NSMutableDictionary *)identifiersToDataSources setObject:v28 forKey:dataSourceIdentifier2];

        dataSourceIdentifiersToDatumIdentifiers = self->_dataSourceIdentifiersToDatumIdentifiers;
        array2 = [MEMORY[0x277CBEB18] array];
        dataSourceIdentifier3 = [v28 dataSourceIdentifier];
        [(NSMutableDictionary *)dataSourceIdentifiersToDatumIdentifiers setObject:array2 forKey:dataSourceIdentifier3];

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
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:self];

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

- (BOOL)_isElementWithIdentifierEnabled:(id)enabled
{
  enabledCopy = enabled;
  if ([enabledCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:enabledCopy];
    representedExtension = [v5 representedExtension];
    v7 = representedExtension;
    if (representedExtension)
    {
      optedIn = [representedExtension optedIn];
    }

    else
    {
      optedIn = 0;
    }
  }

  else
  {
    optedIn = 0;
  }

  return optedIn;
}

- (BOOL)_setEnabled:(BOOL)enabled forElementWithIdentifier:(id)identifier
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = [(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:identifierCopy];
    v8 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:identifierCopy];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 representedExtension], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      LOBYTE(v17) = 0;
LABEL_18:

      goto LABEL_19;
    }

    v10 = v9;
    optedIn = [v9 optedIn];
    if (enabledCopy)
    {
      if ((optedIn & 1) == 0)
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
        identifier = [v10 identifier];
        *buf = 138543618;
        v23 = identifier;
        v24 = 2114;
        v25 = v12;
        v16 = "Encountered error attempting to opt in extension with ID '%{public}@': %{public}@";
LABEL_15:
        _os_log_impl(&dword_27425E000, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);

LABEL_16:
      }
    }

    else if (optedIn)
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
      identifier = [v10 identifier];
      *buf = 138543618;
      v23 = identifier;
      v24 = 2114;
      v25 = v12;
      v16 = "Encountered error attempting to opt out extension with ID '%{public}@': %{public}@";
      goto LABEL_15;
    }

    v17 = v7 ^ [(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:identifierCopy];

    goto LABEL_18;
  }

  LOBYTE(v17) = 0;
LABEL_19:

  return v17;
}

- (BOOL)_isElementWithIdentifierKnown:(id)known
{
  knownCopy = known;
  if (WGTodayViewArchiveGetKnownForIdentifier(self->_archive, knownCopy))
  {
    v5 = 1;
  }

  else
  {
    v5 = WGIsWidgetWithBundleIdentifierInternal(knownCopy);
  }

  return v5;
}

- (BOOL)_isElementWithIdentifierFavorited:(id)favorited
{
  archive = self->_archive;
  favoritedCopy = favorited;
  v5 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(archive, @"FavoriteGroup");
  v6 = [v5 containsObject:favoritedCopy];

  return v6;
}

- (void)_calculateAndPostNewWidgetsCount
{
  allValues = [(NSMutableDictionary *)self->_identifiersToDatums allValues];
  if (self->_newWidgetsCountPostQueue || (v4 = dispatch_queue_create("com.apple.notificationcenter.newwidgetscountpostqueue", 0), v5 = self->_newWidgetsCountPostQueue, self->_newWidgetsCountPostQueue = v4, v5, self->_newWidgetsCountPostQueue))
  {
    objc_initWeak(&location, self);
    newWidgetsCountPostQueue = self->_newWidgetsCountPostQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__WGWidgetDiscoveryController__calculateAndPostNewWidgetsCount__block_invoke;
    block[3] = &unk_279ED0DA0;
    v8 = allValues;
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

- (void)_notifyObserversOfVisibilityChange:(BOOL)change ofWidgetWithIdentifier:(id)identifier inGroup:(id)group
{
  changeCopy = change;
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  groupCopy = group;
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
        if (changeCopy)
        {
          if (objc_opt_respondsToSelector())
          {
            [v14 widgetDiscoveryController:self widgetWithIdentifier:identifierCopy shouldBecomeVisibleInGroup:groupCopy];
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          [v14 widgetDiscoveryController:self widgetWithIdentifier:identifierCopy shouldBecomeHiddenInGroup:groupCopy];
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

- (void)_notifyObserversOfOrderChangeForWidgetIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
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
          [v10 widgetDiscoveryController:self orderDidChangeForWidgetIdentifiers:{identifiersCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_groupForWidgetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = @"TodayGroup";
    v6 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(self->_archive, @"TodayGroup");
    v7 = [v6 containsObject:identifierCopy];

    if ((v7 & 1) == 0)
    {
      v8 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(self->_archive, @"WidgetGroup");
      v9 = [v8 containsObject:identifierCopy];

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

- (id)_insertWidgetWithIdentifier:(id)identifier atTop:(BOOL)top
{
  topCopy = top;
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v7 = [(WGWidgetDiscoveryController *)self _groupForWidgetWithIdentifier:identifierCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(WGWidgetDiscoveryController *)self _defaultGroupForWidgetWithIdentifier:identifierCopy];
    }

    v10 = v9;

    v11 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(self->_archive, v10);
    v12 = [(WGWidgetDiscoveryController *)self _orderedEnabledIdentifiersForGroup:v10];
    [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:v10];
    if (topCopy)
    {
      [v12 insertObject:identifierCopy atIndex:0];
    }

    else
    {
      [v12 addObject:identifierCopy];
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

- (void)_removeWidgetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    [(NSMutableArray *)self->_orderedEnabledTodayIdentifiers removeObject:identifierCopy];
    [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:@"TodayGroup"];
    [(NSMutableArray *)self->_orderedEnabledWidgetsIdentifiers removeObject:identifierCopy];
    [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:@"WidgetGroup"];
    orderedVisibleWidgetsIdentifiers = self->_orderedVisibleWidgetsIdentifiers;
    self->_orderedVisibleWidgetsIdentifiers = 0;
  }
}

- (id)_updatePublicationStateOfDatumWithIdentifier:(id)identifier visibilityChanged:(BOOL)changed contentStateChanged:(BOOL)stateChanged insertAtTop:(BOOL)top notifyingObservers:(BOOL)observers
{
  observersCopy = observers;
  topCopy = top;
  stateChangedCopy = stateChanged;
  changedCopy = changed;
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138544386;
    v23 = identifierCopy;
    v24 = 1024;
    v25 = changedCopy;
    v26 = 1024;
    v27 = stateChangedCopy;
    v28 = 1024;
    v29 = topCopy;
    v30 = 1024;
    v31 = observersCopy;
    _os_log_impl(&dword_27425E000, v13, OS_LOG_TYPE_DEFAULT, "Will update publication state of %{public}@ visibilityChanged: %d contentStateChanged: %d insertAtTop: %d notifyingObservers: %d", &v22, 0x24u);
  }

  if (![identifierCopy length])
  {
    v14 = 0;
    goto LABEL_25;
  }

  if (changedCopy || stateChangedCopy)
  {
    v15 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:identifierCopy];
    if (v15)
    {
      v16 = [(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:identifierCopy];
    }

    else
    {
      v16 = 0;
    }

    v17 = [(WGWidgetPersistentStateController *)self->_persistentStateController doesWidgetWithIdentifierHaveContent:identifierCopy];
    v14 = [(WGWidgetDiscoveryController *)self _groupForWidgetWithIdentifier:identifierCopy];
    v18 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543874;
      v23 = identifierCopy;
      v24 = 1024;
      v25 = v16;
      v26 = 1024;
      v27 = v17;
      _os_log_impl(&dword_27425E000, v18, OS_LOG_TYPE_DEFAULT, "Publication state of %{public}@ isVisible: %d hasContent: %d", &v22, 0x18u);
      if (!stateChangedCopy)
      {
LABEL_13:
        if (!changedCopy)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

    else if (!stateChangedCopy)
    {
      goto LABEL_13;
    }

    v19 = [(WGWidgetDiscoveryController *)self _groupForWidgetWithIdentifier:identifierCopy];
    [(WGWidgetDiscoveryController *)self _invalidateVisibleIdentifiersForGroup:v19];

    if (!changedCopy)
    {
LABEL_14:
      if (!observersCopy)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (changedCopy && v17 || v16 && stateChangedCopy)
      {
        [(WGWidgetDiscoveryController *)self _notifyObserversOfVisibilityChange:v16 & v17 ofWidgetWithIdentifier:identifierCopy inGroup:v14];
      }

      goto LABEL_24;
    }

LABEL_20:
    if (v16)
    {
      v20 = [(WGWidgetDiscoveryController *)self _insertWidgetWithIdentifier:identifierCopy atTop:topCopy];

      v14 = v20;
      if (!observersCopy)
      {
        goto LABEL_24;
      }
    }

    else
    {
      [(WGWidgetDiscoveryController *)self _removeWidgetWithIdentifier:identifierCopy];
      if (!observersCopy)
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

- (void)presentWidgetListEditViewControllerFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presentedEditViewController);
  v11 = WeakRetained;
  if (controllerCopy && ([WeakRetained wg_isAppearanceTransitioning] & 1) == 0)
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
      v20 = controllerCopy;
      animatedCopy = animated;
      v21 = completionCopy;
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
      v15 = controllerCopy;
      animatedCopy2 = animated;
      v16 = completionCopy;
      [(WGWidgetDiscoveryController *)self _requestUnlockWithCompletion:v14];

      v13 = v15;
    }

    objc_destroyWeak(v12 + 6);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)dismissWidgetListEditViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presentedEditViewController);
  if (WeakRetained)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__WGWidgetDiscoveryController_dismissWidgetListEditViewControllerAnimated_completion___block_invoke;
    v8[3] = &unk_279ED0E68;
    objc_copyWeak(&v10, &location);
    v9 = completionCopy;
    [WeakRetained dismissViewControllerAnimated:animatedCopy completion:v8];

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
  traitCollection = [WeakRetained traitCollection];

  if ([traitCollection userInterfaceStyle] == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)_invalidateWidgetListEditViewControllerStatusBarAssertion:(id)assertion
{
  assertionCopy = assertion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetDiscoveryController:self didEndUsingStatusBarAssertion:assertionCopy];
  }
}

- (id)_preferredViewControllerForPresentingFromViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = controllerCopy;
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained widgetDiscoveryController:self preferredViewControllerForPresentingFromViewController:controllerCopy];
  }

  return v6;
}

- (void)_requestUnlockWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetDiscoveryController:self requestUnlockWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)dismissWidgetListEditViewController:(id)controller animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presentedEditViewController);

  if (WeakRetained != controllerCopy)
  {
    [WGWidgetDiscoveryController dismissWidgetListEditViewController:a2 animated:self withCompletion:controllerCopy];
  }

  [(WGWidgetDiscoveryController *)self dismissWidgetListEditViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)widgetEditListViewController:(id)controller traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [controller traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  userInterfaceStyle2 = [changeCopy userInterfaceStyle];
  if (userInterfaceStyle2 != userInterfaceStyle)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      _widgetListEditViewControllerStatusBarLegibilityStyle = [(WGWidgetDiscoveryController *)self _widgetListEditViewControllerStatusBarLegibilityStyle];
      _presentedEditViewControllerStatusBarAssertion = [(WGWidgetDiscoveryController *)self _presentedEditViewControllerStatusBarAssertion];
      [WeakRetained widgetDiscoveryController:self updateStatusBarAssertion:_presentedEditViewControllerStatusBarAssertion withLegibilityStyle:_widgetListEditViewControllerStatusBarLegibilityStyle];
    }
  }
}

- (void)widgetDataSource:(id)source replaceWithDatum:(id)datum
{
  v37 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  datumCopy = datum;
  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    datumIdentifier = [datumCopy datumIdentifier];
    representedExtension = [datumCopy representedExtension];
    _plugIn = [representedExtension _plugIn];
    uuid = [_plugIn uuid];
    v31 = 138543874;
    v32 = sourceCopy;
    v33 = 2114;
    v34 = datumIdentifier;
    v35 = 2114;
    v36 = uuid;
    _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "Widget data source %{public}@ asking to replace with datum with ID '%{public}@ (%{public}@)'", &v31, 0x20u);
  }

  identifiersToDataSources = self->_identifiersToDataSources;
  dataSourceIdentifier = [sourceCopy dataSourceIdentifier];
  v16 = [(NSMutableDictionary *)identifiersToDataSources objectForKey:dataSourceIdentifier];

  if (v16)
  {
    datumIdentifier2 = [datumCopy datumIdentifier];
    v18 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:datumIdentifier2];

    [(NSMutableDictionary *)self->_identifiersToDatums setObject:datumCopy forKey:datumIdentifier2];
    v19 = [(NSMutableDictionary *)self->_identifiersToWidgetInfos objectForKey:datumIdentifier2];
    if (v19)
    {
      v20 = v19;
      representedExtension2 = [datumCopy representedExtension];
      v22 = [v20 widgetInfoWithExtension:representedExtension2];
    }

    else
    {
      representedExtension2 = [datumCopy representedExtension];
      v22 = [WGWidgetInfo widgetInfoWithExtension:representedExtension2];
    }

    if (v22)
    {
      [(NSMutableDictionary *)self->_identifiersToWidgetInfos setObject:v22 forKey:datumIdentifier2];
    }

    else if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [WGWidgetDiscoveryController widgetDataSource:replaceWithDatum:];
    }

    dataSourceIdentifiersToDatumIdentifiers = self->_dataSourceIdentifiersToDatumIdentifiers;
    dataSourceIdentifier2 = [sourceCopy dataSourceIdentifier];
    v26 = [(NSMutableDictionary *)dataSourceIdentifiersToDatumIdentifiers objectForKey:dataSourceIdentifier2];
    [v26 addObject:datumIdentifier2];

    if (WGIsWidgetWithBundleIdentifierInternal(datumIdentifier2))
    {
      WGTodayViewArchiveSetKnownForIdentifier(self->_archive, datumIdentifier2, self->_archiveWriteQueue);
    }

    if (!v18 && (WGTodayViewArchiveGetPenalizedForIdentifier(self->_archive, datumIdentifier2) & 1) == 0 && !WGIsWidgetWithBundleIdentifierBuiltOnOrAfterSystemVersion(datumIdentifier2, @"10.0"))
    {
      WGTodayViewArchiveRemoveFromOrderedIdentifiers(self->_archive, datumIdentifier2, 0);
      WGTodayViewArchiveSetPenalizedForIdentifier(self->_archive, datumIdentifier2, 0);
    }

    v27 = [(NSMutableSet *)self->_defaultEnabledIDs containsObject:datumIdentifier2];
    if (v27)
    {
      [(NSMutableSet *)self->_defaultEnabledIDs removeObject:datumIdentifier2];
    }

    v28 = [(WGWidgetDiscoveryController *)self _setEnabled:v27 | [(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:datumIdentifier2] forElementWithIdentifier:datumIdentifier2];
    if (v18)
    {
      v29 = 0;
    }

    else
    {
      v28 |= [(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:datumIdentifier2];
      v29 = WGIsWidgetWithBundleIdentifierWantsTop(datumIdentifier2);
    }

    v30 = [(WGWidgetDiscoveryController *)self _updatePublicationStateOfDatumWithIdentifier:datumIdentifier2 visibilityChanged:v28 & 1 contentStateChanged:0 insertAtTop:v29 notifyingObservers:1];
  }

  else
  {
    v23 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [WGWidgetDiscoveryController widgetDataSource:v23 replaceWithDatum:sourceCopy];
    }
  }
}

- (void)widgetDataSource:(id)source removeDatum:(id)datum
{
  v30 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  datumCopy = datum;
  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    datumIdentifier = [datumCopy datumIdentifier];
    representedExtension = [datumCopy representedExtension];
    _plugIn = [representedExtension _plugIn];
    uuid = [_plugIn uuid];
    v24 = 138543874;
    v25 = sourceCopy;
    v26 = 2114;
    v27 = datumIdentifier;
    v28 = 2114;
    v29 = uuid;
    _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "Widget data source %{public}@ asking to remove datum with ID '%{public}@ (%{public}@)'", &v24, 0x20u);
  }

  identifiersToDataSources = self->_identifiersToDataSources;
  dataSourceIdentifier = [sourceCopy dataSourceIdentifier];
  v16 = [(NSMutableDictionary *)identifiersToDataSources objectForKey:dataSourceIdentifier];

  if (!v16)
  {
    v17 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [WGWidgetDiscoveryController widgetDataSource:v17 removeDatum:sourceCopy];
    }
  }

  datumIdentifier2 = [datumCopy datumIdentifier];
  v19 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:datumIdentifier2];
  if (v19)
  {
    if ([(WGWidgetDiscoveryController *)self _isElementWithIdentifierEnabled:datumIdentifier2])
    {
      v20 = [(WGWidgetPersistentStateController *)self->_persistentStateController doesWidgetWithIdentifierHaveContent:datumIdentifier2];
    }

    else
    {
      v20 = 0;
    }

    [(NSMutableDictionary *)self->_identifiersToDatums removeObjectForKey:datumIdentifier2];
    [(NSMutableDictionary *)self->_identifiersToWidgetInfos removeObjectForKey:datumIdentifier2];
    dataSourceIdentifier2 = [sourceCopy dataSourceIdentifier];
    v22 = [(NSMutableDictionary *)self->_dataSourceIdentifiersToDatumIdentifiers objectForKey:dataSourceIdentifier2];
    [v22 removeObject:datumIdentifier2];
    [(NSMutableDictionary *)self->_widgetIDsToWidgets removeObjectForKey:datumIdentifier2];
    v23 = [(WGWidgetDiscoveryController *)self _updatePublicationStateOfDatumWithIdentifier:datumIdentifier2 visibilityChanged:1 contentStateChanged:0 insertAtTop:0 notifyingObservers:v20];
  }

  else if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
  {
    [WGWidgetDiscoveryController widgetDataSource:removeDatum:];
  }
}

- (int64_t)userSpecifiedDisplayModeForWidget:(id)widget
{
  widgetCopy = widget;
  widgetInfo = [widgetCopy widgetInfo];
  if ([widgetInfo isLinkedOnOrAfterSystemVersion:@"10.0"])
  {
    widgetIdentifier = [widgetCopy widgetIdentifier];
    v7 = [(WGWidgetDiscoveryController *)self userSpecifiedDisplayModeForWidgetWithIdentifier:widgetIdentifier];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)widget:(id)widget didChangeUserSpecifiedDisplayMode:(int64_t)mode
{
  widgetCopy = widget;
  if ([(WGWidgetDiscoveryController *)self userSpecifiedDisplayModeForWidget:?]!= mode)
  {
    widgetIdentifier = [widgetCopy widgetIdentifier];
    [(WGWidgetDiscoveryController *)self setUserSpecifiedDisplayMode:mode forWidgetWithIdentifier:widgetIdentifier];

    v7 = +[WGWidgetEventTracker sharedInstance];
    widgetIdentifier2 = [widgetCopy widgetIdentifier];
    [v7 widget:widgetIdentifier2 didChangeUserSpecifiedDisplayMode:mode];
  }
}

- (int64_t)largestAvailableDisplayModeForWidget:(id)widget
{
  widgetCopy = widget;
  widgetInfo = [widgetCopy widgetInfo];
  if ([widgetInfo isLinkedOnOrAfterSystemVersion:@"10.0"])
  {
    widgetIdentifier = [widgetCopy widgetIdentifier];
    v7 = [(WGWidgetDiscoveryController *)self largestAvailableDisplayModeForWidgetWithIdentifier:widgetIdentifier];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)widget:(id)widget didChangeLargestAvailableDisplayMode:(int64_t)mode
{
  widgetIdentifier = [widget widgetIdentifier];
  [(WGWidgetDiscoveryController *)self setLargestAvailableDisplayMode:mode forWidgetWithIdentifier:widgetIdentifier];
}

- (void)widget:(id)widget didEncounterProblematicSnapshotAtURL:(id)l
{
  widgetCopy = widget;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    widgetIdentifier = [widgetCopy widgetIdentifier];
    [WeakRetained widgetDiscoveryController:self widgetWithBundleIdentifier:widgetIdentifier didEncounterProblematicSnapshotAtURL:lCopy];
  }
}

- (void)widget:(id)widget didRemoveSnapshotAtURL:(id)l
{
  lCopy = l;
  widgetCopy = widget;
  widgetIdentifier = [widgetCopy widgetIdentifier];
  [(WGWidgetDiscoveryController *)self _widget:widgetCopy withIdentifier:widgetIdentifier didRemoveSnapshotAtURL:lCopy];
}

- (BOOL)shouldPurgeArchivedSnapshotsForWidget:(id)widget
{
  widgetCopy = widget;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    widgetIdentifier = [widgetCopy widgetIdentifier];
    v7 = [WeakRetained widgetDiscoveryController:self shouldPurgeArchivedSnapshotsForWidgetWithBundleIdentifier:widgetIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)widgetListEditViewController:(id)controller didReorderItemsWithIdentifiersInGroups:(id)groups
{
  v24 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [groupsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(groupsCopy);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [groupsCopy objectForKey:v10];
        WGTodayViewArchiveSetOrderedIdentifiersInGroup(self->_archive, v11, v10, self->_archiveWriteQueue);
      }

      v7 = [groupsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)widgetListEditViewController:(id)controller setEnabled:(BOOL)enabled forItemsWithIdentifiers:(id)identifiers
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [identifiersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        v12 = [(WGWidgetDiscoveryController *)self _updatePublicationStateOfDatumWithIdentifier:*(*(&v13 + 1) + 8 * v11) visibilityChanged:[(WGWidgetDiscoveryController *)self _setEnabled:enabledCopy forElementWithIdentifier:*(*(&v13 + 1) + 8 * v11)] contentStateChanged:0 insertAtTop:0 notifyingObservers:1];
        ++v11;
      }

      while (v9 != v11);
      v9 = [identifiersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)shouldShowWidgetsPinButtonForWidgetListEditViewController:(id)controller
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

- (void)noteWidgetsPinningViewControllerDidDismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  [(WGWidgetDiscoveryController *)self _setWidgetsPinned:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetDiscoveryControllerDidDismissWidgetsPinningTeachingView:self];
  }

  if (dismissCopy)
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

  favoriteWidgetIdentifiers = [(WGWidgetDiscoveryController *)self favoriteWidgetIdentifiers];
  v13 = [favoriteWidgetIdentifiers mutableCopy];

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

- (void)_setWidgetsPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetDiscoveryController:self didChangeWidgetsPinning:pinnedCopy];
  }
}

- (void)widgetListEditViewController:(id)controller acknowledgeInterfaceItemsWithIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        WGTodayViewArchiveSetKnownForIdentifier(self->_archive, *(*(&v10 + 1) + 8 * v9++), 0);
      }

      while (v7 != v9);
      v7 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  WGTodayViewArchiveSave(self->_archive, self->_archiveWriteQueue, 0);
}

- (id)widgetListEditViewController:(id)controller displayNameForItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    v6 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [(WGWidgetDiscoveryController *)v6 widgetListEditViewController:v7 displayNameForItemWithIdentifier:v8, v9, v10, v11, v12, v13];
    }
  }

  v14 = [(NSMutableDictionary *)self->_identifiersToWidgetInfos objectForKey:identifierCopy];
  v15 = v14;
  if (v14)
  {
    displayName = [v14 displayName];
  }

  else
  {
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [WGWidgetDiscoveryController widgetListEditViewController:displayNameForItemWithIdentifier:];
    }

    displayName = 0;
  }

  return displayName;
}

- (void)widgetListEditViewController:(id)controller requestsIconForItemWithIdentifier:(id)identifier withHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (![identifierCopy length])
  {
    v9 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [(WGWidgetDiscoveryController *)v9 widgetListEditViewController:v10 displayNameForItemWithIdentifier:v11, v12, v13, v14, v15, v16];
    }
  }

  v17 = [(NSMutableDictionary *)self->_identifiersToWidgetInfos objectForKey:identifierCopy];
  v18 = v17;
  if (v17)
  {
    [v17 requestSettingsIconWithHandler:handlerCopy];
  }

  else if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
  {
    [WGWidgetDiscoveryController widgetListEditViewController:displayNameForItemWithIdentifier:];
  }
}

- (BOOL)widgetListEditViewControllerShouldIncludeInternalWidgets:(id)widgets
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

- (int64_t)layoutModeForWidgetListEditViewController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_class();
  presentingViewController = [controllerCopy presentingViewController];

  view = [presentingViewController view];
  [view bounds];
  v9 = [v4 layoutModeForSize:{v7, v8}];

  return v9;
}

- (BOOL)widgetListEditViewControllerShouldShowFavorites:(id)favorites
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

- (void)remoteViewControllerDidConnectForWidgetViewController:(id)controller
{
  widgetHost = [controller widgetHost];
  widgetIdentifier = [widgetHost widgetIdentifier];

  v5 = [(NSMutableDictionary *)self->_widgetIDsToPendingTestCompletions objectForKey:widgetIdentifier];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 1, 0);
    [(NSMutableDictionary *)self->_widgetIDsToPendingTestCompletions removeObjectForKey:widgetIdentifier];
  }
}

- (void)remoteViewControllerViewDidAppearForWidgetViewController:(id)controller
{
  widgetHost = [controller widgetHost];
  widgetIdentifier = [widgetHost widgetIdentifier];

  v5 = [(NSMutableDictionary *)self->_widgetIDsToPendingTestTearDowns objectForKey:widgetIdentifier];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
    [(NSMutableDictionary *)self->_widgetIDsToPendingTestTearDowns removeObjectForKey:widgetIdentifier];
  }
}

- (void)widgetViewControllerNeedsToBeUnregisteredForRefreshNotification:(id)notification
{
  statsController = self->_statsController;
  widgetHost = [notification widgetHost];
  widgetIdentifier = [widgetHost widgetIdentifier];
  [(WGWidgetStatsController *)statsController unregisterWidgetForPredictionEvents:widgetIdentifier];
}

- (void)widgetViewControllerNeedsToBeRegisteredForRefreshNotification:(id)notification
{
  statsController = self->_statsController;
  widgetHost = [notification widgetHost];
  widgetIdentifier = [widgetHost widgetIdentifier];
  [(WGWidgetStatsController *)statsController registerWidgetForPredictionEvents:widgetIdentifier];
}

- (void)deviceManagementPolicyDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WGWidgetDiscoveryController_deviceManagementPolicyDidChange___block_invoke;
  block[3] = &unk_279ED09F0;
  objc_copyWeak(&v8, &location);
  v7 = changeCopy;
  v5 = changeCopy;
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

- (void)debugWidgetWithBundleID:(id)d options:(id)options completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  v11 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = dCopy;
    _os_log_impl(&dword_27425E000, v11, OS_LOG_TYPE_DEFAULT, "Asked to debug widget with ID '%{public}@'", &v16, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_debuggingHandler);
  if ([dCopy length])
  {
    v13 = [(NSMutableDictionary *)self->_identifiersToDatums objectForKey:dCopy];
    v14 = v13;
    if (v13 && WeakRetained)
    {
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        [(WGWidgetDiscoveryController *)self _externalSourceRequestsInsertionOfWidgetWithIdentifier:dCopy insertAtTop:0];
        [WeakRetained makeVisibleWidgetWithIdentifier:dCopy completion:completionCopy];
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_11:
}

- (void)removeWidgetIdentifiersFromToday:(id)today
{
  todayCopy = today;
  todayWidgetIdentifiers = [(WGWidgetDiscoveryController *)self todayWidgetIdentifiers];
  v9 = [todayWidgetIdentifiers mutableCopy];

  [v9 removeObjectsInArray:todayCopy];
  WGTodayViewArchiveSetOrderedIdentifiersInGroup(self->_archive, v9, @"TodayGroup", self->_archiveWriteQueue);
  todayWidgetIdentifiers2 = [(WGWidgetDiscoveryController *)self todayWidgetIdentifiers];
  v7 = [todayWidgetIdentifiers2 mutableCopy];
  orderedEnabledTodayIdentifiers = self->_orderedEnabledTodayIdentifiers;
  self->_orderedEnabledTodayIdentifiers = v7;

  [(WGWidgetDiscoveryController *)self invalidateVisibleIdentifiers];
}

- (void)_updateFavoriteWidgetIDs:(id)ds
{
  dsCopy = ds;
  favoriteWidgetIdentifiers = [(WGWidgetDiscoveryController *)self favoriteWidgetIdentifiers];
  if (([favoriteWidgetIdentifiers isEqualToArray:dsCopy] & 1) == 0)
  {
    WGTodayViewArchiveSetOrderedIdentifiersInGroup(self->_archive, dsCopy, @"FavoriteGroup", self->_archiveWriteQueue);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WGWidgetFavoritesDidChange" object:self];
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