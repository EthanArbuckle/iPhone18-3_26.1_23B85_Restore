@interface SUIARadialGradientView
+ (Class)layerClass;
+ (void)calculateDescriptionForGradientMajorDiameter:(double)diameter ringWidth:(double)width blurRadius:(double)radius numberOfSamples:(int64_t)samples completion:(id)completion;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (NSArray)colors;
- (NSArray)locations;
- (SUIARadialGradientView)initWithCoder:(id)coder;
- (void)setColors:(id)colors;
- (void)setLocations:(id)locations;
@end

@implementation SUIARadialGradientView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_26C614E48();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = SUIARadialGradientView._shouldAnimateProperty(withKey:)(v8);

  return v9;
}

+ (Class)layerClass
{
  sub_26C5CC548(0, &qword_28125E448);

  return swift_getObjCClassFromMetadata();
}

- (SUIARadialGradientView)initWithCoder:(id)coder
{
  result = sub_26C6150B8();
  __break(1u);
  return result;
}

- (NSArray)colors
{
  selfCopy = self;
  v3 = SUIARadialGradientView.colors.getter();

  if (v3)
  {
    sub_26C5CC548(0, &qword_28125E430);
    v4 = sub_26C614EB8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setColors:(id)colors
{
  colorsCopy = colors;
  if (colors)
  {
    sub_26C5CC548(0, &qword_28125E430);
    colorsCopy = sub_26C614EC8();
  }

  selfCopy = self;
  SUIARadialGradientView.colors.setter(colorsCopy);
}

- (NSArray)locations
{
  selfCopy = self;
  layer = [(SUIARadialGradientView *)selfCopy layer];
  objc_opt_self();
  locations = [swift_dynamicCastObjCClassUnconditional() locations];

  if (locations)
  {
    sub_26C5CC548(0, &unk_28125E420);
    sub_26C614EC8();

    v5 = sub_26C614EB8();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  if (locations)
  {
    sub_26C5CC548(0, &unk_28125E420);
    locationsCopy = sub_26C614EC8();
  }

  selfCopy = self;
  layer = [(SUIARadialGradientView *)selfCopy layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  if (locationsCopy)
  {
    v7 = v6;
    sub_26C5CC548(0, &unk_28125E420);
    v8 = sub_26C614EB8();

    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  [v6 setLocations_];
}

+ (void)calculateDescriptionForGradientMajorDiameter:(double)diameter ringWidth:(double)width blurRadius:(double)radius numberOfSamples:(int64_t)samples completion:(id)completion
{
  v11 = _Block_copy(completion);
  sub_26C613EA0(samples, v11, diameter, width, radius);

  _Block_release(v11);
}

@end