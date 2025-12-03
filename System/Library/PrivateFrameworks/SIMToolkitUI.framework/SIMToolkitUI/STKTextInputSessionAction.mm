@interface STKTextInputSessionAction
- (STKTextInputSessionAction)initWithBehavior:(id)behavior inputData:(id)data response:(id)response;
- (STKTextInputSessionData)sessionData;
@end

@implementation STKTextInputSessionAction

- (STKTextInputSessionAction)initWithBehavior:(id)behavior inputData:(id)data response:(id)response
{
  responseCopy = response;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__STKTextInputSessionAction_initWithBehavior_inputData_response___block_invoke;
  v13[3] = &unk_279B4C368;
  v14 = responseCopy;
  v12.receiver = self;
  v12.super_class = STKTextInputSessionAction;
  v9 = responseCopy;
  v10 = [(STKSessionAction *)&v12 initWithBehavior:behavior data:data responseBlock:v13];

  return v10;
}

void __65__STKTextInputSessionAction_initWithBehavior_inputData_response___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(a1 + 32);
  if (isKindOfClass)
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v7);
}

- (STKTextInputSessionData)sessionData
{
  v4.receiver = self;
  v4.super_class = STKTextInputSessionAction;
  sessionData = [(STKSessionAction *)&v4 sessionData];

  return sessionData;
}

@end