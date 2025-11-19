@interface _UISliderGlassVisualElement
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)additionalTrackingViews;
- (UIEdgeInsets)thumbHitEdgeInsets;
- (void)didSetThumbImageForState:(unint64_t)a3;
- (void)didSetThumbImageForStates;
- (void)didSetThumbTintColor;
- (void)didUpdateSliderStyle;
- (void)handleExpansionGesture:(id)a3;
@end

@implementation _UISliderGlassVisualElement

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = self;
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
  v3 = self;
  if (v2())
  {

    v4 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18A64B710;
    v6 = *&v3->_TtC5UIKit27_UISliderFluidVisualElement_opaque[OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView];
    *(v5 + 32) = v6;
    v7 = v6;

    sub_188A34624(0, &qword_1ED48F680);
    v8 = sub_18A4A7518();

    v4 = v8;
  }

  return v4;
}

- (void)handleExpansionGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188E99B10(v4);
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  v3 = self;
  sub_188E99D98();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_UISliderGlassVisualElement *)self _intrinsicSizeWithinSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didSetThumbImageForStates
{
  v2 = self;
  sub_188E99F7C();
}

- (void)didSetThumbImageForState:(unint64_t)a3
{
  v3 = self;
  sub_188E99F7C();
}

- (void)didSetThumbTintColor
{
  v2 = self;
  sub_188E9A340();
}

- (void)didUpdateSliderStyle
{
  v2 = self;
  sub_188E9A448();
}

- (UIEdgeInsets)thumbHitEdgeInsets
{
  v2 = self;
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