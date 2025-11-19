@interface VUIRunLoopSourceRecord
- (VUIRunLoopSourceRecord)initWithEvaluateBlock:(id)a3 completionBlock:(id)a4 completionQueue:(id)a5;
@end

@implementation VUIRunLoopSourceRecord

- (VUIRunLoopSourceRecord)initWithEvaluateBlock:(id)a3 completionBlock:(id)a4 completionQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = VUIRunLoopSourceRecord;
  v11 = [(VUIRunLoopSourceRecord *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    evaluateBlock = v11->_evaluateBlock;
    v11->_evaluateBlock = v12;

    v14 = [v9 copy];
    completionBlock = v11->_completionBlock;
    v11->_completionBlock = v14;

    objc_storeStrong(&v11->_completionQueue, a5);
  }

  return v11;
}

@end