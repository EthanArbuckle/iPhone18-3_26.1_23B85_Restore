@interface SBActivityAmbientObserver
- (BOOL)isActiveActivityItem:(id)item;
- (BOOL)shouldHandleActivityItem:(id)item;
- (SBActivityAmbientObserver)init;
- (SBActivityAmbientObserverDelegate)delegate;
- (SBActivityItem)nextPendingItem;
- (id)_sortActivityItems;
- (void)activityDidEnd:(id)end;
- (void)activityDidStart:(id)start;
- (void)activityProminenceChanged:(BOOL)changed item:(id)item;
- (void)addOverlaysForOngoingActivitiesIfNecessary;
- (void)addPendingItem:(id)item;
- (void)dealloc;
- (void)dismissAlert:(id)alert;
- (void)presentAlert:(id)alert;
- (void)removePendingItem:(id)item;
@end

@implementation SBActivityAmbientObserver

- (SBActivityAmbientObserver)init
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = SBActivityAmbientObserver;
  v2 = [(SBActivityAmbientObserver *)&v19 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activeActivityItems = v2->_activeActivityItems;
    v2->_activeActivityItems = v3;

    v5 = objc_opt_new();
    pendingItems = v2->_pendingItems;
    v2->_pendingItems = v5;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = +[SBActivityManager sharedInstance];
    activities = [v7 activities];

    v9 = [activities countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(activities);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([(SBActivityAmbientObserver *)v2 shouldHandleActivityItem:v13])
          {
            [(NSMutableOrderedSet *)v2->_activeActivityItems addObject:v13];
          }
        }

        v10 = [activities countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  return v2;
}

- (void)dealloc
{
  [(NSMutableOrderedSet *)self->_activeActivityItems removeAllObjects];
  activeActivityItems = self->_activeActivityItems;
  self->_activeActivityItems = 0;

  v4.receiver = self;
  v4.super_class = SBActivityAmbientObserver;
  [(SBActivityAmbientObserver *)&v4 dealloc];
}

- (void)addOverlaysForOngoingActivitiesIfNecessary
{
  v15 = *MEMORY[0x277D85DE8];
  _sortActivityItems = [(SBActivityAmbientObserver *)self _sortActivityItems];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [_sortActivityItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(_sortActivityItems);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        delegate = [(SBActivityAmbientObserver *)self delegate];
        [delegate addActivityItem:v8 forOngoingActivity:1];

        ++v7;
      }

      while (v5 != v7);
      v5 = [_sortActivityItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)addPendingItem:(id)item
{
  v9 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (itemCopy)
  {
    v5 = SBLogActivity();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [itemCopy identifier];
      v7 = 138543362;
      v8 = identifier;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] adding ambient item to pending items", &v7, 0xCu);
    }

    [(NSMutableOrderedSet *)self->_pendingItems addObject:itemCopy];
  }
}

- (void)removePendingItem:(id)item
{
  if (item)
  {
    [(NSMutableOrderedSet *)self->_pendingItems removeObject:?];
  }
}

