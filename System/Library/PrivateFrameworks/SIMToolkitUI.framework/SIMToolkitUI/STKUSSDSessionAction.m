@interface STKUSSDSessionAction
- (STKUSSDSessionAction)initWithInputData:(id)a3 response:(id)a4;
- (STKUSSDSessionData)sessionData;
@end

@implementation STKUSSDSessionAction

- (STKUSSDSessionAction)initWithInputData:(id)a3 response:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__STKUSSDSessionAction_initWithInputData_response___block_invoke;
  v13[3] = &unk_279B4C368;
  v14 = v6;
  v12.receiver = self;
  v12.super_class = STKUSSDSessionAction;
  v9 = v6;
  v10 = [(STKSessionAction *)&v12 initWithBehavior:v8 data:v7 responseBlock:v13];

  return v10;
}

void __51__STKUSSDSessionAction_initWithInputData_response___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (STKUSSDSessionData)sessionData
{
  v4.receiver = self;
  v4.super_class = STKUSSDSessionAction;
  v2 = [(STKSessionAction *)&v4 sessionData];

  return v2;
}

@end