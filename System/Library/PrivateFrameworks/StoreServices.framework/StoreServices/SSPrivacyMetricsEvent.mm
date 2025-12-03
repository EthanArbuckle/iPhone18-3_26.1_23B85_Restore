@interface SSPrivacyMetricsEvent
- (BOOL)acknowledged;
- (BOOL)displayed;
- (SSPrivacyMetricsEvent)init;
- (void)setAcknowledged:(BOOL)acknowledged;
- (void)setAcknowledgmentIdentifier:(id)identifier;
- (void)setDisplayed:(BOOL)displayed;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setAcknowledged:(BOOL)acknowledged
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:acknowledged];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"acknowledged"];
}

- (void)setAcknowledgmentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SSPrivacyController storePrivacyIdentifiers];
  if ([v4 containsObject:identifierCopy])
  {

LABEL_4:
    v7 = @"Store";
    selfCopy2 = self;
    goto LABEL_6;
  }

  v5 = +[SSPrivacyController appStorePrivacyIdentifiers];
  v6 = [v5 containsObject:identifierCopy];

  if (v6)
  {
    goto LABEL_4;
  }

  selfCopy2 = self;
  v7 = identifierCopy;
LABEL_6:
  [(SSMetricsMutableEvent *)selfCopy2 setProperty:v7 forBodyKey:@"acknowledgmentGroup"];
}

- (void)setDisplayed:(BOOL)displayed
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:displayed];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"displayed"];
}

@end