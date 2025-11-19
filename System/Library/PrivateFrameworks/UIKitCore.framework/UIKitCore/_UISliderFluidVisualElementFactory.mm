@interface _UISliderFluidVisualElementFactory
+ (BOOL)visualElement:(id)a3 needsUpdateForStyle:(int64_t)a4 hasTrackImages:(BOOL)a5;
+ (id)fluidVisualElementForStyle:(int64_t)a3 hasTrackImages:(BOOL)a4;
- (_UISliderFluidVisualElementFactory)init;
@end

@implementation _UISliderFluidVisualElementFactory

+ (id)fluidVisualElementForStyle:(int64_t)a3 hasTrackImages:(BOOL)a4
{
  v4 = sub_188BFA838(a3, a4);

  return v4;
}

+ (BOOL)visualElement:(id)a3 needsUpdateForStyle:(int64_t)a4 hasTrackImages:(BOOL)a5
{
  v5 = a5;
  if ((a4 - 100) >= 0x15 || ((0x100C03u >> (a4 - 100)) & 1) == 0)
  {
    v7 = a3;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v6 = 0;

      return v6;
    }

    if (v5)
    {
      if (v7)
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
LABEL_11:
        v6 = v8 == 0;

        return v6;
      }
    }

    else if (v7)
    {
      type metadata accessor for _UISliderGlassVisualElement();
      v8 = swift_dynamicCastClass();
      goto LABEL_11;
    }

    return 1;
  }

  return 0;
}

- (_UISliderFluidVisualElementFactory)init
{
  v3.receiver = self;
  v3.super_class = _UISliderFluidVisualElementFactory;
  return [(_UISliderFluidVisualElementFactory *)&v3 init];
}

@end