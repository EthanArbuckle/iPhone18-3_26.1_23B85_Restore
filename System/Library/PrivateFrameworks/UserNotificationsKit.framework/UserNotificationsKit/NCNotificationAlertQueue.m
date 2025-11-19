@interface NCNotificationAlertQueue
- (BOOL)_destinations:(id)a3 canReceiveNotificationRequest:(id)a4;
- (BOOL)_performDestinationOperationForRequest:(id)a3 block:(id)a4;
- (BOOL)_postNotificationRequest:(id)a3;
- (BOOL)_readyToReceiveForNotificationRequest:(id)a3;
- (BOOL)isRegisteredDestination:(id)a3;
- (NCNotificationAlertDestinationDelegate)delegate;
- (NCNotificationAlertQueue)init;
- (NSString)identifier;
- (id)destinationsForRequestDestinations:(id)a3;
- (id)notificationSectionSettingsForDestination:(id)a3;
- (id)notificationSectionSettingsForDestination:(id)a3 forSectionIdentifier:(id)a4;
- (id)notificationSystemSettingsForDestination:(id)a3;
- (void)_postEnqueuedNotificationRequestsCoalescingWith:(id)a3;
- (void)_postNextNotificationRequestPassingTest:(id)a3;
- (void)_prepareDestinationsToReceiveCriticalNotificationRequest:(id)a3;
- (void)destination:(id)a3 didBecomeReadyToReceiveNotificationsCoalescedWith:(id)a4;
- (void)destination:(id)a3 didBecomeReadyToReceiveNotificationsPassingTest:(id)a4;
- (void)destination:(id)a3 didDismissNotificationRequest:(id)a4;
- (void)destination:(id)a3 didPresentNotificationRequest:(id)a4;
- (void)destination:(id)a3 executeAction:(id)a4 forNotificationRequest:(id)a5 requestAuthentication:(BOOL)a6 withParameters:(id)a7 completion:(id)a8;
- (void)destination:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotificationRequest:(id)a5 withParameters:(id)a6 completion:(id)a7;
- (void)destination:(id)a3 requestsClearingNotificationRequests:(id)a4;
- (void)destination:(id)a3 requestsClearingNotificationRequests:(id)a4 fromDestinations:(id)a5;
- (void)destination:(id)a3 requestsClearingNotificationRequestsFromDate:(id)a4 toDate:(id)a5 inSections:(id)a6;
- (void)destination:(id)a3 requestsClearingNotificationRequestsInSections:(id)a4;
- (void)destination:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setAllowsNotifications:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setDeliverQuietly:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7;
- (void)destination:(id)a3 setNotificationSystemSettings:(id)a4;
- (void)destination:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setSystemScheduledDeliveryEnabled:(BOOL)a4 scheduledDeliveryTimes:(id)a5;
- (void)destination:(id)a3 willDismissNotificationRequest:(id)a4;
- (void)destination:(id)a3 willPresentNotificationRequest:(id)a4 suppressAlerts:(BOOL)a5;
- (void)destinationDidBecomeReadyToReceiveNotifications:(id)a3;
- (void)modifyNotificationRequest:(id)a3;
- (void)postNotificationRequest:(id)a3;
- (void)registerDestination:(id)a3;
- (void)setDestination:(id)a3 enabled:(BOOL)a4;
- (void)setDestination:(id)a3 ready:(BOOL)a4;
- (void)unregisterDestination:(id)a3;
- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4;
- (void)withdrawNotificationRequest:(id)a3;
@end

@implementation NCNotificationAlertQueue

- (NCNotificationAlertDestinationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NCNotificationAlertQueue)init
{
  v8.receiver = self;
  v8.super_class = NCNotificationAlertQueue;
  v2 = [(NCNotificationAlertQueue *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NCNotificationCollapsingQueue);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_opt_new();
    destinationsRegistry = v2->_destinationsRegistry;
    v2->_destinationsRegistry = v5;
  }

  return v2;
}

- (void)registerDestination:(id)a3
{
  v5 = a3;
  v4 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  [v4 registerDestination:v5];

  [v5 setDelegate:self];
}

