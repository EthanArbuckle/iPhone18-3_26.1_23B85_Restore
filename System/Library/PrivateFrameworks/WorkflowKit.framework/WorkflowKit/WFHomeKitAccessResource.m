@interface WFHomeKitAccessResource
- (unint64_t)status;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4;
@end

@implementation WFHomeKitAccessResource

- (unint64_t)status
{
  v2 = softLinkTCCAccessPreflight(@"kTCCServiceWillow", 0);
  if (v2 > 2)
  {
    return 1;
  }

  else
  {
    return qword_1CA992340[v2];
  }
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = +[WFHomeManager sharedManager];
  [v4 removeEventObserver:self];

  [(WFResource *)self refreshAvailabilityWithForcedNotification];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 1, 0);
    completionHandler = self->_completionHandler;
  }

  self->_completionHandler = 0;
}

- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__WFHomeKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
  v8[3] = &unk_1E8378420;
  v8[4] = self;
  v9 = v5;
  v6 = softLinkTCCAccessRequest;
  v7 = v5;
  v6(@"kTCCServiceWillow", 0, v8);
}

void __76__WFHomeKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WFHomeKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2;
  block[3] = &unk_1E837C648;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__WFHomeKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 40) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;

    v5 = +[WFHomeManager sharedManager];
    [v5 addEventObserver:*(a1 + 32)];

    v8 = +[WFHomeManager sharedManager];
    [v8 reloadData];
  }

  else
  {
    [*(a1 + 32) refreshAvailabilityWithForcedNotification];
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

@end