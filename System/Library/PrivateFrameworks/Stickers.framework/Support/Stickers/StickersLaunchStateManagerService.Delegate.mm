@interface StickersLaunchStateManagerService.Delegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtCV9stickersd33StickersLaunchStateManagerService8Delegate)init;
@end

@implementation StickersLaunchStateManagerService.Delegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100004538(v7);

  return v9 & 1;
}

- (_TtCV9stickersd33StickersLaunchStateManagerService8Delegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickersLaunchStateManagerService.Delegate();
  return [(StickersLaunchStateManagerService.Delegate *)&v3 init];
}

@end