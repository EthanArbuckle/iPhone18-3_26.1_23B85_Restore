@interface StoryAssetPicker
- (_TtC12PhotosUICore16StoryAssetPicker)init;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)storyPickerHelper:(id)a3 didFinishPicking:(id)a4 promotedAssets:(id)a5 demotedAssets:(id)a6;
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

- (void)storyPickerHelper:(id)a3 didFinishPicking:(id)a4 promotedAssets:(id)a5 demotedAssets:(id)a6
{
  v10 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = self;
  sub_1A4988CC4(v10, a4, a5, a6);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  StoryAssetPicker.presentationControllerDidDismiss(_:)(v4);
}

@end