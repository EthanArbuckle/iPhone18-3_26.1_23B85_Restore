@interface AEAClientConnection
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC15assessmentagent19AEAClientConnection)init;
- (void)dealloc;
- (void)endPublications:(id)a3;
- (void)publishAssessmentState:(id)a3 withCompletion:(id)a4;
@end

@implementation AEAClientConnection

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_publicationListener);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for AEAClientConnection();
  [(AEAClientConnection *)&v4 dealloc];
}

- (_TtC15assessmentagent19AEAClientConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10000BE58(v7);

  return v9 & 1;
}

- (void)publishAssessmentState:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_10000A0B4(v8, sub_10000C7D8, v7);
}

- (void)endPublications:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10000A84C(sub_10000BD30, v5);
}

@end