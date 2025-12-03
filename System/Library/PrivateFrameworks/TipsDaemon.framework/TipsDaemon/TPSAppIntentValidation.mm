@interface TPSAppIntentValidation
- (TPSAppIntentValidation)initWithAppIntent:(id)intent;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSAppIntentValidation

- (TPSAppIntentValidation)initWithAppIntent:(id)intent
{
  intentCopy = intent;
  v9.receiver = self;
  v9.super_class = TPSAppIntentValidation;
  v6 = [(TPSAppIntentValidation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appIntent, intent);
  }

  return v7;
}

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  value = [(TPSAppIntent *)self->_appIntent value];
  v6 = objc_alloc_init(TPSAppIntentsHelper);
  name = [(TPSAppIntent *)self->_appIntent name];
  bundleId = [(TPSAppIntent *)self->_appIntent bundleId];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__TPSAppIntentValidation_validateWithCompletion___block_invoke;
  v11[3] = &unk_2789B0948;
  selfCopy = self;
  v14 = completionCopy;
  v12 = value;
  v9 = value;
  v10 = completionCopy;
  [(TPSAppIntentsHelper *)v6 fetchReturnValueFromIntentNamed:name inBundleId:bundleId withParameters:0 completionHandler:v11];
}

uint64_t __49__TPSAppIntentValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
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

void __49__TPSAppIntentValidation_validateWithCompletion___block_invoke_cold_1(uint64_t a1, char a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 40) name];
  v7 = [*(a1 + 40) targetContext];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 1024;
  v14 = a2 & 1;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d", &v9, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

@end