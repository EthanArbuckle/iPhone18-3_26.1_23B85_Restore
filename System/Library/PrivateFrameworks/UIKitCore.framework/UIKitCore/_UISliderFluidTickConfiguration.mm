@interface _UISliderFluidTickConfiguration
- (BOOL)adjustPositionForTargetPosition:(float)position adjustedPosition:(float *)adjustedPosition startPosition:(float *)startPosition endPosition:(float *)endPosition;
- (BOOL)isEqual:(id)equal;
- (NSArray)ticks;
- (_UISliderFluidTickConfiguration)init;
- (_UISliderFluidTickConfiguration)initWithNumberOfTicks:(int64_t)ticks behavior:(int64_t)behavior;
- (_UISliderFluidTickConfiguration)initWithTicks:(id)ticks behavior:(int64_t)behavior;
- (id)copyWithZone:(void *)zone;
@end

@implementation _UISliderFluidTickConfiguration

- (NSArray)ticks
{
  sub_188A34624(0, &unk_1EA92FD90);

  v2 = sub_18A4A7518();

  return v2;
}

- (_UISliderFluidTickConfiguration)initWithTicks:(id)ticks behavior:(int64_t)behavior
{
  sub_188A34624(0, &unk_1EA92FD90);
  v5 = sub_18A4A7548();
  return _UISliderFluidTickConfiguration.init(ticks:behavior:)(v5, behavior);
}

- (_UISliderFluidTickConfiguration)init
{
  sub_188A34624(0, &unk_1EA92FD90);
  v3 = sub_18A4A7518();
  v4 = [(_UISliderFluidTickConfiguration *)self initWithTicks:v3 behavior:0];

  return v4;
}

- (_UISliderFluidTickConfiguration)initWithNumberOfTicks:(int64_t)ticks behavior:(int64_t)behavior
{
  sub_189017030(ticks);
  sub_188A34624(0, &unk_1EA92FD90);
  v6 = sub_18A4A7518();

  v7 = [(_UISliderFluidTickConfiguration *)self initWithTicks:v6 behavior:behavior];

  *(&v7->super.super.isa + OBJC_IVAR____UISliderFluidTickConfiguration__ticksAreEvenlySpaced) = 1;
  return v7;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  _UISliderFluidTickConfiguration.copy(with:)(zone, v7);

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return v5;
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

  v6 = _UISliderFluidTickConfiguration.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6;
}

- (BOOL)adjustPositionForTargetPosition:(float)position adjustedPosition:(float *)adjustedPosition startPosition:(float *)startPosition endPosition:(float *)endPosition
{
  selfCopy = self;
  v11 = sub_1891CD000(position);
  if ((v12 & 0x100000000) == 0)
  {
    if (!adjustedPosition)
    {
      __break(1u);
      return v11;
    }

    *adjustedPosition = v11;
    if (startPosition)
    {
      *startPosition = *(&v11 + 1);
    }

    if (endPosition)
    {
      *endPosition = v12;
    }
  }

  v13 = (v12 & 0x100000000) == 0;

  LOBYTE(v11) = v13;
  return v11;
}

@end