- (void)unregisterDestination:(id)a3
{
  v5 = a3;
  v4 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  [v4 unregisterDestination:v5];

  [v5 setDelegate:0];
}

- (void)setDestination:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  [v6 setDestination:v7 enabled:v4];

  [(NCNotificationAlertQueue *)self setDestination:v7 ready:v4];
}

- (BOOL)isRegisteredDestination:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  v6 = [v5 isRegisteredDestination:v4];

  return v6;
}

- (id)destinationsForRequestDestinations:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  v6 = [v5 destinationsForRequestDestinations:v4];

  return v6;
}

- (void)setDestination:(id)a3 ready:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  [v7 setDestination:v6 ready:v4];
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)postNotificationRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NCNotificationAlertQueue *)self _postNotificationRequest:v4])
  {
    v5 = [(NCNotificationAlertQueue *)self queue];
    [v5 addNotificationRequest:v4];

    v6 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v4 notificationIdentifier];
      v9 = [v8 un_logDigest];
      v10 = [(NCNotificationAlertQueue *)self queue];
      v11 = 138543618;
      v12 = v9;
      v13 = 2048;
      v14 = [v10 count];
      _os_log_impl(&dword_270A33000, v7, OS_LOG_TYPE_DEFAULT, "Notification %{public}@ enqueued - %lu requests in the queue", &v11, 0x16u);
    }
  }
}

- (void)modifyNotificationRequest:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationAlertQueue *)self queue];
  v6 = [v5 containsNotificationRequestMatchingRequest:v4];

  if (v6)
  {
    v7 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v4 notificationIdentifier];
      v10 = [v9 un_logDigest];
      *buf = 138543362;
      v39 = v10;
      _os_log_impl(&dword_270A33000, v8, OS_LOG_TYPE_DEFAULT, "Notification %{public}@ modify request hasn't yet been delivered to the destination, replacing in the queue", buf, 0xCu);
    }

    v11 = [(NCNotificationAlertQueue *)self queue];
    [v11 replaceNotificationRequest:v4];
  }

  else
  {
    v12 = [(NCNotificationAlertQueue *)self destinationsRegistry];
    v13 = [v4 requestDestinations];
    v14 = [v12 destinationsForRequestDestinations:v13];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = v14;
    v15 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = *v35;
      v19 = &NCUILogDispatch;
      *&v16 = 138543618;
      v32 = v16;
      do
      {
        v20 = 0;
        v33 = v17;
        do
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v11);
          }

          v21 = *(*(&v34 + 1) + 8 * v20);
          v22 = *v19;
          if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            [v4 notificationIdentifier];
            v24 = v18;
            v25 = v4;
            v26 = v19;
            v28 = v27 = v11;
            v29 = [v28 un_logDigest];
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            *buf = v32;
            v39 = v29;
            v40 = 2114;
            v41 = v31;
            _os_log_impl(&dword_270A33000, v23, OS_LOG_TYPE_DEFAULT, "Modifying notification %{public}@ in destination %{public}@", buf, 0x16u);

            v11 = v27;
            v19 = v26;
            v4 = v25;
            v18 = v24;
            v17 = v33;
          }

          [v21 modifyNotificationRequest:{v4, v32}];
          ++v20;
        }

        while (v17 != v20);
        v17 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v17);
    }
  }
}

