@interface ICQEngagementReporter
+ (id)_createOpportunityBubbleFrom:(id)from bundleID:(id)d;
+ (id)_eventNameForEngagementType:(int64_t)type;
+ (id)_placementDictionary;
+ (void)_sendBubbleDisplayedEventFor:(id)for;
+ (void)_sendImpressionEventWithName:(id)name bundleID:(id)d;
+ (void)_sendSubscriptionChangedEvent;
+ (void)fetchBubbleContentWithBundleID:(id)d completion:(id)completion;
+ (void)sendEventFor:(int64_t)for withBundleID:(id)d link:(id)link;
+ (void)shouldShowOpportunityBubbleWithBundleID:(id)d completion:(id)completion;
@end

@implementation ICQEngagementReporter

+ (void)sendEventFor:(int64_t)for withBundleID:(id)d link:(id)link
{
  v13 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  v8 = [self _eventNameForEngagementType:for];
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Sending AMSMetricEvent for %@", &v11, 0xCu);
  }

  if (for == 2)
  {
    [self _sendBubbleDisplayedEventFor:linkCopy];
  }

  else if (for == 3)
  {
    [self _sendSubscriptionChangedEvent];
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)_sendImpressionEventWithName:(id)name bundleID:(id)d
{
  v23[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  v7 = dCopy;
  v8 = @"com.apple.iCloudQuotaUI";
  if (dCopy)
  {
    v8 = dCopy;
  }

  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277CEE5A8]);
  v22[0] = @"eventType";
  v22[1] = @"bundleId";
  v23[0] = nameCopy;
  v23[1] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v12 = [v10 initWithUnderlyingDictionary:v11];

  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v7;
    _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Sending AMS metricEvent to start on-device journey with bundleID %@", &v20, 0xCu);
  }

  v14 = objc_alloc_init(MEMORY[0x277CEE498]);
  underlyingDictionary = [v12 underlyingDictionary];
  v16 = [v14 enqueueData:underlyingDictionary];

  v17 = _ICQGetLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    underlyingDictionary2 = [v12 underlyingDictionary];
    v20 = 138412290;
    v21 = underlyingDictionary2;
    _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "Enqueued metricEvent to AMSEngagement: %@", &v20, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (void)shouldShowOpportunityBubbleWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277CEE498]);
  v9 = [MEMORY[0x277CBEB98] setWithObjects:{@"photosLibraryFooter", @"homeDashboardHeader", 0}];
  v10 = [objc_alloc(MEMORY[0x277CEE4A8]) initWithServiceType:@"iCloudQuotaUI" placements:v9];
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Enqueueing a messageEvent to amsengagementd to determine if we should show OpportunityBubble.", buf, 2u);
  }

  v12 = [v8 enqueueMessageEvent:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__ICQEngagementReporter_shouldShowOpportunityBubbleWithBundleID_completion___block_invoke;
  v17[3] = &unk_27A652A48;
  v21 = completionCopy;
  selfCopy = self;
  v18 = v9;
  v19 = dCopy;
  v20 = v8;
  v13 = v8;
  v14 = dCopy;
  v15 = v9;
  v16 = completionCopy;
  [v12 addFinishBlock:v17];
}

