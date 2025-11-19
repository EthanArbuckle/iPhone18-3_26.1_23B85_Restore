@interface _UISliderColorVisualElement
- (NSArray)additionalTrackingViews;
- (void)didUpdateConfiguration;
@end

@implementation _UISliderColorVisualElement

- (NSArray)additionalTrackingViews
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18A64E3F0;
  v4 = *&self->super._TtC5UIKit27_UISliderFluidVisualElement_opaque[OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_colorKnobView];
  v5 = *&self->super._TtC5UIKit27_UISliderFluidVisualElement_opaque[OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_188A34624(0, &qword_1ED48F680);
  v6 = v4;
  v7 = v5;
  v8 = sub_18A4A7518();

  return v8;
}

- (void)didUpdateConfiguration
{
  v2 = self;
  sub_188E9B5F8();
}

@end