@interface IntentHandlerCoreAnalyticsLogger
- (void)logSiriMatchEvent:(id)event matchesByIdCount:(id)count matchesByNameCount:(id)nameCount siriLocale:(id)locale;
@end

@implementation IntentHandlerCoreAnalyticsLogger

- (void)logSiriMatchEvent:(id)event matchesByIdCount:(id)count matchesByNameCount:(id)nameCount siriLocale:(id)locale
{
  eventCopy = event;
  countCopy = count;
  nameCountCopy = nameCount;
  localeCopy = locale;
  v9 = localeCopy;
  v10 = nameCountCopy;
  v11 = countCopy;
  v12 = eventCopy;
  AnalyticsSendEventLazy();
}

@end