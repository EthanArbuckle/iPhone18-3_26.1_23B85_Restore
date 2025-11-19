@interface _LTDAssetAnalytics
+ (_LTDAssetAnalytics)shared;
- (id)_init;
- (id)createEventWithNSLocale:(id)a3 connectionType:(unint64_t)a4 downloadTriggerSource:(unint64_t)a5;
- (id)getEventWithNSLocale:(id)a3;
- (void)markEventsAsRetriedForLocales:(id)a3;
- (void)sendEventToAnalytics:(id)a3;
- (void)sendEventsToAnalytics:(id)a3;
@end

@implementation _LTDAssetAnalytics

+ (_LTDAssetAnalytics)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28___LTDAssetAnalytics_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_sharedInstance;

  return v2;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = _LTDAssetAnalytics;
  v2 = [(_LTDAssetAnalytics *)&v6 init];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  localeAnalyticsMap = v2->_localeAnalyticsMap;
  v2->_localeAnalyticsMap = v3;

  v2->_lock._os_unfair_lock_opaque = 0;
  return v2;
}

- (id)createEventWithNSLocale:(id)a3 connectionType:(unint64_t)a4 downloadTriggerSource:(unint64_t)a5
{
  v8 = a3;
  v9 = [[_LTDAssetDownloadAnalyticsEvent alloc] initWithNSLocale:v8 connectionType:a4 downloadTriggerSource:a5];
  v10 = [v8 _ltLocaleIdentifier];

  if (v10)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83___LTDAssetAnalytics_createEventWithNSLocale_connectionType_downloadTriggerSource___block_invoke;
    v20[3] = &unk_2789B5968;
    v20[4] = self;
    v21 = v10;
    v22 = v9;
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    __83___LTDAssetAnalytics_createEventWithNSLocale_connectionType_downloadTriggerSource___block_invoke(v20);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v11 = _LTOSLogAnalytics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(_LTDAssetAnalytics *)v11 createEventWithNSLocale:v12 connectionType:v13 downloadTriggerSource:v14, v15, v16, v17, v18];
    }
  }

  return v9;
}

- (void)markEventsAsRetriedForLocales:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __52___LTDAssetAnalytics_markEventsAsRetriedForLocales___block_invoke;
  v14 = &unk_2789B5990;
  v5 = v4;
  v15 = v5;
  v16 = self;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __52___LTDAssetAnalytics_markEventsAsRetriedForLocales___block_invoke(&v11);
  os_unfair_lock_unlock(&self->_lock);
  v6 = [v5 _ltCompactMap:{&__block_literal_global_3, v11, v12}];
  v7 = _LTOSLogAnalytics();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 componentsJoinedByString:@" : "];
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_DEFAULT, "Asset analytic retry event [%{public}@]", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)getEventWithNSLocale:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v5 = [v4 _ltLocaleIdentifier];
  v6 = v5;
  if (v5)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v19 = __43___LTDAssetAnalytics_getEventWithNSLocale___block_invoke;
    v20 = &unk_2789B59B8;
    v23 = &v24;
    v21 = self;
    v22 = v5;
    v7 = v18;
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    v19(v7);

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v8 = _LTOSLogAnalytics();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_LTDAssetAnalytics *)v8 getEventWithNSLocale:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  v16 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v16;
}

- (void)sendEventToAnalytics:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _LTOSLogAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = _LTDAssetAnalyticStringForDownloadOutcome([v4 downloadOutcome]);
    *buf = 138543362;
    v28 = v7;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v8 = [v4 localeIdentifier];
  v9 = v8;
  if (v8)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __43___LTDAssetAnalytics_sendEventToAnalytics___block_invoke;
    v25[3] = &unk_2789B5990;
    v25[4] = self;
    v26 = v8;
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    __43___LTDAssetAnalytics_sendEventToAnalytics___block_invoke(v25);
    os_unfair_lock_unlock(&self->_lock);

    v10 = [v4 localeIdentifier];
    [v4 completionTime];
    v12 = -[_LTDAssetAnalytics analyticsDataForLocaleIdentifier:completionTime:connectionType:downloadOutcome:downloadTriggerSource:hasClientReportedError:](self, "analyticsDataForLocaleIdentifier:completionTime:connectionType:downloadOutcome:downloadTriggerSource:hasClientReportedError:", v10, [v4 connectionType], objc_msgSend(v4, "downloadOutcome"), objc_msgSend(v4, "downloadTriggerSource"), objc_msgSend(v4, "hasClientReportedError"), v11);

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.translation", @"AssetDownloadMetrics"];
    v24 = v12;
    v14 = v12;
    AnalyticsSendEventLazy();
  }

  else
  {
    v15 = _LTOSLogAnalytics();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(_LTDAssetAnalytics *)v15 sendEventToAnalytics:v16, v17, v18, v19, v20, v21, v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)sendEventsToAnalytics:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(_LTDAssetAnalytics *)self sendEventToAnalytics:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end