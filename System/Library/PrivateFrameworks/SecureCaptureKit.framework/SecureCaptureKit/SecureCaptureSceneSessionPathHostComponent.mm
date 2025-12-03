@interface SecureCaptureSceneSessionPathHostComponent
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
@end

@implementation SecureCaptureSceneSessionPathHostComponent

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_264F04034(settingsCopy);
}

@end