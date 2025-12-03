@interface SXVideoAnalyticsRouter
- (SXVideoAnalyticsRouter)initWithInitiatedPlaybackLocation:(unint64_t)location analyticsReporter:(id)reporter;
- (id)analyticsReporterForEvent:(id)event;
- (id)reporterForPlaybackLocation:(unint64_t)location;
- (void)reportEvent:(id)event;
- (void)setAnalyticsReporter:(id)reporter forPlaybackLocation:(unint64_t)location;
@end

@implementation SXVideoAnalyticsRouter

- (SXVideoAnalyticsRouter)initWithInitiatedPlaybackLocation:(unint64_t)location analyticsReporter:(id)reporter
{
  reporterCopy = reporter;
  v11.receiver = self;
  v11.super_class = SXVideoAnalyticsRouter;
  v7 = [(SXVideoAnalyticsRouter *)&v11 init];
  if (v7)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    reporters = v7->_reporters;
    v7->_reporters = dictionary;

    v7->_currentPlaybackLocation = location;
    v7->_initiatedPlaybackLocation = location;
    [(SXVideoAnalyticsRouter *)v7 setAnalyticsReporter:reporterCopy forPlaybackLocation:location];
  }

  return v7;
}

- (void)setAnalyticsReporter:(id)reporter forPlaybackLocation:(unint64_t)location
{
  if (reporter)
  {
    reporterCopy = reporter;
    reporters = [(SXVideoAnalyticsRouter *)self reporters];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
    [reporters setObject:reporterCopy forKey:v7];
  }
}

- (id)reporterForPlaybackLocation:(unint64_t)location
{
  reporters = [(SXVideoAnalyticsRouter *)self reporters];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
  v6 = [reporters objectForKey:v5];

  return v6;
}

- (void)reportEvent:(id)event
{
  eventCopy = event;
  v5 = [(SXVideoAnalyticsRouter *)self analyticsReporterForEvent:eventCopy];
  [v5 reportEvent:eventCopy];
}

- (id)analyticsReporterForEvent:(id)event
{
  eventCopy = event;
  v5 = [(SXVideoAnalyticsRouter *)self reporterForPlaybackLocation:[(SXVideoAnalyticsRouter *)self currentPlaybackLocation]];
  currentPlaybackLocation = [(SXVideoAnalyticsRouter *)self currentPlaybackLocation];
  if (currentPlaybackLocation != [(SXVideoAnalyticsRouter *)self initiatedPlaybackLocation]&& ![(SXVideoAnalyticsRouter *)self hasReroutedInitiatedPlaybackEvent])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [eventCopy userAction] == 4)
    {
      v7 = [(SXVideoAnalyticsRouter *)self reporterForPlaybackLocation:[(SXVideoAnalyticsRouter *)self initiatedPlaybackLocation]];

      [(SXVideoAnalyticsRouter *)self setHasReroutedInitiatedPlaybackEvent:1];
      v5 = v7;
    }
  }

  return v5;
}

@end