void __76__ICQEngagementReporter_shouldShowOpportunityBubbleWithBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __76__ICQEngagementReporter_shouldShowOpportunityBubbleWithBundleID_completion___block_invoke_cold_1(v5, v6);
    }

    goto LABEL_4;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = [a2 messageActions];
  v34 = [v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v34)
  {
    v7 = *v42;
    v36 = v6;
    v33 = *v42;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v35 = v8;
        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = _ICQGetLogSystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "Received response from amsngagementd.", buf, 2u);
        }

        v11 = [v9 placements];
        v12 = _ICQGetLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v11;
          _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "AMSEngagementMessageRequests: %@", buf, 0xCu);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v13 = *(a1 + 32);
        v14 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (!v14)
        {
          goto LABEL_22;
        }

        v15 = v14;
        v16 = *v38;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v37 + 1) + 8 * i);
            v19 = [v11 objectForKeyedSubscript:v18];
            v20 = [*(a1 + 64) _placementDictionary];
            v21 = [v20 objectForKeyedSubscript:*(a1 + 40)];
            LODWORD(v18) = [v18 isEqualToString:v21];

            if (v18)
            {
              v22 = _ICQGetLogSystem();
              v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              if (v19)
              {
                v5 = 0;
                if (v23)
                {
                  *buf = 0;
                  v24 = "ICQTileView should be shown.";
                  goto LABEL_30;
                }
              }

              else
              {
                v5 = 0;
                if (v23)
                {
                  *buf = 0;
                  v24 = "ICQTileView shouldn't be shown.";
LABEL_30:
                  _os_log_impl(&dword_275572000, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
                }
              }

              v25 = _ICQGetLogSystem();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [v19 metricsEvent];
                v27 = [v26 underlyingDictionary];
                *buf = 138412290;
                v47 = v27;
                _os_log_impl(&dword_275572000, v25, OS_LOG_TYPE_DEFAULT, "Enqueued metricEvent from AMSEngagementMessageRequest to AMSEngagement: %@", buf, 0xCu);
              }

              v28 = *(a1 + 48);
              v29 = [v19 metricsEvent];
              v30 = [v29 underlyingDictionary];
              v31 = [v28 enqueueData:v30];

              (*(*(a1 + 56) + 16))();
              goto LABEL_34;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

LABEL_22:

        v8 = v35 + 1;
        v6 = v36;
        v5 = 0;
        v7 = v33;
      }

      while (v35 + 1 != v34);
      v34 = [v36 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v34);
  }

LABEL_4:

  (*(*(a1 + 56) + 16))();
LABEL_34:

  v32 = *MEMORY[0x277D85DE8];
}

+ (void)fetchBubbleContentWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277CEE498]);
  v9 = [MEMORY[0x277CBEB98] setWithObjects:{@"photosLibraryFooter", @"homeDashboardHeader", 0}];
  v10 = [objc_alloc(MEMORY[0x277CEE4A8]) initWithServiceType:@"iCloudQuotaUI" placements:v9];
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Enqueueing a messageEvent to amsengagementd to pull bubble content from Mercury.", buf, 2u);
  }

  v12 = [v8 enqueueMessageEvent:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__ICQEngagementReporter_fetchBubbleContentWithBundleID_completion___block_invoke;
  v17[3] = &unk_27A652A70;
  v21 = completionCopy;
  selfCopy = self;
  v18 = v9;
  v19 = dCopy;
  v20 = v8;
  v13 = v8;
  v14 = completionCopy;
  v15 = dCopy;
  v16 = v9;
  [v12 addFinishBlock:v17];
}

void __67__ICQEngagementReporter_fetchBubbleContentWithBundleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = [a2 messageActions];
  v30 = [v3 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v30)
  {
    v4 = *v39;
    v32 = v3;
    v29 = *v39;
    do
    {
      v5 = 0;
      do
      {
        if (*v39 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v31 = v5;
        v6 = *(*(&v38 + 1) + 8 * v5);
        v7 = _ICQGetLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Received response from amsngagementd for bubble content.", buf, 2u);
        }

        v8 = [v6 placements];
        v9 = _ICQGetLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v8;
          _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "AMSEngagementMessageRequests for bubble content: %@", buf, 0xCu);
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        obj = *(a1 + 32);
        v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v35;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v35 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v34 + 1) + 8 * i);
              v15 = [v8 objectForKeyedSubscript:v14];
              v16 = [v15 makeDialogRequest];
              v17 = [*(a1 + 64) _placementDictionary];
              v18 = [v17 objectForKeyedSubscript:*(a1 + 40)];
              LODWORD(v14) = [v14 isEqualToString:v18];

              if (v14)
              {
                v19 = *(a1 + 56);
                v20 = [*(a1 + 64) _createOpportunityBubbleFrom:v16 bundleID:*(a1 + 40)];
                (*(v19 + 16))(v19, v20, 0);

                v21 = *(a1 + 48);
                v22 = [v16 metricsEvent];
                v23 = [v22 underlyingDictionary];
                v24 = [v21 enqueueData:v23];

                v25 = _ICQGetLogSystem();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26 = [v16 metricsEvent];
                  v27 = [v26 underlyingDictionary];
                  *buf = 138412290;
                  v44 = v27;
                  _os_log_impl(&dword_275572000, v25, OS_LOG_TYPE_DEFAULT, "Enqueued metricEvent from AMSDialogRequest to AMSEngagement after pulling for bubble content: %@", buf, 0xCu);
                }

                goto LABEL_24;
              }
            }

            v11 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v5 = v31 + 1;
        v3 = v32;
        v4 = v29;
      }

      while (v31 + 1 != v30);
      v30 = [v32 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v30);
  }

  (*(*(a1 + 56) + 16))();
