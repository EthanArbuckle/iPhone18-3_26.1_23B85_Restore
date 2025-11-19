@interface GMEnrollmentSetupIntroViewManager
- (_TtC14VoiceTriggerUI33GMEnrollmentSetupIntroViewManager)init;
- (id)createViewControllerWithIntroViewControllerDelegate:(id)a3;
@end

@implementation GMEnrollmentSetupIntroViewManager

- (id)createViewControllerWithIntroViewControllerDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_2729161E0(a3);
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