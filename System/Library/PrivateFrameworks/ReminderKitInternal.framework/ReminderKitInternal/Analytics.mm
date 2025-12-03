@interface Analytics
+ (void)postEventWithName:(id)name payload:(id)payload error:(id)error performAutoBugCaptureOnError:(BOOL)onError;
- (_TtC19ReminderKitInternal9Analytics)init;
@end

@implementation Analytics

+ (void)postEventWithName:(id)name payload:(id)payload error:(id)error performAutoBugCaptureOnError:(BOOL)onError
{
  v8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v10 = v9;
  sub_23004CBA4(0, &qword_280C9B980);
  v11 = sub_23030F658();
  errorCopy = error;
  sub_23021C84C(v8, v10, v11, 0, 1, error, onError);
}

- (_TtC19ReminderKitInternal9Analytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Analytics();
  return [(Analytics *)&v3 init];
}

@end