@interface SensorAccessIndicator
- (id)getRemainingTimeThrowsAndReturnError:(id *)error;
- (void)dealloc;
@end

@implementation SensorAccessIndicator

- (void)dealloc
{
  selfCopy = self;
  sub_2655E640C();
  v3 = *(&selfCopy->super.isa + OBJC_IVAR___SensorAccessIndicator_logger);
  sub_2655E63CC();

  v4.receiver = selfCopy;
  v4.super_class = SensorAccessIndicator;
  [(SensorAccessIndicator *)&v4 dealloc];
}

- (id)getRemainingTimeThrowsAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = sub_2655E59D8();

  return v4;
}

@end