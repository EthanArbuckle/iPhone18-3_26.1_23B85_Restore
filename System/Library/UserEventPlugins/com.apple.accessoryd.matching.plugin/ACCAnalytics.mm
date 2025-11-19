@interface ACCAnalytics
- (void)logACCAnalyticsForEventNamed:(id)a3 withAttributes:(id)a4;
@end

@implementation ACCAnalytics

- (void)logACCAnalyticsForEventNamed:(id)a3 withAttributes:(id)a4
{
  if (a4)
  {
    [(ACCAnalyticsLogger *)self logEventNamed:a3 withAttributes:?];
  }
}

@end