LABEL_24:
  v28 = *MEMORY[0x277D85DE8];
}

+ (id)_createOpportunityBubbleFrom:(id)from bundleID:(id)d
{
  v58[2] = *MEMORY[0x277D85DE8];
  v57[1] = @"opportunityBubbleDetails";
  v58[0] = d;
  v57[0] = @"appId";
  v55[0] = @"title";
  dCopy = d;
  fromCopy = from;
  title = [fromCopy title];
  v56[0] = title;
  v55[1] = @"message";
  message = [fromCopy message];
  v56[1] = message;
  v55[2] = @"imageDetails";
  v53[0] = @"3x";
  iconURL = [fromCopy iconURL];
  v54[0] = iconURL;
  v53[1] = @"2x";
  iconURL2 = [fromCopy iconURL];
  v54[1] = iconURL2;
  v53[2] = @"1x";
  iconURL3 = [fromCopy iconURL];
  v54[2] = iconURL3;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
  v56[2] = v37;
  v55[3] = @"actions";
  v50[0] = @"btnId";
  buttonActions = [fromCopy buttonActions];
  v35 = [buttonActions objectAtIndexedSubscript:0];
  identifier = [v35 identifier];
  v51[0] = identifier;
  v50[1] = @"btnTitle";
  buttonActions2 = [fromCopy buttonActions];
  v32 = [buttonActions2 objectAtIndexedSubscript:0];
  title2 = [v32 title];
  v51[1] = title2;
  v51[2] = @"LAUNCH_REMOTE_UI";
  v50[2] = @"btnAction";
  v50[3] = @"btnActParams";
  v48 = @"openUrl";
  buttonActions3 = [fromCopy buttonActions];
  v29 = [buttonActions3 objectAtIndexedSubscript:0];
  deepLink = [v29 deepLink];
  absoluteString = [deepLink absoluteString];
  v49 = absoluteString;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v51[3] = v26;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:4];
  v52[0] = v25;
  v46[0] = @"btnId";
  buttonActions4 = [fromCopy buttonActions];
  v23 = [buttonActions4 objectAtIndexedSubscript:1];
  identifier2 = [v23 identifier];
  v47[0] = identifier2;
  v46[1] = @"btnTitle";
  buttonActions5 = [fromCopy buttonActions];
  v20 = [buttonActions5 objectAtIndexedSubscript:1];
  title3 = [v20 title];
  v47[1] = title3;
  v47[2] = @"HTTP_CALL";
  v46[2] = @"btnAction";
  v46[3] = @"btnActParams";
  v44 = @"openUrl";
  buttonActions6 = [fromCopy buttonActions];

  v8 = [buttonActions6 objectAtIndexedSubscript:1];
  deepLink2 = [v8 deepLink];
  absoluteString2 = [deepLink2 absoluteString];
  v45 = absoluteString2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v47[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:4];
  v52[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v56[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
  v58[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

  v16 = [ICQOpportunityBubbleSpecification alloc];
  v17 = [(ICQOpportunityBubbleSpecification *)v16 initWithOpportunityBubble:v15 andOpportunitySheet:0];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (void)_sendBubbleDisplayedEventFor:(id)for
{
  v3 = objc_alloc_init(MEMORY[0x277CEE498]);
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"photosLibraryFooter", @"homeDashboardHeader", 0}];
  v5 = [objc_alloc(MEMORY[0x277CEE4A8]) initWithServiceType:@"iCloudQuotaUI" placements:v4];
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Enqueueing a messageEvent to amsengagementd to send impression event.", buf, 2u);
  }

  v7 = [v3 enqueueMessageEvent:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__ICQEngagementReporter__sendBubbleDisplayedEventFor___block_invoke;
  v10[3] = &unk_27A652A98;
  v11 = v4;
  v12 = v3;
  v8 = v3;
  v9 = v4;
  [v7 addFinishBlock:v10];
}

void __54__ICQEngagementReporter__sendBubbleDisplayedEventFor___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [a2 messageActions];
  v24 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v24)
  {
    v23 = *v32;
    do
    {
      v2 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v31 + 1) + 8 * v2);
        v4 = _ICQGetLogSystem();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Received response from amsngagementd.", buf, 2u);
        }

        v25 = v2;

        v5 = [v3 placements];
        v6 = _ICQGetLogSystem();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v5;
          _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "AMSEngagementMessageRequests: %@", buf, 0xCu);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v7 = *(a1 + 32);
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v28;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [v5 objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
              v13 = [v12 makeDialogRequest];
              v14 = *(a1 + 40);
              v15 = [v13 metricsEvent];
              v16 = [v15 underlyingDictionary];
              v17 = [v14 enqueueData:v16];

              v18 = _ICQGetLogSystem();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [v13 metricsEvent];
                v20 = [v19 underlyingDictionary];
                *buf = 138412290;
                v37 = v20;
                _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, "Enqueued metricEvent from AMSDialogRequest to AMSEngagement: %@", buf, 0xCu);
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v9);
        }

        v2 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v24);
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)_sendSubscriptionChangedEvent
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__7;
  v16[4] = __Block_byref_object_dispose__7;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__7;
  v14[4] = __Block_byref_object_dispose__7;
  v15 = 0;
  v3 = dispatch_group_create();
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Requesting current storage level", buf, 2u);
  }

  dispatch_group_enter(v3);
  v5 = +[ICQOfferManager sharedOfferManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__ICQEngagementReporter__sendSubscriptionChangedEvent__block_invoke;
  v9[3] = &unk_27A652AC0;
  v11 = v16;
  v12 = v14;
  v6 = v3;
  v10 = v6;
  [v5 getPremiumOfferWithCompletion:v9];

  v7 = dispatch_get_global_queue(33, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__ICQEngagementReporter__sendSubscriptionChangedEvent__block_invoke_79;
  v8[3] = &unk_27A652AE8;
  v8[5] = v14;
  v8[6] = self;
  v8[4] = v16;
  dispatch_group_notify(v6, v7, v8);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

void __54__ICQEngagementReporter__sendSubscriptionChangedEvent__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 commerceQuotaInfo];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [v5 bundleQuotaInfo];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(*(a1 + 40) + 8) + 40);
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v20 = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v16 = "Current iCloudStorageLevel: %@ appleOneStorageLevel %@";
      v17 = v13;
      v18 = 22;
