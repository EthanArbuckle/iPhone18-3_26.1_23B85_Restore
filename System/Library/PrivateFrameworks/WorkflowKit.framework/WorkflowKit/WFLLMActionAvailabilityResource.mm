@interface WFLLMActionAvailabilityResource
- (WFLLMActionAvailabilityResource)initWithDefinition:(id)a3;
- (id)actionDisabledError;
- (void)dealloc;
- (void)refreshAvailability;
@end

@implementation WFLLMActionAvailabilityResource

- (id)actionDisabledError
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = WFLocalizedString(@"Use Model Cannot Be Run");
  v3 = WFLocalizedString(@"This action is not currently available.");
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A588];
  v10[0] = *MEMORY[0x1E696A578];
  v10[1] = v5;
  v11[0] = v2;
  v11[1] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v4 errorWithDomain:@"WFActionErrorDomain" code:1 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)refreshAvailability
{
  if (VCIsInternalBuild() && MGGetBoolAnswer())
  {

    [(WFResource *)self updateAvailability:1 withError:0];
  }

  else
  {
    v3 = +[WFAskLLMAvailabilityProvider shared];
    v4 = [v3 isActionVisible];

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(WFLLMActionAvailabilityResource *)self actionDisabledError];
    }

    v6 = v5;
    [(WFResource *)self updateAvailability:v4 withError:v5];
  }
}

- (void)dealloc
{
  gmsNotifyToken = self->_gmsNotifyToken;
  if (gmsNotifyToken != -1)
  {
    notify_cancel(gmsNotifyToken);
  }

  v4.receiver = self;
  v4.super_class = WFLLMActionAvailabilityResource;
  [(WFResource *)&v4 dealloc];
}

- (WFLLMActionAvailabilityResource)initWithDefinition:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFLLMActionAvailabilityResource;
  v5 = [(WFResource *)&v16 initWithDefinition:v4];
  v6 = v5;
  if (v5)
  {
    v5->_gmsNotifyToken = -1;
    objc_initWeak(&location, v5);
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __54__WFLLMActionAvailabilityResource_initWithDefinition___block_invoke;
    handler[3] = &unk_1E837E2E8;
    v9 = v6;
    v13 = v9;
    objc_copyWeak(&v14, &location);
    notify_register_dispatch("com.apple.gms.availability.notification", &v6->_gmsNotifyToken, v7, handler);

    v10 = v9;
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  return v6;
}

void __54__WFLLMActionAvailabilityResource_initWithDefinition___block_invoke(uint64_t a1, int a2)
{
  if (*(*(a1 + 32) + 40) == a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained refreshAvailabilityWithNotification];
  }
}

@end