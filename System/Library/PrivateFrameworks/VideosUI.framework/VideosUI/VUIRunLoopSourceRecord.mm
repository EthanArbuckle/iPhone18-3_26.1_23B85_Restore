@interface VUIRunLoopSourceRecord
- (VUIRunLoopSourceRecord)initWithEvaluateBlock:(id)block completionBlock:(id)completionBlock completionQueue:(id)queue;
@end

@implementation VUIRunLoopSourceRecord

- (VUIRunLoopSourceRecord)initWithEvaluateBlock:(id)block completionBlock:(id)completionBlock completionQueue:(id)queue
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = VUIRunLoopSourceRecord;
  v11 = [(VUIRunLoopSourceRecord *)&v17 init];
  if (v11)
  {
    v12 = [blockCopy copy];
    evaluateBlock = v11->_evaluateBlock;
    v11->_evaluateBlock = v12;

    v14 = [completionBlockCopy copy];
    completionBlock = v11->_completionBlock;
    v11->_completionBlock = v14;

    objc_storeStrong(&v11->_completionQueue, queue);
  }

  return v11;
}

@end