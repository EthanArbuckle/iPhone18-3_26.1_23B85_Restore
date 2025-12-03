@interface TSApplicationBackgroundFetchScheduler
- (void)setMinimumBackgroundFetchInterval:(double)interval;
@end

@implementation TSApplicationBackgroundFetchScheduler

- (void)setMinimumBackgroundFetchInterval:(double)interval
{
  selfCopy = self;
  ApplicationBackgroundFetchScheduler.setMinimumBackgroundFetchInterval(_:)(interval);
}

@end