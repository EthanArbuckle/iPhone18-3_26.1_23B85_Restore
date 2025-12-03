@interface TSCH3DRenderProcessorRenderStateSession
+ (void)performBlockWithProcessor:(id)processor block:(id)block;
@end

@implementation TSCH3DRenderProcessorRenderStateSession

+ (void)performBlockWithProcessor:(id)processor block:(id)block
{
  processorCopy = processor;
  blockCopy = block;
  objc_msgSend_pushRenderState(processorCopy, v6, v7, v8, v9);
  blockCopy[2](blockCopy, processorCopy);
  objc_msgSend_popRenderState(processorCopy, v10, v11, v12, v13);
}

@end