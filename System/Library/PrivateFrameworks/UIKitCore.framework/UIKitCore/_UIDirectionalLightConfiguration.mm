@interface _UIDirectionalLightConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)reverse;
- (_UIColorPalette)colorPalette;
- (_UIDirectionalLightConfiguration)init;
- (_UIDirectionalLightConfiguration)initWithColorPalette:(id)a3;
- (_UIDirectionalLightConfiguration)initWithPalette:(id)a3;
- (_UIDirectionalLightPalette)palette;
- (double)duration;
- (int64_t)hash;
- (unint64_t)direction;
- (void)setColorPalette:(id)a3;
- (void)setDirection:(unint64_t)a3;
- (void)setDuration:(double)a3;
- (void)setPalette:(id)a3;
- (void)setReverse:(BOOL)a3;
@end

@implementation _UIDirectionalLightConfiguration

- (_UIColorPalette)colorPalette
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_colorPalette;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setColorPalette:(id)a3
{
  v5 = OBJC_IVAR____UIDirectionalLightConfiguration_colorPalette;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (unint64_t)direction
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_direction;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDirection:(unint64_t)a3
{
  v5 = OBJC_IVAR____UIDirectionalLightConfiguration_direction;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)reverse
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_reverse;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setReverse:(BOOL)a3
{
  v5 = OBJC_IVAR____UIDirectionalLightConfiguration_reverse;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)duration
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_duration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDuration:(double)a3
{
  v5 = OBJC_IVAR____UIDirectionalLightConfiguration_duration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_UIDirectionalLightConfiguration)initWithColorPalette:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_colorPalette) = a3;
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_direction) = 0;
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_reverse) = 0;
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_duration) = 0x4014000000000000;
  v5.receiver = self;
  v5.super_class = _UIDirectionalLightConfiguration;
  v3 = a3;
  return [(_UIDirectionalLightConfiguration *)&v5 init];
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_188FC19FC();
  v4 = MEMORY[0x18CFE2340](v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = _UIDirectionalLightConfiguration.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6 & 1;
}

- (_UIDirectionalLightConfiguration)initWithPalette:(id)a3
{
  v3 = *(a3 + OBJC_IVAR____UIDirectionalLightPalette_colorPalette);
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_colorPalette) = v3;
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_direction) = 0;
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_reverse) = 0;
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_duration) = 0x4014000000000000;
  v6.receiver = self;
  v6.super_class = _UIDirectionalLightConfiguration;
  v4 = v3;
  return [(_UIDirectionalLightConfiguration *)&v6 init];
}

- (_UIDirectionalLightPalette)palette
{
  type metadata accessor for _UIDirectionalLightPalette(self);
  v3 = self;
  v4 = sub_188FC0EB4([(_UIDirectionalLightConfiguration *)v3 colorPalette]);

  return v4;
}

- (void)setPalette:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [(_UIDirectionalLightConfiguration *)v7 palette];
  v6 = *(&v5->super.isa + OBJC_IVAR____UIDirectionalLightPalette_colorPalette);

  [(_UIDirectionalLightConfiguration *)v7 setColorPalette:v6];
}

- (_UIDirectionalLightConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end