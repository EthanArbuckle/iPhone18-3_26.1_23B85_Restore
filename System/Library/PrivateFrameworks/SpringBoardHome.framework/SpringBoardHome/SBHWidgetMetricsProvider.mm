@interface SBHWidgetMetricsProvider
- (SBHWidgetMetricsProviderDelegate)delegate;
- (id)previewMetricsSpecificationForBundleIdentifier:(id)identifier;
- (id)previewMetricsSpecificationForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier;
- (id)systemDefaultMetricsSpecification;
- (id)systemDefaultMetricsSpecificationForFamilies:(unint64_t)families;
- (id)systemMetricsForFamily:(int64_t)family;
- (id)systemMetricsForWidget:(id)widget;
@end

@implementation SBHWidgetMetricsProvider

- (SBHWidgetMetricsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)systemDefaultMetricsSpecification
{
  delegate = [(SBHWidgetMetricsProvider *)self delegate];
  listLayoutProvider = [delegate listLayoutProvider];

  SBHScreenTypeForCurrentDevice();
  v4 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(listLayoutProvider);

  return v4;
}

- (id)systemDefaultMetricsSpecificationForFamilies:(unint64_t)families
{
  delegate = [(SBHWidgetMetricsProvider *)self delegate];
  listLayoutProvider = [delegate listLayoutProvider];

  SBHScreenTypeForCurrentDevice();
  v5 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(listLayoutProvider);

  return v5;
}

- (id)systemMetricsForFamily:(int64_t)family
{
  delegate = [(SBHWidgetMetricsProvider *)self delegate];
  listLayoutProvider = [delegate listLayoutProvider];

  v6 = SBHScreenTypeForCurrentDevice();
  v7 = SBHWidgetMetricsForFamilyWithLayoutProviderAndScreenType(family, listLayoutProvider, v6);

  return v7;
}

- (id)systemMetricsForWidget:(id)widget
{
  family = [widget family];

  return [(SBHWidgetMetricsProvider *)self systemMetricsForFamily:family];
}

- (id)previewMetricsSpecificationForBundleIdentifier:(id)identifier
{
  delegate = [(SBHWidgetMetricsProvider *)self delegate];
  listLayoutProvider = [delegate listLayoutProvider];

  SBHScreenTypeForCurrentDevice();
  v5 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(listLayoutProvider);

  return v5;
}

- (id)previewMetricsSpecificationForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier
{
  v6 = SBHScreenTypeForDeviceAndDisplayContexts(context, displayContext);
  delegate = [(SBHWidgetMetricsProvider *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate widgetMetricsProvider:self listLayoutProviderForScreenType:v6], (listLayoutProvider = objc_claimAutoreleasedReturnValue()) == 0))
  {
    listLayoutProvider = [delegate listLayoutProvider];
  }

  v9 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(listLayoutProvider);

  return v9;
}

@end