@interface STKClass0SMSSessionAction
- (STKClass0SMSSessionAction)initWithInputData:(id)data response:(id)response;
- (STKClass0SMSSessionData)sessionData;
@end

@implementation STKClass0SMSSessionAction

- (STKClass0SMSSessionAction)initWithInputData:(id)data response:(id)response
{
  responseCopy = response;
  dataCopy = data;
  v8 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__STKClass0SMSSessionAction_initWithInputData_response___block_invoke;
  v13[3] = &unk_279B4C368;
  v14 = responseCopy;
  v12.receiver = self;
  v12.super_class = STKClass0SMSSessionAction;
  v9 = responseCopy;
  v10 = [(STKSessionAction *)&v12 initWithBehavior:v8 data:dataCopy responseBlock:v13];

  return v10;
}

- (STKClass0SMSSessionData)sessionData
{
  v4.receiver = self;
  v4.super_class = STKClass0SMSSessionAction;
  sessionData = [(STKSessionAction *)&v4 sessionData];

  return sessionData;
}

@end