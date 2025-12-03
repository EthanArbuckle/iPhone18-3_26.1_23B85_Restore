@interface PosterContentDiscreteColorsStyle
- (_TtC11PosterModel32PosterContentDiscreteColorsStyle)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PosterContentDiscreteColorsStyle

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_isVibrant);
  coderCopy = coder;
  selfCopy = self;
  [coderCopy encodeBool:v4 forKey:@"vibrant"];
  [coderCopy encodeBool:*(&selfCopy->super.isa + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_allowsVariation) forKey:@"supportsVariation"];
  [coderCopy encodeDouble:@"variation" forKey:*(&selfCopy->super.isa + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_variation)];
}

- (_TtC11PosterModel32PosterContentDiscreteColorsStyle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end