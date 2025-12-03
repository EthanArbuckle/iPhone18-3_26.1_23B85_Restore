@interface _UISliderGlassVisualElement
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)additionalTrackingViews;
- (UIEdgeInsets)thumbHitEdgeInsets;
- (void)didSetThumbImageForState:(unint64_t)state;
- (void)didSetThumbImageForStates;
- (void)didSetThumbTintColor;
- (void)didUpdateSliderStyle;
- (void)handleExpansionGesture:(id)gesture;
@end

@implementation _UISliderGlassVisualElement

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_188BFF438(x, y, width, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (NSArray)additionalTrackingViews
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self->_TtC5UIKit27_UISliderFluidVisualElement_opaque) + 0x4F8);
  selfCopy = self;
  if (v2())
  {

    v4 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18A64B710;
    v6 = *&selfCopy->_TtC5UIKit27_UISliderFluidVisualElement_opaque[OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView];
    *(v5 + 32) = v6;
    v7 = v6;

    sub_188A34624(0, &qword_1ED48F680);
    v8 = sub_18A4A7518();

    v4 = v8;
  }

  return v4;
}

- (void)handleExpansionGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_188E99B10(gestureCopy);
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  selfCopy = self;
  sub_188E99D98();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_UISliderGlassVisualElement *)self _intrinsicSizeWithinSize:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didSetThumbImageForStates
{
  selfCopy = self;
  sub_188E99F7C();
}

- (void)didSetThumbImageForState:(unint64_t)state
{
  selfCopy = self;
  sub_188E99F7C();
}

- (void)didSetThumbTintColor
{
  selfCopy = self;
  sub_188E9A340();
}

- (void)didUpdateSliderStyle
{
  selfCopy = self;
  sub_188E9A448();
}

- (UIEdgeInsets)thumbHitEdgeInsets
{
  selfCopy = self;
  sub_188E9A594();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

@end