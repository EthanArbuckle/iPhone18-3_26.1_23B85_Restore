@interface NCNotificationAlertQueue
- (BOOL)_destinations:(id)_destinations canReceiveNotificationRequest:(id)request;
- (BOOL)_performDestinationOperationForRequest:(id)request block:(id)block;
- (BOOL)_postNotificationRequest:(id)request;
- (BOOL)_readyToReceiveForNotificationRequest:(id)request;
- (BOOL)isRegisteredDestination:(id)destination;
- (NCNotificationAlertDestinationDelegate)delegate;
- (NCNotificationAlertQueue)init;
- (NSString)identifier;
- (id)destinationsForRequestDestinations:(id)destinations;
- (id)notificationSectionSettingsForDestination:(id)destination;
- (id)notificationSectionSettingsForDestination:(id)destination forSectionIdentifier:(id)identifier;
- (id)notificationSystemSettingsForDestination:(id)destination;
- (void)_postEnqueuedNotificationRequestsCoalescingWith:(id)with;
- (void)_postNextNotificationRequestPassingTest:(id)test;
- (void)_prepareDestinationsToReceiveCriticalNotificationRequest:(id)request;
- (void)destination:(id)destination didBecomeReadyToReceiveNotificationsCoalescedWith:(id)with;
- (void)destination:(id)destination didBecomeReadyToReceiveNotificationsPassingTest:(id)test;
- (void)destination:(id)destination didDismissNotificationRequest:(id)request;
- (void)destination:(id)destination didPresentNotificationRequest:(id)request;
- (void)destination:(id)destination executeAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion;
- (void)destination:(id)destination requestPermissionToExecuteAction:(id)action forNotificationRequest:(id)request withParameters:(id)parameters completion:(id)completion;
- (void)destination:(id)destination requestsClearingNotificationRequests:(id)requests;
- (void)destination:(id)destination requestsClearingNotificationRequests:(id)requests fromDestinations:(id)destinations;
- (void)destination:(id)destination requestsClearingNotificationRequestsFromDate:(id)date toDate:(id)toDate inSections:(id)sections;
- (void)destination:(id)destination requestsClearingNotificationRequestsInSections:(id)sections;
- (void)destination:(id)destination setAllowsCriticalAlerts:(BOOL)alerts forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setAllowsNotifications:(BOOL)notifications forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setDeliverQuietly:(BOOL)quietly forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)destination:(id)destination setNotificationSystemSettings:(id)settings;
- (void)destination:(id)destination setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times;
- (void)destination:(id)destination willDismissNotificationRequest:(id)request;
- (void)destination:(id)destination willPresentNotificationRequest:(id)request suppressAlerts:(BOOL)alerts;
- (void)destinationDidBecomeReadyToReceiveNotifications:(id)notifications;
- (void)modifyNotificationRequest:(id)request;
- (void)postNotificationRequest:(id)request;
- (void)registerDestination:(id)destination;
- (void)setDestination:(id)destination enabled:(BOOL)enabled;
- (void)setDestination:(id)destination ready:(BOOL)ready;
- (void)unregisterDestination:(id)destination;
- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings;
- (void)withdrawNotificationRequest:(id)request;
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

- (void)registerDestination:(id)destination
{
  destinationCopy = destination;
  destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
  [destinationsRegistry registerDestination:destinationCopy];

  [destinationCopy setDelegate:self];
}

- (void)unregisterDestination:(id)destination
{
  destinationCopy = destination;
  destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
  [destinationsRegistry unregisterDestination:destinationCopy];

  [destinationCopy setDelegate:0];
}

- (void)setDestination:(id)destination enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  destinationCopy = destination;
  destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
  [destinationsRegistry setDestination:destinationCopy enabled:enabledCopy];

  [(NCNotificationAlertQueue *)self setDestination:destinationCopy ready:enabledCopy];
}

- (BOOL)isRegisteredDestination:(id)destination
{
  destinationCopy = destination;
  destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
  v6 = [destinationsRegistry isRegisteredDestination:destinationCopy];

  return v6;
}

