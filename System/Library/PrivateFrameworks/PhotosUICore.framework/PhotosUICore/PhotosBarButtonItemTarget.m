@interface PhotosBarButtonItemTarget
- (_TtC12PhotosUICoreP33_2F41475DB669B278177E293B1734139625PhotosBarButtonItemTarget)init;
- (void)performPrimaryAction:(id)a3;
@end

@implementation PhotosBarButtonItemTarget

- (void)performPrimaryAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  (*(&self->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_2F41475DB669B278177E293B1734139625PhotosBarButtonItemTarget_primaryAction))(v6);
  sub_1A3C35B00(v6);
}

- (_TtC12PhotosUICoreP33_2F41475DB669B278177E293B1734139625PhotosBarButtonItemTarget)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end