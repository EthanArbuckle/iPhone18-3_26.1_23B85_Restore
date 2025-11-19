@interface StickersAPIService.Delegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtCV9stickersd18StickersAPIService8Delegate)init;
@end

@implementation StickersAPIService.Delegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100001790(v7);

  return v9 & 1;
}

- (_TtCV9stickersd18StickersAPIService8Delegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickersAPIService.Delegate();
  return [(StickersAPIService.Delegate *)&v3 init];
}

@end