- (void)withdrawNotificationRequest:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationAlertQueue *)self queue];
  v6 = [v5 containsNotificationRequestMatchingRequest:v4];

  if (v6)
  {
    v7 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v4 notificationIdentifier];
      v10 = [v9 un_logDigest];
      *buf = 138543362;
      v39 = v10;
      _os_log_impl(&dword_270A33000, v8, OS_LOG_TYPE_DEFAULT, "Notification %{public}@ withdraw request hasn't yet been delivered to the destination, removing from the queue", buf, 0xCu);
    }

    v11 = [(NCNotificationAlertQueue *)self queue];
    [v11 removeNotificationRequest:v4];
  }

  else
  {
    v12 = [(NCNotificationAlertQueue *)self destinationsRegistry];
    v13 = [v4 requestDestinations];
    v14 = [v12 destinationsForRequestDestinations:v13];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = v14;
    v15 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = *v35;
      v19 = &NCUILogDispatch;
      *&v16 = 138543618;
      v32 = v16;
      do
      {
        v20 = 0;
        v33 = v17;
        do
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v11);
          }

          v21 = *(*(&v34 + 1) + 8 * v20);
          v22 = *v19;
          if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            [v4 notificationIdentifier];
            v24 = v18;
            v25 = v4;
            v26 = v19;
            v28 = v27 = v11;
            v29 = [v28 un_logDigest];
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            *buf = v32;
            v39 = v29;
            v40 = 2114;
            v41 = v31;
            _os_log_impl(&dword_270A33000, v23, OS_LOG_TYPE_DEFAULT, "Withdrawing notification %{public}@ from destination %{public}@", buf, 0x16u);

            v11 = v27;
            v19 = v26;
            v4 = v25;
            v18 = v24;
            v17 = v33;
          }

          [v21 withdrawNotificationRequest:{v4, v32}];
          ++v20;
        }

        while (v17 != v20);
        v17 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v17);
    }
  }
}

- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  v9 = [v8 registeredDestinations];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 updateNotificationSectionSettings:v6 previousSectionSettings:v7];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)destination:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotificationRequest:(id)a5 withParameters:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(NCNotificationAlertQueue *)self delegate];
  [v17 destination:v16 requestPermissionToExecuteAction:v15 forNotificationRequest:v14 withParameters:v13 completion:v12];
}

- (void)destination:(id)a3 executeAction:(id)a4 forNotificationRequest:(id)a5 requestAuthentication:(BOOL)a6 withParameters:(id)a7 completion:(id)a8
{
  v9 = a6;
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(NCNotificationAlertQueue *)self delegate];
  [v19 destination:v18 executeAction:v17 forNotificationRequest:v16 requestAuthentication:v9 withParameters:v15 completion:v14];
}

- (id)notificationSectionSettingsForDestination:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationAlertQueue *)self delegate];
  v6 = [v5 notificationSectionSettingsForDestination:v4];

  return v6;
}

- (id)notificationSectionSettingsForDestination:(id)a3 forSectionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NCNotificationAlertQueue *)self delegate];
  v9 = [v8 notificationSectionSettingsForDestination:v7 forSectionIdentifier:v6];

  return v9;
}

- (id)notificationSystemSettingsForDestination:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationAlertQueue *)self delegate];
  v6 = [v5 notificationSystemSettingsForDestination:v4];

  return v6;
}

- (void)destination:(id)a3 requestsClearingNotificationRequests:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NCNotificationAlertQueue *)self delegate];
  [v8 destination:v7 requestsClearingNotificationRequests:v6];
}

- (void)destination:(id)a3 requestsClearingNotificationRequests:(id)a4 fromDestinations:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NCNotificationAlertQueue *)self delegate];
  [v11 destination:v10 requestsClearingNotificationRequests:v9 fromDestinations:v8];
}

- (void)destination:(id)a3 requestsClearingNotificationRequestsFromDate:(id)a4 toDate:(id)a5 inSections:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NCNotificationAlertQueue *)self delegate];
  [v14 destination:v13 requestsClearingNotificationRequestsFromDate:v12 toDate:v11 inSections:v10];
}

- (void)destination:(id)a3 requestsClearingNotificationRequestsInSections:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NCNotificationAlertQueue *)self delegate];
  [v8 destination:v7 requestsClearingNotificationRequestsInSections:v6];
}

- (void)destination:(id)a3 setAllowsNotifications:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(NCNotificationAlertQueue *)self delegate];
  [v10 destination:v9 setAllowsNotifications:v5 forSectionIdentifier:v8];
}

- (void)destination:(id)a3 setDeliverQuietly:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(NCNotificationAlertQueue *)self delegate];
  [v10 destination:v9 setDeliverQuietly:v5 forSectionIdentifier:v8];
}

- (void)destination:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7
{
  v9 = a4;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [(NCNotificationAlertQueue *)self delegate];
  [v16 destination:v15 setMuted:v9 untilDate:v14 forSectionIdentifier:v13 threadIdentifier:v12];
}

