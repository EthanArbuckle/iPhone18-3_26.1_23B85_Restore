@interface ActivityBannerSceneDelegate
- (_TtC14WidgetRenderer27ActivityBannerSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation ActivityBannerSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1DAE6DB14(sceneCopy);
}

- (_TtC14WidgetRenderer27ActivityBannerSceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivityBannerSceneDelegate();
  return [(SingleActivitySceneDelegate *)&v3 init];
}

@end