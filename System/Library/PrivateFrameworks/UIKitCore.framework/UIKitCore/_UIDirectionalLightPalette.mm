@interface _UIDirectionalLightPalette
- (_UIDirectionalLightPalette)init;
- (_UIDirectionalLightPalette)initWithColors:(id)colors;
- (_UIDirectionalLightPalette)initWithColors:(id)colors locations:(id)locations;
@end

@implementation _UIDirectionalLightPalette

- (_UIDirectionalLightPalette)initWithColors:(id)colors
{
  initWithColors_ = [objc_allocWithZone(_UIColorPalette) initWithColors_];
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightPalette_colorPalette) = initWithColors_;
  v6.receiver = self;
  v6.super_class = _UIDirectionalLightPalette;
  return [(_UIDirectionalLightPalette *)&v6 init];
}

- (_UIDirectionalLightPalette)initWithColors:(id)colors locations:(id)locations
{
  v5 = [objc_allocWithZone(_UIColorPalette) initWithColors:colors locations:locations colorSpaceName:0];
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightPalette_colorPalette) = v5;
  v7.receiver = self;
  v7.super_class = _UIDirectionalLightPalette;
  return [(_UIDirectionalLightPalette *)&v7 init];
}

- (_UIDirectionalLightPalette)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end