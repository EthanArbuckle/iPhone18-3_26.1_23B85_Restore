@interface TSCH3DRenderProcessorStateSession
+ (void)performBlockWithProcessor:(id)processor flag:(BOOL)flag block:(id)block;
@end

@implementation TSCH3DRenderProcessorStateSession

+ (void)performBlockWithProcessor:(id)processor flag:(BOOL)flag block:(id)block
{
  flagCopy = flag;
  processorCopy = processor;
  blockCopy = block;
  if (flagCopy)
  {
    objc_msgSend_pushRenderState(processorCopy, v7, v9, v10, v11);
    objc_msgSend_pushState(processorCopy, v12, v13, v14, v15);
  }

  blockCopy[2](blockCopy, processorCopy);
  if (flagCopy)
  {
    objc_msgSend_popState(processorCopy, v16, v17, v18, v19);
    objc_msgSend_popRenderState(processorCopy, v20, v21, v22, v23);
  }
}

@end