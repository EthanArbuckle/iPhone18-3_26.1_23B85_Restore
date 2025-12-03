@interface StickersAPIService.Delegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtCV9stickersd18StickersAPIService8Delegate)init;
@end

@implementation StickersAPIService.Delegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100001790(connectionCopy);

  return v9 & 1;
}

- (_TtCV9stickersd18StickersAPIService8Delegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickersAPIService.Delegate();
  return [(StickersAPIService.Delegate *)&v3 init];
}

@end