@interface TSCH3DChartRotationTouchHandler
+ (tvec3<float>)clampRotation:(void *)a3 chartType:(id)a4;
@end

@implementation TSCH3DChartRotationTouchHandler

+ (tvec3<float>)clampRotation:(void *)a3 chartType:(id)a4
{
  v9 = v4;
  v10 = objc_msgSend_rotation3DLimit(a4, a2, v5, v6, v7);
  v12 = *(a3 + 2);
  v14.f32[0] = -v13;
  v16.f32[0] = -v15;
  v16.i32[1] = v17;
  v18 = vbsl_s8(vcgt_f32(v16, *a3), *a3, v16);
  v14.i32[1] = v19;
  *v9 = vbsl_s8(vcgt_f32(v18, v14), v18, v14);
  v9[1].i32[0] = v12;
  result.var0 = v10;
  result.var1 = *(&v10 + 4);
  result.var2 = v11;
  return result;
}

@end