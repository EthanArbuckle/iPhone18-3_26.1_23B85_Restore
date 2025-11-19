@interface GeoXPCRequestContainer
- (_TtC12ShazamEvents22GeoXPCRequestContainer)init;
- (_TtC12ShazamEvents22GeoXPCRequestContainer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GeoXPCRequestContainer

- (_TtC12ShazamEvents22GeoXPCRequestContainer)initWithCoder:(id)a3
{
  swift_getObjectType();
  v5 = sub_1E10909F4(a3);
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _s12ShazamEvents22GeoXPCRequestContainerC6encode4withySo7NSCoderC_tF_0(v4);
}

- (_TtC12ShazamEvents22GeoXPCRequestContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end