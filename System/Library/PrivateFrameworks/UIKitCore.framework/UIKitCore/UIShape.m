@interface UIShape
+ (UIShape)fixedRectShapeWithRect:(CGRect)rect;
+ (UIShape)fixedRectShapeWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius;
+ (UIShape)fixedRectShapeWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius cornerCurve:(UICornerCurve)cornerCurve maskedCorners:(UIRectCorner)maskedCorners;
+ (UIShape)rectShapeWithCornerRadius:(CGFloat)cornerRadius;
+ (UIShape)rectShapeWithCornerRadius:(CGFloat)cornerRadius cornerCurve:(UICornerCurve)cornerCurve;
+ (UIShape)rectShapeWithCornerRadius:(CGFloat)cornerRadius cornerCurve:(UICornerCurve)cornerCurve maskedCorners:(UIRectCorner)maskedCorners;
+ (UIShape)shapeWithBezierPath:(UIBezierPath *)path;
+ (UIShape)shapeWithProvider:(id)provider;
+ (id)_contentShape;
- (BOOL)isEqual:(id)a3;
- (UIResolvedShape)resolvedShapeInContext:(UIShapeResolutionContext *)context;
- (UIShape)init;
- (UIShape)shapeByApplyingInset:(CGFloat)inset;
- (UIShape)shapeByApplyingInsets:(UIEdgeInsets)insets;
- (UIShape)shapeWithBezierPath:(id)a3;
- (UIShape)shapeWithProvider:(id)a3;
- (id)_resolvedShapeInRect:(CGRect)a3;
- (id)_resolvedShapeInView:(id)a3;
@end

@implementation UIShape

- (UIShape)init
{
  v2 = self + OBJC_IVAR___UIShape_value;
  *v2 = 1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  v2[56] = 6;
  v4.receiver = self;
  v4.super_class = UIShape;
  return [(UIShape *)&v4 init];
}

- (UIShape)shapeByApplyingInset:(CGFloat)inset
{
  v4 = (self + OBJC_IVAR___UIShape_value);
  v5 = *&self->value[OBJC_IVAR___UIShape_value + 8];
  v16 = *(&self->super.isa + OBJC_IVAR___UIShape_value);
  v17 = v5;
  v18[0] = *&self->value[OBJC_IVAR___UIShape_value + 24];
  *(v18 + 9) = *&self->value[OBJC_IVAR___UIShape_value + 33];
  v6 = swift_allocObject();
  *(v6 + 16) = inset;
  *(v6 + 24) = inset;
  *(v6 + 32) = inset;
  *(v6 + 40) = inset;
  v7 = v4[1];
  *(v6 + 48) = *v4;
  *(v6 + 64) = v7;
  *(v6 + 80) = v4[2];
  *(v6 + 89) = *(v4 + 41);
  v8 = objc_allocWithZone(UIShape);
  sub_188B20550(&v16, v19);
  v9 = [v8 init];
  v10 = &v9[OBJC_IVAR___UIShape_value];
  v12 = *&v9[OBJC_IVAR___UIShape_value + 16];
  v11 = *&v9[OBJC_IVAR___UIShape_value + 32];
  v13 = *&v9[OBJC_IVAR___UIShape_value];
  *&v20[9] = *&v9[OBJC_IVAR___UIShape_value + 41];
  v19[1] = v12;
  *v20 = v11;
  v19[0] = v13;
  *v10 = v6;
  v10[56] = 4;
  v14 = v9;
  sub_188B2040C(v19);

  return v14;
}

+ (UIShape)rectShapeWithCornerRadius:(CGFloat)cornerRadius
{
  v4 = [objc_allocWithZone(UIShape) init];
  v5 = &v4[OBJC_IVAR___UIShape_value];
  v6 = *&v4[OBJC_IVAR___UIShape_value];
  v7 = *&v4[OBJC_IVAR___UIShape_value + 16];
  v8 = *&v4[OBJC_IVAR___UIShape_value + 32];
  *&v12[9] = *&v4[OBJC_IVAR___UIShape_value + 41];
  v11[1] = v7;
  *v12 = v8;
  v11[0] = v6;
  *v5 = cornerRadius;
  *(v5 + 8) = xmmword_18A64D710;
  v5[56] = 0;
  v9 = v4;
  sub_188B2040C(v11);

  return v9;
}

