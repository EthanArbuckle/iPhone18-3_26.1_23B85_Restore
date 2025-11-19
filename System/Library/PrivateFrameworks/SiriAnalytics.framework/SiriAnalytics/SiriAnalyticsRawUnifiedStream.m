@interface SiriAnalyticsRawUnifiedStream
- (void)prune;
- (void)sendWithAnyEvent:(id)a3;
@end

@implementation SiriAnalyticsRawUnifiedStream

- (void)sendWithAnyEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D988665C(v4);
}

- (void)prune
{
  v2 = self;
  sub_1D98867DC();
}

@end