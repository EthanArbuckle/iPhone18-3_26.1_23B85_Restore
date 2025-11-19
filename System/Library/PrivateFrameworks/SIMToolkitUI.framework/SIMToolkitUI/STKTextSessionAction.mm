@interface STKTextSessionAction
- (STKTextSessionAction)initWithBehavior:(id)a3 inputData:(id)a4 response:(id)a5;
- (STKTextSessionData)sessionData;
@end

@implementation STKTextSessionAction

- (STKTextSessionAction)initWithBehavior:(id)a3 inputData:(id)a4 response:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__STKTextSessionAction_initWithBehavior_inputData_response___block_invoke;
  v13[3] = &unk_279B4C368;
  v14 = v8;
  v12.receiver = self;
  v12.super_class = STKTextSessionAction;
  v9 = v8;
  v10 = [(STKSessionAction *)&v12 initWithBehavior:a3 data:a4 responseBlock:v13];

  return v10;
}

- (STKTextSessionData)sessionData
{
  v4.receiver = self;
  v4.super_class = STKTextSessionAction;
  v2 = [(STKSessionAction *)&v4 sessionData];

  return v2;
}

@end