@interface TSAuthFlow
- (TSAuthFlow)initWithExternalizedContext:(id)context descriptors:(id)descriptors isLocalConvertFlow:(BOOL)flow isSecureIntentRequired:(BOOL)required isDtoEvaluationRequired:(BOOL)evaluationRequired;
- (void)firstViewController:(id)controller;
@end

@implementation TSAuthFlow

- (TSAuthFlow)initWithExternalizedContext:(id)context descriptors:(id)descriptors isLocalConvertFlow:(BOOL)flow isSecureIntentRequired:(BOOL)required isDtoEvaluationRequired:(BOOL)evaluationRequired
{
  contextCopy = context;
  descriptorsCopy = descriptors;
  v18.receiver = self;
  v18.super_class = TSAuthFlow;
  v15 = [(TSSIMSetupFlow *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_externalizedContext, context);
    objc_storeStrong(&v16->_descriptors, descriptors);
    v16->_isLocalConvertFlow = flow;
    v16->_isSecureIntentRequired = required;
    v16->_isDtoEvaluationRequired = evaluationRequired;
  }

  return v16;
}

- (void)firstViewController:(id)controller
{
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (![TSUtilities isSecureIntentUIRequired:self->_externalizedContext])
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[TSAuthFlow firstViewController:]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "skip secure intent ui @%s", buf, 0xCu);
    }

    self->_isSecureIntentRequired = 0;
  }

  v6 = [[TSSecureIntentGestureViewController alloc] initWithExternalizedContext:self->_externalizedContext descriptors:self->_descriptors isLocalConvertFlow:self->_isLocalConvertFlow isSecureIntentRequired:self->_isSecureIntentRequired isDtoEvaluationRequired:self->_isDtoEvaluationRequired];
  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__TSAuthFlow_firstViewController___block_invoke;
  v10[3] = &unk_279B45A88;
  objc_copyWeak(&v13, buf);
  v7 = v6;
  v11 = v7;
  v8 = controllerCopy;
  v12 = v8;
  [(TSSecureIntentGestureViewController *)v7 prepare:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __34__TSAuthFlow_firstViewController___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setTopViewController:v3];

    v5 = *(a1 + 32);
  }

  else
  {
    v7 = *(a1 + 40);
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

@end