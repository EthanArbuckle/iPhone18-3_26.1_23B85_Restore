@interface _UIDirectionalLightConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)reverse;
- (_UIColorPalette)colorPalette;
- (_UIDirectionalLightConfiguration)init;
- (_UIDirectionalLightConfiguration)initWithColorPalette:(id)palette;
- (_UIDirectionalLightConfiguration)initWithPalette:(id)palette;
- (_UIDirectionalLightPalette)palette;
- (double)duration;
- (int64_t)hash;
- (unint64_t)direction;
- (void)setColorPalette:(id)palette;
- (void)setDirection:(unint64_t)direction;
- (void)setDuration:(double)duration;
- (void)setPalette:(id)palette;
- (void)setReverse:(BOOL)reverse;
@end

@implementation _UIDirectionalLightConfiguration

- (_UIColorPalette)colorPalette
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_colorPalette;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setColorPalette:(id)palette
{
  v5 = OBJC_IVAR____UIDirectionalLightConfiguration_colorPalette;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = palette;
  paletteCopy = palette;
}

- (unint64_t)direction
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_direction;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDirection:(unint64_t)direction
{
  v5 = OBJC_IVAR____UIDirectionalLightConfiguration_direction;
  swift_beginAccess();
  *(&self->super.isa + v5) = direction;
}

- (BOOL)reverse
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_reverse;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setReverse:(BOOL)reverse
{
  v5 = OBJC_IVAR____UIDirectionalLightConfiguration_reverse;
  swift_beginAccess();
  *(&self->super.isa + v5) = reverse;
}

- (double)duration
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_duration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDuration:(double)duration
{
  v5 = OBJC_IVAR____UIDirectionalLightConfiguration_duration;
  swift_beginAccess();
  *(&self->super.isa + v5) = duration;
}

- (_UIDirectionalLightConfiguration)initWithColorPalette:(id)palette
{
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_colorPalette) = palette;
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_direction) = 0;
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_reverse) = 0;
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightConfiguration_duration) = 0x4014000000000000;
  v5.receiver = self;
  v5.super_class = _UIDirectionalLightConfiguration;
  paletteCopy = palette;
  return [(_UIDirectionalLightConfiguration *)&v5 init];
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_188FC19FC();
  v4 = MEMORY[0x18CFE2340](v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = _UIDirectionalLightConfiguration.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6 & 1;
}

- (_UIDirectionalLightConfiguration)initWithPalette:(id)palette
{
  v3 = *(palette + OBJC_IVAR____UIDirectionalLightPalette_colorPalette);
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
  selfCopy = self;
  v4 = sub_188FC0EB4([(_UIDirectionalLightConfiguration *)selfCopy colorPalette]);

  return v4;
}

- (void)setPalette:(id)palette
{
  paletteCopy = palette;
  selfCopy = self;
  palette = [(_UIDirectionalLightConfiguration *)selfCopy palette];
  v6 = *(&palette->super.isa + OBJC_IVAR____UIDirectionalLightPalette_colorPalette);

  [(_UIDirectionalLightConfiguration *)selfCopy setColorPalette:v6];
}

- (_UIDirectionalLightConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end