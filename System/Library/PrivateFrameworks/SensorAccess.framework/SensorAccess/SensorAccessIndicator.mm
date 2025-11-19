@interface SensorAccessIndicator
- (id)getRemainingTimeThrowsAndReturnError:(id *)a3;
- (void)dealloc;
@end

@implementation SensorAccessIndicator

- (void)dealloc
{
  v2 = self;
  sub_2655E640C();
  v3 = *(&v2->super.isa + OBJC_IVAR___SensorAccessIndicator_logger);
  sub_2655E63CC();

  v4.receiver = v2;
  v4.super_class = SensorAccessIndicator;
  [(SensorAccessIndicator *)&v4 dealloc];
}

- (id)getRemainingTimeThrowsAndReturnError:(id *)a3
{
  v3 = self;
  v4 = sub_2655E59D8();

  return v4;
}

@end