@interface VolumeSlider
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)didMoveToWindow;
- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4;
@end

@implementation VolumeSlider

- (void)didMoveToWindow
{
  v2 = self;
  sub_20B5DFEB0();
}

- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4
{
  v4 = self;
  sub_20B5E010C();
}

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4
{
  v5 = a3;
  v6 = self;
  sub_20B5E0DF8();
}

- (NSString)volumeAudioCategory
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController);
  v3 = self;
  v4 = [v2 dataSource];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    result = [v5 volumeAudioCategory];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    sub_20C13C954();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v8 = sub_20C13C914();

  return v8;
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  v2 = self;
  v3 = [(VolumeSlider *)v2 window];
  v4 = [v3 windowScene];

  return v4;
}

@end