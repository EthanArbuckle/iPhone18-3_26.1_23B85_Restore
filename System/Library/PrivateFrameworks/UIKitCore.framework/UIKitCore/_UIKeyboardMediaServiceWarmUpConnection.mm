@interface _UIKeyboardMediaServiceWarmUpConnection
+ (id)sharedConnection;
+ (void)warmUp;
- (void)warmUp;
@end

@implementation _UIKeyboardMediaServiceWarmUpConnection

+ (void)warmUp
{
  v2 = +[_UIKeyboardMediaServiceWarmUpConnection sharedConnection];
  [v2 warmUp];
}

+ (id)sharedConnection
{
  if (qword_1ED4A2050 != -1)
  {
    dispatch_once(&qword_1ED4A2050, &__block_literal_global_574);
  }

  v3 = _MergedGlobals_1312;

  return v3;
}

- (void)warmUp
{
  queue = self->_queue;
  if (!queue)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.UIKeyboardMediaServiceWarmUpQueue", v4);
    v6 = self->_queue;
    self->_queue = v5;

    queue = self->_queue;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___UIKeyboardMediaServiceWarmUpConnection_warmUp__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(queue, block);
}

@end