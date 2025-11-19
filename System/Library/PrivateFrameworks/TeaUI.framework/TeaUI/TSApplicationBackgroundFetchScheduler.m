@interface TSApplicationBackgroundFetchScheduler
- (void)setMinimumBackgroundFetchInterval:(double)a3;
@end

@implementation TSApplicationBackgroundFetchScheduler

- (void)setMinimumBackgroundFetchInterval:(double)a3
{
  v4 = self;
  ApplicationBackgroundFetchScheduler.setMinimumBackgroundFetchInterval(_:)(a3);
}

@end