- (void)destination:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(NCNotificationAlertQueue *)self delegate];
  [v10 destination:v9 setAllowsCriticalAlerts:v5 forSectionIdentifier:v8];
}

- (void)destination:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(NCNotificationAlertQueue *)self delegate];
  [v10 destination:v9 setAllowsTimeSensitive:v5 forSectionIdentifier:v8];
}

- (void)destination:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(NCNotificationAlertQueue *)self delegate];
  [v10 destination:v9 setAllowsDirectMessages:v5 forSectionIdentifier:v8];
}

- (void)destination:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(NCNotificationAlertQueue *)self delegate];
  [v10 destination:v9 setScheduledDelivery:v5 forSectionIdentifier:v8];
}

- (void)destination:(id)a3 setSystemScheduledDeliveryEnabled:(BOOL)a4 scheduledDeliveryTimes:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(NCNotificationAlertQueue *)self delegate];
  [v10 destination:v9 setSystemScheduledDeliveryEnabled:v5 scheduledDeliveryTimes:v8];
}

- (void)destination:(id)a3 setNotificationSystemSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NCNotificationAlertQueue *)self delegate];
  [v8 destination:v7 setNotificationSystemSettings:v6];
}

- (void)destinationDidBecomeReadyToReceiveNotifications:(id)a3
{
  [(NCNotificationAlertQueue *)self setDestination:a3 ready:1];
  [(NCNotificationAlertQueue *)self setCoalescingRequest:0];
  [(NCNotificationAlertQueue *)self _postNextNotificationRequest];
  v4 = [(NCNotificationAlertQueue *)self delegate];
  [v4 destinationDidBecomeReadyToReceiveNotifications:self];
}

- (void)destination:(id)a3 didBecomeReadyToReceiveNotificationsPassingTest:(id)a4
{
  v6 = a4;
  [(NCNotificationAlertQueue *)self setDestination:a3 ready:1];
  [(NCNotificationAlertQueue *)self setCoalescingRequest:0];
  [(NCNotificationAlertQueue *)self _postNextNotificationRequestPassingTest:v6];
  v7 = [(NCNotificationAlertQueue *)self delegate];
  [v7 destination:self didBecomeReadyToReceiveNotificationsPassingTest:v6];
}

- (void)destination:(id)a3 didBecomeReadyToReceiveNotificationsCoalescedWith:(id)a4
{
  v6 = a4;
  [(NCNotificationAlertQueue *)self setDestination:a3 ready:1];
  [(NCNotificationAlertQueue *)self setCoalescingRequest:v6];
  [(NCNotificationAlertQueue *)self _postEnqueuedNotificationRequestsCoalescingWith:v6];
  v7 = [(NCNotificationAlertQueue *)self delegate];
  [v7 destination:self didBecomeReadyToReceiveNotificationsCoalescedWith:v6];
}

- (void)destination:(id)a3 willPresentNotificationRequest:(id)a4 suppressAlerts:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  v9 = [(NCNotificationAlertQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 destination:v10 willPresentNotificationRequest:v8 suppressAlerts:v5];
  }
}

- (void)destination:(id)a3 didPresentNotificationRequest:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NCNotificationAlertQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 destination:v8 didPresentNotificationRequest:v6];
  }
}

- (void)destination:(id)a3 willDismissNotificationRequest:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NCNotificationAlertQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 destination:v8 willDismissNotificationRequest:v6];
  }
}

- (void)destination:(id)a3 didDismissNotificationRequest:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NCNotificationAlertQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 destination:v8 didDismissNotificationRequest:v6];
  }
}

- (void)_postNextNotificationRequestPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationAlertQueue *)self queue];
  v7 = [v5 peekNextNotificationRequestPassingTest:v4];

  if (v7 && [(NCNotificationAlertQueue *)self _postNotificationRequest:v7])
  {
    v6 = [(NCNotificationAlertQueue *)self queue];
    [v6 removeNotificationRequest:v7];
  }
}

