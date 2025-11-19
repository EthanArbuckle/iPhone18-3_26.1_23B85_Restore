@interface UILabel(Private)
- (uint64_t)setSmu_marqueeEnabled:()Private;
@end

@implementation UILabel(Private)

- (uint64_t)setSmu_marqueeEnabled:()Private
{
  [a1 setMarqueeEnabled:?];

  return [a1 setMarqueeRunning:a3];
}

@end