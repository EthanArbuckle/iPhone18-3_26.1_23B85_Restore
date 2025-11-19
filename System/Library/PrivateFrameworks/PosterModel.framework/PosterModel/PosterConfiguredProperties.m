@interface PosterConfiguredProperties
- (_TtC11PosterModel26PosterConfiguredProperties)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PosterConfiguredProperties

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration);
  v5 = a3;
  v6 = self;
  [v5 encodeObject:v4 forKey:@"titleStyleConfiguration"];
  [v5 encodeObject:*(&v6->super.isa + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration) forKey:@"titleStyleConfiguration"];
}

- (_TtC11PosterModel26PosterConfiguredProperties)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end