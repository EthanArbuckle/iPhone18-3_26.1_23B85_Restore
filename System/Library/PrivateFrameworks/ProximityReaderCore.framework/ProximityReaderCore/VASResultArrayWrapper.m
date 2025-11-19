@interface VASResultArrayWrapper
- (_TtC19ProximityReaderCore21VASResultArrayWrapper)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VASResultArrayWrapper

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19ProximityReaderCore21VASResultArrayWrapper_vasEntries);
  v5 = a3;
  v10 = self;
  sub_2611E2D8C(v4);
  v6 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v7 = sub_26121CEB0();

  v8 = [v6 initWithArray_];

  v9 = sub_26121CC50();
  [v5 encodeObject:v8 forKey:v9];
}

- (_TtC19ProximityReaderCore21VASResultArrayWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end