@interface PDSafeSerialQueueRunner
- (PDSafeSerialQueueRunner)init;
- (void)invalidate;
- (void)runBlock:(id)a3;
@end

@implementation PDSafeSerialQueueRunner

- (void)runBlock:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_shouldRun)
  {
    v5[2]();
  }

  else
  {
    peridot_depth_log("Safe serial queue was already invalidated: block will not run");
  }

  objc_sync_exit(v4);
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldRun = 0;
  objc_sync_exit(obj);
}

- (PDSafeSerialQueueRunner)init
{
  v3.receiver = self;
  v3.super_class = PDSafeSerialQueueRunner;
  result = [(PDSafeSerialQueueRunner *)&v3 init];
  if (result)
  {
    result->_shouldRun = 1;
  }

  return result;
}

@end