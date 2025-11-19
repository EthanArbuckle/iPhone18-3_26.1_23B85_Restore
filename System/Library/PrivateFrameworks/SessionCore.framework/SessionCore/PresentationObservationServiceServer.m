@interface PresentationObservationServiceServer
- (_TtC11SessionCore36PresentationObservationServiceServer)init;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation PresentationObservationServiceServer

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_22CF84A8C(v8);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore36PresentationObservationServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end