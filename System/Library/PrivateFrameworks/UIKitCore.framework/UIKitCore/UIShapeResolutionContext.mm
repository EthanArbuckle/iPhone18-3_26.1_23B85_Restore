@interface UIShapeResolutionContext
- (UIResolvedShape)contentShape;
- (UIShapeResolutionContext)initWithView:(id)a3;
@end

@implementation UIShapeResolutionContext

- (UIShapeResolutionContext)initWithView:(id)a3
{
  v4 = a3;
  v5 = [(UIShapeResolutionContext *)self init];
  v6 = [v4 layer];
  sub_188E83750(v18);

  v7 = (v5 + OBJC_IVAR___UIShapeResolutionContext_value);
  v8 = *&v5->value[OBJC_IVAR___UIShapeResolutionContext_value + 40];
  v10 = *(&v5->super.isa + OBJC_IVAR___UIShapeResolutionContext_value);
  v9 = *&v5->value[OBJC_IVAR___UIShapeResolutionContext_value + 8];
  v20[2] = *&v5->value[OBJC_IVAR___UIShapeResolutionContext_value + 24];
  v20[3] = v8;
  v20[0] = v10;
  v20[1] = v9;
  v12 = *&v5->value[OBJC_IVAR___UIShapeResolutionContext_value + 72];
  v11 = *&v5->value[OBJC_IVAR___UIShapeResolutionContext_value + 88];
  v13 = *&v5->value[OBJC_IVAR___UIShapeResolutionContext_value + 56];
  *&v21[9] = *&v5->value[OBJC_IVAR___UIShapeResolutionContext_value + 97];
  v20[5] = v12;
  *v21 = v11;
  v20[4] = v13;
  v14 = v18[5];
  v7[4] = v18[4];
  v7[5] = v14;
  v7[6] = v19[0];
  *(v7 + 105) = *(v19 + 9);
  v15 = v18[1];
  *v7 = v18[0];
  v7[1] = v15;
  v16 = v18[3];
  v7[2] = v18[2];
  v7[3] = v16;
  sub_188E81DCC(v20);

  return v5;
}

- (UIResolvedShape)contentShape
{
  v2 = self;
  v3 = sub_18922F2A8();

  return v3;
}

@end