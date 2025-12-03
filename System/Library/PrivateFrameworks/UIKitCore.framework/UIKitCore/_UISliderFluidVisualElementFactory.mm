@interface _UISliderFluidVisualElementFactory
+ (BOOL)visualElement:(id)element needsUpdateForStyle:(int64_t)style hasTrackImages:(BOOL)images;
+ (id)fluidVisualElementForStyle:(int64_t)style hasTrackImages:(BOOL)images;
- (_UISliderFluidVisualElementFactory)init;
@end

@implementation _UISliderFluidVisualElementFactory

+ (id)fluidVisualElementForStyle:(int64_t)style hasTrackImages:(BOOL)images
{
  v4 = sub_188BFA838(style, images);

  return v4;
}

+ (BOOL)visualElement:(id)element needsUpdateForStyle:(int64_t)style hasTrackImages:(BOOL)images
{
  imagesCopy = images;
  if ((style - 100) >= 0x15 || ((0x100C03u >> (style - 100)) & 1) == 0)
  {
    elementCopy = element;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v6 = 0;

      return v6;
    }

    if (imagesCopy)
    {
      if (elementCopy)
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
LABEL_11:
        v6 = v8 == 0;

        return v6;
      }
    }

    else if (elementCopy)
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