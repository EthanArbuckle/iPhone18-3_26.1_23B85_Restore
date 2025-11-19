@interface SpotlightIndexQueryDataSource
- (_TtC17SpotlightUIShared29SpotlightIndexQueryDataSource)init;
@end

@implementation SpotlightIndexQueryDataSource

- (_TtC17SpotlightUIShared29SpotlightIndexQueryDataSource)init
{
  v3 = OBJC_IVAR____TtC17SpotlightUIShared29SpotlightIndexQueryDataSource_clientSession;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D65728]) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for SpotlightIndexQueryDataSource(0);
  return [(SpotlightQueryDataSource *)&v5 init];
}

@end