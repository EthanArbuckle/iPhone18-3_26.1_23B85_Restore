@interface UILabel(Private)
- (uint64_t)setSmu_marqueeEnabled:()Private;
@end

@implementation UILabel(Private)

- (uint64_t)setSmu_marqueeEnabled:()Private
{
  [self setMarqueeEnabled:?];

  return [self setMarqueeRunning:a3];
}

@end