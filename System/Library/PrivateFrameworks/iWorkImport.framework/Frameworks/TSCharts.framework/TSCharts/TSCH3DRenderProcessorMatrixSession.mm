@interface TSCH3DRenderProcessorMatrixSession
+ (void)performBlockWithProcessor:(id)processor flag:(BOOL)flag block:(id)block;
@end

@implementation TSCH3DRenderProcessorMatrixSession

+ (void)performBlockWithProcessor:(id)processor flag:(BOOL)flag block:(id)block
{
  flagCopy = flag;
  processorCopy = processor;
  blockCopy = block;
  if (flagCopy)
  {
    objc_msgSend_pushMatrix(processorCopy, v7, v9, v10, v11);
  }

  blockCopy[2](blockCopy, processorCopy);
  if (flagCopy)
  {
    objc_msgSend_popMatrix(processorCopy, v12, v13, v14, v15);
  }
}

@end