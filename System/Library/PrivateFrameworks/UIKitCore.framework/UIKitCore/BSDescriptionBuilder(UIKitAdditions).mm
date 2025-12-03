@interface BSDescriptionBuilder(UIKitAdditions)
- (id)ui_appendInterfaceOrientation:()UIKitAdditions withName:skipIfUnknown:;
- (id)ui_appendInterfaceOrientationMask:()UIKitAdditions withName:skipIfEmpty:;
- (id)ui_appendReferenceDisplayModeStatus:()UIKitAdditions withName:skipIfNotSupported:;
- (id)ui_appendTransform:()UIKitAdditions withName:;
- (id)ui_appendUserInterfaceIdiom:()UIKitAdditions withName:skipIfEmpty:;
- (void)ui_appendArray:()UIKitAdditions withName:skipIfEmpty:;
- (void)ui_appendCornerRadii:()UIKitAdditions withName:;
- (void)ui_appendEdgeInsets:()UIKitAdditions withName:;
- (void)ui_appendFloat:()UIKitAdditions withName:;
- (void)ui_appendFloat:()UIKitAdditions withName:ifNotEqualTo:;
- (void)ui_appendInteger:()UIKitAdditions withName:ifNotEqualTo:;
- (void)ui_appendObject:()UIKitAdditions withName:usingLightweightDescription:;
- (void)ui_appendPoint3D:()UIKitAdditions withName:;
- (void)ui_appendRect:()UIKitAdditions withName:ifNotEqualTo:;
- (void)ui_appendSet:()UIKitAdditions withName:skipIfEmpty:;
- (void)ui_appendTransform:()UIKitAdditions withName:skipIfIdentity:;
- (void)ui_appendVector:()UIKitAdditions withName:decimalPrecision:;
@end

@implementation BSDescriptionBuilder(UIKitAdditions)

- (void)ui_appendObject:()UIKitAdditions withName:usingLightweightDescription:
{
  v8 = a3;
  v9 = v8;
  if (v8 && a5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __93__BSDescriptionBuilder_UIKitAdditions__ui_appendObject_withName_usingLightweightDescription___block_invoke;
    v12[3] = &unk_1E70FA340;
    v13 = v8;
    [self appendCustomFormatWithName:a4 block:v12];
  }

  else
  {
    v10 = [self appendObject:v8 withName:a4];
  }

  return self;
}

- (void)ui_appendArray:()UIKitAdditions withName:skipIfEmpty:
{
  v8 = a3;
  v9 = a4;
  if ([v8 count] || (a5 & 1) == 0)
  {
    v10 = [self appendObject:v8 withName:v9];
  }

  return self;
}

- (void)ui_appendSet:()UIKitAdditions withName:skipIfEmpty:
{
  v8 = a3;
  v9 = a4;
  if ([v8 count] || (a5 & 1) == 0)
  {
    v10 = [self appendObject:v8 withName:v9];
  }

  return self;
}

- (void)ui_appendFloat:()UIKitAdditions withName:
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__BSDescriptionBuilder_UIKitAdditions__ui_appendFloat_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
  *&v6[4] = a2;
  [self appendCustomFormatWithName:a4 block:v6];
  return self;
}

- (void)ui_appendPoint3D:()UIKitAdditions withName:
{
  v10 = a6;
  v11 = _NSStringFromCAPoint3D(a2, a3, a4);
  v12 = [self appendObject:v11 withName:v10];

  return self;
}

- (void)ui_appendVector:()UIKitAdditions withName:decimalPrecision:
{
  v10 = a5;
  if (a6 == -1)
  {
    v15.dx = a2;
    v15.dy = a3;
    v11 = NSStringFromCGVector(v15);
    v12 = [self appendObject:v11 withName:v10];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__BSDescriptionBuilder_UIKitAdditions__ui_appendVector_withName_decimalPrecision___block_invoke;
    v14[3] = &__block_descriptor_56_e43_v16__0___BSDescriptionStringAppendTarget__8l;
    v14[4] = a6;
    *&v14[5] = a2;
    *&v14[6] = a3;
    [self appendCustomFormatWithName:v10 block:v14];
  }

  return self;
}

