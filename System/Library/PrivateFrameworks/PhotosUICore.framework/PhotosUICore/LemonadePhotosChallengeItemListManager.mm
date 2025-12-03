@interface LemonadePhotosChallengeItemListManager
- (_TtC12PhotosUICore38LemonadePhotosChallengeItemListManager)init;
- (void)navigateToGadget:(id)gadget;
@end

@implementation LemonadePhotosChallengeItemListManager

- (void)navigateToGadget:(id)gadget
{
  v4 = objc_opt_self();
  swift_unknownObjectRetain();
  defaultCenter = [v4 defaultCenter];
  if (qword_1EB192810 != -1)
  {
    swift_once();
  }

  [defaultCenter postNotificationName:qword_1EB1EB6F0 object:gadget];

  swift_unknownObjectRelease();
}

- (_TtC12PhotosUICore38LemonadePhotosChallengeItemListManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end