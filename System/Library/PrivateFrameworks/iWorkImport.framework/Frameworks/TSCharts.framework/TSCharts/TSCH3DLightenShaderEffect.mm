@interface TSCH3DLightenShaderEffect
+ (tvec4<float>)lightenDiffuseFragmentColor:(void *)color byPercent:(float)percent;
- (void)uploadData:(id)data effectsStates:(id)states;
@end

@implementation TSCH3DLightenShaderEffect

+ (tvec4<float>)lightenDiffuseFragmentColor:(void *)color byPercent:(float)percent
{
  __asm
  {
    FMOV            V2.4S, #-1.0
    FMOV            V1.4S, #1.0
  }

  *v4 = vaddq_f32(vmulq_n_f32(vaddq_f32(*color, _Q2), percent), _Q1);
  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (void)uploadData:(id)data effectsStates:(id)states
{
  dataCopy = data;
  statesCopy = states;
  v11 = objc_msgSend_stateSharingID(TSCH3DLightenShaderEffect, v7, v8, v9, v10);
  v12 = sub_2761ADED8(statesCopy, v11);

  v17 = v12;
  objc_msgSend_uniform_vec1_(dataCopy, v13, v14, v15, v16, qword_280A46470, &v17);
}

@end