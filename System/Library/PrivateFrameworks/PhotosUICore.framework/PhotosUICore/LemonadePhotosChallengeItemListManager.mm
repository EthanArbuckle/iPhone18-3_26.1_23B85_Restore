@interface LemonadePhotosChallengeItemListManager
- (_TtC12PhotosUICore38LemonadePhotosChallengeItemListManager)init;
- (void)navigateToGadget:(id)a3;
@end

@implementation LemonadePhotosChallengeItemListManager

- (void)navigateToGadget:(id)a3
{
  v4 = objc_opt_self();
  swift_unknownObjectRetain();
  v5 = [v4 defaultCenter];
  if (qword_1EB192810 != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:qword_1EB1EB6F0 object:a3];

  swift_unknownObjectRelease();
}

- (_TtC12PhotosUICore38LemonadePhotosChallengeItemListManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end