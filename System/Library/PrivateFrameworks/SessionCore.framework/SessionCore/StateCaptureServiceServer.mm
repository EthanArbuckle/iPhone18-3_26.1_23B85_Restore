@interface StateCaptureServiceServer
- (_TtC11SessionCore25StateCaptureServiceServer)init;
- (id)stateForIdentifier:(id)identifier error:(id *)error;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation StateCaptureServiceServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22CF86B14(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore25StateCaptureServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)stateForIdentifier:(id)identifier error:(id *)error
{
  if (identifier)
  {
    v5 = sub_22D01667C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  selfCopy = self;
  sub_22CF865E8(v5, v7);

  v9 = sub_22D0165CC();

  return v9;
}

@end