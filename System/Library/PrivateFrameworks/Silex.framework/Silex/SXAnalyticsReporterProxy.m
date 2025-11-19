@interface SXAnalyticsReporterProxy
- (SXAnalyticsReporterProxy)initWithAnalyticsReporter:(id)a3;
- (SXAnalyticsReporting)analyticsReporter;
- (void)reportEvent:(id)a3;
@end

@implementation SXAnalyticsReporterProxy

- (SXAnalyticsReporterProxy)initWithAnalyticsReporter:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SXAnalyticsReporterProxy;
  v5 = [(SXAnalyticsReporterProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_analyticsReporter, v4);
  }

  return v6;
}

- (void)reportEvent:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SXAnalyticsLog;
  if (os_log_type_enabled(SXAnalyticsLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1D825C000, v5, OS_LOG_TYPE_DEFAULT, "Reporting analytics event, event=%{public}@", &v7, 0xCu);
  }

  v6 = [(SXAnalyticsReporterProxy *)self analyticsReporter];
  [v6 reportEvent:v4];
}

- (SXAnalyticsReporting)analyticsReporter
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsReporter);

  return WeakRetained;
}

@end