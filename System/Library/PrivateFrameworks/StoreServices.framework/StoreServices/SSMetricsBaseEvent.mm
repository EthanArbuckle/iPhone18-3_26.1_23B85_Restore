@interface SSMetricsBaseEvent
- (BOOL)isBlacklistedByConfiguration:(id)configuration;
- (SSMetricsBaseEvent)init;
- (id)description;
- (unint64_t)pageID;
- (void)setPageID:(unint64_t)d;
@end

@implementation SSMetricsBaseEvent

- (SSMetricsBaseEvent)init
{
  v9.receiver = self;
  v9.super_class = SSMetricsBaseEvent;
  v2 = [(SSMetricsMutableEvent *)&v9 init];
  if (v2)
  {
    if (init_sToken != -1)
    {
      [SSMetricsBaseEvent init];
    }

    v3 = [__mainScreenAnswers objectForKey:@"main-screen-width"];
    [(SSMetricsMutableEvent *)v2 setProperty:v3 forBodyKey:@"screenWidth"];

    v4 = [__mainScreenAnswers objectForKey:@"main-screen-height"];
    [(SSMetricsMutableEvent *)v2 setProperty:v4 forBodyKey:@"screenHeight"];

    v5 = [__mainScreenAnswers objectForKey:@"main-screen-scale"];
    [(SSMetricsMutableEvent *)v2 setProperty:v5 forBodyKey:@"pixelRatio"];

    v6 = [__mainScreenAnswers objectForKey:@"main-screen-width"];
    [(SSMetricsMutableEvent *)v2 setProperty:v6 forBodyKey:@"windowInnerWidth"];

    v7 = [__mainScreenAnswers objectForKey:@"main-screen-height"];
    [(SSMetricsMutableEvent *)v2 setProperty:v7 forBodyKey:@"windowInnerHeight"];
  }

  return v2;
}

void __26__SSMetricsBaseEvent_init__block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"main-screen-width";
  v2[1] = @"main-screen-height";
  v2[2] = @"main-screen-scale";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];
  v0 = MGCopyMultipleAnswers();
  v1 = __mainScreenAnswers;
  __mainScreenAnswers = v0;
}

- (BOOL)isBlacklistedByConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = SSMetricsBaseEvent;
  return [(SSMetricsEvent *)&v4 isBlacklistedByConfiguration:configuration];
}

- (unint64_t)pageID
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"pageId"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (void)setPageID:(unint64_t)d
{
  if (d)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"pageId"];
  }

  else
  {

    [SSMetricsMutableEvent setProperty:"setProperty:forBodyKey:" forBodyKey:?];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SSMetricsBaseEvent;
  v4 = [(SSMetricsBaseEvent *)&v9 description];
  eventType = [(SSMetricsMutableEvent *)self eventType];
  eventVersion = [(SSMetricsMutableEvent *)self eventVersion];
  v7 = [v3 stringWithFormat:@"%@ -- [Type: %@] [eVersion: %@]", v4, eventType, eventVersion];

  return v7;
}

@end