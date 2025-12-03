@interface GMEnrollmentSetupIntroViewManager
- (_TtC14VoiceTriggerUI33GMEnrollmentSetupIntroViewManager)init;
- (id)createViewControllerWithIntroViewControllerDelegate:(id)delegate;
@end

@implementation GMEnrollmentSetupIntroViewManager

- (id)createViewControllerWithIntroViewControllerDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_2729161E0(delegate);
  swift_unknownObjectRelease();

  return v6;
}

- (_TtC14VoiceTriggerUI33GMEnrollmentSetupIntroViewManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14VoiceTriggerUI33GMEnrollmentSetupIntroViewManager__enrollmentStateChange) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for GMEnrollmentSetupIntroViewManager();
  return [(GMEnrollmentSetupIntroViewManager *)&v3 init];
}

@end