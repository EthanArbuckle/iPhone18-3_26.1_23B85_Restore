@interface SKUIMetricsUtilities
+ (BOOL)shouldLogTimingMetrics;
+ (BOOL)showEventNotifications;
+ (BOOL)trackAllEvents;
+ (double)timeIntervalFromJSTime:(id)time;
+ (id)jsTimeFromTimeInterval:(double)interval;
+ (id)newErrorPageEvent;
+ (id)newErrorRetryClickEvent;
+ (void)newErrorPageEvent;
+ (void)newErrorRetryClickEvent;
@end

@implementation SKUIMetricsUtilities

+ (BOOL)showEventNotifications
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        [(SKUIMetricsUtilities *)v2 showEventNotifications:v3];
      }
    }
  }

  if (showEventNotifications_onceToken != -1)
  {
    +[SKUIMetricsUtilities showEventNotifications];
  }

  return showEventNotifications_showEventNotifications;
}

uint64_t __46__SKUIMetricsUtilities_showEventNotifications__block_invoke()
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SKUIMetricsShowEventNotifications", *MEMORY[0x277D6A708], 0);
  result = MGGetBoolAnswer();
  showEventNotifications_showEventNotifications = (AppBooleanValue != 0) & result;
  return result;
}

+ (BOOL)trackAllEvents
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        [(SKUIMetricsUtilities *)v2 trackAllEvents:v3];
      }
    }
  }

  if (trackAllEvents_onceToken != -1)
  {
    +[SKUIMetricsUtilities trackAllEvents];
  }

  return trackAllEvents_trackAllEvents;
}

uint64_t __38__SKUIMetricsUtilities_trackAllEvents__block_invoke()
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SKUIMetricsTrackAll", *MEMORY[0x277D6A708], 0);
  result = MGGetBoolAnswer();
  trackAllEvents_trackAllEvents = (AppBooleanValue != 0) & result;
  return result;
}

+ (BOOL)shouldLogTimingMetrics
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        [(SKUIMetricsUtilities *)v2 shouldLogTimingMetrics:v3];
      }
    }
  }

  return SSDebugShouldLogNetworkTimingMetrics();
}

+ (double)timeIntervalFromJSTime:(id)time
{
  timeCopy = time;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        [(SKUIMetricsUtilities *)v4 timeIntervalFromJSTime:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  [timeCopy doubleValue];
  v13 = v12 / 1000.0;

  return v13;
}

+ (id)jsTimeFromTimeInterval:(double)interval
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        [(SKUIMetricsUtilities *)v4 jsTimeFromTimeInterval:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:(interval * 1000.0)];

  return v12;
}

+ (id)newErrorPageEvent
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIMetricsUtilities newErrorPageEvent];
  }

  v2 = objc_alloc_init(MEMORY[0x277D69BB0]);
  [v2 setPageDescription:@"Error"];
  return v2;
}

+ (id)newErrorRetryClickEvent
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIMetricsUtilities newErrorRetryClickEvent];
  }

  v2 = objc_alloc_init(MEMORY[0x277D69B68]);
  [v2 setPageDescription:@"Error"];
  [v2 setActionType:@"retry"];
  [v2 setTargetType:*MEMORY[0x277D6A4D0]];
  return v2;
}

+ (void)newErrorPageEvent
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIMetricsUtilities newErrorPageEvent]";
}

+ (void)newErrorRetryClickEvent
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIMetricsUtilities newErrorRetryClickEvent]";
}

@end