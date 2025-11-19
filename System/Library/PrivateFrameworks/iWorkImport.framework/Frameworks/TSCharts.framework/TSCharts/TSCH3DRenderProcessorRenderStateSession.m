@interface TSCH3DRenderProcessorRenderStateSession
+ (void)performBlockWithProcessor:(id)a3 block:(id)a4;
@end

@implementation TSCH3DRenderProcessorRenderStateSession

+ (void)performBlockWithProcessor:(id)a3 block:(id)a4
{
  v14 = a3;
  v5 = a4;
  objc_msgSend_pushRenderState(v14, v6, v7, v8, v9);
  v5[2](v5, v14);
  objc_msgSend_popRenderState(v14, v10, v11, v12, v13);
}

@end