- (UIShape)shapeByApplyingInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v7 = (self + OBJC_IVAR___UIShape_value);
  v8 = *&self->value[OBJC_IVAR___UIShape_value + 8];
  v19 = *(&self->super.isa + OBJC_IVAR___UIShape_value);
  v20 = v8;
  v21[0] = *&self->value[OBJC_IVAR___UIShape_value + 24];
  *(v21 + 9) = *&self->value[OBJC_IVAR___UIShape_value + 33];
  v9 = swift_allocObject();
  *(v9 + 16) = top;
  *(v9 + 24) = left;
  *(v9 + 32) = bottom;
  *(v9 + 40) = right;
  v10 = v7[1];
  *(v9 + 48) = *v7;
  *(v9 + 64) = v10;
  *(v9 + 80) = v7[2];
  *(v9 + 89) = *(v7 + 41);
  v11 = objc_allocWithZone(UIShape);
  sub_188B20550(&v19, v22);
  v12 = [v11 init];
  v13 = &v12[OBJC_IVAR___UIShape_value];
  v15 = *&v12[OBJC_IVAR___UIShape_value + 16];
  v14 = *&v12[OBJC_IVAR___UIShape_value + 32];
  v16 = *&v12[OBJC_IVAR___UIShape_value];
  *&v23[9] = *&v12[OBJC_IVAR___UIShape_value + 41];
  v22[1] = v15;
  *v23 = v14;
  v22[0] = v16;
  *v13 = v9;
  v13[56] = 4;
  v17 = v12;
  sub_188B2040C(v22);

  return v17;
}

+ (UIShape)rectShapeWithCornerRadius:(CGFloat)cornerRadius cornerCurve:(UICornerCurve)cornerCurve
{
  v6 = [objc_allocWithZone(UIShape) init];
  v7 = &v6[OBJC_IVAR___UIShape_value];
  v9 = *&v6[OBJC_IVAR___UIShape_value + 16];
  v8 = *&v6[OBJC_IVAR___UIShape_value + 32];
  v10 = *&v6[OBJC_IVAR___UIShape_value];
  *&v14[9] = *&v6[OBJC_IVAR___UIShape_value + 41];
  v13[1] = v9;
  *v14 = v8;
  v13[0] = v10;
  *v7 = cornerRadius;
  *(v7 + 1) = cornerCurve;
  *(v7 + 2) = -1;
  v7[56] = 0;
  v11 = v6;
  sub_188B2040C(v13);

  return v11;
}

+ (UIShape)rectShapeWithCornerRadius:(CGFloat)cornerRadius cornerCurve:(UICornerCurve)cornerCurve maskedCorners:(UIRectCorner)maskedCorners
{
  v8 = [objc_allocWithZone(UIShape) init];
  v9 = &v8[OBJC_IVAR___UIShape_value];
  v11 = *&v8[OBJC_IVAR___UIShape_value + 16];
  v10 = *&v8[OBJC_IVAR___UIShape_value + 32];
  v12 = *&v8[OBJC_IVAR___UIShape_value];
  *&v16[9] = *&v8[OBJC_IVAR___UIShape_value + 41];
  v15[1] = v11;
  *v16 = v10;
  v15[0] = v12;
  *v9 = cornerRadius;
  *(v9 + 1) = cornerCurve;
  *(v9 + 2) = maskedCorners;
  v9[56] = 0;
  v13 = v8;
  sub_188B2040C(v15);

  return v13;
}

+ (UIShape)fixedRectShapeWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = [objc_allocWithZone(UIShape) init];
  v8 = &v7[OBJC_IVAR___UIShape_value];
  v9 = *&v7[OBJC_IVAR___UIShape_value];
  v10 = *&v7[OBJC_IVAR___UIShape_value + 16];
  v11 = *&v7[OBJC_IVAR___UIShape_value + 32];
  *&v15[9] = *&v7[OBJC_IVAR___UIShape_value + 41];
  v14[1] = v10;
  *v15 = v11;
  v14[0] = v9;
  *v8 = x;
  v8[1] = y;
  v8[2] = width;
  v8[3] = height;
  v8[4] = 0.0;
  v8[5] = 0.0;
  v8[6] = NAN;
  *(v8 + 56) = 1;
  v12 = v7;
  sub_188B2040C(v14);

  return v12;
}

+ (UIShape)fixedRectShapeWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [objc_allocWithZone(UIShape) init];
  v10 = &v9[OBJC_IVAR___UIShape_value];
  v11 = *&v9[OBJC_IVAR___UIShape_value];
  v12 = *&v9[OBJC_IVAR___UIShape_value + 16];
  v13 = *&v9[OBJC_IVAR___UIShape_value + 32];
  *&v17[9] = *&v9[OBJC_IVAR___UIShape_value + 41];
  v16[1] = v12;
  *v17 = v13;
  v16[0] = v11;
  *v10 = x;
  *(v10 + 1) = y;
  *(v10 + 2) = width;
  *(v10 + 3) = height;
  *(v10 + 4) = cornerRadius;
  *(v10 + 40) = xmmword_18A64D710;
  v10[56] = 1;
  v14 = v9;
  sub_188B2040C(v16);

  return v14;
}

