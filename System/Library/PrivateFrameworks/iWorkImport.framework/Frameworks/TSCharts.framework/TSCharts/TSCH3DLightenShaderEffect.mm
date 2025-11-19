@interface TSCH3DLightenShaderEffect
+ (tvec4<float>)lightenDiffuseFragmentColor:(void *)a3 byPercent:(float)a4;
- (void)uploadData:(id)a3 effectsStates:(id)a4;
@end

@implementation TSCH3DLightenShaderEffect

+ (tvec4<float>)lightenDiffuseFragmentColor:(void *)a3 byPercent:(float)a4
{
  __asm
  {
    FMOV            V2.4S, #-1.0
    FMOV            V1.4S, #1.0
  }

  *v4 = vaddq_f32(vmulq_n_f32(vaddq_f32(*a3, _Q2), a4), _Q1);
  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = a1;
  result.var1 = *(&a1 + 4);
  return result;
}

- (void)uploadData:(id)a3 effectsStates:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_stateSharingID(TSCH3DLightenShaderEffect, v7, v8, v9, v10);
  v12 = sub_2761ADED8(v6, v11);

  v17 = v12;
  objc_msgSend_uniform_vec1_(v5, v13, v14, v15, v16, qword_280A46470, &v17);
}

@end