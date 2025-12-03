@interface SBSApplicationHarmonyService
- (void)fetchWhitePointAdaptivityStyleForDisplayId:(unsigned int)id withCompletionHandler:(id)handler;
@end

@implementation SBSApplicationHarmonyService

- (void)fetchWhitePointAdaptivityStyleForDisplayId:(unsigned int)id withCompletionHandler:(id)handler
{
  v4 = *&id;
  handlerCopy = handler;
  if (handlerCopy)
  {
    callbackQueue = [(SBSAbstractFacilityService *)self callbackQueue];
    client = [(SBSAbstractApplicationService *)self client];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __97__SBSApplicationHarmonyService_fetchWhitePointAdaptivityStyleForDisplayId_withCompletionHandler___block_invoke;
    v10[3] = &unk_1E735F890;
    v11 = callbackQueue;
    v12 = handlerCopy;
    v9 = callbackQueue;
    [client fetchWhitePointAdaptivityStyleForDisplayId:v4 withCompletionHandler:v10];
  }
}

void __97__SBSApplicationHarmonyService_fetchWhitePointAdaptivityStyleForDisplayId_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __97__SBSApplicationHarmonyService_fetchWhitePointAdaptivityStyleForDisplayId_withCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E735F868;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

@end