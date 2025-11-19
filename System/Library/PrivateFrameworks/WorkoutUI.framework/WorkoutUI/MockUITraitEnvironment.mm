@interface MockUITraitEnvironment
- (UITraitCollection)traitCollection;
- (_TtC9WorkoutUI22MockUITraitEnvironment)init;
- (void)setTraitCollection:(id)a3;
@end

@implementation MockUITraitEnvironment

- (UITraitCollection)traitCollection
{
  v3 = OBJC_IVAR____TtC9WorkoutUI22MockUITraitEnvironment_traitCollection;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTraitCollection:(id)a3
{
  v5 = OBJC_IVAR____TtC9WorkoutUI22MockUITraitEnvironment_traitCollection;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC9WorkoutUI22MockUITraitEnvironment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end