- (SBActivityItem)nextPendingItem
{
  if ([(SBActivityAmbientObserver *)self hasPendingItem])
  {
    v3 = [(NSMutableOrderedSet *)self->_pendingItems objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isActiveActivityItem:(id)item
{
  if (!item)
  {
    return 0;
  }

  itemCopy = item;
  activeActivityItems = [(SBActivityAmbientObserver *)self activeActivityItems];
  v6 = [activeActivityItems containsObject:itemCopy];

  return v6;
}

- (void)activityDidStart:(id)start
{
  startCopy = start;
  if (([(NSMutableOrderedSet *)self->_activeActivityItems containsObject:?]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_activeActivityItems addObject:startCopy];
  }

  delegate = [(SBActivityAmbientObserver *)self delegate];
  [delegate addActivityItem:startCopy forOngoingActivity:0];
}

- (void)activityDidEnd:(id)end
{
  endCopy = end;
  if ([(NSMutableOrderedSet *)self->_activeActivityItems containsObject:?])
  {
    [(NSMutableOrderedSet *)self->_activeActivityItems removeObject:endCopy];
    [(NSMutableOrderedSet *)self->_pendingItems removeObject:endCopy];
    delegate = [(SBActivityAmbientObserver *)self delegate];
    [delegate removeActivityItem:endCopy];
  }
}

- (BOOL)shouldHandleActivityItem:(id)item
{
  if (!item)
  {
    return 0;
  }

  descriptor = [item descriptor];
  presentationOptions = [descriptor presentationOptions];
  destinations = [presentationOptions destinations];
  v6 = [destinations bs_containsObjectPassingTest:&__block_literal_global_194];

  v7 = +[SBLiveActivityDomain rootSettings];
  hideActivitiesInAmbient = [v7 hideActivitiesInAmbient];

  v9 = (hideActivitiesInAmbient ^ 1) & v6;
  return v9;
}

- (void)presentAlert:(id)alert
{
  alertCopy = alert;
  activeActivityItems = self->_activeActivityItems;
  v8 = alertCopy;
  item = [alertCopy item];
  LODWORD(activeActivityItems) = [(NSMutableOrderedSet *)activeActivityItems containsObject:item];

  if (activeActivityItems)
  {
    delegate = [(SBActivityAmbientObserver *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate presentAmbientActivityAlert:v8];
    }
  }
}

- (void)dismissAlert:(id)alert
{
  alertCopy = alert;
  activeActivityItems = self->_activeActivityItems;
  v8 = alertCopy;
  item = [alertCopy item];
  LODWORD(activeActivityItems) = [(NSMutableOrderedSet *)activeActivityItems containsObject:item];

  if (activeActivityItems)
  {
    delegate = [(SBActivityAmbientObserver *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate dismissAmbientActivityAlert:v8];
    }
  }
}

- (void)activityProminenceChanged:(BOOL)changed item:(id)item
{
  changedCopy = changed;
  identifier = [item identifier];
  activeActivityItems = self->_activeActivityItems;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__SBActivityAmbientObserver_activityProminenceChanged_item___block_invoke;
  v11[3] = &unk_2783B7EC0;
  v8 = identifier;
  v12 = v8;
  v9 = [(NSMutableOrderedSet *)activeActivityItems bs_firstObjectPassingTest:v11];
  if (v9)
  {
    v10 = [[SBActivityAlert alloc] initWithItem:v9 payloadIdentifier:0 options:0 title:0 body:0];
    if (changedCopy)
    {
      [(SBActivityAmbientObserver *)self presentAlert:v10];
    }

    else
    {
      [(SBActivityAmbientObserver *)self dismissAlert:v10];
    }
  }
}

uint64_t __60__SBActivityAmbientObserver_activityProminenceChanged_item___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_sortActivityItems
{
  objc_initWeak(&location, self);
  activeActivityItems = self->_activeActivityItems;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SBActivityAmbientObserver__sortActivityItems__block_invoke;
  v6[3] = &unk_2783B7EE8;
  objc_copyWeak(&v7, &location);
  v4 = [(NSMutableOrderedSet *)activeActivityItems sortedArrayUsingComparator:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

uint64_t __47__SBActivityAmbientObserver__sortActivityItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v5 descriptor];
  v9 = [v8 platterTargetBundleIdentifier];

  v10 = [v6 descriptor];
  v11 = [v10 platterTargetBundleIdentifier];

  if (WeakRetained)
  {
    if ([v9 isEqualToString:v11])
    {
      [v5 relevanceScore];
      v13 = v12;
      [v6 relevanceScore];
      v15 = v13 < v14;
    }

    else
    {
      v16 = +[SBActivityManager sharedInstance];
      v17 = [v16 firstPartyActivityGroupingIdentifiers];

      v18 = [v17 indexOfObject:v9];
      v19 = [v17 indexOfObject:v11];
      if (v19 == 0x7FFFFFFFFFFFFFFFLL || v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v19 == 0x7FFFFFFFFFFFFFFFLL || v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = [v5 descriptor];
            v21 = [v20 createdDate];

            v22 = [v6 descriptor];
            v23 = [v22 createdDate];

            v15 = [v21 compare:v23];
          }

          else
          {
            v15 = -1;
          }
        }

        else if (v19 < v18)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }
      }

      else
      {
        v15 = 1;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (SBActivityAmbientObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end