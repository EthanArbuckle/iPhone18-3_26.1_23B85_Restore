@interface GMEnrollmentTextViewManager
- (_TtC14VoiceTriggerUI27GMEnrollmentTextViewManager)init;
- (id)createViewControllerWithEnrollmentViewModel:(id)model;
@end

@implementation GMEnrollmentTextViewManager

- (id)createViewControllerWithEnrollmentViewModel:(id)model
{
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BD98, &unk_272935480));
  modelCopy = model;
  v6 = sub_27292DB64();

  return v6;
}

- (_TtC14VoiceTriggerUI27GMEnrollmentTextViewManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GMEnrollmentTextViewManager();
  return [(GMEnrollmentTextViewManager *)&v3 init];
}

@end