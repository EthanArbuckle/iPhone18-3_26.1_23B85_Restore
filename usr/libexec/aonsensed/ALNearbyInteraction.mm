@interface ALNearbyInteraction
- (_TtC8ALDaemon19ALNearbyInteraction)init;
- (void)dealloc;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
@end

@implementation ALNearbyInteraction

- (void)dealloc
{
  v2 = *((swift_isaMask & self->super.isa) + 0xB8);
  selfCopy = self;
  v2();
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for ALNearbyInteraction();
  [(ALNearbyInteraction *)&v4 dealloc];
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  sessionCopy = session;
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  selfCopy = self;
  sub_100339604(objectCopy, region, previousRegion);
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_100339C38();
}

- (_TtC8ALDaemon19ALNearbyInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end