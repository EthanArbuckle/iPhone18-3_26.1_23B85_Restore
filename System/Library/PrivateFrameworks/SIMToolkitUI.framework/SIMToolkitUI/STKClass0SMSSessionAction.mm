@interface STKClass0SMSSessionAction
- (STKClass0SMSSessionAction)initWithInputData:(id)a3 response:(id)a4;
- (STKClass0SMSSessionData)sessionData;
@end

@implementation STKClass0SMSSessionAction

- (STKClass0SMSSessionAction)initWithInputData:(id)a3 response:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__STKClass0SMSSessionAction_initWithInputData_response___block_invoke;
  v13[3] = &unk_279B4C368;
  v14 = v6;
  v12.receiver = self;
  v12.super_class = STKClass0SMSSessionAction;
  v9 = v6;
  v10 = [(STKSessionAction *)&v12 initWithBehavior:v8 data:v7 responseBlock:v13];

  return v10;
}

- (STKClass0SMSSessionData)sessionData
{
  v4.receiver = self;
  v4.super_class = STKClass0SMSSessionAction;
  v2 = [(STKSessionAction *)&v4 sessionData];

  return v2;
}

@end