@interface StickersLaunchStateManagerService.Delegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtCV9stickersd33StickersLaunchStateManagerService8Delegate)init;
@end

@implementation StickersLaunchStateManagerService.Delegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100004538(connectionCopy);

  return v9 & 1;
}

- (_TtCV9stickersd33StickersLaunchStateManagerService8Delegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickersLaunchStateManagerService.Delegate();
  return [(StickersLaunchStateManagerService.Delegate *)&v3 init];
}

@end