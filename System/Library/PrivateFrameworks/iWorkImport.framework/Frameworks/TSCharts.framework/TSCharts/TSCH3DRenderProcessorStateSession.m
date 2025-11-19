@interface TSCH3DRenderProcessorStateSession
+ (void)performBlockWithProcessor:(id)a3 flag:(BOOL)a4 block:(id)a5;
@end

@implementation TSCH3DRenderProcessorStateSession

+ (void)performBlockWithProcessor:(id)a3 flag:(BOOL)a4 block:(id)a5
{
  v6 = a4;
  v24 = a3;
  v8 = a5;
  if (v6)
  {
    objc_msgSend_pushRenderState(v24, v7, v9, v10, v11);
    objc_msgSend_pushState(v24, v12, v13, v14, v15);
  }

  v8[2](v8, v24);
  if (v6)
  {
    objc_msgSend_popState(v24, v16, v17, v18, v19);
    objc_msgSend_popRenderState(v24, v20, v21, v22, v23);
  }
}

@end