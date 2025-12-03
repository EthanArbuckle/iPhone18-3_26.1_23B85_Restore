@interface PKMicaView
- (PKMicaView)initWithFrame:(CGRect)frame;
- (void)pauseAnimation;
- (void)resetAndPauseAnimations;
- (void)resetAndPlayAnimations;
- (void)resumeAnimation;
@end

@implementation PKMicaView

- (void)resetAndPauseAnimations
{
  selfCopy = self;
  layer = [(PKMicaView *)selfCopy layer];
  [layer setSpeed_];

  layer2 = [(PKMicaView *)selfCopy layer];
  [layer2 setTimeOffset_];

  layer3 = [(PKMicaView *)selfCopy layer];
  [layer3 setBeginTime_];
}

- (void)resetAndPlayAnimations
{
  selfCopy = self;
  sub_1BDA8313C();
}

- (void)pauseAnimation
{
  selfCopy = self;
  layer = [(PKMicaView *)selfCopy layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;

  layer2 = [(PKMicaView *)selfCopy layer];
  [layer2 setSpeed_];

  layer3 = [(PKMicaView *)selfCopy layer];
  [layer3 setTimeOffset_];
}

- (void)resumeAnimation
{
  selfCopy = self;
  sub_1BDA8331C();
}

- (PKMicaView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end