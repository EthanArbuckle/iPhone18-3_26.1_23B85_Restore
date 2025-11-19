@interface PKMicaView
- (PKMicaView)initWithFrame:(CGRect)a3;
- (void)pauseAnimation;
- (void)resetAndPauseAnimations;
- (void)resetAndPlayAnimations;
- (void)resumeAnimation;
@end

@implementation PKMicaView

- (void)resetAndPauseAnimations
{
  v5 = self;
  v2 = [(PKMicaView *)v5 layer];
  [v2 setSpeed_];

  v3 = [(PKMicaView *)v5 layer];
  [v3 setTimeOffset_];

  v4 = [(PKMicaView *)v5 layer];
  [v4 setBeginTime_];
}

- (void)resetAndPlayAnimations
{
  v2 = self;
  sub_1BDA8313C();
}

- (void)pauseAnimation
{
  v7 = self;
  v2 = [(PKMicaView *)v7 layer];
  [v2 convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;

  v5 = [(PKMicaView *)v7 layer];
  [v5 setSpeed_];

  v6 = [(PKMicaView *)v7 layer];
  [v6 setTimeOffset_];
}

- (void)resumeAnimation
{
  v2 = self;
  sub_1BDA8331C();
}

- (PKMicaView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end