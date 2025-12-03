@interface TPSContactsTrustedAccountValidation
- (BOOL)_primaryAccountCanHaveTrustedAccountType:(unint64_t)type;
- (void)_hasAssignmentForTrustedAccountType:(unint64_t)type completion:(id)completion;
- (void)validateBeneficiaryAssignmentWithCompletion:(id)completion;
- (void)validateCustodianAssignmentWithCompletion:(id)completion;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSContactsTrustedAccountValidation

- (void)validateWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(TPSContactsTrustedAccountValidation *)self setCompletionHandler:completionCopy];
  value = [(TPSTargetingValidation *)self value];
  if (value && ([(TPSTargetingValidation *)self value], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, value, (isKindOfClass & 1) != 0))
  {
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    primaryAuthKitAccount = [mEMORY[0x277CF0130] primaryAuthKitAccount];
    [(TPSContactsTrustedAccountValidation *)self setPrimaryAccount:primaryAuthKitAccount];

    value2 = [(TPSTargetingValidation *)self value];
    -[TPSContactsTrustedAccountValidation setDesiredValue:](self, "setDesiredValue:", [value2 TPSSafeBoolForKey:@"value"]);

    value3 = [(TPSTargetingValidation *)self value];
    v12 = [value3 TPSSafeIntegerForKey:@"accountType"];

    value4 = [(TPSTargetingValidation *)self value];
    v14 = [value4 TPSSafeUIntegerForKey:@"statusType"];

    v15 = [(TPSContactsTrustedAccountValidation *)self _primaryAccountCanHaveTrustedAccountType:v12];
    if (v14 == 2)
    {
      objc_initWeak(buf, self);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__TPSContactsTrustedAccountValidation_validateWithCompletion___block_invoke;
      v23[3] = &unk_2789B04D8;
      objc_copyWeak(&v24, buf);
      [(TPSContactsTrustedAccountValidation *)self _hasAssignmentForTrustedAccountType:v12 completion:v23];
      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    else if (v14 == 1)
    {
      [(TPSContactsTrustedAccountValidation *)self reportCompletionWithResult:v15 ^ [(TPSContactsTrustedAccountValidation *)self desiredValue]^ 1 error:0];
    }

    else
    {
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      [(TPSContactsTrustedAccountValidation *)self reportCompletionWithResult:0 error:v22];
    }
  }

  else
  {
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_INFO))
    {
      value5 = [(TPSTargetingValidation *)self value];
      value6 = [(TPSTargetingValidation *)self value];
      *buf = 138412546;
      v26 = value5;
      v27 = 2112;
      v28 = objc_opt_class();
      v19 = v28;
      _os_log_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_INFO, "Unexpected value: %@ with class %@.", buf, 0x16u);
    }

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    [(TPSContactsTrustedAccountValidation *)self reportCompletionWithResult:0 error:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __62__TPSContactsTrustedAccountValidation_validateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reportCompletionWithResult:a2 error:v5];
}

- (BOOL)_primaryAccountCanHaveTrustedAccountType:(unint64_t)type
{
  if (type == 2)
  {
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    primaryAccount = [(TPSContactsTrustedAccountValidation *)self primaryAccount];
    v6 = [mEMORY[0x277CF0130] canHaveCustodianForAccount:primaryAccount];
  }

  else
  {
    if (type != 1)
    {
      return 0;
    }

    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    primaryAccount = [(TPSContactsTrustedAccountValidation *)self primaryAccount];
    v6 = [mEMORY[0x277CF0130] canHaveBeneficiaryForAccount:primaryAccount];
  }

  v7 = v6;

  return v7;
}

- (void)_hasAssignmentForTrustedAccountType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (type == 2)
  {
    [(TPSContactsTrustedAccountValidation *)self validateCustodianAssignmentWithCompletion:completionCopy];
  }

  else if (type == 1)
  {
    [(TPSContactsTrustedAccountValidation *)self validateBeneficiaryAssignmentWithCompletion:completionCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    v8[2](v8, 0, v7);
  }
}

- (void)validateBeneficiaryAssignmentWithCompletion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = objc_alloc_init(MEMORY[0x277CEC810]);
  if (v14[5])
  {
    objc_initWeak(&location, self);
    v5 = v14[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __83__TPSContactsTrustedAccountValidation_validateBeneficiaryAssignmentWithCompletion___block_invoke;
    v8[3] = &unk_2789B0500;
    objc_copyWeak(&v11, &location);
    v9 = completionCopy;
    v10 = &v13;
    [v5 fetchBeneficiariesWithCompletion:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_ERROR))
    {
      [TPSContactsTrustedAccountValidation validateBeneficiaryAssignmentWithCompletion:];
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:12 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v7);
  }

  _Block_object_dispose(&v13, 8);
}

void __83__TPSContactsTrustedAccountValidation_validateBeneficiaryAssignmentWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    v8 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __83__TPSContactsTrustedAccountValidation_validateBeneficiaryAssignmentWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), ([v5 count] == 0) ^ objc_msgSend(WeakRetained, "desiredValue"), 0);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

- (void)validateCustodianAssignmentWithCompletion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = objc_alloc_init(MEMORY[0x277CEC798]);
  if (v14[5])
  {
    objc_initWeak(&location, self);
    v5 = v14[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__TPSContactsTrustedAccountValidation_validateCustodianAssignmentWithCompletion___block_invoke;
    v8[3] = &unk_2789B0500;
    objc_copyWeak(&v11, &location);
    v9 = completionCopy;
    v10 = &v13;
    [v5 fetchTrustedContactsWithCompletion:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_ERROR))
    {
      [TPSContactsTrustedAccountValidation validateCustodianAssignmentWithCompletion:];
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:12 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v7);
  }

  _Block_object_dispose(&v13, 8);
}

void __81__TPSContactsTrustedAccountValidation_validateCustodianAssignmentWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    v8 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __81__TPSContactsTrustedAccountValidation_validateCustodianAssignmentWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), ([v5 count] == 0) ^ objc_msgSend(WeakRetained, "desiredValue"), 0);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

void __83__TPSContactsTrustedAccountValidation_validateBeneficiaryAssignmentWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __81__TPSContactsTrustedAccountValidation_validateCustodianAssignmentWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end