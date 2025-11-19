@interface _UIDirectionalLightPalette
- (_UIDirectionalLightPalette)init;
- (_UIDirectionalLightPalette)initWithColors:(id)a3;
- (_UIDirectionalLightPalette)initWithColors:(id)a3 locations:(id)a4;
@end

@implementation _UIDirectionalLightPalette

- (_UIDirectionalLightPalette)initWithColors:(id)a3
{
  v4 = [objc_allocWithZone(_UIColorPalette) initWithColors_];
  *(&self->super.isa + OBJC_IVAR____UIDirectionalLightPalette_colorPalette) = v4;
  v6.receiver = self;
  v6.super_class = _UIDirectionalLightPalette;
  return [(_UIDirectionalLightPalette *)&v6 init];
}

- (_UIDirectionalLightPalette)initWithColors:(id)a3 locations:(id)a4
{
  v5 = [objc_allocWithZone(_UIColorPalette) initWithColors:a3 locations:a4 colorSpaceName:0];
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