@interface CHUISWidgetHostViewController(PRAdditions)
- (id)pr_initWithComplicationDescriptor:()PRAdditions;
@end

@implementation CHUISWidgetHostViewController(PRAdditions)

- (id)pr_initWithComplicationDescriptor:()PRAdditions
{
  v4 = a3;
  v5 = +[PRWidgetMetricsProvider sharedInstance];
  widget = [v4 widget];
  v7 = [v5 systemMetricsForWidget:widget];

  selfCopy = self;
  widget2 = [v4 widget];
  uniqueIdentifier = [v4 uniqueIdentifier];

  v11 = [selfCopy initWithWidget:widget2 metrics:v7 widgetConfigurationIdentifier:uniqueIdentifier];

  return v11;
}

@end