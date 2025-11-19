@interface AMSBagValue
@end

@implementation AMSBagValue

void __61__AMSBagValue_MTAdditions__asyncValueOnQueue_withCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__AMSBagValue_MTAdditions__asyncValueOnQueue_withCompletion___block_invoke_2;
  v2[3] = &unk_1E85692A0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 valueWithCompletion:v2];
}

void __53__AMSBagValue_MTAdditions__asyncValuePromiseOnQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valuePromise];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__AMSBagValue_MTAdditions__asyncValuePromiseOnQueue___block_invoke_2;
  v3[3] = &unk_1E85692F0;
  v4 = *(a1 + 40);
  [v2 addFinishBlock:v3];
}

@end