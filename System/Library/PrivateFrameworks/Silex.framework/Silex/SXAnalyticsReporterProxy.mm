@interface SXAnalyticsReporterProxy
- (SXAnalyticsReporterProxy)initWithAnalyticsReporter:(id)reporter;
- (SXAnalyticsReporting)analyticsReporter;
- (void)reportEvent:(id)event;
@end

@implementation SXAnalyticsReporterProxy

- (SXAnalyticsReporterProxy)initWithAnalyticsReporter:(id)reporter
{
  reporterCopy = reporter;
  v8.receiver = self;
  v8.super_class = SXAnalyticsReporterProxy;
  v5 = [(SXAnalyticsReporterProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_analyticsReporter, reporterCopy);
  }

  return v6;
}

- (void)reportEvent:(id)event
{
  v9 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = SXAnalyticsLog;
  if (os_log_type_enabled(SXAnalyticsLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = eventCopy;
    _os_log_impl(&dword_1D825C000, v5, OS_LOG_TYPE_DEFAULT, "Reporting analytics event, event=%{public}@", &v7, 0xCu);
  }

  analyticsReporter = [(SXAnalyticsReporterProxy *)self analyticsReporter];
  [analyticsReporter reportEvent:eventCopy];
}

- (SXAnalyticsReporting)analyticsReporter
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsReporter);

  return WeakRetained;
}

@end