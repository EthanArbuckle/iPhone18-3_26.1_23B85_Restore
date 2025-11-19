@interface TPSTargetingValidateOperation
- (TPSTargetingValidateOperation)initWithTargetingCondition:(id)a3;
- (id)description;
- (int64_t)result;
- (void)cancel;
- (void)main;
@end

@implementation TPSTargetingValidateOperation

- (TPSTargetingValidateOperation)initWithTargetingCondition:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSTargetingValidateOperation;
  v6 = [(TPSAsyncOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validator, a3);
    v7->_result = -1;
  }

  return v7;
}

- (void)main
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 context];
  v3 = [a1 validator];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __37__TPSTargetingValidateOperation_main__block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    [*(a1 + 32) setResult:a2];
  }

  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  [v7 finishWithError:v5];
  v8 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __37__TPSTargetingValidateOperation_main__block_invoke_cold_1(v6);
  }
}

- (int64_t)result
{
  if ([(TPSAsyncOperation *)self isCancelled])
  {
    return -1;
  }

  v3 = [(TPSAsyncOperation *)self error];

  if (v3)
  {
    return -1;
  }

  else
  {
    return self->_result;
  }
}

- (void)cancel
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "cancelling...%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TPSTargetingValidateOperation *)self validator];
  v7 = [(TPSTargetingValidateOperation *)self context];
  v8 = [v3 stringWithFormat:@"<%@: %p validator = %@; context = %@;>", v5, self, v6, v7];;

  return v8;
}

void __37__TPSTargetingValidateOperation_main__block_invoke_cold_1(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*a1 context];
  v9 = [*a1 validator];
  [*a1 result];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x277D85DE8];
}

@end