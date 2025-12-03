@interface WFLocationAccessResource
- (id)localizedProtectedResourceDescriptionWithContext:(id)context;
- (id)workflow;
- (unint64_t)status;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler;
- (void)setWorkflow:(id)workflow;
@end

@implementation WFLocationAccessResource

- (id)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  -[WFLocationAccessResource setAuthorizationStatus:](self, "setAuthorizationStatus:", [authorization authorizationStatus]);
  if ([(WFLocationAccessResource *)self authorizationStatus])
  {
    v4 = [(WFLocationAccessResource *)self authorizationStatus]== 3 || [(WFLocationAccessResource *)self authorizationStatus]== 4;

    [(WFLocationAccessResource *)self finishMakingAvailableWithSuccess:v4 error:0];
  }
}

- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler
{
  interfaceCopy = interface;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WFLocationAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
  block[3] = &unk_1E837ECE0;
  v11 = interfaceCopy;
  v12 = handlerCopy;
  block[4] = self;
  v8 = interfaceCopy;
  v9 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__WFLocationAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMakeAvailableCompletionHandler:*(a1 + 48)];
  if ([*(a1 + 40) isRunningWithSiriUI])
  {
    v2 = [objc_alloc(MEMORY[0x1E69E0CE0]) initWithNeedsPreciseLocation:1];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__WFLocationAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2;
    v5[3] = &unk_1E8377278;
    v3 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    [v3 performSiriRequest:v2 completionHandler:v5];
  }

  else
  {
    v4 = [*(a1 + 32) locationManager];
    [v4 requestWhenInUseAuthorization];
  }
}

void __77__WFLocationAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 didAuthorize];
  v7 = [v8 error];

  [v5 finishMakingAvailableWithSuccess:v6 error:v7];
}

- (void)setWorkflow:(id)workflow
{
  objc_storeWeak(&self->_workflow, workflow);
  workflow = [(WFLocationAccessResource *)self workflow];
  environment = [workflow environment];
  v5 = WFCLLocationManagerWithOptions(environment, self, MEMORY[0x1E69E96A0]);
  [(WFLocationAccessResource *)self setLocationManager:v5];
}

- (unint64_t)status
{
  authorizationStatus = [(WFLocationAccessResource *)self authorizationStatus];
  if (!authorizationStatus)
  {
    workflow = [(WFLocationAccessResource *)self workflow];
    authorizationStatus = WFCLLocationManagerAuthorizationStatusForWorkflowEnvironment([workflow environment]);
  }

  if ((authorizationStatus - 1) > 3)
  {
    return 1;
  }

  else
  {
    return qword_1CA992318[authorizationStatus - 1];
  }
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"your location", @"your location");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end