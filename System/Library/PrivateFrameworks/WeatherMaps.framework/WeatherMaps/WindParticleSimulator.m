@interface WindParticleSimulator
- (void)tick:(id)a3;
@end

@implementation WindParticleSimulator

- (void)tick:(id)a3
{
  v3 = a3;

  sub_220ED81C4(v3);
}

@end