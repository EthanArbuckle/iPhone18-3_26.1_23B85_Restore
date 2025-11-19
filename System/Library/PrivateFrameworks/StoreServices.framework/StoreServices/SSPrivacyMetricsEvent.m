@interface SSPrivacyMetricsEvent
- (BOOL)acknowledged;
- (BOOL)displayed;
- (SSPrivacyMetricsEvent)init;
- (void)setAcknowledged:(BOOL)a3;
- (void)setAcknowledgmentIdentifier:(id)a3;
- (void)setDisplayed:(BOOL)a3;
@end

@implementation SSPrivacyMetricsEvent

- (SSPrivacyMetricsEvent)init
{
  v5.receiver = self;
  v5.super_class = SSPrivacyMetricsEvent;
  v2 = [(SSMetricsMutableEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setTopic:@"xp_amp_gdpr"];
  }

  return v3;
}

- (BOOL)acknowledged
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"acknowledged"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)displayed
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"displayed"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setAcknowledged:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"acknowledged"];
}

- (void)setAcknowledgmentIdentifier:(id)a3
{
  v9 = a3;
  v4 = +[SSPrivacyController storePrivacyIdentifiers];
  if ([v4 containsObject:v9])
  {

LABEL_4:
    v7 = @"Store";
    v8 = self;
    goto LABEL_6;
  }

  v5 = +[SSPrivacyController appStorePrivacyIdentifiers];
  v6 = [v5 containsObject:v9];

  if (v6)
  {
    goto LABEL_4;
  }

  v8 = self;
  v7 = v9;
LABEL_6:
  [(SSMetricsMutableEvent *)v8 setProperty:v7 forBodyKey:@"acknowledgmentGroup"];
}

- (void)setDisplayed:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"displayed"];
}

@end