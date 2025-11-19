@interface BSDescriptionBuilder
@end

@implementation BSDescriptionBuilder

void __93__BSDescriptionBuilder_UIKitAdditions__ui_appendObject_withName_usingLightweightDescription___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 stringWithFormat:@"<%@: %p>", v7, v5];
  }

  else
  {
    v8 = @"(nil)";
  }

  [v9 appendString:v8];
}

void __83__BSDescriptionBuilder_UIKitAdditions__ui_appendTransform_withName_skipIfIdentity___block_invoke(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = a1[3];
  *&v7.a = a1[2];
  *&v7.c = v4;
  *&v7.tx = a1[4];
  if (CGAffineTransformIsIdentity(&v7))
  {
    [v3 appendString:@"<CGAffineTransformIdentity>"];
  }

  else
  {
    v5 = a1[3];
    *&v7.a = a1[2];
    *&v7.c = v5;
    *&v7.tx = a1[4];
    v6 = NSStringFromCGAffineTransform(&v7);
    [v3 appendString:v6];
  }
}

void __93__BSDescriptionBuilder_UIKitAdditions__ui_appendInterfaceOrientation_withName_skipIfUnknown___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BSInterfaceOrientationDescription();
  [v2 appendString:v3];
}

void __95__BSDescriptionBuilder_UIKitAdditions__ui_appendInterfaceOrientationMask_withName_skipIfEmpty___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BSInterfaceOrientationMaskDescription();
  [v2 appendString:v3];
}

void __89__BSDescriptionBuilder_UIKitAdditions__ui_appendUserInterfaceIdiom_withName_skipIfEmpty___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = _NSStringFromUIUserInterfaceIdiom(v2);
  [v3 appendString:v4];
}

uint64_t __104__BSDescriptionBuilder_UIKitAdditions__ui_appendReferenceDisplayModeStatus_withName_skipIfNotSupported___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32) - 1;
  if (v2 > 2)
  {
    v3 = @"notSupported";
  }

  else
  {
    v3 = off_1E7108AF8[v2];
  }

  return [a2 appendString:v3];
}

void __107__BSDescriptionBuilder_UIKitOrientationDebugging__ui_appendOrientationDebugDescription_withName_skipIfNil___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 activeMultilinePrefix];
  v5 = [v2 _orientationDebugDescriptionWithMultilinePrefix:v6];
  [v4 appendString:v5];
}

id __114__BSDescriptionBuilder_UIKitOrientationDebugging__ui_appendOrientationDebuggingArraySection_withName_skipIfEmpty___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 activeMultilinePrefix];
  v5 = [v4 stringByAppendingString:@"    "];

  v6 = [v3 _orientationDebugDescriptionWithMultilinePrefix:v5];

  return v6;
}

@end