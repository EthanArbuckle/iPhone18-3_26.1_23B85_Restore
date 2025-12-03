@interface _LTDAssetAnalytics
+ (_LTDAssetAnalytics)shared;
- (id)_init;
- (id)createEventWithNSLocale:(id)locale connectionType:(unint64_t)type downloadTriggerSource:(unint64_t)source;
- (id)getEventWithNSLocale:(id)locale;
- (void)markEventsAsRetriedForLocales:(id)locales;
- (void)sendEventToAnalytics:(id)analytics;
- (void)sendEventsToAnalytics:(id)analytics;
@end

@implementation _LTDAssetAnalytics

+ (_LTDAssetAnalytics)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28___LTDAssetAnalytics_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  localeAnalyticsMap = v2->_localeAnalyticsMap;
  v2->_localeAnalyticsMap = dictionary;

  v2->_lock._os_unfair_lock_opaque = 0;
  return v2;
}

- (id)createEventWithNSLocale:(id)locale connectionType:(unint64_t)type downloadTriggerSource:(unint64_t)source
{
  localeCopy = locale;
  v9 = [[_LTDAssetDownloadAnalyticsEvent alloc] initWithNSLocale:localeCopy connectionType:type downloadTriggerSource:source];
  _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];

  if (_ltLocaleIdentifier)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83___LTDAssetAnalytics_createEventWithNSLocale_connectionType_downloadTriggerSource___block_invoke;
    v20[3] = &unk_2789B5968;
    v20[4] = self;
    v21 = _ltLocaleIdentifier;
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

- (void)markEventsAsRetriedForLocales:(id)locales
{
  v19 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __52___LTDAssetAnalytics_markEventsAsRetriedForLocales___block_invoke;
  v14 = &unk_2789B5990;
  v5 = localesCopy;
  v15 = v5;
  selfCopy = self;
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

- (id)getEventWithNSLocale:(id)locale
{
  localeCopy = locale;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];
  v6 = _ltLocaleIdentifier;
  if (_ltLocaleIdentifier)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v19 = __43___LTDAssetAnalytics_getEventWithNSLocale___block_invoke;
    v20 = &unk_2789B59B8;
    v23 = &v24;
    selfCopy = self;
    v22 = _ltLocaleIdentifier;
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

- (void)sendEventToAnalytics:(id)analytics
{
  v29 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v5 = _LTOSLogAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = _LTDAssetAnalyticStringForDownloadOutcome([analyticsCopy downloadOutcome]);
    *buf = 138543362;
    v28 = v7;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  localeIdentifier = [analyticsCopy localeIdentifier];
  v9 = localeIdentifier;
  if (localeIdentifier)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __43___LTDAssetAnalytics_sendEventToAnalytics___block_invoke;
    v25[3] = &unk_2789B5990;
    v25[4] = self;
    v26 = localeIdentifier;
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    __43___LTDAssetAnalytics_sendEventToAnalytics___block_invoke(v25);
    os_unfair_lock_unlock(&self->_lock);

    localeIdentifier2 = [analyticsCopy localeIdentifier];
    [analyticsCopy completionTime];
    v12 = -[_LTDAssetAnalytics analyticsDataForLocaleIdentifier:completionTime:connectionType:downloadOutcome:downloadTriggerSource:hasClientReportedError:](self, "analyticsDataForLocaleIdentifier:completionTime:connectionType:downloadOutcome:downloadTriggerSource:hasClientReportedError:", localeIdentifier2, [analyticsCopy connectionType], objc_msgSend(analyticsCopy, "downloadOutcome"), objc_msgSend(analyticsCopy, "downloadTriggerSource"), objc_msgSend(analyticsCopy, "hasClientReportedError"), v11);

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

- (void)sendEventsToAnalytics:(id)analytics
{
  v15 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [analyticsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(analyticsCopy);
        }

        [(_LTDAssetAnalytics *)self sendEventToAnalytics:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [analyticsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end