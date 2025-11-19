@interface TSCH3DRenderProcessorMatrixSession
+ (void)performBlockWithProcessor:(id)a3 flag:(BOOL)a4 block:(id)a5;
@end

@implementation TSCH3DRenderProcessorMatrixSession

+ (void)performBlockWithProcessor:(id)a3 flag:(BOOL)a4 block:(id)a5
{
  v6 = a4;
  v16 = a3;
  v8 = a5;
  if (v6)
  {
    objc_msgSend_pushMatrix(v16, v7, v9, v10, v11);
  }

  v8[2](v8, v16);
  if (v6)
  {
    objc_msgSend_popMatrix(v16, v12, v13, v14, v15);
  }
}

@end