+ (UIShape)fixedRectShapeWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius cornerCurve:(UICornerCurve)cornerCurve maskedCorners:(UIRectCorner)maskedCorners
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = [objc_allocWithZone(UIShape) init];
  v14 = &v13[OBJC_IVAR___UIShape_value];
  v16 = *&v13[OBJC_IVAR___UIShape_value + 16];
  v15 = *&v13[OBJC_IVAR___UIShape_value + 32];
  v17 = *&v13[OBJC_IVAR___UIShape_value];
  *&v21[9] = *&v13[OBJC_IVAR___UIShape_value + 41];
  v20[1] = v16;
  *v21 = v15;
  v20[0] = v17;
  *v14 = x;
  v14[1] = y;
  v14[2] = width;
  v14[3] = height;
  v14[4] = cornerRadius;
  *(v14 + 5) = cornerCurve;
  *(v14 + 6) = maskedCorners;
  *(v14 + 56) = 1;
  v18 = v13;
  sub_188B2040C(v20);

  return v18;
}

- (UIShape)shapeWithBezierPath:(id)a3
{
  v4 = objc_allocWithZone(swift_getObjCClassFromObject());
  v5 = a3;
  v6 = [v4 init];
  v7 = &v6[OBJC_IVAR___UIShape_value];
  v9 = *&v6[OBJC_IVAR___UIShape_value + 16];
  v8 = *&v6[OBJC_IVAR___UIShape_value + 32];
  v10 = *&v6[OBJC_IVAR___UIShape_value];
  *&v14[9] = *&v6[OBJC_IVAR___UIShape_value + 41];
  v13[1] = v9;
  *v14 = v8;
  v13[0] = v10;
  *v7 = v5;
  v7[56] = 2;
  v11 = v6;
  sub_188B2040C(v13);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (UIShape)shapeWithProvider:(id)a3
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940F40);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = objc_allocWithZone(ObjCClassFromObject);
  swift_unknownObjectRetain();
  v7 = [v6 init];
  v8 = &v7[OBJC_IVAR___UIShape_value];
  v10 = *&v7[OBJC_IVAR___UIShape_value + 16];
  v9 = *&v7[OBJC_IVAR___UIShape_value + 32];
  v11 = *&v7[OBJC_IVAR___UIShape_value];
  *&v15[9] = *&v7[OBJC_IVAR___UIShape_value + 41];
  v14[1] = v10;
  *v15 = v9;
  v14[0] = v11;
  *v8 = v5;
  v8[56] = 3;
  v12 = v7;
  sub_188B2040C(v14);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

- (UIResolvedShape)resolvedShapeInContext:(UIShapeResolutionContext *)context
{
  v4 = context;
  v5 = self;
  v6 = sub_18922D56C(v4);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = UIShape.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6 & 1;
}

- (id)_resolvedShapeInView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_18922DB94(v4);

  return v6;
}

- (id)_resolvedShapeInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_18922DD90(x, y, width, height);

  return v8;
}

+ (id)_contentShape
{
  v2 = [objc_allocWithZone(UIShape) init];
  v3 = &v2[OBJC_IVAR___UIShape_value];
  v4 = *&v2[OBJC_IVAR___UIShape_value];
  v5 = *&v2[OBJC_IVAR___UIShape_value + 16];
  v6 = *&v2[OBJC_IVAR___UIShape_value + 32];
  *&v10[9] = *&v2[OBJC_IVAR___UIShape_value + 41];
  v9[1] = v5;
  *v10 = v6;
  v9[0] = v4;
  *(v3 + 6) = 0;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v3[56] = 6;
  v7 = v2;
  sub_188B2040C(v9);

  return v7;
}

+ (UIShape)shapeWithBezierPath:(UIBezierPath *)path
{
  v4 = objc_allocWithZone(UIShape);
  v5 = path;
  v6 = [v4 init];
  v7 = &v6[OBJC_IVAR___UIShape_value];
  v9 = *&v6[OBJC_IVAR___UIShape_value + 16];
  v8 = *&v6[OBJC_IVAR___UIShape_value + 32];
  v10 = *&v6[OBJC_IVAR___UIShape_value];
  *&v14[9] = *&v6[OBJC_IVAR___UIShape_value + 41];
  v13[1] = v9;
  *v14 = v8;
  v13[0] = v10;
  *v7 = v5;
  v7[56] = 2;
  v11 = v6;
  sub_188B2040C(v13);

  return v11;
}

+ (UIShape)shapeWithProvider:(id)provider
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940F40);
  v4 = swift_allocObject();
  *(v4 + 16) = provider;
  v5 = objc_allocWithZone(UIShape);
  swift_unknownObjectRetain();
  v6 = [v5 init];
  v7 = &v6[OBJC_IVAR___UIShape_value];
  v9 = *&v6[OBJC_IVAR___UIShape_value + 16];
  v8 = *&v6[OBJC_IVAR___UIShape_value + 32];
  v10 = *&v6[OBJC_IVAR___UIShape_value];
  *&v14[9] = *&v6[OBJC_IVAR___UIShape_value + 41];
  v13[1] = v9;
  *v14 = v8;
  v13[0] = v10;
  *v7 = v4;
  v7[56] = 3;
  v11 = v6;
  sub_188B2040C(v13);

  return v11;
}

@end