@interface UISliderTrackConfiguration
+ (id)configurationWithNumberOfTicks:(int64_t)ticks;
+ (id)configurationWithTicks:(id)ticks;
- (BOOL)adjustPositionForTargetPosition:(float)position adjustedPosition:(float *)adjustedPosition startPosition:(float *)startPosition endPosition:(float *)endPosition;
- (NSArray)ticks;
- (UISliderTrackConfiguration)init;
- (UISliderTrackConfiguration)initWithCoder:(id)coder;
- (UISliderTrackConfiguration)initWithTicks:(id)ticks number:(int64_t)number evenlySpaced:(BOOL)spaced;
- (int64_t)behavior;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setMaximumEnabledValue:(float)value;
- (void)setMinimumEnabledValue:(float)value;
@end

@implementation UISliderTrackConfiguration

- (void)setMinimumEnabledValue:(float)value
{
  if (*&self->_configuration[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4] < value)
  {
    __break(1u);
  }

  else
  {
    *&self->_configuration[OBJC_IVAR___UISliderTrackConfiguration__configuration] = value;
  }
}

- (void)setMaximumEnabledValue:(float)value
{
  if (*&self->_configuration[OBJC_IVAR___UISliderTrackConfiguration__configuration] > value)
  {
    __break(1u);
  }

  else
  {
    *&self->_configuration[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4] = value;
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

- (BOOL)adjustPositionForTargetPosition:(float)position adjustedPosition:(float *)adjustedPosition startPosition:(float *)startPosition endPosition:(float *)endPosition
{
  selfCopy = self;
  v11 = sub_1891C8D10(selfCopy, position);
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

- (UISliderTrackConfiguration)initWithTicks:(id)ticks number:(int64_t)number evenlySpaced:(BOOL)spaced
{
  if (ticks)
  {
    type metadata accessor for UISliderTick(self);
    v7 = sub_18A4A7548();
  }

  else
  {
    v7 = 0;
  }

  return sub_1891CABE0(v7, number, spaced);
}

+ (id)configurationWithTicks:(id)ticks
{
  type metadata accessor for UISliderTick(self);
  v3 = sub_18A4A7548();
  swift_getObjCClassMetadata();
  v4 = sub_1891CAF2C(v3);

  return v4;
}

+ (id)configurationWithNumberOfTicks:(int64_t)ticks
{
  swift_getObjCClassMetadata();
  v4 = sub_1891CB038(ticks);

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
  selfCopy = self;

  UISlider.TrackConfiguration.hash(into:)(v9);
  v7 = sub_18A4A88E8();

  return v7;
}

- (UISliderTrackConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1891CC9E8(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1891CB790(coderCopy);
}

- (UISliderTrackConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end