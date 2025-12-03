@interface SecureCaptureSceneStatusBarHostComponent
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scene:(id)scene willUpdateSettings:(id)settings;
@end

@implementation SecureCaptureSceneStatusBarHostComponent

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_264F03DF4(settingsCopy);
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_264F033A0(sceneCopy, settingsCopy);
}

@end