@interface NCNotificationCollapsingQueue
- (BOOL)containsNotificationRequest:(id)request;
- (NCNotificationCollapsingQueue)init;
- (NSArray)enqueuedRequestIdentifiers;
- (id)_collapsedNotificationRequestForNotificationRequest:(id)request atIndex:(unint64_t)index;
- (id)_collapsedNotificationRequestFromCollapsibleRequests:(id)requests;
- (id)_requestsCollapsibleWithNotificationRequest:(id)request;
- (id)notificationRequestsCoalescebleWithCoalescedRequest:(id)request;
- (id)peekNextNotificationRequestPassingTest:(id)test;
- (unint64_t)_collapsedCountForCollapsibleRequests:(id)requests;
- (unint64_t)_indexOfRequestMatchingNotificationRequest:(id)request;
- (unint64_t)count;
- (void)_insertPreemptingNotificationRequest:(id)request;
- (void)addNotificationRequest:(id)request;
- (void)removeNotificationRequest:(id)request;
- (void)replaceNotificationRequest:(id)request;
@end

@implementation NCNotificationCollapsingQueue

- (NCNotificationCollapsingQueue)init
{
  v6.receiver = self;
  v6.super_class = NCNotificationCollapsingQueue;
  v2 = [(NCNotificationCollapsingQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    requests = v2->_requests;
    v2->_requests = v3;

    v2->_collapsingThreshold = 5;
  }

  return v2;
}

- (unint64_t)count
{
  requests = [(NCNotificationCollapsingQueue *)self requests];
  v3 = [requests count];

  return v3;
}

- (NSArray)enqueuedRequestIdentifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  requests = [(NCNotificationCollapsingQueue *)self requests];
  v5 = [requests copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        notificationIdentifier = [*(*(&v13 + 1) + 8 * i) notificationIdentifier];
        [v3 addObject:notificationIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)addNotificationRequest:(id)request
{
  requestCopy = request;
  v4 = [(NCNotificationCollapsingQueue *)self _indexOfRequestMatchingNotificationRequest:?];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    options = [requestCopy options];
    preemptsPresentedNotification = [options preemptsPresentedNotification];

    if (preemptsPresentedNotification)
    {
      [(NCNotificationCollapsingQueue *)self _insertPreemptingNotificationRequest:requestCopy];
      goto LABEL_7;
    }

    requests = [(NCNotificationCollapsingQueue *)self requests];
    [requests addObject:requestCopy];
  }

  else
  {
    v7 = v4;
    requests = [(NCNotificationCollapsingQueue *)self requests];
    [requests replaceObjectAtIndex:v7 withObject:requestCopy];
  }

LABEL_7:
}

- (void)replaceNotificationRequest:(id)request
{
  requestCopy = request;
  v4 = [(NCNotificationCollapsingQueue *)self _indexOfRequestMatchingNotificationRequest:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    requests = [(NCNotificationCollapsingQueue *)self requests];
    [requests replaceObjectAtIndex:v5 withObject:requestCopy];
  }
}

- (void)removeNotificationRequest:(id)request
{
  v4 = [(NCNotificationCollapsingQueue *)self _indexOfRequestMatchingNotificationRequest:request];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    requests = [(NCNotificationCollapsingQueue *)self requests];
    [requests removeObjectAtIndex:v5];
  }
}

- (BOOL)containsNotificationRequest:(id)request
{
  requestCopy = request;
  requests = [(NCNotificationCollapsingQueue *)self requests];
  v6 = [requests containsObject:requestCopy];

  return v6;
}

- (id)peekNextNotificationRequestPassingTest:(id)test
{
  testCopy = test;
  requests = [(NCNotificationCollapsingQueue *)self requests];
  v6 = [requests count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      requests2 = [(NCNotificationCollapsingQueue *)self requests];
      v9 = [requests2 objectAtIndex:v7];

      v10 = [(NCNotificationCollapsingQueue *)self _collapsedNotificationRequestForNotificationRequest:v9 atIndex:v7];
      if (!testCopy || testCopy[2](testCopy, v10))
      {
        break;
      }

      ++v7;

      requests3 = [(NCNotificationCollapsingQueue *)self requests];
      v12 = [requests3 count];

      if (v7 >= v12)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10;
}

- (id)notificationRequestsCoalescebleWithCoalescedRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  requests = [(NCNotificationCollapsingQueue *)self requests];
  v7 = [requests countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(requests);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([requestCopy matchesThreadForRequest:v11])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [requests countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_insertPreemptingNotificationRequest:(id)request
{
  requestCopy = request;
  requests = [(NCNotificationCollapsingQueue *)self requests];
  v6 = [requests indexOfObjectPassingTest:&__block_literal_global_0];

  requests2 = [(NCNotificationCollapsingQueue *)self requests];
  v8 = requests2;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [requests2 addObject:requestCopy];
  }

  else
  {
    [requests2 insertObject:requestCopy atIndex:v6];
  }
}

uint64_t __70__NCNotificationCollapsingQueue__insertPreemptingNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 options];
  v3 = [v2 preemptsPresentedNotification];

  return v3 ^ 1u;
}

