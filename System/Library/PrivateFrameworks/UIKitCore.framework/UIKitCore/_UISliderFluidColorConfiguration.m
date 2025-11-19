@interface _UISliderFluidColorConfiguration
- (BOOL)isEqual:(id)a3;
- (NSArray)colors;
- (NSArray)locations;
- (_UISliderFluidColorConfiguration)init;
- (_UISliderFluidColorConfiguration)initWithColors:(id)a3;
- (_UISliderFluidColorConfiguration)initWithColors:(id)a3 locations:(id)a4;
- (_UISliderFluidColorConfiguration)initWithColors:(id)a3 locations:(id)a4 numberOfTicks:(int64_t)a5 tickBehavior:(int64_t)a6;
- (_UISliderFluidColorConfiguration)initWithColors:(id)a3 locations:(id)a4 ticks:(id)a5 tickBehavior:(int64_t)a6;
- (_UISliderFluidColorConfiguration)initWithNumberOfTicks:(int64_t)a3 behavior:(int64_t)a4;
- (_UISliderFluidColorConfiguration)initWithTicks:(id)a3 behavior:(int64_t)a4;
- (id)copyWithZone:(void *)a3;
@end

@implementation _UISliderFluidColorConfiguration

- (NSArray)colors
{
  sub_188A34624(0, qword_1ED4913C0);

  v2 = sub_18A4A7518();

  return v2;
}

- (NSArray)locations
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration__locations))
  {
    sub_188A34624(0, &qword_1ED48FD80);

    v2 = sub_18A4A7518();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_UISliderFluidColorConfiguration)initWithColors:(id)a3 locations:(id)a4 ticks:(id)a5 tickBehavior:(int64_t)a6
{
  sub_188A34624(0, qword_1ED4913C0);
  v9 = sub_18A4A7548();
  if (a4)
  {
    sub_188A34624(0, &qword_1ED48FD80);
    a4 = sub_18A4A7548();
  }

  sub_188A34624(0, &unk_1EA92FD90);
  sub_18A4A7548();
  v10 = OBJC_IVAR____UISliderFluidColorConfiguration__locations;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration__locations) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration_maxGain) = 0x3FF0000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration_showCheckerboard) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration__colors) = v9;
  *(&self->super.super.super.isa + v10) = a4;
  v11 = sub_18A4A7518();

  v14.receiver = self;
  v14.super_class = _UISliderFluidColorConfiguration;
  v12 = [(_UISliderFluidTickConfiguration *)&v14 initWithTicks:v11 behavior:a6];

  return v12;
}

- (_UISliderFluidColorConfiguration)initWithColors:(id)a3 locations:(id)a4 numberOfTicks:(int64_t)a5 tickBehavior:(int64_t)a6
{
  v8 = a4;
  if (a4)
  {
    sub_188A34624(0, &qword_1ED48FD80);
    sub_18A4A7548();
    v11 = a3;
    v8 = sub_18A4A7518();
  }

  else
  {
    v12 = a3;
  }

  sub_189017030(a5);
  sub_188A34624(0, &unk_1EA92FD90);
  v13 = sub_18A4A7518();

  v14 = [(_UISliderFluidColorConfiguration *)self initWithColors:a3 locations:v8 ticks:v13 tickBehavior:a6];

  return v14;
}

- (_UISliderFluidColorConfiguration)initWithColors:(id)a3 locations:(id)a4
{
  sub_188A34624(0, qword_1ED4913C0);
  v6 = sub_18A4A7548();
  if (a4)
  {
    sub_188A34624(0, &qword_1ED48FD80);
    v7 = sub_18A4A7548();
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____UISliderFluidColorConfiguration__locations;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration__locations) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration_maxGain) = 0x3FF0000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration_showCheckerboard) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration__colors) = v6;
  *(&self->super.super.super.isa + v8) = v7;
  sub_188A34624(0, &unk_1EA92FD90);
  v9 = sub_18A4A7518();
  v12.receiver = self;
  v12.super_class = _UISliderFluidColorConfiguration;
  v10 = [(_UISliderFluidTickConfiguration *)&v12 initWithTicks:v9 behavior:0];

  return v10;
}

- (_UISliderFluidColorConfiguration)initWithColors:(id)a3
{
  sub_188A34624(0, qword_1ED4913C0);
  v4 = sub_18A4A7548();
  v5 = OBJC_IVAR____UISliderFluidColorConfiguration__locations;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration__locations) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration_maxGain) = 0x3FF0000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration_showCheckerboard) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration__colors) = v4;
  *(&self->super.super.super.isa + v5) = 0;
  sub_188A34624(0, &unk_1EA92FD90);
  v6 = sub_18A4A7518();
  v9.receiver = self;
  v9.super_class = _UISliderFluidColorConfiguration;
  v7 = [(_UISliderFluidTickConfiguration *)&v9 initWithTicks:v6 behavior:0];

  return v7;
}

- (_UISliderFluidColorConfiguration)initWithTicks:(id)a3 behavior:(int64_t)a4
{
  sub_188A34624(0, &unk_1EA92FD90);
  sub_18A4A7548();
  v6 = OBJC_IVAR____UISliderFluidColorConfiguration__locations;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration__locations) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration_maxGain) = 0x3FF0000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration_showCheckerboard) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration__colors) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + v6) = 0;
  v7 = sub_18A4A7518();

  v10.receiver = self;
  v10.super_class = _UISliderFluidColorConfiguration;
  v8 = [(_UISliderFluidTickConfiguration *)&v10 initWithTicks:v7 behavior:a4];

  return v8;
}

- (_UISliderFluidColorConfiguration)initWithNumberOfTicks:(int64_t)a3 behavior:(int64_t)a4
{
  v4 = OBJC_IVAR____UISliderFluidColorConfiguration__locations;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration__locations) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration_maxGain) = 0x3FF0000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration_showCheckerboard) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UISliderFluidColorConfiguration__colors) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + v4) = 0;
  v6.receiver = self;
  v6.super_class = _UISliderFluidColorConfiguration;
  return [(_UISliderFluidTickConfiguration *)&v6 initWithNumberOfTicks:a3 behavior:a4];
}

- (_UISliderFluidColorConfiguration)init
{
  sub_188A34624(0, qword_1ED4913C0);
  v3 = sub_18A4A7518();
  v4 = [(_UISliderFluidColorConfiguration *)self initWithColors:v3 locations:0];

  return v4;
}

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  _UISliderFluidColorConfiguration.copy(with:)(a3, v7);

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return v5;
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

  v6 = _UISliderFluidColorConfiguration.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6 & 1;
}

@end