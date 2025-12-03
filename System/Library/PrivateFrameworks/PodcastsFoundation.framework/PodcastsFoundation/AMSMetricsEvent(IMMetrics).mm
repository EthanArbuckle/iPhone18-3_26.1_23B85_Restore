@interface AMSMetricsEvent(IMMetrics)
+ (IMClickAMSMetricsEvent)im_clickEventWithDefaultTopic;
+ (IMPageAMSMetricsEvent)im_pageEventWithDefaultTopic;
+ (id)im_defaultTopicForEvents;
+ (id)im_eventWithDefaultTopic;
+ (id)im_eventWithDefaultTopicAndEventType:()IMMetrics;
+ (id)im_eventWithTopic:()IMMetrics eventType:;
- (id)shortDescription;
@end

@implementation AMSMetricsEvent(IMMetrics)

+ (id)im_defaultTopicForEvents
{
  v0 = +[IMMetrics defaultMetricsController];
  topic = [v0 topic];

  if ([topic length])
  {
    v2 = topic;
  }

  else
  {
    v3 = _IMStoreLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_ERROR, "Error: No default topic has been registered with the registered default controller in IMMetrics", v5, 2u);
    }

    v2 = 0;
  }

  return v2;
}

- (id)shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  topic = [self topic];
  v4 = [self propertyForBodyKey:@"eventType"];
  v5 = [self propertyForBodyKey:@"pageType"];
  v6 = [v2 stringWithFormat:@"%@, %@, %@", topic, v4, v5];

  return v6;
}

+ (id)im_eventWithDefaultTopic
{
  v0 = +[IMMetrics defaultMetricsController];
  topic = [v0 topic];

  if ([topic length])
  {
    v2 = [objc_alloc(MEMORY[0x1E698CA08]) initWithTopic:topic];
  }

  else
  {
    v3 = _IMStoreLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_ERROR, "Error: No topic has been registered with IMMetrics default controller.", v5, 2u);
    }

    v2 = 0;
  }

  return v2;
}

+ (IMClickAMSMetricsEvent)im_clickEventWithDefaultTopic
{
  v0 = objc_alloc_init(IMClickAMSMetricsEvent);

  return v0;
}

+ (IMPageAMSMetricsEvent)im_pageEventWithDefaultTopic
{
  v0 = objc_alloc_init(IMPageAMSMetricsEvent);

  return v0;
}

+ (id)im_eventWithDefaultTopicAndEventType:()IMMetrics
{
  v3 = a3;
  im_eventWithDefaultTopic = [MEMORY[0x1E698CA08] im_eventWithDefaultTopic];
  v5 = im_eventWithDefaultTopic;
  if (im_eventWithDefaultTopic)
  {
    [im_eventWithDefaultTopic setProperty:v3 forBodyKey:@"eventType"];
  }

  return v5;
}

+ (id)im_eventWithTopic:()IMMetrics eventType:
{
  v5 = a4;
  v6 = MEMORY[0x1E698CA08];
  v7 = a3;
  v8 = [[v6 alloc] initWithTopic:v7];

  if (v8)
  {
    [v8 setProperty:v5 forBodyKey:@"eventType"];
  }

  return v8;
}

@end