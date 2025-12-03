@interface SXExposureComponentViewPostProcessor
- (SXExposureComponentViewPostProcessor)initWithExposureMonitor:(id)monitor analyticsReportingProvider:(id)provider;
- (void)processComponent:(id)component view:(id)view;
@end

@implementation SXExposureComponentViewPostProcessor

- (SXExposureComponentViewPostProcessor)initWithExposureMonitor:(id)monitor analyticsReportingProvider:(id)provider
{
  monitorCopy = monitor;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = SXExposureComponentViewPostProcessor;
  v9 = [(SXExposureComponentViewPostProcessor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_monitor, monitor);
    objc_storeStrong(&v10->_analyticsReporterProvider, provider);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    exposedEvents = v10->_exposedEvents;
    v10->_exposedEvents = weakToStrongObjectsMapTable;
  }

  return v10;
}

- (void)processComponent:(id)component view:(id)view
{
  componentCopy = component;
  viewCopy = view;
  analytics = [componentCopy analytics];
  allKeys = [analytics allKeys];
  v10 = [allKeys count];

  if (v10)
  {
    exposedEvents = [(SXExposureComponentViewPostProcessor *)self exposedEvents];
    [exposedEvents removeObjectForKey:viewCopy];

    monitor = [(SXExposureComponentViewPostProcessor *)self monitor];
    [monitor stopTrackingExposureOfComponentView:viewCopy];

    objc_initWeak(&location, self);
    monitor2 = [(SXExposureComponentViewPostProcessor *)self monitor];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__SXExposureComponentViewPostProcessor_processComponent_view___block_invoke;
    v14[3] = &unk_1E84FE860;
    objc_copyWeak(&v17, &location);
    v15 = componentCopy;
    v16 = viewCopy;
    [monitor2 onExposureOf:v16 then:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __62__SXExposureComponentViewPostProcessor_processComponent_view___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2 == 2)
    {
      v10 = WeakRetained;
      v7 = [WeakRetained exposedEvents];
      v5 = [v7 objectForKey:*(a1 + 40)];

      if (!v5)
      {
LABEL_8:

        WeakRetained = v10;
        goto LABEL_9;
      }

      [(SXAnalyticsEvent *)v5 determineEndDate];
      v8 = [v10 analyticsReporterProvider];
      v9 = [v8 analyticsReporting];
      [v9 reportEvent:v5];

      v6 = [v10 exposedEvents];
      [v6 removeObjectForKey:*(a1 + 40)];
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_9;
      }

      v10 = WeakRetained;
      v5 = [[SXComponentExposureEvent alloc] initWithComponent:*(a1 + 32)];
      v6 = [v10 exposedEvents];
      [v6 setObject:v5 forKey:*(a1 + 40)];
    }

    goto LABEL_8;
  }

LABEL_9:
}

@end