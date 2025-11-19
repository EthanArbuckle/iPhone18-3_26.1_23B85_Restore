@interface TSCH3DRenderProcessorScaleSession
+ (void)performBlockWithProcessor:(id)a3 scale:(tvec3<float>)a4 block:(id)a5;
@end

@implementation TSCH3DRenderProcessorScaleSession

+ (void)performBlockWithProcessor:(id)a3 scale:(tvec3<float>)a4 block:(id)a5
{
  v5 = *&a4.var2.var0;
  v6 = *&a4.var0.var0;
  v7 = a3;
  v8 = v5;
  objc_msgSend_scale_(v7, v9, v10, v11, v12, v6);
  v8[2](v8, v7);
  *&v13 = 1.0 / v6[1].f32[0];
  __asm { FMOV            V2.2S, #1.0 }

  v20 = COERCE_DOUBLE(vdiv_f32(*&_D2, *v6));
  v21 = LODWORD(v13);
  objc_msgSend_scale_(v7, v19, v13, v20, _D2, &v20);
}

@end