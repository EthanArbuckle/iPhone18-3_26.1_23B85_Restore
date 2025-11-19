@interface _UISliderFluidTickConfiguration
- (BOOL)adjustPositionForTargetPosition:(float)a3 adjustedPosition:(float *)a4 startPosition:(float *)a5 endPosition:(float *)a6;
- (BOOL)isEqual:(id)a3;
- (NSArray)ticks;
- (_UISliderFluidTickConfiguration)init;
- (_UISliderFluidTickConfiguration)initWithNumberOfTicks:(int64_t)a3 behavior:(int64_t)a4;
- (_UISliderFluidTickConfiguration)initWithTicks:(id)a3 behavior:(int64_t)a4;
- (id)copyWithZone:(void *)a3;
@end

@implementation _UISliderFluidTickConfiguration

- (NSArray)ticks
{
  sub_188A34624(0, &unk_1EA92FD90);

  v2 = sub_18A4A7518();

  return v2;
}

- (_UISliderFluidTickConfiguration)initWithTicks:(id)a3 behavior:(int64_t)a4
{
  sub_188A34624(0, &unk_1EA92FD90);
  v5 = sub_18A4A7548();
  return _UISliderFluidTickConfiguration.init(ticks:behavior:)(v5, a4);
}

- (_UISliderFluidTickConfiguration)init
{
  sub_188A34624(0, &unk_1EA92FD90);
  v3 = sub_18A4A7518();
  v4 = [(_UISliderFluidTickConfiguration *)self initWithTicks:v3 behavior:0];

  return v4;
}

- (_UISliderFluidTickConfiguration)initWithNumberOfTicks:(int64_t)a3 behavior:(int64_t)a4
{
  sub_189017030(a3);
  sub_188A34624(0, &unk_1EA92FD90);
  v6 = sub_18A4A7518();

  v7 = [(_UISliderFluidTickConfiguration *)self initWithTicks:v6 behavior:a4];

  *(&v7->super.super.isa + OBJC_IVAR____UISliderFluidTickConfiguration__ticksAreEvenlySpaced) = 1;
  return v7;
}

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  _UISliderFluidTickConfiguration.copy(with:)(a3, v7);

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

  v6 = _UISliderFluidTickConfiguration.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6;
}

- (BOOL)adjustPositionForTargetPosition:(float)a3 adjustedPosition:(float *)a4 startPosition:(float *)a5 endPosition:(float *)a6
{
  v10 = self;
  v11 = sub_1891CD000(a3);
  if ((v12 & 0x100000000) == 0)
  {
    if (!a4)
    {
      __break(1u);
      return v11;
    }

    *a4 = v11;
    if (a5)
    {
      *a5 = *(&v11 + 1);
    }

    if (a6)
    {
      *a6 = v12;
    }
  }

  v13 = (v12 & 0x100000000) == 0;

  LOBYTE(v11) = v13;
  return v11;
}

@end