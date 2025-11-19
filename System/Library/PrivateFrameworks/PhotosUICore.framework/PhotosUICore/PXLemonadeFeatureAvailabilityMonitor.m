@interface PXLemonadeFeatureAvailabilityMonitor
- (PXLemonadeFeatureAvailabilityMonitor)init;
- (int64_t)state;
- (void)setState:(int64_t)a3;
@end

@implementation PXLemonadeFeatureAvailabilityMonitor

- (int64_t)state
{
  swift_getKeyPath();
  sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
  v3 = self;
  sub_1A52415D4();

  v4 = *(&v3->super.isa + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___state);

  return v4;
}

- (void)setState:(int64_t)a3
{
  v4 = self;
  sub_1A488C230(a3);
}

- (PXLemonadeFeatureAvailabilityMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end