@interface SKUICountdownViewTimerTarget
- (void)action;
@end

@implementation SKUICountdownViewTimerTarget

- (void)action
{
  actionBlock = [(SKUICountdownViewTimerTarget *)self actionBlock];
  actionBlock[2]();
}

@end