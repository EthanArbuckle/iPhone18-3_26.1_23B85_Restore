@interface UISliderTrackConfiguration
+ (id)configurationWithNumberOfTicks:(int64_t)a3;
+ (id)configurationWithTicks:(id)a3;
- (BOOL)adjustPositionForTargetPosition:(float)a3 adjustedPosition:(float *)a4 startPosition:(float *)a5 endPosition:(float *)a6;
- (NSArray)ticks;
- (UISliderTrackConfiguration)init;
- (UISliderTrackConfiguration)initWithCoder:(id)a3;
- (UISliderTrackConfiguration)initWithTicks:(id)a3 number:(int64_t)a4 evenlySpaced:(BOOL)a5;
- (int64_t)behavior;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setMaximumEnabledValue:(float)a3;
- (void)setMinimumEnabledValue:(float)a3;
@end

@implementation UISliderTrackConfiguration

- (void)setMinimumEnabledValue:(float)a3
{
  if (*&self->_configuration[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4] < a3)
  {
    __break(1u);
  }

  else
  {
    *&self->_configuration[OBJC_IVAR___UISliderTrackConfiguration__configuration] = a3;
  }
}

- (void)setMaximumEnabledValue:(float)a3
{
  if (*&self->_configuration[OBJC_IVAR___UISliderTrackConfiguration__configuration] > a3)
  {
    __break(1u);
  }

  else
  {
    *&self->_configuration[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4] = a3;
  }
}

- (NSArray)ticks
{
  v2 = sub_1891C96C4();
  type metadata accessor for UISliderTick(v2);
  v3 = sub_18A4A7518();

  return v3;
}

- (int64_t)behavior
{
  if ([(UISliderTrackConfiguration *)self allowsTickValuesOnly])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)adjustPositionForTargetPosition:(float)a3 adjustedPosition:(float *)a4 startPosition:(float *)a5 endPosition:(float *)a6
{
  v10 = self;
  v11 = sub_1891C8D10(v10, a3);
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

- (UISliderTrackConfiguration)initWithTicks:(id)a3 number:(int64_t)a4 evenlySpaced:(BOOL)a5
{
  if (a3)
  {
    type metadata accessor for UISliderTick(self);
    v7 = sub_18A4A7548();
  }

  else
  {
    v7 = 0;
  }

  return sub_1891CABE0(v7, a4, a5);
}

+ (id)configurationWithTicks:(id)a3
{
  type metadata accessor for UISliderTick(a1);
  v3 = sub_18A4A7548();
  swift_getObjCClassMetadata();
  v4 = sub_1891CAF2C(v3);

  return v4;
}

+ (id)configurationWithNumberOfTicks:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_1891CB038(a3);

  return v4;
}

- (int64_t)hash
{
  v3 = *&self->_configuration[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4];
  v4 = *&self->_configuration[OBJC_IVAR___UISliderTrackConfiguration__configuration + 8];
  v5 = self->_configuration[OBJC_IVAR___UISliderTrackConfiguration__configuration + 16];
  v9[72] = *(&self->super.isa + OBJC_IVAR___UISliderTrackConfiguration__configuration);
  v10 = *(&self->super.isa + OBJC_IVAR___UISliderTrackConfiguration__configuration + 4);
  v11 = v3;
  v12 = v4;
  v13 = v5;
  sub_18A4A8888();
  v6 = self;

  UISlider.TrackConfiguration.hash(into:)(v9);
  v7 = sub_18A4A88E8();

  return v7;
}

- (UISliderTrackConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1891CC9E8(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1891CB790(v4);
}

- (UISliderTrackConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end