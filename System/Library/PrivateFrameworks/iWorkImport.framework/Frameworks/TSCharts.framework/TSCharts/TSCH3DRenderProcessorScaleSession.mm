@interface TSCH3DRenderProcessorScaleSession
+ (void)performBlockWithProcessor:(id)processor scale:(tvec3<float>)scale block:(id)block;
@end

@implementation TSCH3DRenderProcessorScaleSession

+ (void)performBlockWithProcessor:(id)processor scale:(tvec3<float>)scale block:(id)block
{
  v5 = *&scale.var2.var0;
  v6 = *&scale.var0.var0;
  processorCopy = processor;
  v8 = v5;
  objc_msgSend_scale_(processorCopy, v9, v10, v11, v12, v6);
  v8[2](v8, processorCopy);
  *&v13 = 1.0 / v6[1].f32[0];
  __asm { FMOV            V2.2S, #1.0 }

  v20 = COERCE_DOUBLE(vdiv_f32(*&_D2, *v6));
  v21 = LODWORD(v13);
  objc_msgSend_scale_(processorCopy, v19, v13, v20, _D2, &v20);
}

@end