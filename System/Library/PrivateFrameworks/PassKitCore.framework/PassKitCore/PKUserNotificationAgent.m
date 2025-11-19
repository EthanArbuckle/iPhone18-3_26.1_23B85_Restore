@interface PKUserNotificationAgent
+ (__CFUserNotification)presentNotificationWithParameters:(id)a3 flags:(unint64_t)a4 responseHandler:(id)a5;
@end

@implementation PKUserNotificationAgent

+ (__CFUserNotification)presentNotificationWithParameters:(id)a3 flags:(unint64_t)a4 responseHandler:(id)a5
{
  v7 = a5;
  v8 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, a4, 0, a3);
  v9 = _Queue();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKUserNotificationAgent_presentNotificationWithParameters_flags_responseHandler___block_invoke;
  v13[3] = &unk_1E79C8958;
  v14 = v7;
  v15 = v8;
  v10 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_21;
  block[3] = &unk_1E79C4428;
  v17 = v10;
  v11 = v7;
  dispatch_async(v9, block);

  return v8;
}

void __83__PKUserNotificationAgent_presentNotificationWithParameters_flags_responseHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (!v2)
  {
    if (!v3)
    {
      return;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PKUserNotificationAgent_presentNotificationWithParameters_flags_responseHandler___block_invoke_2;
    block[3] = &unk_1E79C4428;
    v12 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v2 = *(a1 + 40);
    if (!v2)
    {
      return;
    }

LABEL_7:
    CFRelease(v2);
    return;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = _NotificationHandlerMap();
  v5 = [*(a1 + 32) copy];
  v6 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 40)];
  [v4 setObject:v5 forKey:v6];

  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, *(a1 + 40), _NotificationResponseHandler, 0);
  if (RunLoopSource)
  {
    v8 = RunLoopSource;
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v8, *MEMORY[0x1E695E8D0]);
    v10 = v8;
  }

  else
  {
    v10 = *(a1 + 40);
  }

  CFRelease(v10);
}

@end