@interface InProcessAnimationManager
+ (void)handleScreenDisconnected:(id)a3;
- (void)displayLinkFire:(id)a3;
@end

@implementation InProcessAnimationManager

- (void)displayLinkFire:(id)a3
{
  v3 = a3;

  sub_188A32A48(v3);
}

+ (void)handleScreenDisconnected:(id)a3
{
  v3 = sub_18A4A2458();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2418();
  sub_189215738();
  (*(v4 + 8))(v6, v3);
}

@end