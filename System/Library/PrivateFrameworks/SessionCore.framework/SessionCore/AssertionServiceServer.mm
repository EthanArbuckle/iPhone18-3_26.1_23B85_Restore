@interface AssertionServiceServer
- (_TtC11SessionCore22AssertionServiceServer)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation AssertionServiceServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D007D64(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore22AssertionServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end