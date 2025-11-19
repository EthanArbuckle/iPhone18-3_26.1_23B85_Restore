@interface STKYesNoSessionAction
- (STKYesNoSessionAction)initWithBehavior:(id)a3 inputData:(id)a4 response:(id)a5;
@end

@implementation STKYesNoSessionAction

- (STKYesNoSessionAction)initWithBehavior:(id)a3 inputData:(id)a4 response:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__STKYesNoSessionAction_initWithBehavior_inputData_response___block_invoke;
  v13[3] = &unk_279B4C368;
  v14 = v8;
  v12.receiver = self;
  v12.super_class = STKYesNoSessionAction;
  v9 = v8;
  v10 = [(STKSessionAction *)&v12 initWithBehavior:a3 data:a4 responseBlock:v13];

  return v10;
}

void __61__STKYesNoSessionAction_initWithBehavior_inputData_response___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

@end