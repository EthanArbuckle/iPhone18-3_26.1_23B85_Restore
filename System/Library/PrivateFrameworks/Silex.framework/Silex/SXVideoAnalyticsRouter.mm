@interface SXVideoAnalyticsRouter
- (SXVideoAnalyticsRouter)initWithInitiatedPlaybackLocation:(unint64_t)a3 analyticsReporter:(id)a4;
- (id)analyticsReporterForEvent:(id)a3;
- (id)reporterForPlaybackLocation:(unint64_t)a3;
- (void)reportEvent:(id)a3;
- (void)setAnalyticsReporter:(id)a3 forPlaybackLocation:(unint64_t)a4;
@end

@implementation SXVideoAnalyticsRouter

- (SXVideoAnalyticsRouter)initWithInitiatedPlaybackLocation:(unint64_t)a3 analyticsReporter:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = SXVideoAnalyticsRouter;
  v7 = [(SXVideoAnalyticsRouter *)&v11 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    reporters = v7->_reporters;
    v7->_reporters = v8;

    v7->_currentPlaybackLocation = a3;
    v7->_initiatedPlaybackLocation = a3;
    [(SXVideoAnalyticsRouter *)v7 setAnalyticsReporter:v6 forPlaybackLocation:a3];
  }

  return v7;
}

- (void)setAnalyticsReporter:(id)a3 forPlaybackLocation:(unint64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v8 = [(SXVideoAnalyticsRouter *)self reporters];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v8 setObject:v6 forKey:v7];
  }
}

- (id)reporterForPlaybackLocation:(unint64_t)a3
{
  v4 = [(SXVideoAnalyticsRouter *)self reporters];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (void)reportEvent:(id)a3
{
  v4 = a3;
  v5 = [(SXVideoAnalyticsRouter *)self analyticsReporterForEvent:v4];
  [v5 reportEvent:v4];
}

- (id)analyticsReporterForEvent:(id)a3
{
  v4 = a3;
  v5 = [(SXVideoAnalyticsRouter *)self reporterForPlaybackLocation:[(SXVideoAnalyticsRouter *)self currentPlaybackLocation]];
  v6 = [(SXVideoAnalyticsRouter *)self currentPlaybackLocation];
  if (v6 != [(SXVideoAnalyticsRouter *)self initiatedPlaybackLocation]&& ![(SXVideoAnalyticsRouter *)self hasReroutedInitiatedPlaybackEvent])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 userAction] == 4)
    {
      v7 = [(SXVideoAnalyticsRouter *)self reporterForPlaybackLocation:[(SXVideoAnalyticsRouter *)self initiatedPlaybackLocation]];

      [(SXVideoAnalyticsRouter *)self setHasReroutedInitiatedPlaybackEvent:1];
      v5 = v7;
    }
  }

  return v5;
}

@end