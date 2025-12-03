@interface VolumeSlider
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)didMoveToWindow;
- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change;
- (void)volumeController:(id)controller volumeValueDidChange:(float)change;
@end

@implementation VolumeSlider

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_20B5DFEB0();
}

- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change
{
  selfCopy = self;
  sub_20B5E010C();
}

- (void)volumeController:(id)controller volumeValueDidChange:(float)change
{
  controllerCopy = controller;
  selfCopy = self;
  sub_20B5E0DF8();
}

- (NSString)volumeAudioCategory
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController);
  selfCopy = self;
  dataSource = [v2 dataSource];
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
  selfCopy = self;
  window = [(VolumeSlider *)selfCopy window];
  windowScene = [window windowScene];

  return windowScene;
}

@end