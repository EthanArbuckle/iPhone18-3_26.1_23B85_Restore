@interface ALNearbyInteraction
- (_TtC8ALDaemon19ALNearbyInteraction)init;
- (void)dealloc;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6;
@end

@implementation ALNearbyInteraction

- (void)dealloc
{
  v2 = *((swift_isaMask & self->super.isa) + 0xB8);
  v3 = self;
  v2();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for ALNearbyInteraction();
  [(ALNearbyInteraction *)&v4 dealloc];
}

- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_100339604(v11, a5, a6);
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100339C38();
}

- (_TtC8ALDaemon19ALNearbyInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end