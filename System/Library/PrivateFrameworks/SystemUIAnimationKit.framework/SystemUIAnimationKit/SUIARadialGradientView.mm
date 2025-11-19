@interface SUIARadialGradientView
+ (Class)layerClass;
+ (void)calculateDescriptionForGradientMajorDiameter:(double)a3 ringWidth:(double)a4 blurRadius:(double)a5 numberOfSamples:(int64_t)a6 completion:(id)a7;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (NSArray)colors;
- (NSArray)locations;
- (SUIARadialGradientView)initWithCoder:(id)a3;
- (void)setColors:(id)a3;
- (void)setLocations:(id)a3;
@end

@implementation SUIARadialGradientView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_26C614E48();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
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

- (SUIARadialGradientView)initWithCoder:(id)a3
{
  result = sub_26C6150B8();
  __break(1u);
  return result;
}

- (NSArray)colors
{
  v2 = self;
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

- (void)setColors:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_26C5CC548(0, &qword_28125E430);
    v3 = sub_26C614EC8();
  }

  v5 = self;
  SUIARadialGradientView.colors.setter(v3);
}

- (NSArray)locations
{
  v2 = self;
  v3 = [(SUIARadialGradientView *)v2 layer];
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() locations];

  if (v4)
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

- (void)setLocations:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_26C5CC548(0, &unk_28125E420);
    v3 = sub_26C614EC8();
  }

  v9 = self;
  v5 = [(SUIARadialGradientView *)v9 layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  if (v3)
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

+ (void)calculateDescriptionForGradientMajorDiameter:(double)a3 ringWidth:(double)a4 blurRadius:(double)a5 numberOfSamples:(int64_t)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  sub_26C613EA0(a6, v11, a3, a4, a5);

  _Block_release(v11);
}

@end