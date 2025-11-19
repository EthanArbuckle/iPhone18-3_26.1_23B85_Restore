@interface _UISliderTickConfiguration
- (BOOL)adjustPositionForTargetPosition:(float)a3 adjustedPosition:(float *)a4 startPosition:(float *)a5 endPosition:(float *)a6;
- (BOOL)isEqual:(id)a3;
- (NSArray)ticks;
- (_UISliderTickConfiguration)init;
- (_UISliderTickConfiguration)initWithNumberOfTicks:(int64_t)a3 behavior:(int64_t)a4;
- (_UISliderTickConfiguration)initWithTicks:(id)a3 behavior:(int64_t)a4;
- (id)copyWithZone:(void *)a3;
@end

@implementation _UISliderTickConfiguration

- (NSArray)ticks
{
  sub_188A34624(0, &unk_1EA92FD90);

  v2 = sub_18A4A7518();

  return v2;
}

- (_UISliderTickConfiguration)initWithTicks:(id)a3 behavior:(int64_t)a4
{
  sub_188A34624(0, &unk_1EA92FD90);
  v5 = sub_18A4A7548();
  return _UISliderTickConfiguration.init(ticks:behavior:)(v5, a4);
}

- (_UISliderTickConfiguration)initWithNumberOfTicks:(int64_t)a3 behavior:(int64_t)a4
{
  sub_189017030(a3);
  sub_188A34624(0, &unk_1EA92FD90);
  v6 = sub_18A4A7518();

  v7 = [(_UISliderTickConfiguration *)self initWithTicks:v6 behavior:a4];

  *(&v7->super.isa + OBJC_IVAR____UISliderTickConfiguration__ticksAreEvenlySpaced) = 1;
  return v7;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  _UISliderTickConfiguration.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
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

  v6 = _UISliderTickConfiguration.isEqual(_:)(v8);

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

- (_UISliderTickConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end