@interface WFEventTracker
+ (id)sharedTracker;
- (WFEventTracker)init;
- (void)trackEvent:(id)a3;
@end

@implementation WFEventTracker

+ (id)sharedTracker
{
  if (sharedTracker_onceToken != -1)
  {
    dispatch_once(&sharedTracker_onceToken, &__block_literal_global_42872);
  }

  v3 = sharedTracker_eventTracker;

  return v3;
}

void __31__WFEventTracker_sharedTracker__block_invoke()
{
  v0 = objc_alloc_init(WFEventTracker);
  v1 = sharedTracker_eventTracker;
  sharedTracker_eventTracker = v0;
}

- (WFEventTracker)init
{
  v3.receiver = self;
  v3.super_class = WFEventTracker;
  return [(WFEventTracker *)&v3 init];
}

- (void)trackEvent:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = getWFEventTrackerLogObject();
  v7 = os_signpost_id_generate(v6);

  v8 = getWFEventTrackerLogObject();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138412290;
    v29 = objc_opt_class();
    v10 = v29;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "TrackEvent", "event=%{signpost.description:attribute}@", buf, 0xCu);
  }

  if (!v5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"WFEventTracker.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v11 = objc_opt_class();
  if (([v11 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFEventTracker.m" lineNumber:43 description:{@"Invalid event tracking attempted with eventClass: %@", objc_opt_class()}];
  }

  v12 = [v5 coreAnalyticsKey];

  v13 = getWFEventTrackerLogObject();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = [v5 coreAnalyticsKey];
      v18 = [v5 serializableEvent];
      *buf = 136315906;
      v29 = "[WFEventTracker trackEvent:]";
      v30 = 2114;
      v31 = v15;
      v32 = 2114;
      v33 = v17;
      v34 = 2114;
      v35 = v18;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s Logging event to CoreAnalytics %{public}@ using key %{public}@ %{public}@", buf, 0x2Au);
    }

    v19 = [v5 coreAnalyticsKey];
    v27 = v5;
    AnalyticsSendEventLazy();

    v14 = v27;
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v20 = objc_opt_class();
    *buf = 136315394;
    v29 = "[WFEventTracker trackEvent:]";
    v30 = 2114;
    v31 = v20;
    v21 = v20;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Unable to log event %{public}@ - invalid key", buf, 0x16u);
  }

  v22 = getWFEventTrackerLogObject();
  v23 = v22;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v23, OS_SIGNPOST_INTERVAL_END, v7, "TrackEvent", "", buf, 2u);
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end