- (id)destinationsForRequestDestinations:(id)destinations
{
  destinationsCopy = destinations;
  destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
  v6 = [destinationsRegistry destinationsForRequestDestinations:destinationsCopy];

  return v6;
}

- (void)setDestination:(id)destination ready:(BOOL)ready
{
  readyCopy = ready;
  destinationCopy = destination;
  destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
  [destinationsRegistry setDestination:destinationCopy ready:readyCopy];
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)postNotificationRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (![(NCNotificationAlertQueue *)self _postNotificationRequest:requestCopy])
  {
    queue = [(NCNotificationAlertQueue *)self queue];
    [queue addNotificationRequest:requestCopy];

    v6 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      queue2 = [(NCNotificationAlertQueue *)self queue];
      v11 = 138543618;
      v12 = un_logDigest;
      v13 = 2048;
      v14 = [queue2 count];
      _os_log_impl(&dword_270A33000, v7, OS_LOG_TYPE_DEFAULT, "Notification %{public}@ enqueued - %lu requests in the queue", &v11, 0x16u);
    }
  }
}

- (void)modifyNotificationRequest:(id)request
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  queue = [(NCNotificationAlertQueue *)self queue];
  v6 = [queue containsNotificationRequestMatchingRequest:requestCopy];

  if (v6)
  {
    v7 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543362;
      v39 = un_logDigest;
      _os_log_impl(&dword_270A33000, v8, OS_LOG_TYPE_DEFAULT, "Notification %{public}@ modify request hasn't yet been delivered to the destination, replacing in the queue", buf, 0xCu);
    }

    queue2 = [(NCNotificationAlertQueue *)self queue];
    [queue2 replaceNotificationRequest:requestCopy];
  }

  else
  {
    destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
    requestDestinations = [requestCopy requestDestinations];
    v14 = [destinationsRegistry destinationsForRequestDestinations:requestDestinations];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    queue2 = v14;
    v15 = [queue2 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
            objc_enumerationMutation(queue2);
          }

          v21 = *(*(&v34 + 1) + 8 * v20);
          v22 = *v19;
          if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            [requestCopy notificationIdentifier];
            v24 = v18;
            v25 = requestCopy;
            v26 = v19;
            v28 = v27 = queue2;
            un_logDigest2 = [v28 un_logDigest];
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            *buf = v32;
            v39 = un_logDigest2;
            v40 = 2114;
            v41 = v31;
            _os_log_impl(&dword_270A33000, v23, OS_LOG_TYPE_DEFAULT, "Modifying notification %{public}@ in destination %{public}@", buf, 0x16u);

            queue2 = v27;
            v19 = v26;
            requestCopy = v25;
            v18 = v24;
            v17 = v33;
          }

          [v21 modifyNotificationRequest:{requestCopy, v32}];
          ++v20;
        }

        while (v17 != v20);
        v17 = [queue2 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v17);
    }
  }
}

- (void)withdrawNotificationRequest:(id)request
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  queue = [(NCNotificationAlertQueue *)self queue];
  v6 = [queue containsNotificationRequestMatchingRequest:requestCopy];

  if (v6)
  {
    v7 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543362;
      v39 = un_logDigest;
      _os_log_impl(&dword_270A33000, v8, OS_LOG_TYPE_DEFAULT, "Notification %{public}@ withdraw request hasn't yet been delivered to the destination, removing from the queue", buf, 0xCu);
    }

    queue2 = [(NCNotificationAlertQueue *)self queue];
    [queue2 removeNotificationRequest:requestCopy];
  }

  else
  {
    destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
    requestDestinations = [requestCopy requestDestinations];
    v14 = [destinationsRegistry destinationsForRequestDestinations:requestDestinations];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    queue2 = v14;
    v15 = [queue2 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
            objc_enumerationMutation(queue2);
          }

          v21 = *(*(&v34 + 1) + 8 * v20);
          v22 = *v19;
          if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            [requestCopy notificationIdentifier];
            v24 = v18;
            v25 = requestCopy;
            v26 = v19;
            v28 = v27 = queue2;
            un_logDigest2 = [v28 un_logDigest];
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            *buf = v32;
            v39 = un_logDigest2;
            v40 = 2114;
            v41 = v31;
            _os_log_impl(&dword_270A33000, v23, OS_LOG_TYPE_DEFAULT, "Withdrawing notification %{public}@ from destination %{public}@", buf, 0x16u);

            queue2 = v27;
            v19 = v26;
            requestCopy = v25;
            v18 = v24;
            v17 = v33;
          }

          [v21 withdrawNotificationRequest:{requestCopy, v32}];
          ++v20;
        }

        while (v17 != v20);
        v17 = [queue2 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v17);
    }
  }
}

- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings
{
  v20 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  sectionSettingsCopy = sectionSettings;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
  registeredDestinations = [destinationsRegistry registeredDestinations];

  v10 = [registeredDestinations countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(registeredDestinations);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 updateNotificationSectionSettings:settingsCopy previousSectionSettings:sectionSettingsCopy];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [registeredDestinations countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)destination:(id)destination requestPermissionToExecuteAction:(id)action forNotificationRequest:(id)request withParameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  parametersCopy = parameters;
  requestCopy = request;
  actionCopy = action;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy requestPermissionToExecuteAction:actionCopy forNotificationRequest:requestCopy withParameters:parametersCopy completion:completionCopy];
}

- (void)destination:(id)destination executeAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion
{
  authenticationCopy = authentication;
  completionCopy = completion;
  parametersCopy = parameters;
  requestCopy = request;
  actionCopy = action;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy executeAction:actionCopy forNotificationRequest:requestCopy requestAuthentication:authenticationCopy withParameters:parametersCopy completion:completionCopy];
}

- (id)notificationSectionSettingsForDestination:(id)destination
{
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  v6 = [delegate notificationSectionSettingsForDestination:destinationCopy];

  return v6;
}

- (id)notificationSectionSettingsForDestination:(id)destination forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  v9 = [delegate notificationSectionSettingsForDestination:destinationCopy forSectionIdentifier:identifierCopy];

  return v9;
}

- (id)notificationSystemSettingsForDestination:(id)destination
{
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  v6 = [delegate notificationSystemSettingsForDestination:destinationCopy];

  return v6;
}

- (void)destination:(id)destination requestsClearingNotificationRequests:(id)requests
{
  requestsCopy = requests;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy requestsClearingNotificationRequests:requestsCopy];
}

- (void)destination:(id)destination requestsClearingNotificationRequests:(id)requests fromDestinations:(id)destinations
{
  destinationsCopy = destinations;
  requestsCopy = requests;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy requestsClearingNotificationRequests:requestsCopy fromDestinations:destinationsCopy];
}

- (void)destination:(id)destination requestsClearingNotificationRequestsFromDate:(id)date toDate:(id)toDate inSections:(id)sections
{
  sectionsCopy = sections;
  toDateCopy = toDate;
  dateCopy = date;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy requestsClearingNotificationRequestsFromDate:dateCopy toDate:toDateCopy inSections:sectionsCopy];
}

- (void)destination:(id)destination requestsClearingNotificationRequestsInSections:(id)sections
{
  sectionsCopy = sections;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy requestsClearingNotificationRequestsInSections:sectionsCopy];
}

- (void)destination:(id)destination setAllowsNotifications:(BOOL)notifications forSectionIdentifier:(id)identifier
{
  notificationsCopy = notifications;
  identifierCopy = identifier;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy setAllowsNotifications:notificationsCopy forSectionIdentifier:identifierCopy];
}

- (void)destination:(id)destination setDeliverQuietly:(BOOL)quietly forSectionIdentifier:(id)identifier
{
  quietlyCopy = quietly;
  identifierCopy = identifier;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy setDeliverQuietly:quietlyCopy forSectionIdentifier:identifierCopy];
}

- (void)destination:(id)destination setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  mutedCopy = muted;
  threadIdentifierCopy = threadIdentifier;
  identifierCopy = identifier;
  dateCopy = date;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy setMuted:mutedCopy untilDate:dateCopy forSectionIdentifier:identifierCopy threadIdentifier:threadIdentifierCopy];
}

