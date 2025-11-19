@interface PosterContentDiscreteColorsStyle
- (_TtC11PosterModel32PosterContentDiscreteColorsStyle)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PosterContentDiscreteColorsStyle

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_isVibrant);
  v5 = a3;
  v6 = self;
  [v5 encodeBool:v4 forKey:@"vibrant"];
  [v5 encodeBool:*(&v6->super.isa + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_allowsVariation) forKey:@"supportsVariation"];
  [v5 encodeDouble:@"variation" forKey:*(&v6->super.isa + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_variation)];
}

- (_TtC11PosterModel32PosterContentDiscreteColorsStyle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end