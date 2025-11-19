@interface SBPIPAnalytics
- (id)assistantForUUID:(id)a3;
- (void)pictureInPictureAnalyticsSourceWithUUID:(id)a3 didBecomePossible:(BOOL)a4;
- (void)pictureInPictureDidActivateAnalyticsSessionWithUUID:(id)a3 analyticsSourceUUID:(id)a4 automatically:(BOOL)a5;
- (void)pictureInPictureDidChangeStashStateForAnalyticsSessionWithUUID:(id)a3 stashed:(BOOL)a4;
- (void)pictureInPictureDidCreateAnalyticsSessionWithUUID:(id)a3 bundleIdentifier:(id)a4 contentType:(int64_t)a5;
- (void)pictureInPictureDidCreateAnalyticsSourceWithUUID:(id)a3 bundleIdentifier:(id)a4 contentType:(int64_t)a5;
- (void)pictureInPictureDidDeactivateAnalyticsSessionWithUUID:(id)a3 analyticsSourceUUID:(id)a4 appStoppedSession:(BOOL)a5 restoredFullScreen:(BOOL)a6;
- (void)pictureInPictureDidDestroyAnalyticsSessionWithUUID:(id)a3;
- (void)pictureInPictureDidDestroyAnalyticsSourceWithUUID:(id)a3;
@end

@implementation SBPIPAnalytics

- (id)assistantForUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:v4];
  }

  v8 = v7;

  return v8;
}

- (void)pictureInPictureDidCreateAnalyticsSourceWithUUID:(id)a3 bundleIdentifier:(id)a4 contentType:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = SBLogPIP();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v10 pictureInPictureDidCreateAnalyticsSourceWithUUID:v11 bundleIdentifier:v12 contentType:v13, v14, v15, v16, v17];
  }

  if (!self->_analyticsSourceAssistants)
  {
    v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    analyticsSourceAssistants = self->_analyticsSourceAssistants;
    self->_analyticsSourceAssistants = v18;
  }

  v20 = [SBPIPAnalyticsSourceSummaryAssistant alloc];
  v21 = +[SBDefaults localDefaults];
  v22 = [v21 pipDefaults];
  v23 = -[SBPIPAnalyticsSourceSummaryAssistant initWithBundleIdentifier:contentType:isAutoPIPEnabled:invalidationBlock:](v20, "initWithBundleIdentifier:contentType:isAutoPIPEnabled:invalidationBlock:", v8, a5, [v22 allowAutoPIP], &__block_literal_global_243);

  [(NSMutableDictionary *)self->_analyticsSourceAssistants setObject:v23 forKeyedSubscript:v9];
}

void __96__SBPIPAnalytics_pictureInPictureDidCreateAnalyticsSourceWithUUID_bundleIdentifier_contentType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  AnalyticsSendEventLazy();
}

- (void)pictureInPictureDidDestroyAnalyticsSourceWithUUID:(id)a3
{
  v4 = a3;
  v5 = SBLogPIP();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v5 pictureInPictureDidDestroyAnalyticsSourceWithUUID:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:v4];
  [v13 noteBecameInactiveAtTime:CFAbsoluteTimeGetCurrent()];

  v14 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:v4];
  [v14 notePIPBecameProhibitedAtTime:CFAbsoluteTimeGetCurrent()];

  v15 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:v4];
  [v15 invalidate];

  [(NSMutableDictionary *)self->_analyticsSourceAssistants setObject:0 forKeyedSubscript:v4];
}

- (void)pictureInPictureAnalyticsSourceWithUUID:(id)a3 didBecomePossible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = SBLogPIP();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v7 pictureInPictureAnalyticsSourceWithUUID:v8 didBecomePossible:v9, v10, v11, v12, v13, v14];
  }

  v15 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:v6];
  Current = CFAbsoluteTimeGetCurrent();
  if (v4)
  {
    [v15 notePIPBecamePossibleAtTime:Current];
  }

  else
  {
    [v15 notePIPBecameProhibitedAtTime:Current];
  }
}

