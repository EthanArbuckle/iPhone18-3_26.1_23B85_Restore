@interface IntentHandlerCoreAnalyticsLogger
- (void)logSiriMatchEvent:(id)a3 matchesByIdCount:(id)a4 matchesByNameCount:(id)a5 siriLocale:(id)a6;
@end

@implementation IntentHandlerCoreAnalyticsLogger

- (void)logSiriMatchEvent:(id)a3 matchesByIdCount:(id)a4 matchesByNameCount:(id)a5 siriLocale:(id)a6
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v9 = v16;
  v10 = v15;
  v11 = v14;
  v12 = v13;
  AnalyticsSendEventLazy();
}

@end