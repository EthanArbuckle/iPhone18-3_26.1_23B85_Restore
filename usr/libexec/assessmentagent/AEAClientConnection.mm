@interface AEAClientConnection
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC15assessmentagent19AEAClientConnection)init;
- (void)dealloc;
- (void)endPublications:(id)publications;
- (void)publishAssessmentState:(id)state withCompletion:(id)completion;
@end

@implementation AEAClientConnection

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_publicationListener);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AEAClientConnection();
  [(AEAClientConnection *)&v4 dealloc];
}

- (_TtC15assessmentagent19AEAClientConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10000BE58(connectionCopy);

  return v9 & 1;
}

- (void)publishAssessmentState:(id)state withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  stateCopy = state;
  selfCopy = self;
  sub_10000A0B4(stateCopy, sub_10000C7D8, v7);
}

- (void)endPublications:(id)publications
{
  v4 = _Block_copy(publications);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10000A84C(sub_10000BD30, v5);
}

@end