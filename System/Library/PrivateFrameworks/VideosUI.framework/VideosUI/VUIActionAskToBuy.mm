@interface VUIActionAskToBuy
- (VUIActionAskToBuy)initWithContextData:(id)data;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionAskToBuy

- (VUIActionAskToBuy)initWithContextData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = VUIActionAskToBuy;
  v6 = [(VUIActionAskToBuy *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextData, data);
    v8 = [dataCopy vui_stringForKey:@"result"];
    v9 = v7->_result;
    v7->_result = v8;
  }

  return v7;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  v10[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"result";
  result = [(VUIActionAskToBuy *)self result];
  v10[0] = result;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [defaultCenter postNotificationName:@"VUIActionAskToBuyNotification" object:0 userInfo:v8];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

@end