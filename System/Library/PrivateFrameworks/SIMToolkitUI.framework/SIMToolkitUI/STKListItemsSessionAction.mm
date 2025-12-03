@interface STKListItemsSessionAction
- (STKListItemsSessionAction)initWithBehavior:(id)behavior inputData:(id)data response:(id)response;
- (STKListItemsSessionData)sessionData;
- (void)sendSuccessWithSelectedItemIndex:(unint64_t)index;
@end

@implementation STKListItemsSessionAction

- (STKListItemsSessionAction)initWithBehavior:(id)behavior inputData:(id)data response:(id)response
{
  responseCopy = response;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__STKListItemsSessionAction_initWithBehavior_inputData_response___block_invoke;
  v13[3] = &unk_279B4C368;
  v14 = responseCopy;
  v12.receiver = self;
  v12.super_class = STKListItemsSessionAction;
  v9 = responseCopy;
  v10 = [(STKSessionAction *)&v12 initWithBehavior:behavior data:data responseBlock:v13];

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
  sessionData = [(STKTextSessionAction *)&v4 sessionData];

  return sessionData;
}

- (void)sendSuccessWithSelectedItemIndex:(unint64_t)index
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [(STKSessionAction *)self sendResponse:0 withContext:v4];
}

@end