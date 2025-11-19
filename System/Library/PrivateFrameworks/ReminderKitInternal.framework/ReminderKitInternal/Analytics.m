@interface Analytics
+ (void)postEventWithName:(id)a3 payload:(id)a4 error:(id)a5 performAutoBugCaptureOnError:(BOOL)a6;
- (_TtC19ReminderKitInternal9Analytics)init;
@end

@implementation Analytics

+ (void)postEventWithName:(id)a3 payload:(id)a4 error:(id)a5 performAutoBugCaptureOnError:(BOOL)a6
{
  v8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v10 = v9;
  sub_23004CBA4(0, &qword_280C9B980);
  v11 = sub_23030F658();
  v12 = a5;
  sub_23021C84C(v8, v10, v11, 0, 1, a5, a6);
}

- (_TtC19ReminderKitInternal9Analytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Analytics();
  return [(Analytics *)&v3 init];
}

@end