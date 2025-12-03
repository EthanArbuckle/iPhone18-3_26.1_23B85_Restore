@interface ACCAnalytics
- (void)logACCAnalyticsForEventNamed:(id)named withAttributes:(id)attributes;
@end

@implementation ACCAnalytics

- (void)logACCAnalyticsForEventNamed:(id)named withAttributes:(id)attributes
{
  if (attributes)
  {
    [(ACCAnalyticsLogger *)self logEventNamed:named withAttributes:?];
  }
}

@end