@interface PosterConfiguredProperties
- (_TtC11PosterModel26PosterConfiguredProperties)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PosterConfiguredProperties

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration);
  coderCopy = coder;
  selfCopy = self;
  [coderCopy encodeObject:v4 forKey:@"titleStyleConfiguration"];
  [coderCopy encodeObject:*(&selfCopy->super.isa + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration) forKey:@"titleStyleConfiguration"];
}

- (_TtC11PosterModel26PosterConfiguredProperties)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end