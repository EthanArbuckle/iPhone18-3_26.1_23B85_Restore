@interface UIResolvedShape
- (CGRect)boundingRect;
- (UIBezierPath)path;
- (UIResolvedShape)shapeByApplyingInset:(CGFloat)inset;
- (UIResolvedShape)shapeByApplyingInsets:(UIEdgeInsets)insets;
- (UIShape)shape;
- (id)_shapeByClippingToShape:(id)a3;
- (id)_shapeByConvertingFromSpace:(id)a3 toSpace:(id)a4;
@end

@implementation UIResolvedShape

- (UIBezierPath)path
{
  v2 = self;
  v3 = sub_18922E240();

  return v3;
}

- (UIShape)shape
{
  v2 = self;
  v3 = sub_18922E3A4();

  return v3;
}

- (CGRect)boundingRect
{
  v2 = (self + OBJC_IVAR___UIResolvedShape_value);
  v3 = *&self->value[OBJC_IVAR___UIResolvedShape_value + 64];
  v4 = *&self->value[OBJC_IVAR___UIResolvedShape_value + 72];
  v5 = *&self->value[OBJC_IVAR___UIResolvedShape_value + 80];
  if (self->value[OBJC_IVAR___UIResolvedShape_value + 112])
  {
    v6 = *&self->value[OBJC_IVAR___UIResolvedShape_value + 64];
    v3 = *&self->value[OBJC_IVAR___UIResolvedShape_value + 72];
    v4 = *&self->value[OBJC_IVAR___UIResolvedShape_value + 80];
    v5 = v2[12];
  }

  else
  {
    v6 = v2[8];
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v6;
  return result;
}

- (UIResolvedShape)shapeByApplyingInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v7 = self;
  v8 = sub_18922E4E0(top, left, bottom, right);

  return v8;
}

- (UIResolvedShape)shapeByApplyingInset:(CGFloat)inset
{
  v4 = self;
  v5 = sub_18922E790(inset);

  return v5;
}

- (id)_shapeByClippingToShape:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_18922EBF4(v4);

  return v6;
}

- (id)_shapeByConvertingFromSpace:(id)a3 toSpace:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_18922EE6C(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8;
}

@end