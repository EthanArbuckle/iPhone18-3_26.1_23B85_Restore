@interface SKUICountdownViewTimerTarget
- (void)action;
@end

@implementation SKUICountdownViewTimerTarget

- (void)action
{
  v2 = [(SKUICountdownViewTimerTarget *)self actionBlock];
  v2[2]();
}

@end