- (void)destination:(id)destination setAllowsCriticalAlerts:(BOOL)alerts forSectionIdentifier:(id)identifier
{
  alertsCopy = alerts;
  identifierCopy = identifier;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy setAllowsCriticalAlerts:alertsCopy forSectionIdentifier:identifierCopy];
}

- (void)destination:(id)destination setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier
{
  sensitiveCopy = sensitive;
  identifierCopy = identifier;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy setAllowsTimeSensitive:sensitiveCopy forSectionIdentifier:identifierCopy];
}

- (void)destination:(id)destination setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier
{
  messagesCopy = messages;
  identifierCopy = identifier;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy setAllowsDirectMessages:messagesCopy forSectionIdentifier:identifierCopy];
}

- (void)destination:(id)destination setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier
{
  deliveryCopy = delivery;
  identifierCopy = identifier;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy setScheduledDelivery:deliveryCopy forSectionIdentifier:identifierCopy];
}

- (void)destination:(id)destination setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times
{
  enabledCopy = enabled;
  timesCopy = times;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy setSystemScheduledDeliveryEnabled:enabledCopy scheduledDeliveryTimes:timesCopy];
}

- (void)destination:(id)destination setNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  destinationCopy = destination;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:destinationCopy setNotificationSystemSettings:settingsCopy];
}

- (void)destinationDidBecomeReadyToReceiveNotifications:(id)notifications
{
  [(NCNotificationAlertQueue *)self setDestination:notifications ready:1];
  [(NCNotificationAlertQueue *)self setCoalescingRequest:0];
  [(NCNotificationAlertQueue *)self _postNextNotificationRequest];
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destinationDidBecomeReadyToReceiveNotifications:self];
}

- (void)destination:(id)destination didBecomeReadyToReceiveNotificationsPassingTest:(id)test
{
  testCopy = test;
  [(NCNotificationAlertQueue *)self setDestination:destination ready:1];
  [(NCNotificationAlertQueue *)self setCoalescingRequest:0];
  [(NCNotificationAlertQueue *)self _postNextNotificationRequestPassingTest:testCopy];
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:self didBecomeReadyToReceiveNotificationsPassingTest:testCopy];
}

- (void)destination:(id)destination didBecomeReadyToReceiveNotificationsCoalescedWith:(id)with
{
  withCopy = with;
  [(NCNotificationAlertQueue *)self setDestination:destination ready:1];
  [(NCNotificationAlertQueue *)self setCoalescingRequest:withCopy];
  [(NCNotificationAlertQueue *)self _postEnqueuedNotificationRequestsCoalescingWith:withCopy];
  delegate = [(NCNotificationAlertQueue *)self delegate];
  [delegate destination:self didBecomeReadyToReceiveNotificationsCoalescedWith:withCopy];
}

- (void)destination:(id)destination willPresentNotificationRequest:(id)request suppressAlerts:(BOOL)alerts
{
  alertsCopy = alerts;
  destinationCopy = destination;
  requestCopy = request;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:destinationCopy willPresentNotificationRequest:requestCopy suppressAlerts:alertsCopy];
  }
}

- (void)destination:(id)destination didPresentNotificationRequest:(id)request
{
  destinationCopy = destination;
  requestCopy = request;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:destinationCopy didPresentNotificationRequest:requestCopy];
  }
}

- (void)destination:(id)destination willDismissNotificationRequest:(id)request
{
  destinationCopy = destination;
  requestCopy = request;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:destinationCopy willDismissNotificationRequest:requestCopy];
  }
}

- (void)destination:(id)destination didDismissNotificationRequest:(id)request
{
  destinationCopy = destination;
  requestCopy = request;
  delegate = [(NCNotificationAlertQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:destinationCopy didDismissNotificationRequest:requestCopy];
  }
}

- (void)_postNextNotificationRequestPassingTest:(id)test
{
  testCopy = test;
  queue = [(NCNotificationAlertQueue *)self queue];
  v7 = [queue peekNextNotificationRequestPassingTest:testCopy];

  if (v7 && [(NCNotificationAlertQueue *)self _postNotificationRequest:v7])
  {
    queue2 = [(NCNotificationAlertQueue *)self queue];
    [queue2 removeNotificationRequest:v7];
  }
}

