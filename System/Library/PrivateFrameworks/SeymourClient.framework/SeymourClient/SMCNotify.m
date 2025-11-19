@interface SMCNotify
+ (int)registerNotification:(const char *)a3 queue:(id)a4 callback:(id)a5;
@end

@implementation SMCNotify

+ (int)registerNotification:(const char *)a3 queue:(id)a4 callback:(id)a5
{
  v7 = a5;
  out_token = -1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__SMCNotify_registerNotification_queue_callback___block_invoke;
  v11[3] = &unk_1E7C14338;
  v12 = v7;
  v8 = v7;
  if (notify_register_dispatch(a3, &out_token, a4, v11))
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