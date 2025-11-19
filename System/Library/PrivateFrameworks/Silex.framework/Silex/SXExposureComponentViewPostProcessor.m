@interface SXExposureComponentViewPostProcessor
- (SXExposureComponentViewPostProcessor)initWithExposureMonitor:(id)a3 analyticsReportingProvider:(id)a4;
- (void)processComponent:(id)a3 view:(id)a4;
@end

@implementation SXExposureComponentViewPostProcessor

- (SXExposureComponentViewPostProcessor)initWithExposureMonitor:(id)a3 analyticsReportingProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SXExposureComponentViewPostProcessor;
  v9 = [(SXExposureComponentViewPostProcessor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_monitor, a3);
    objc_storeStrong(&v10->_analyticsReporterProvider, a4);
    v11 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    exposedEvents = v10->_exposedEvents;
    v10->_exposedEvents = v11;
  }

  return v10;
}

- (void)processComponent:(id)a3 view:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 analytics];
  v9 = [v8 allKeys];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(SXExposureComponentViewPostProcessor *)self exposedEvents];
    [v11 removeObjectForKey:v7];

    v12 = [(SXExposureComponentViewPostProcessor *)self monitor];
    [v12 stopTrackingExposureOfComponentView:v7];

    objc_initWeak(&location, self);
    v13 = [(SXExposureComponentViewPostProcessor *)self monitor];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__SXExposureComponentViewPostProcessor_processComponent_view___block_invoke;
    v14[3] = &unk_1E84FE860;
    objc_copyWeak(&v17, &location);
    v15 = v6;
    v16 = v7;
    [v13 onExposureOf:v16 then:v14];

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