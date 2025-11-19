@interface VersionXPCValueContainer
- (_TtC12ShazamEvents24VersionXPCValueContainer)init;
- (_TtC12ShazamEvents24VersionXPCValueContainer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VersionXPCValueContainer

- (_TtC12ShazamEvents24VersionXPCValueContainer)initWithCoder:(id)a3
{
  swift_getObjectType();
  v5 = sub_1E1008254(a3);
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E10066FC(v4);
}

- (_TtC12ShazamEvents24VersionXPCValueContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end