@interface SMCNotify
+ (int)registerNotification:(const char *)notification queue:(id)queue callback:(id)callback;
@end

@implementation SMCNotify

+ (int)registerNotification:(const char *)notification queue:(id)queue callback:(id)callback
{
  callbackCopy = callback;
  out_token = -1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__SMCNotify_registerNotification_queue_callback___block_invoke;
  v11[3] = &unk_1E7C14338;
  v12 = callbackCopy;
  v8 = callbackCopy;
  if (notify_register_dispatch(notification, &out_token, queue, v11))
  {
    v9 = -1;
  }

  else
  {
    v9 = out_token;
  }

  return v9;
}

@end