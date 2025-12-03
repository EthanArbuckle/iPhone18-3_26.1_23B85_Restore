@interface VASResultArrayWrapper
- (_TtC19ProximityReaderCore21VASResultArrayWrapper)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VASResultArrayWrapper

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19ProximityReaderCore21VASResultArrayWrapper_vasEntries);
  coderCopy = coder;
  selfCopy = self;
  sub_2611E2D8C(v4);
  v6 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v7 = sub_26121CEB0();

  initWithArray_ = [v6 initWithArray_];

  v9 = sub_26121CC50();
  [coderCopy encodeObject:initWithArray_ forKey:v9];
}

- (_TtC19ProximityReaderCore21VASResultArrayWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end