- (void)_postEnqueuedNotificationRequestsCoalescingWith:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationAlertQueue *)self queue];
  v6 = [v5 notificationRequestsCoalescebleWithCoalescedRequest:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([(NCNotificationAlertQueue *)self _postNotificationRequest:v12, v14])
        {
          v13 = [(NCNotificationAlertQueue *)self queue];
          [v13 removeNotificationRequest:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (BOOL)_postNotificationRequest:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationAlertQueue *)self coalescingRequest];
  if (-[NCNotificationAlertQueue _readyToReceiveForNotificationRequest:](self, "_readyToReceiveForNotificationRequest:", v4) && (!v5 || [v5 matchesThreadForRequest:v4]))
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__NCNotificationAlertQueue__postNotificationRequest___block_invoke;
    v14[3] = &unk_279E0DA68;
    v15 = v4;
    v16 = v5;
    v17 = self;
    v6 = [(NCNotificationAlertQueue *)self _performDestinationOperationForRequest:v15 block:v14];
  }

  else
  {
    v7 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v4 notificationIdentifier];
      v10 = [v9 un_logDigest];
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_270A33000, v8, OS_LOG_TYPE_DEFAULT, "Queue not ready, not posting queued notification %{public}@", buf, 0xCu);
    }

    v11 = [v4 options];
    v12 = [v11 preemptsPresentedNotification];

    if (v12)
    {
      [(NCNotificationAlertQueue *)self _prepareDestinationsToReceiveCriticalNotificationRequest:v4];
    }

    v6 = 0;
  }

  return v6;
}

void __53__NCNotificationAlertQueue__postNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NCUILogDispatch;
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 notificationIdentifier];
    v8 = [v7 un_logDigest];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_270A33000, v6, OS_LOG_TYPE_DEFAULT, "Posting notification %{public}@ to destination %{public}@", &v11, 0x16u);
  }

  if (!*(a1 + 40))
  {
    [*(a1 + 48) setDestination:v3 ready:0];
  }

  [v3 postNotificationRequest:*(a1 + 32)];
}

- (BOOL)_performDestinationOperationForRequest:(id)a3 block:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  v9 = [v6 requestDestinations];
  v10 = [v8 destinationsForRequestDestinations:v9];

  v11 = NCUILogDispatch;
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v6 notificationIdentifier];
    v14 = [v13 un_logDigest];
    *buf = 138543618;
    v28 = v14;
    v29 = 2048;
    v30 = [v10 count];
    _os_log_impl(&dword_270A33000, v12, OS_LOG_TYPE_DEFAULT, "Posting queued notification %{public}@ to %ld destinations", buf, 0x16u);
  }

  if ([(NCNotificationAlertQueue *)self _destinations:v10 canReceiveNotificationRequest:v6])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    v17 = v16 != 0;
    if (v16)
    {
      v18 = v16;
      v19 = *v23;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v7[2](v7, *(*(&v22 + 1) + 8 * i));
        }

        v18 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_destinations:(id)a3 canReceiveNotificationRequest:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (v10)
        {
          v10 = [*(*(&v13 + 1) + 8 * i) canReceiveNotificationRequest:v6];
        }

        else
        {
          v10 = 0;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)_readyToReceiveForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  v6 = [v4 requestDestinations];
  v7 = [v5 destinationsForRequestDestinations:v6];

  v8 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  v9 = [v4 requestDestinations];

  v10 = [v8 readyDestinationsForRequestDestinations:v9];

  LOBYTE(v8) = [v10 isEqualToSet:v7];
  return v8;
}

- (void)_prepareDestinationsToReceiveCriticalNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  v6 = [v4 requestDestinations];
  v7 = [v5 destinationsForRequestDestinations:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__NCNotificationAlertQueue__prepareDestinationsToReceiveCriticalNotificationRequest___block_invoke;
  v9[3] = &unk_279E0DA90;
  v10 = v4;
  v8 = v4;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __85__NCNotificationAlertQueue__prepareDestinationsToReceiveCriticalNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 isAlertDestination])
  {
    v3 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v3 prepareDestinationToReceiveCriticalNotificationRequest:*(a1 + 32)];
    }
  }
}

@end