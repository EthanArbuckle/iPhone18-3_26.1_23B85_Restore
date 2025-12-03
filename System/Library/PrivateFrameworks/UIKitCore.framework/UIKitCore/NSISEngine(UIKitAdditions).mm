@interface NSISEngine(UIKitAdditions)
- (uint32x2_t)debugQuickLookObject;
@end

@implementation NSISEngine(UIKitAdditions)

- (uint32x2_t)debugQuickLookObject
{
  traceState = [self traceState];
  v2 = traceState;
  if (traceState)
  {
    v3 = *(traceState + 24);
    if (v3)
    {
      v4 = *(traceState + 28);
      v5 = 0;
      do
      {
        v6 = *v4;
        v4 = (v4 + 9);
        v5 = vbsl_s8(vceqz_s32(vand_s8(v6, 0x4000000040000000)), vmax_u32(v5, v6), v5);
        --v3;
      }

      while (v3);
    }

    else
    {
      v5 = 0;
    }

    v21 = v5.i32[0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__NSISEngine_UIKitAdditions__debugQuickLookObject__block_invoke;
    aBlock[3] = &__block_descriptor_36_e8_I12__0I8l;
    v34 = v5.i32[1];
    v7 = _Block_copy(aBlock);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __50__NSISEngine_UIKitAdditions__debugQuickLookObject__block_invoke_2;
    v31[3] = &__block_descriptor_36_e8_I12__0I8l;
    v32 = v21;
    v8 = _Block_copy(v31);
    v9 = vmax_u32(v2[2], 0x100000001);
    v10.i64[0] = v9.u32[0];
    v10.i64[1] = v9.u32[1];
    v11 = vcvtq_f64_u64(v10);
    v12 = vdivq_f64(vdupq_n_s64(0x4090000000000000uLL), v11);
    if (v12.f64[1] < v12.f64[0])
    {
      v12.f64[0] = v12.f64[1];
    }

    v13 = fmax(v12.f64[0], 1.0);
    v14 = vmuld_lane_f64(v13, v11, 1);
    v15 = v13 * v11.f64[0];
    v16 = objc_alloc_init(UIGraphicsImageRendererFormat);
    [(UIGraphicsImageRendererFormat *)v16 setScale:1.0];
    [(UIGraphicsImageRendererFormat *)v16 setOpaque:1];
    [(UIGraphicsImageRendererFormat *)v16 setPreferredRange:2];
    v17 = [[UIGraphicsImageRenderer alloc] initWithBounds:v16 format:0.0, 0.0, v14, v15];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__NSISEngine_UIKitAdditions__debugQuickLookObject__block_invoke_3;
    v22[3] = &unk_1E7129488;
    v25 = 0;
    v26 = 0;
    v27 = v14;
    v28 = v15;
    v29 = v13;
    v30 = v2;
    v23 = v7;
    v24 = v8;
    v18 = v8;
    v19 = v7;
    v2 = [(UIGraphicsImageRenderer *)v17 imageWithActions:v22];
  }

  return v2;
}

@end