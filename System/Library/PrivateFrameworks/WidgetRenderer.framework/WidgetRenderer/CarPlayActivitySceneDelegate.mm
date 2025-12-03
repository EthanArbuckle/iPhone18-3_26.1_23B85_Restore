@interface CarPlayActivitySceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation CarPlayActivitySceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1DADE8F9C(sceneCopy);
}

@end