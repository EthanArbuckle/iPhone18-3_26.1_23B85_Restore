@interface SiriAnalyticsRawUnifiedStream
- (void)prune;
- (void)sendWithAnyEvent:(id)event;
@end

@implementation SiriAnalyticsRawUnifiedStream

- (void)sendWithAnyEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1D988665C(eventCopy);
}

- (void)prune
{
  selfCopy = self;
  sub_1D98867DC();
}

@end