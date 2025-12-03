@interface _UISliderTickConfiguration
- (BOOL)adjustPositionForTargetPosition:(float)position adjustedPosition:(float *)adjustedPosition startPosition:(float *)startPosition endPosition:(float *)endPosition;
- (BOOL)isEqual:(id)equal;
- (NSArray)ticks;
- (_UISliderTickConfiguration)init;
- (_UISliderTickConfiguration)initWithNumberOfTicks:(int64_t)ticks behavior:(int64_t)behavior;
- (_UISliderTickConfiguration)initWithTicks:(id)ticks behavior:(int64_t)behavior;
- (id)copyWithZone:(void *)zone;
@end

@implementation _UISliderTickConfiguration

- (NSArray)ticks
{
  sub_188A34624(0, &unk_1EA92FD90);

  v2 = sub_18A4A7518();

  return v2;
}

- (_UISliderTickConfiguration)initWithTicks:(id)ticks behavior:(int64_t)behavior
{
  sub_188A34624(0, &unk_1EA92FD90);
  v5 = sub_18A4A7548();
  return _UISliderTickConfiguration.init(ticks:behavior:)(v5, behavior);
}

- (_UISliderTickConfiguration)initWithNumberOfTicks:(int64_t)ticks behavior:(int64_t)behavior
{
  sub_189017030(ticks);
  sub_188A34624(0, &unk_1EA92FD90);
  v6 = sub_18A4A7518();

  v7 = [(_UISliderTickConfiguration *)self initWithTicks:v6 behavior:behavior];

  *(&v7->super.isa + OBJC_IVAR____UISliderTickConfiguration__ticksAreEvenlySpaced) = 1;
  return v7;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  _UISliderTickConfiguration.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
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

  v6 = _UISliderTickConfiguration.isEqual(_:)(v8);

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

- (_UISliderTickConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end