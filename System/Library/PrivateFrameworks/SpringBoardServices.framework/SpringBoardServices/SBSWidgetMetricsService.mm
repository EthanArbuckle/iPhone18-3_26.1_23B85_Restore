@interface SBSWidgetMetricsService
- (SBSWidgetHostingEnvironmentMetricsProviding)metricsProvider;
- (SBSWidgetMetricsService)init;
- (SBSWidgetMetricsService)initWithMetricsProvider:(id)provider;
- (id)previewMetricsSpecificationForBundleIdentifier:(id)identifier;
- (id)previewMetricsSpecificationForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier;
- (id)previewMetricsSpecificationsForBundleIdentifier:(id)identifier;
- (id)previewMetricsSpecificationsForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier;
- (id)systemMetricsForWidget:(id)widget;
- (id)systemMetricsForWidget:(id)widget inHostingEnvironment:(id)environment;
- (void)dealloc;
@end

@implementation SBSWidgetMetricsService

- (SBSWidgetMetricsService)init
{
  v3 = +[SBSWidgetMetricsServer checkOutServerInstance];
  v4 = [(SBSWidgetMetricsService *)self initWithMetricsProvider:v3];

  return v4;
}

- (SBSWidgetMetricsService)initWithMetricsProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = SBSWidgetMetricsService;
  v5 = [(SBSWidgetMetricsService *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_metricsProvider, providerCopy);
  }

  return v6;
}

- (void)dealloc
{
  metricsProvider = [(SBSWidgetMetricsService *)self metricsProvider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [SBSWidgetMetricsServer returnServerInstance:metricsProvider];
  }

  v4.receiver = self;
  v4.super_class = SBSWidgetMetricsService;
  [(SBSWidgetMetricsService *)&v4 dealloc];
}

- (id)systemMetricsForWidget:(id)widget
{
  widgetCopy = widget;
  metricsProvider = [(SBSWidgetMetricsService *)self metricsProvider];
  v6 = [metricsProvider systemMetricsForWidget:widgetCopy];

  return v6;
}

- (id)previewMetricsSpecificationForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  metricsProvider = [(SBSWidgetMetricsService *)self metricsProvider];
  v6 = [metricsProvider previewMetricsSpecificationForBundleIdentifier:identifierCopy];

  return v6;
}

- (id)previewMetricsSpecificationForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayContextCopy = displayContext;
  contextCopy = context;
  metricsProvider = [(SBSWidgetMetricsService *)self metricsProvider];
  v12 = [metricsProvider previewMetricsSpecificationForDeviceContext:contextCopy displayContext:displayContextCopy bundleIdentifier:identifierCopy];

  return v12;
}

- (id)systemMetricsForWidget:(id)widget inHostingEnvironment:(id)environment
{
  environmentCopy = environment;
  widgetCopy = widget;
  metricsProvider = [(SBSWidgetMetricsService *)self metricsProvider];
  v9 = [metricsProvider systemMetricsForWidget:widgetCopy inHostingEnvironment:environmentCopy];

  return v9;
}

- (id)previewMetricsSpecificationsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  metricsProvider = [(SBSWidgetMetricsService *)self metricsProvider];
  v6 = [metricsProvider previewMetricsSpecificationsForBundleIdentifier:identifierCopy];

  return v6;
}

- (id)previewMetricsSpecificationsForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayContextCopy = displayContext;
  contextCopy = context;
  metricsProvider = [(SBSWidgetMetricsService *)self metricsProvider];
  v12 = [metricsProvider previewMetricsSpecificationsForDeviceContext:contextCopy displayContext:displayContextCopy bundleIdentifier:identifierCopy];

  return v12;
}

- (SBSWidgetHostingEnvironmentMetricsProviding)metricsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsProvider);

  return WeakRetained;
}

@end