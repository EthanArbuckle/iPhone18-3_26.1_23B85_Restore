@interface UIWatchKitExtensionRequestAction
- (NSDictionary)request;
- (UIWatchKitExtensionRequestAction)initWithRequest:(id)request withHandler:(id)handler;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (void)sendResponse:(id)response;
@end

@implementation UIWatchKitExtensionRequestAction

- (UIWatchKitExtensionRequestAction)initWithRequest:(id)request withHandler:(id)handler
{
  handlerCopy = handler;
  if (request)
  {
    v7 = MEMORY[0x1E698E700];
    requestCopy = request;
    v9 = objc_alloc_init(v7);
    [v9 setObject:requestCopy forSetting:1];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__UIWatchKitExtensionRequestAction_initWithRequest_withHandler___block_invoke;
    v12[3] = &unk_1E7108B40;
    v13 = handlerCopy;
    v11.receiver = self;
    v11.super_class = UIWatchKitExtensionRequestAction;
    self = [(UIWatchKitExtensionRequestAction *)&v11 initWithInfo:v9 timeout:0 forResponseOnQueue:v12 withHandler:0.0];

    request = self;
  }

  return request;
}

- (NSDictionary)request
{
  info = [(UIWatchKitExtensionRequestAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (void)sendResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWatchKitExtensionRequestAction.m" lineNumber:86 description:{@"you sent back the wrong response class -> %@", responseCopy}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__93;
  v20 = __Block_byref_object_dispose__93;
  v21 = 0;
  v6 = objc_alloc(MEMORY[0x1E698D038]);
  v7 = getpid();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__UIWatchKitExtensionRequestAction_sendResponse___block_invoke;
  v12[3] = &unk_1E7109728;
  selfCopy = self;
  v15 = &v16;
  v13 = responseCopy;
  v8 = responseCopy;
  v9 = [v6 initWithPID:v7 flags:1 reason:4 name:@"UIWatchKitExtensionRequestAction action reply" withHandler:v12];
  v10 = v17[5];
  v17[5] = v9;

  _Block_object_dispose(&v16, 8);
}

id __49__UIWatchKitExtensionRequestAction_sendResponse___block_invoke(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    NSLog(&cfstr_SFailedToAcqui.isa, "[UIWatchKitExtensionRequestAction sendResponse:]_block_invoke");
  }

  v3 = a1[4];
  v4 = a1[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__UIWatchKitExtensionRequestAction_sendResponse___block_invoke_2;
  v7[3] = &unk_1E7101BE8;
  v7[4] = a1[6];
  v6.receiver = v4;
  v6.super_class = UIWatchKitExtensionRequestAction;
  return objc_msgSendSuper2(&v6, sel_sendResponse_withCompletion_, v3, v7);
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"payload";
  }

  else
  {
    return 0;
  }
}

@end