- (void)pictureInPictureDidCreateAnalyticsSessionWithUUID:(id)a3 bundleIdentifier:(id)a4 contentType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!self->_analyticsSessionAssistants)
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    analyticsSessionAssistants = self->_analyticsSessionAssistants;
    self->_analyticsSessionAssistants = v10;
  }

  v12 = SBLogPIP();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v12 pictureInPictureDidCreateAnalyticsSessionWithUUID:v13 bundleIdentifier:v14 contentType:v15, v16, v17, v18, v19];
  }

  v20 = [SBPIPAnalyticsSessionSummaryAssistant alloc];
  v21 = +[SBDefaults localDefaults];
  v22 = [v21 pipDefaults];
  v23 = -[SBPIPAnalyticsSessionSummaryAssistant initWithBundleIdentifier:contentType:isAutoPIPEnabled:invalidationBlock:](v20, "initWithBundleIdentifier:contentType:isAutoPIPEnabled:invalidationBlock:", v9, a5, [v22 allowAutoPIP], &__block_literal_global_6_1);
  [(NSMutableDictionary *)self->_analyticsSessionAssistants setObject:v23 forKeyedSubscript:v8];
}

void __97__SBPIPAnalytics_pictureInPictureDidCreateAnalyticsSessionWithUUID_bundleIdentifier_contentType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  AnalyticsSendEventLazy();
}

- (void)pictureInPictureDidDestroyAnalyticsSessionWithUUID:(id)a3
{
  v4 = a3;
  v5 = SBLogPIP();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v5 pictureInPictureDidDestroyAnalyticsSessionWithUUID:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:v4];
  [v13 noteBecameInactiveAtTime:CFAbsoluteTimeGetCurrent()];

  v14 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:v4];
  [v14 invalidate];

  [(NSMutableDictionary *)self->_analyticsSessionAssistants setObject:0 forKeyedSubscript:v4];
}

- (void)pictureInPictureDidActivateAnalyticsSessionWithUUID:(id)a3 analyticsSourceUUID:(id)a4 automatically:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = SBLogPIP();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v10 pictureInPictureDidActivateAnalyticsSessionWithUUID:v11 analyticsSourceUUID:v12 automatically:v13, v14, v15, v16, v17];
  }

  v18 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:v9];
  [v18 noteBecameActiveAtTime:CFAbsoluteTimeGetCurrent()];

  v19 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:v9];

  [v19 noteStartedAutomatically:v5];
  v20 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:v8];

  [v20 noteBecameActiveAtTime:CFAbsoluteTimeGetCurrent()];
}

- (void)pictureInPictureDidDeactivateAnalyticsSessionWithUUID:(id)a3 analyticsSourceUUID:(id)a4 appStoppedSession:(BOOL)a5 restoredFullScreen:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = SBLogPIP();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v12 pictureInPictureDidDeactivateAnalyticsSessionWithUUID:v13 analyticsSourceUUID:v14 appStoppedSession:v15 restoredFullScreen:v16, v17, v18, v19];
  }

  v20 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:v11];
  [v20 noteBecameInactiveAtTime:CFAbsoluteTimeGetCurrent()];

  v21 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:v11];
  [v21 noteBecameUnstashedAtTime:CFAbsoluteTimeGetCurrent()];

  v22 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:v11];
  [v22 noteAppStoppedSession:v7];

  v23 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:v11];
  [v23 noteRestoredFullScreen:v6];

  v24 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:v11];
  [v24 invalidate];

  [(NSMutableDictionary *)self->_analyticsSessionAssistants setObject:0 forKeyedSubscript:v11];
  v25 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:v10];

  [v25 noteBecameInactiveAtTime:CFAbsoluteTimeGetCurrent()];
}

- (void)pictureInPictureDidChangeStashStateForAnalyticsSessionWithUUID:(id)a3 stashed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = SBLogPIP();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v7 pictureInPictureDidChangeStashStateForAnalyticsSessionWithUUID:v8 stashed:v9, v10, v11, v12, v13, v14];
  }

  v15 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:v6];
  Current = CFAbsoluteTimeGetCurrent();
  if (v4)
  {
    [v15 noteBecameStashedAtTime:Current];
  }

  else
  {
    [v15 noteBecameUnstashedAtTime:Current];
  }
}

@end