- (void)_postEnqueuedNotificationRequestsCoalescingWith:(id)with
{
  v19 = *MEMORY[0x277D85DE8];
  withCopy = with;
  queue = [(NCNotificationAlertQueue *)self queue];
  v6 = [queue notificationRequestsCoalescebleWithCoalescedRequest:withCopy];

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
          queue2 = [(NCNotificationAlertQueue *)self queue];
          [queue2 removeNotificationRequest:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (BOOL)_postNotificationRequest:(id)request
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  coalescingRequest = [(NCNotificationAlertQueue *)self coalescingRequest];
  if (-[NCNotificationAlertQueue _readyToReceiveForNotificationRequest:](self, "_readyToReceiveForNotificationRequest:", requestCopy) && (!coalescingRequest || [coalescingRequest matchesThreadForRequest:requestCopy]))
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__NCNotificationAlertQueue__postNotificationRequest___block_invoke;
    v14[3] = &unk_279E0DA68;
    v15 = requestCopy;
    v16 = coalescingRequest;
    selfCopy = self;
    v6 = [(NCNotificationAlertQueue *)self _performDestinationOperationForRequest:v15 block:v14];
  }

  else
  {
    v7 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543362;
      v19 = un_logDigest;
      _os_log_impl(&dword_270A33000, v8, OS_LOG_TYPE_DEFAULT, "Queue not ready, not posting queued notification %{public}@", buf, 0xCu);
    }

    options = [requestCopy options];
    preemptsPresentedNotification = [options preemptsPresentedNotification];

    if (preemptsPresentedNotification)
    {
      [(NCNotificationAlertQueue *)self _prepareDestinationsToReceiveCriticalNotificationRequest:requestCopy];
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

- (BOOL)_performDestinationOperationForRequest:(id)request block:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  blockCopy = block;
  destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
  requestDestinations = [requestCopy requestDestinations];
  v10 = [destinationsRegistry destinationsForRequestDestinations:requestDestinations];

  v11 = NCUILogDispatch;
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543618;
    v28 = un_logDigest;
    v29 = 2048;
    v30 = [v10 count];
    _os_log_impl(&dword_270A33000, v12, OS_LOG_TYPE_DEFAULT, "Posting queued notification %{public}@ to %ld destinations", buf, 0x16u);
  }

  if ([(NCNotificationAlertQueue *)self _destinations:v10 canReceiveNotificationRequest:requestCopy])
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

          blockCopy[2](blockCopy, *(*(&v22 + 1) + 8 * i));
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

- (BOOL)_destinations:(id)_destinations canReceiveNotificationRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  _destinationsCopy = _destinations;
  requestCopy = request;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [_destinationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_destinationsCopy);
        }

        if (v10)
        {
          v10 = [*(*(&v13 + 1) + 8 * i) canReceiveNotificationRequest:requestCopy];
        }

        else
        {
          v10 = 0;
        }
      }

      v8 = [_destinationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)_readyToReceiveForNotificationRequest:(id)request
{
  requestCopy = request;
  destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
  requestDestinations = [requestCopy requestDestinations];
  v7 = [destinationsRegistry destinationsForRequestDestinations:requestDestinations];

  destinationsRegistry2 = [(NCNotificationAlertQueue *)self destinationsRegistry];
  requestDestinations2 = [requestCopy requestDestinations];

  v10 = [destinationsRegistry2 readyDestinationsForRequestDestinations:requestDestinations2];

  LOBYTE(destinationsRegistry2) = [v10 isEqualToSet:v7];
  return destinationsRegistry2;
}

- (void)_prepareDestinationsToReceiveCriticalNotificationRequest:(id)request
{
  requestCopy = request;
  destinationsRegistry = [(NCNotificationAlertQueue *)self destinationsRegistry];
  requestDestinations = [requestCopy requestDestinations];
  v7 = [destinationsRegistry destinationsForRequestDestinations:requestDestinations];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__NCNotificationAlertQueue__prepareDestinationsToReceiveCriticalNotificationRequest___block_invoke;
  v9[3] = &unk_279E0DA90;
  v10 = requestCopy;
  v8 = requestCopy;
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