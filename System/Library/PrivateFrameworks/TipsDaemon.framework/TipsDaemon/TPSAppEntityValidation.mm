@interface TPSAppEntityValidation
- (TPSAppEntityValidation)initWithAppEntity:(id)entity;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSAppEntityValidation

- (TPSAppEntityValidation)initWithAppEntity:(id)entity
{
  entityCopy = entity;
  v9.receiver = self;
  v9.super_class = TPSAppEntityValidation;
  v6 = [(TPSAppEntityValidation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appEntity, entity);
  }

  return v7;
}

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  value = [(TPSAppEntity *)self->_appEntity value];
  v6 = objc_alloc_init(TPSAppIntentsHelper);
  name = [(TPSAppEntity *)self->_appEntity name];
  bundleId = [(TPSAppEntity *)self->_appEntity bundleId];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__TPSAppEntityValidation_validateWithCompletion___block_invoke;
  v11[3] = &unk_2789B0948;
  selfCopy = self;
  v14 = completionCopy;
  v12 = value;
  v9 = value;
  v10 = completionCopy;
  [(TPSAppIntentsHelper *)v6 fetchReturnValueFromEntityNamed:name inBundleId:bundleId withParameters:0 completionHandler:v11];
}

uint64_t __49__TPSAppEntityValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    return v5();
  }

  else
  {
    v7 = [a2 isEqual:*(a1 + 32)];
    v8 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __49__TPSAppIntentValidation_validateWithCompletion___block_invoke_cold_1(a1, v7, v8);
    }

    return (*(*(a1 + 48) + 16))();
  }
}

@end