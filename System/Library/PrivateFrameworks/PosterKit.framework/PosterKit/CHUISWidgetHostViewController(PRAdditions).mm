@interface CHUISWidgetHostViewController(PRAdditions)
- (id)pr_initWithComplicationDescriptor:()PRAdditions;
@end

@implementation CHUISWidgetHostViewController(PRAdditions)

- (id)pr_initWithComplicationDescriptor:()PRAdditions
{
  v4 = a3;
  v5 = +[PRWidgetMetricsProvider sharedInstance];
  v6 = [v4 widget];
  v7 = [v5 systemMetricsForWidget:v6];

  v8 = a1;
  v9 = [v4 widget];
  v10 = [v4 uniqueIdentifier];

  v11 = [v8 initWithWidget:v9 metrics:v7 widgetConfigurationIdentifier:v10];

  return v11;
}

@end