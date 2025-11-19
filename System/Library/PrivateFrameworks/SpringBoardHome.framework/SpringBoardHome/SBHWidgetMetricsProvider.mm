@interface SBHWidgetMetricsProvider
- (SBHWidgetMetricsProviderDelegate)delegate;
- (id)previewMetricsSpecificationForBundleIdentifier:(id)a3;
- (id)previewMetricsSpecificationForDeviceContext:(id)a3 displayContext:(id)a4 bundleIdentifier:(id)a5;
- (id)systemDefaultMetricsSpecification;
- (id)systemDefaultMetricsSpecificationForFamilies:(unint64_t)a3;
- (id)systemMetricsForFamily:(int64_t)a3;
- (id)systemMetricsForWidget:(id)a3;
@end

@implementation SBHWidgetMetricsProvider

- (SBHWidgetMetricsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)systemDefaultMetricsSpecification
{
  v2 = [(SBHWidgetMetricsProvider *)self delegate];
  v3 = [v2 listLayoutProvider];

  SBHScreenTypeForCurrentDevice();
  v4 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(v3);

  return v4;
}

- (id)systemDefaultMetricsSpecificationForFamilies:(unint64_t)a3
{
  v3 = [(SBHWidgetMetricsProvider *)self delegate];
  v4 = [v3 listLayoutProvider];

  SBHScreenTypeForCurrentDevice();
  v5 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(v4);

  return v5;
}

- (id)systemMetricsForFamily:(int64_t)a3
{
  v4 = [(SBHWidgetMetricsProvider *)self delegate];
  v5 = [v4 listLayoutProvider];

  v6 = SBHScreenTypeForCurrentDevice();
  v7 = SBHWidgetMetricsForFamilyWithLayoutProviderAndScreenType(a3, v5, v6);

  return v7;
}

- (id)systemMetricsForWidget:(id)a3
{
  v4 = [a3 family];

  return [(SBHWidgetMetricsProvider *)self systemMetricsForFamily:v4];
}

- (id)previewMetricsSpecificationForBundleIdentifier:(id)a3
{
  v3 = [(SBHWidgetMetricsProvider *)self delegate];
  v4 = [v3 listLayoutProvider];

  SBHScreenTypeForCurrentDevice();
  v5 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(v4);

  return v5;
}

- (id)previewMetricsSpecificationForDeviceContext:(id)a3 displayContext:(id)a4 bundleIdentifier:(id)a5
{
  v6 = SBHScreenTypeForDeviceAndDisplayContexts(a3, a4);
  v7 = [(SBHWidgetMetricsProvider *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v7 widgetMetricsProvider:self listLayoutProviderForScreenType:v6], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [v7 listLayoutProvider];
  }

  v9 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(v8);

  return v9;
}

@end