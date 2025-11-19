@interface TTRIReminderLocationPickerMapAnnotation
- (CLLocationCoordinate2D)coordinate;
- (NSString)title;
- (_TtC15RemindersUICore39TTRIReminderLocationPickerMapAnnotation)init;
@end

@implementation TTRIReminderLocationPickerMapAnnotation

- (CLLocationCoordinate2D)coordinate
{
  [*(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderLocationPickerMapAnnotation_region) center];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (NSString)title
{
  sub_21DBF8E0C();
  v2 = sub_21DBFA12C();

  return v2;
}

- (_TtC15RemindersUICore39TTRIReminderLocationPickerMapAnnotation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end