- (unint64_t)_indexOfRequestMatchingNotificationRequest:(id)request
{
  requestCopy = request;
  requests = [(NCNotificationCollapsingQueue *)self requests];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__NCNotificationCollapsingQueue__indexOfRequestMatchingNotificationRequest___block_invoke;
  v9[3] = &unk_279E0D9A0;
  v10 = requestCopy;
  v6 = requestCopy;
  v7 = [requests indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __76__NCNotificationCollapsingQueue__indexOfRequestMatchingNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 notificationIdentifier];
  v5 = [v3 notificationIdentifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (id)_requestsCollapsibleWithNotificationRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  requests = [(NCNotificationCollapsingQueue *)self requests];
  v7 = [requests countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(requests);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 isCollapsibleWithNotificationRequest:requestCopy])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [requests countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (unint64_t)_collapsedCountForCollapsibleRequests:(id)requests
{
  v17 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [requestsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(requestsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isCollapsedNotification])
        {
          collapsedNotificationsCount = [v9 collapsedNotificationsCount];
        }

        else
        {
          collapsedNotificationsCount = 1;
        }

        v6 += collapsedNotificationsCount;
      }

      v5 = [requestsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_collapsedNotificationRequestFromCollapsibleRequests:(id)requests
{
  requestsCopy = requests;
  v5 = objc_opt_new();
  firstObject = [requestsCopy firstObject];
  uuid = [firstObject uuid];
  [v5 setUuid:uuid];

  notificationIdentifier = [firstObject notificationIdentifier];
  [v5 setNotificationIdentifier:notificationIdentifier];

  sectionIdentifier = [firstObject sectionIdentifier];
  [v5 setSectionIdentifier:sectionIdentifier];

  threadIdentifier = [firstObject threadIdentifier];
  [v5 setThreadIdentifier:threadIdentifier];

  timestamp = [firstObject timestamp];
  [v5 setTimestamp:timestamp];

  requestDestinations = [firstObject requestDestinations];
  [v5 setRequestDestinations:requestDestinations];

  options = [firstObject options];
  [v5 setOptions:options];

  context = [firstObject context];
  [v5 setContext:context];

  settingsSections = [firstObject settingsSections];
  [v5 setSettingsSections:settingsSections];

  sound = [firstObject sound];
  [v5 setSound:sound];

  sourceInfo = [firstObject sourceInfo];
  [v5 setSourceInfo:sourceInfo];

  cancelAction = [firstObject cancelAction];
  [v5 setCancelAction:cancelAction];

  clearAction = [firstObject clearAction];
  [v5 setClearAction:clearAction];

  closeAction = [firstObject closeAction];
  [v5 setCloseAction:closeAction];

  defaultAction = [firstObject defaultAction];
  [v5 setDefaultAction:defaultAction];

  silenceAction = [firstObject silenceAction];
  [v5 setSilenceAction:silenceAction];

  v23 = objc_opt_new();
  content = [firstObject content];
  customHeader = [content customHeader];
  [v23 setCustomHeader:customHeader];

  content2 = [firstObject content];
  defaultHeader = [content2 defaultHeader];
  [v23 setDefaultHeader:defaultHeader];

  content3 = [firstObject content];
  hiddenPreviewsBodyPlaceholder = [content3 hiddenPreviewsBodyPlaceholder];
  [v23 setHiddenPreviewsBodyPlaceholder:hiddenPreviewsBodyPlaceholder];

  date = [MEMORY[0x277CBEAA8] date];
  [v23 setDate:date];

  [v5 setContent:v23];
  [v5 setIsCollapsedNotification:1];
  v31 = [(NCNotificationCollapsingQueue *)self _collapsedCountForCollapsibleRequests:requestsCopy];

  [v5 setCollapsedNotificationsCount:v31];

  return v5;
}

- (id)_collapsedNotificationRequestForNotificationRequest:(id)request atIndex:(unint64_t)index
{
  requestCopy = request;
  v7 = [(NCNotificationCollapsingQueue *)self _requestsCollapsibleWithNotificationRequest:requestCopy];
  v8 = [(NCNotificationCollapsingQueue *)self _collapsedCountForCollapsibleRequests:v7];
  v9 = requestCopy;
  if ([(NCNotificationCollapsingQueue *)self collapsingThreshold]>= 2)
  {
    v9 = requestCopy;
    if (v8 >= [(NCNotificationCollapsingQueue *)self collapsingThreshold])
    {
      v9 = [(NCNotificationCollapsingQueue *)self _collapsedNotificationRequestFromCollapsibleRequests:v7];

      requests = [(NCNotificationCollapsingQueue *)self requests];
      [requests removeObjectsInArray:v7];

      requests2 = [(NCNotificationCollapsingQueue *)self requests];
      [requests2 insertObject:v9 atIndex:index];
    }
  }

  return v9;
}

@end