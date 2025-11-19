@interface WFLocationAccessResource
- (id)localizedProtectedResourceDescriptionWithContext:(id)a3;
- (id)workflow;
- (unint64_t)status;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4;
- (void)setWorkflow:(id)a3;
@end

@implementation WFLocationAccessResource

- (id)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  -[WFLocationAccessResource setAuthorizationStatus:](self, "setAuthorizationStatus:", [a3 authorizationStatus]);
  if ([(WFLocationAccessResource *)self authorizationStatus])
  {
    v4 = [(WFLocationAccessResource *)self authorizationStatus]== 3 || [(WFLocationAccessResource *)self authorizationStatus]== 4;

    [(WFLocationAccessResource *)self finishMakingAvailableWithSuccess:v4 error:0];
  }
}

- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WFLocationAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
  block[3] = &unk_1E837ECE0;
  v11 = v6;
  v12 = v7;
  block[4] = self;
  v8 = v6;
  v9 = v7;
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

- (void)setWorkflow:(id)a3
{
  objc_storeWeak(&self->_workflow, a3);
  v6 = [(WFLocationAccessResource *)self workflow];
  v4 = [v6 environment];
  v5 = WFCLLocationManagerWithOptions(v4, self, MEMORY[0x1E69E96A0]);
  [(WFLocationAccessResource *)self setLocationManager:v5];
}

- (unint64_t)status
{
  v3 = [(WFLocationAccessResource *)self authorizationStatus];
  if (!v3)
  {
    v4 = [(WFLocationAccessResource *)self workflow];
    v3 = WFCLLocationManagerAuthorizationStatusForWorkflowEnvironment([v4 environment]);
  }

  if ((v3 - 1) > 3)
  {
    return 1;
  }

  else
  {
    return qword_1CA992318[v3 - 1];
  }
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"your location", @"your location");
  v5 = [v3 localize:v4];

  return v5;
}

@end