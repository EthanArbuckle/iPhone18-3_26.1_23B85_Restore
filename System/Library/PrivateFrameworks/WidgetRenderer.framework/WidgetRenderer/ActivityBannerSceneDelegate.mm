@interface ActivityBannerSceneDelegate
- (_TtC14WidgetRenderer27ActivityBannerSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation ActivityBannerSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1DAE6DB14(v8);
}

- (_TtC14WidgetRenderer27ActivityBannerSceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivityBannerSceneDelegate();
  return [(SingleActivitySceneDelegate *)&v3 init];
}

@end