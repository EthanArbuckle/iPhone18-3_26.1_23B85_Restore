@interface WindParticleSimulator
- (void)tick:(id)tick;
@end

@implementation WindParticleSimulator

- (void)tick:(id)tick
{
  tickCopy = tick;

  sub_220ED81C4(tickCopy);
}

@end