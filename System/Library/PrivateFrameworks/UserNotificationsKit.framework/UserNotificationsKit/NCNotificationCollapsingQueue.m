@interface NCNotificationCollapsingQueue
- (BOOL)containsNotificationRequest:(id)a3;
- (NCNotificationCollapsingQueue)init;
- (NSArray)enqueuedRequestIdentifiers;
- (id)_collapsedNotificationRequestForNotificationRequest:(id)a3 atIndex:(unint64_t)a4;
- (id)_collapsedNotificationRequestFromCollapsibleRequests:(id)a3;
- (id)_requestsCollapsibleWithNotificationRequest:(id)a3;
- (id)notificationRequestsCoalescebleWithCoalescedRequest:(id)a3;
- (id)peekNextNotificationRequestPassingTest:(id)a3;
- (unint64_t)_collapsedCountForCollapsibleRequests:(id)a3;
- (unint64_t)_indexOfRequestMatchingNotificationRequest:(id)a3;
- (unint64_t)count;
- (void)_insertPreemptingNotificationRequest:(id)a3;
- (void)addNotificationRequest:(id)a3;
- (void)removeNotificationRequest:(id)a3;
- (void)replaceNotificationRequest:(id)a3;
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
  v2 = [(NCNotificationCollapsingQueue *)self requests];
  v3 = [v2 count];

  return v3;
}

- (NSArray)enqueuedRequestIdentifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(NCNotificationCollapsingQueue *)self requests];
  v5 = [v4 copy];

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

        v11 = [*(*(&v13 + 1) + 8 * i) notificationIdentifier];
        [v3 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)addNotificationRequest:(id)a3
{
  v9 = a3;
  v4 = [(NCNotificationCollapsingQueue *)self _indexOfRequestMatchingNotificationRequest:?];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v9 options];
    v6 = [v5 preemptsPresentedNotification];

    if (v6)
    {
      [(NCNotificationCollapsingQueue *)self _insertPreemptingNotificationRequest:v9];
      goto LABEL_7;
    }

    v8 = [(NCNotificationCollapsingQueue *)self requests];
    [v8 addObject:v9];
  }

  else
  {
    v7 = v4;
    v8 = [(NCNotificationCollapsingQueue *)self requests];
    [v8 replaceObjectAtIndex:v7 withObject:v9];
  }

LABEL_7:
}

- (void)replaceNotificationRequest:(id)a3
{
  v7 = a3;
  v4 = [(NCNotificationCollapsingQueue *)self _indexOfRequestMatchingNotificationRequest:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [(NCNotificationCollapsingQueue *)self requests];
    [v6 replaceObjectAtIndex:v5 withObject:v7];
  }
}

- (void)removeNotificationRequest:(id)a3
{
  v4 = [(NCNotificationCollapsingQueue *)self _indexOfRequestMatchingNotificationRequest:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [(NCNotificationCollapsingQueue *)self requests];
    [v6 removeObjectAtIndex:v5];
  }
}

- (BOOL)containsNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationCollapsingQueue *)self requests];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)peekNextNotificationRequestPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationCollapsingQueue *)self requests];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(NCNotificationCollapsingQueue *)self requests];
      v9 = [v8 objectAtIndex:v7];

      v10 = [(NCNotificationCollapsingQueue *)self _collapsedNotificationRequestForNotificationRequest:v9 atIndex:v7];
      if (!v4 || v4[2](v4, v10))
      {
        break;
      }

      ++v7;

      v11 = [(NCNotificationCollapsingQueue *)self requests];
      v12 = [v11 count];

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

- (id)notificationRequestsCoalescebleWithCoalescedRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NCNotificationCollapsingQueue *)self requests];
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

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v4 matchesThreadForRequest:v11])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_insertPreemptingNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationCollapsingQueue *)self requests];
  v6 = [v5 indexOfObjectPassingTest:&__block_literal_global_0];

  v7 = [(NCNotificationCollapsingQueue *)self requests];
  v8 = v7;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 addObject:v4];
  }

  else
  {
    [v7 insertObject:v4 atIndex:v6];
  }
}