- (void)ui_appendEdgeInsets:()UIKitAdditions withName:
{
  v12 = a7;
  v15.top = a2;
  v15.left = a3;
  v15.bottom = a4;
  v15.right = a5;
  v13 = NSStringFromUIEdgeInsets(v15);
  [self appendString:v13 withName:v12];

  return self;
}

- (void)ui_appendCornerRadii:()UIKitAdditions withName:
{
  v12 = a7;
  v13 = NSStringFromUIRectCornerRadii(a2, a3, a4, a5);
  [self appendString:v13 withName:v12];

  return self;
}

- (void)ui_appendInteger:()UIKitAdditions withName:ifNotEqualTo:
{
  if (a3 != a5)
  {
    v6 = [self appendInteger:? withName:?];
  }

  return self;
}

- (void)ui_appendFloat:()UIKitAdditions withName:ifNotEqualTo:
{
  if (a2 != a3)
  {
    v4 = [self ui_appendFloat:? withName:?];
  }

  return self;
}

- (void)ui_appendRect:()UIKitAdditions withName:ifNotEqualTo:
{
  v20 = a11;
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v24.origin.x = a6;
  v24.origin.y = a7;
  v24.size.width = a8;
  v24.size.height = a9;
  if (!CGRectEqualToRect(v23, v24))
  {
    v21 = [self appendRect:v20 withName:{a2, a3, a4, a5}];
  }

  return self;
}

- (id)ui_appendTransform:()UIKitAdditions withName:
{
  v4 = a3[1];
  v7[0] = *a3;
  v7[1] = v4;
  v7[2] = a3[2];
  v5 = [self ui_appendTransform:v7 withName:a4 skipIfIdentity:0];

  return v5;
}

- (void)ui_appendTransform:()UIKitAdditions withName:skipIfIdentity:
{
  v8 = a4;
  v9 = a3[1];
  *&v17.a = *a3;
  *&v17.c = v9;
  *&v17.tx = a3[2];
  if (!CGAffineTransformIsIdentity(&v17) || (a5 & 1) == 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__BSDescriptionBuilder_UIKitAdditions__ui_appendTransform_withName_skipIfIdentity___block_invoke;
    v13[3] = &__block_descriptor_80_e43_v16__0___BSDescriptionStringAppendTarget__8l;
    v10 = a3[1];
    v14 = *a3;
    v15 = v10;
    v16 = a3[2];
    [self appendCustomFormatWithName:v8 block:v13];
  }

  selfCopy = self;

  return self;
}

- (id)ui_appendInterfaceOrientation:()UIKitAdditions withName:skipIfUnknown:
{
  if (a3 || (a5 & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __93__BSDescriptionBuilder_UIKitAdditions__ui_appendInterfaceOrientation_withName_skipIfUnknown___block_invoke;
    v7[3] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
    v7[4] = a3;
    [self appendCustomFormatWithName:a4 block:v7];
  }

  return self;
}

- (id)ui_appendInterfaceOrientationMask:()UIKitAdditions withName:skipIfEmpty:
{
  if (a3 || (a5 & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __95__BSDescriptionBuilder_UIKitAdditions__ui_appendInterfaceOrientationMask_withName_skipIfEmpty___block_invoke;
    v7[3] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
    v7[4] = a3;
    [self appendCustomFormatWithName:a4 block:v7];
  }

  return self;
}

- (id)ui_appendUserInterfaceIdiom:()UIKitAdditions withName:skipIfEmpty:
{
  if (a3 != -1 || (a5 & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __89__BSDescriptionBuilder_UIKitAdditions__ui_appendUserInterfaceIdiom_withName_skipIfEmpty___block_invoke;
    v7[3] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
    v7[4] = a3;
    [self appendCustomFormatWithName:a4 block:v7];
  }

  return self;
}

- (id)ui_appendReferenceDisplayModeStatus:()UIKitAdditions withName:skipIfNotSupported:
{
  if (a3 || (a5 & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __104__BSDescriptionBuilder_UIKitAdditions__ui_appendReferenceDisplayModeStatus_withName_skipIfNotSupported___block_invoke;
    v7[3] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
    v7[4] = a3;
    [self appendCustomFormatWithName:a4 block:v7];
  }

  return self;
}

@end