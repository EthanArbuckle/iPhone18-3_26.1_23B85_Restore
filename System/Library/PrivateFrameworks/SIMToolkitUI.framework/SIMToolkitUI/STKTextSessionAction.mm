@interface STKTextSessionAction
- (STKTextSessionAction)initWithBehavior:(id)behavior inputData:(id)data response:(id)response;
- (STKTextSessionData)sessionData;
@end

@implementation STKTextSessionAction

- (STKTextSessionAction)initWithBehavior:(id)behavior inputData:(id)data response:(id)response
{
  responseCopy = response;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__STKTextSessionAction_initWithBehavior_inputData_response___block_invoke;
  v13[3] = &unk_279B4C368;
  v14 = responseCopy;
  v12.receiver = self;
  v12.super_class = STKTextSessionAction;
  v9 = responseCopy;
  v10 = [(STKSessionAction *)&v12 initWithBehavior:behavior data:data responseBlock:v13];

  return v10;
}

- (STKTextSessionData)sessionData
{
  v4.receiver = self;
  v4.super_class = STKTextSessionAction;
  sessionData = [(STKSessionAction *)&v4 sessionData];

  return sessionData;
}

@end