@interface StoryAssetPicker
- (_TtC12PhotosUICore16StoryAssetPicker)init;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)storyPickerHelper:(id)helper didFinishPicking:(id)picking promotedAssets:(id)assets demotedAssets:(id)demotedAssets;
@end

@implementation StoryAssetPicker

- (_TtC12PhotosUICore16StoryAssetPicker)init
{
  *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper) = 0;
  v2 = (&self->super.isa + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion);
  *v2 = 0;
  v2[1] = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)storyPickerHelper:(id)helper didFinishPicking:(id)picking promotedAssets:(id)assets demotedAssets:(id)demotedAssets
{
  helperCopy = helper;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A4988CC4(helperCopy, picking, assets, demotedAssets);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  StoryAssetPicker.presentationControllerDidDismiss(_:)(dismissCopy);
}

@end