uint64_t __70__NCNotificationCollapsingQueue__insertPreemptingNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 options];
  v3 = [v2 preemptsPresentedNotification];

  return v3 ^ 1u;
}

- (unint64_t)_indexOfRequestMatchingNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationCollapsingQueue *)self requests];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__NCNotificationCollapsingQueue__indexOfRequestMatchingNotificationRequest___block_invoke;
  v9[3] = &unk_279E0D9A0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

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

- (id)_requestsCollapsibleWithNotificationRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NCNotificationCollapsingQueue *)self requests];
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

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 isCollapsibleWithNotificationRequest:v4])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (unint64_t)_collapsedCountForCollapsibleRequests:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isCollapsedNotification])
        {
          v10 = [v9 collapsedNotificationsCount];
        }

        else
        {
          v10 = 1;
        }

        v6 += v10;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_collapsedNotificationRequestFromCollapsibleRequests:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 firstObject];
  v7 = [v6 uuid];
  [v5 setUuid:v7];

  v8 = [v6 notificationIdentifier];
  [v5 setNotificationIdentifier:v8];

  v9 = [v6 sectionIdentifier];
  [v5 setSectionIdentifier:v9];

  v10 = [v6 threadIdentifier];
  [v5 setThreadIdentifier:v10];

  v11 = [v6 timestamp];
  [v5 setTimestamp:v11];

  v12 = [v6 requestDestinations];
  [v5 setRequestDestinations:v12];

  v13 = [v6 options];
  [v5 setOptions:v13];

  v14 = [v6 context];
  [v5 setContext:v14];

  v15 = [v6 settingsSections];
  [v5 setSettingsSections:v15];

  v16 = [v6 sound];
  [v5 setSound:v16];

  v17 = [v6 sourceInfo];
  [v5 setSourceInfo:v17];

  v18 = [v6 cancelAction];
  [v5 setCancelAction:v18];

  v19 = [v6 clearAction];
  [v5 setClearAction:v19];

  v20 = [v6 closeAction];
  [v5 setCloseAction:v20];

  v21 = [v6 defaultAction];
  [v5 setDefaultAction:v21];

  v22 = [v6 silenceAction];
  [v5 setSilenceAction:v22];

  v23 = objc_opt_new();
  v24 = [v6 content];
  v25 = [v24 customHeader];
  [v23 setCustomHeader:v25];

  v26 = [v6 content];
  v27 = [v26 defaultHeader];
  [v23 setDefaultHeader:v27];

  v28 = [v6 content];
  v29 = [v28 hiddenPreviewsBodyPlaceholder];
  [v23 setHiddenPreviewsBodyPlaceholder:v29];

  v30 = [MEMORY[0x277CBEAA8] date];
  [v23 setDate:v30];

  [v5 setContent:v23];
  [v5 setIsCollapsedNotification:1];
  v31 = [(NCNotificationCollapsingQueue *)self _collapsedCountForCollapsibleRequests:v4];

  [v5 setCollapsedNotificationsCount:v31];

  return v5;
}

- (id)_collapsedNotificationRequestForNotificationRequest:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NCNotificationCollapsingQueue *)self _requestsCollapsibleWithNotificationRequest:v6];
  v8 = [(NCNotificationCollapsingQueue *)self _collapsedCountForCollapsibleRequests:v7];
  v9 = v6;
  if ([(NCNotificationCollapsingQueue *)self collapsingThreshold]>= 2)
  {
    v9 = v6;
    if (v8 >= [(NCNotificationCollapsingQueue *)self collapsingThreshold])
    {
      v9 = [(NCNotificationCollapsingQueue *)self _collapsedNotificationRequestFromCollapsibleRequests:v7];

      v10 = [(NCNotificationCollapsingQueue *)self requests];
      [v10 removeObjectsInArray:v7];

      v11 = [(NCNotificationCollapsingQueue *)self requests];
      [v11 insertObject:v9 atIndex:a4];
    }
  }

  return v9;
}

@end