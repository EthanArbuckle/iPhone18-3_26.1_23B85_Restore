@interface ShaderArchive
- (_TtC3VFX13ShaderArchive)init;
- (void)addLibraryWithLabel:(id)label path:(id)path;
@end

@implementation ShaderArchive

- (void)addLibraryWithLabel:(id)label path:(id)path
{
  v5 = sub_1AFDFCEF8();
  v7 = v6;
  v8 = (self + OBJC_IVAR____TtC3VFX13ShaderArchive_lock);
  v9 = *&self->lock[OBJC_IVAR____TtC3VFX13ShaderArchive_lock + 8];
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_1AF70D45C(&v11, v5, v7, 0xD000000000000010, 0x80000001AFF31CF0);

  os_unfair_lock_unlock(v8[3]);
}

- (_TtC3VFX13ShaderArchive)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end