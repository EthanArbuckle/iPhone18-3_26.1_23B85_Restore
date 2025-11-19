@interface STKListItemsSessionAction
- (STKListItemsSessionAction)initWithBehavior:(id)a3 inputData:(id)a4 response:(id)a5;
- (STKListItemsSessionData)sessionData;
- (void)sendSuccessWithSelectedItemIndex:(unint64_t)a3;
@end

@implementation STKListItemsSessionAction

- (STKListItemsSessionAction)initWithBehavior:(id)a3 inputData:(id)a4 response:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__STKListItemsSessionAction_initWithBehavior_inputData_response___block_invoke;
  v13[3] = &unk_279B4C368;
  v14 = v8;
  v12.receiver = self;
  v12.super_class = STKListItemsSessionAction;
  v9 = v8;
  v10 = [(STKSessionAction *)&v12 initWithBehavior:a3 data:a4 responseBlock:v13];

  return v10;
}

void __65__STKListItemsSessionAction_initWithBehavior_inputData_response___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  objc_opt_isKindOfClass();
  (*(*(a1 + 32) + 16))();
}

- (STKListItemsSessionData)sessionData
{
  v4.receiver = self;
  v4.super_class = STKListItemsSessionAction;
  v2 = [(STKTextSessionAction *)&v4 sessionData];

  return v2;
}

- (void)sendSuccessWithSelectedItemIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(STKSessionAction *)self sendResponse:0 withContext:v4];
}

@end