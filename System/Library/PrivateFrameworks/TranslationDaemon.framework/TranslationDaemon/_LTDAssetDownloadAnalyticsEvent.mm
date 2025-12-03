@interface _LTDAssetDownloadAnalyticsEvent
- (_LTDAssetDownloadAnalyticsEvent)initWithNSLocale:(id)locale connectionType:(unint64_t)type downloadTriggerSource:(unint64_t)source;
- (void)_timeoutEvent;
- (void)startTimer;
@end

@implementation _LTDAssetDownloadAnalyticsEvent

- (_LTDAssetDownloadAnalyticsEvent)initWithNSLocale:(id)locale connectionType:(unint64_t)type downloadTriggerSource:(unint64_t)source
{
  localeCopy = locale;
  v14.receiver = self;
  v14.super_class = _LTDAssetDownloadAnalyticsEvent;
  v9 = [(_LTDAssetDownloadAnalyticsEvent *)&v14 init];
  if (v9)
  {
    _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];
    localeIdentifier = v9->_localeIdentifier;
    v9->_localeIdentifier = _ltLocaleIdentifier;

    v9->_downloadOutcome = 0;
    v9->_downloadTriggerSource = source;
    v9->_completionTime = 0.0;
    v9->_connectionType = type;
    *&v9->_hasClientReportedError = 0;
    v12 = v9;
  }

  return v9;
}

- (void)startTimer
{
  v12 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_startTime = v3;
  v4 = _LTOSLogAnalytics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    localeIdentifier = self->_localeIdentifier;
    *buf = 138412290;
    v11 = localeIdentifier;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Started download timer for language %@", buf, 0xCu);
  }

  v6 = dispatch_time(0, 300000000000);
  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___LTDAssetDownloadAnalyticsEvent_startTimer__block_invoke;
  block[3] = &unk_2789B53F0;
  objc_copyWeak(&v9, buf);
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_timeoutEvent
{
  v9 = *MEMORY[0x277D85DE8];
  [(_LTDAssetDownloadAnalyticsEvent *)self stopTimerWithOutcome:5 hasClientReportedError:0 localeIdentifier:self->_localeIdentifier];
  v3 = +[_LTDAssetAnalytics shared];
  [v3 sendEventToAnalytics:self];

  v4 = _LTOSLogAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    localeIdentifier = self->_localeIdentifier;
    v7 = 138412290;
    v8 = localeIdentifier;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Timeout occurred for language %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end