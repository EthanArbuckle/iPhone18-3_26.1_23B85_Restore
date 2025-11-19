@interface VUIActionAskToBuy
- (VUIActionAskToBuy)initWithContextData:(id)a3;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionAskToBuy

- (VUIActionAskToBuy)initWithContextData:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = VUIActionAskToBuy;
  v6 = [(VUIActionAskToBuy *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextData, a3);
    v8 = [v5 vui_stringForKey:@"result"];
    v9 = v7->_result;
    v7->_result = v8;
  }

  return v7;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"result";
  v7 = [(VUIActionAskToBuy *)self result];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 postNotificationName:@"VUIActionAskToBuyNotification" object:0 userInfo:v8];

  if (v5)
  {
    v5[2](v5, 1);
  }
}

@end