LABEL_6:
      _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, v16, &v20, v18);
    }
  }

  else
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v6;
      v16 = "No premium offer return with error: %@";
      v17 = v13;
      v18 = 12;
      goto LABEL_6;
    }
  }

  dispatch_group_leave(*(a1 + 32));
  v19 = *MEMORY[0x277D85DE8];
}

void __54__ICQEngagementReporter__sendSubscriptionChangedEvent__block_invoke_79(uint64_t a1)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 48) _eventNameForEngagementType:3];
  v17[0] = @"eventType";
  v17[1] = @"bundleId";
  v18[0] = v2;
  v18[1] = @"com.apple.iCloudQuotaUI";
  v17[2] = @"newiCloudStoragePlan";
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v18[2] = v4;
  v17[3] = @"newAppleOneStoragePlan";
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v18[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (v5)
  {
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = [objc_alloc(MEMORY[0x277CEE5A8]) initWithUnderlyingDictionary:v7];
  v9 = objc_alloc_init(MEMORY[0x277CEE498]);
  v10 = [v8 underlyingDictionary];
  v11 = [v9 enqueueData:v10];

  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 underlyingDictionary];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Enqueued metricEvent to AMSEngagement: %@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)_eventNameForEngagementType:(int64_t)type
{
  if (type > 3)
  {
    return @"iCloudQuota:dismissal";
  }

  else
  {
    return off_27A652B08[type];
  }
}

+ (id)_placementDictionary
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.mobileslideshow";
  v5[1] = @"com.apple.Home";
  v6[0] = @"photosLibraryFooter";
  v6[1] = @"homeDashboardHeader";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void __76__ICQEngagementReporter_shouldShowOpportunityBubbleWithBundleID_completion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "Received error from amsngagementd %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end