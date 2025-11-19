@interface PKAuthenticator
+ (BOOL)_isAccessibilityUserIntentEnabled;
+ (BOOL)canPerformPSD2StyleBuyForAccessControlRef:(__SecAccessControl *)a3;
+ (BOOL)isUserIntentAvailableWithStyle:(int64_t)a3;
+ (BOOL)secureIndicatorVisible;
+ (id)trackSecureIndicatorVisibility;
+ (int64_t)userIntentStyle;
+ (unint64_t)_currentStateForMechanisms:(id)a3;
+ (unint64_t)cachedStateForPolicy:(int64_t)a3;
+ (unint64_t)currentStateForAccessControl:(__SecAccessControl *)a3;
+ (unint64_t)currentStateForPolicy:(int64_t)a3;
+ (void)consumeSharedRootContextWithCompletion:(id)a3;
+ (void)currentStateForRequest:(id)a3 completion:(id)a4;
+ (void)performWhenSecureIndicatorRemoved:(id)a3;
+ (void)resetSharedRootContextWithCompletion:(id)a3;
- (BOOL)_delegateSupportsPasscodePresentation;
- (BOOL)_delegateSupportsPassphrasePresentation;
- (BOOL)fingerPresent;
- (BOOL)passcodeActive;
- (BOOL)passcodeWasPresented;
- (BOOL)passphraseActive;
- (PKAuthenticator)initWithDelegate:(id)a3;
- (PKAuthenticatorDelegate)delegate;
- (id)_context;
- (id)_optionsForEvaluationRequest:(id)a3 withEvaluationContext:(id)a4;
- (id)_swapContext:(id)a3 withOptions:(unint64_t)a4;
- (int64_t)coachingState;
- (int64_t)evaluationState;
- (unint64_t)authenticationIdentifier;
- (void)_evaluateEvaluationContext:(id)a3;
- (void)_handleInstructionsForRequest:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)accessExternalizedContextWithCompletion:(id)a3;
- (void)dealloc;
- (void)evaluateRequest:(id)a3 withCompletion:(id)a4;
- (void)fallbackToSystemPasscodeUI;
- (void)invalidate;
- (void)registerSecureIndicatorProvider:(id)a3;
- (void)restartEvaluation;
- (void)setDelegate:(id)a3;
- (void)unregisterSecureIndicatorProvider:(id)a3;
- (void)waitForSecureIndicatorProvider:(id)a3;
@end

@implementation PKAuthenticator

- (PKAuthenticator)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKAuthenticator;
  v5 = [(PKAuthenticator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  [(PKAuthenticatorEvaluationContext *)self->_context invalidate];
  v3 = [(PKAuthenticatorEvaluationContext *)self->_context hoistCompletionHandler];
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__PKAuthenticator_dealloc__block_invoke;
    block[3] = &unk_2799FFB20;
    v17 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v5 = self->_secureIndicatorProviderCompletions;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v12 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }

  v11.receiver = self;
  v11.super_class = PKAuthenticator;
  [(PKAuthenticator *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

void __26__PKAuthenticator_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D37DB8] responseWithResult:2];
  (*(v1 + 16))(v1, v2);
}

+ (void)consumeSharedRootContextWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[PKAuthenticatorSharedRootContext sharedInstance];
  [v4 consumeWithCompletion:v3];
}

+ (void)resetSharedRootContextWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[PKAuthenticatorSharedRootContext sharedInstance];
  [v4 resetWithCompletion:v3];
}

+ (BOOL)isUserIntentAvailableWithStyle:(int64_t)a3
{
  v4 = +[PKAuthenticatorSharedRootContext sharedInstance];
  v5 = [v4 userIntentAvailabilityState];

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      return 0;
    }

    return ((v5 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else
  {
    return v5 == 1;
  }
}

+ (BOOL)_isAccessibilityUserIntentEnabled
{
  IsAvailable = PKUserIntentIsAvailable();
  if (IsAvailable)
  {
    v3 = [objc_alloc(MEMORY[0x277CD47B8]) initWithDomain:0 authenticationContext:0];
    v4 = [v3 BOOLForKey:1 error:0];

    LOBYTE(IsAvailable) = v4;
  }

  return IsAvailable;
}

+ (int64_t)userIntentStyle
{
  if (!PKUserIntentIsAvailable())
  {
    return 0;
  }

  if (![a1 _isAccessibilityUserIntentEnabled])
  {
    return 1;
  }

  if (_AXSAssistiveTouchEnabled())
  {
    return 2;
  }

  if (UIAccessibilityIsSwitchControlRunning())
  {
    return 3;
  }

  return -1;
}

+ (unint64_t)currentStateForPolicy:(int64_t)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = _LAPolicyContainerForPKPolicy(a3);
  v7 = v6;
  if ((v6 & 0x100) != 0)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__PKAuthenticator_currentStateForPolicy___block_invoke;
    v12[3] = &unk_279A00158;
    v12[4] = &v13;
    v12[5] = v5;
    v12[6] = v6;
    _AccessPreflightContext(HIDWORD(v6) & 1, v12);
  }

  v8 = [a1 _currentStateForMechanisms:v14[5]];
  if ((v7 & 0x100000000) == 0)
  {
    v9 = CACurrentMediaTime();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__PKAuthenticator_currentStateForPolicy___block_invoke_489;
    v11[3] = &__block_descriptor_56_e29_v16__0__NSMutableDictionary_8l;
    v11[4] = v8;
    *&v11[5] = v9;
    v11[6] = a3;
    _AccessAuthenticatorStateCache(v11);
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __41__PKAuthenticator_currentStateForPolicy___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 40);
  v13 = 0;
  v7 = [a2 evaluationMechanismsForPolicy:v6 error:&v13];
  v8 = v13;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (v8)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_25E0A9000, v11, OS_LOG_TYPE_DEFAULT, "Authentication Mechanism Error: %@", buf, 0xCu);
    }
  }

  v5[2](v5);

  v12 = *MEMORY[0x277D85DE8];
}

void __41__PKAuthenticator_currentStateForPolicy___block_invoke_489(void *a1, void *a2)
{
  v7 = a1[4];
  v8 = a1[5];
  v3 = MEMORY[0x277CCAE60];
  v4 = a2;
  v5 = [v3 valueWithBytes:&v7 objCType:"{?=Qd}"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{a1[6], v7, v8}];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

+ (void)currentStateForRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = _LAPolicyContainerForPKPolicy([a3 policy]);
  if ((v8 & 0x100) != 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__PKAuthenticator_currentStateForRequest_completion___block_invoke;
    v9[3] = &unk_279A001C8;
    v11 = v7;
    v12 = v8;
    v10 = v6;
    v13 = a1;
    _AccessPreflightContext(0, v9);
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __53__PKAuthenticator_currentStateForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__PKAuthenticator_currentStateForRequest_completion___block_invoke_2;
  v10[3] = &unk_279A001A0;
  v13 = *(a1 + 40);
  v6 = *(a1 + 32);
  v14 = *(a1 + 56);
  v11 = v6;
  v12 = v5;
  v7 = v5;
  v8 = a2;
  v9 = MEMORY[0x25F8AAFE0](v10);
  (v9)[2](v9, v8, 0);
}

void __53__PKAuthenticator_currentStateForRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v11 = a3;
  v6 = a3;
  v7 = [a2 evaluationMechanismsForPolicy:v5 error:&v11];
  v8 = v11;

  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_25E0A9000, v9, OS_LOG_TYPE_DEFAULT, "Authentication Mechanism Error: %@", buf, 0xCu);
    }
  }

  if (*(a1 + 32))
  {
    [*(a1 + 64) _currentStateForMechanisms:v7];
    (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)currentStateForAccessControl:(__SecAccessControl *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PKAuthenticator_currentStateForAccessControl___block_invoke;
  v6[3] = &unk_279A001F0;
  v6[4] = &v7;
  v6[5] = a3;
  _AccessPreflightContext(0, v6);
  v4 = [a1 _currentStateForMechanisms:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__PKAuthenticator_currentStateForAccessControl___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 40);
  v13 = 0;
  v7 = [a2 evaluationMechanismsForAccessControl:v6 operation:3 error:&v13];
  v8 = v13;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (v8)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_25E0A9000, v11, OS_LOG_TYPE_DEFAULT, "Authentication Mechanism Error: %@", buf, 0xCu);
    }
  }

  v5[2](v5);

  v12 = *MEMORY[0x277D85DE8];
}

+ (BOOL)canPerformPSD2StyleBuyForAccessControlRef:(__SecAccessControl *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    CFRetain(a3);
    v4 = [PKAuthenticator currentStateForAccessControl:a3];
    v5 = v4 & [PKAuthenticator currentStateForPolicy:2]& 0xELL;
    v6 = v5 != 0;
    CFRelease(a3);
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "+[PKAuthenticator canPerformPSD2StyleBuyForAccessControlRef:]";
      v12 = 1024;
      v13 = v5 != 0;
      _os_log_impl(&dword_25E0A9000, v7, OS_LOG_TYPE_DEFAULT, "%s %d", &v10, 0x12u);
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_25E0A9000, v7, OS_LOG_TYPE_DEFAULT, "ACL is missing, cannot determine if a buy is possible.", &v10, 2u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (unint64_t)_currentStateForMechanisms:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 containsObject:&unk_286FD0F98])
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    if ([v3 containsObject:&unk_286FD0F80])
    {
      v4 |= 8uLL;
    }

    v5 = [v3 containsObject:&unk_286FD0FB0];
    v6 = v4 | 4;
    if (!v5)
    {
      v6 = v4;
    }

    if (v6)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)cachedStateForPolicy:(int64_t)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  _LAPolicyContainerForPKPolicy(a3);
  if ((v5 & 0x100000000) == 0)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__PKAuthenticator_cachedStateForPolicy___block_invoke;
    v12[3] = &unk_279A00218;
    v12[4] = &v13;
    v12[5] = a3;
    _AccessAuthenticatorStateCache(v12);
  }

  if (!v14[5])
  {
    v8 = [a1 currentStateForPolicy:a3];
LABEL_8:
    v7 = v8;
    goto LABEL_9;
  }

  v6 = CACurrentMediaTime();
  v10 = 0;
  v11 = 0.0;
  [v14[5] getValue:&v10];
  if (v6 - v11 >= 0.2)
  {
    v8 = [a1 currentStateForPolicy:{a3, v6 - v11}];
    goto LABEL_8;
  }

  v7 = v10;
LABEL_9:
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __40__PKAuthenticator_cachedStateForPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 40);
  v5 = a2;
  v9 = [v3 numberWithInteger:v4];
  v6 = [v5 objectForKeyedSubscript:v9];

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)_context
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_context;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_swapContext:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  p_context = &self->_context;
  context = self->_context;
  v33 = v7;
  if (self->_invalidated)
  {
    if (v7 | context)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      v11 = v10;
      if (*p_context)
      {
        [v10 addObject:?];
        v12 = *p_context;
        if (!v7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v12 = 0;
        if (!v7)
        {
          goto LABEL_13;
        }
      }

      if (v12 != v7)
      {
        [v11 addObject:v7];
        v12 = *p_context;
      }

LABEL_13:
      if (v12)
      {
        *p_context = 0;

        WeakRetained = 0;
        v14 = 0;
        v13 = 0;
        goto LABEL_15;
      }

LABEL_9:
      os_unfair_lock_unlock(&self->_lock);
      v13 = 0;
      v14 = 0;
      v16 = 0;
      goto LABEL_25;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  if (context == v7)
  {
    goto LABEL_8;
  }

  v13 = context;
  v14 = v7;
  objc_storeStrong(&self->_context, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = 0;
LABEL_15:
  ++self->_authenticationIdentifier;
  os_unfair_lock_unlock(&self->_lock);
  if (v13)
  {
    [(PKAuthenticatorEvaluationContext *)v13 setDelegate:0 resetPriorDelegate:v14 == 0];
    [(PKAuthenticatorEvaluationContext *)v13 invalidateWithIntent:(v4 & 2 | v14) != 0];
    v17 = [(PKAuthenticatorEvaluationContext *)v13 hoistCompletionHandler];
    v18 = v17;
    if ((v4 & 1) == 0 && v17)
    {
      v19 = [MEMORY[0x277D37DB8] responseWithResult:2];
      (v18)[2](v18, v19);
    }
  }

  if (v14)
  {
    v20 = [v14 request];
    v21 = [v20 useLegacyAuthenticator];

    if ((v21 & 1) == 0)
    {
      [v14 _updateEvaluationState];
    }

    v16 = WeakRetained;
    [v14 setDelegate:WeakRetained];
  }

  else
  {
    v16 = WeakRetained;
  }

LABEL_25:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = v11;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v34 + 1) + 8 * i);
        [v27 invalidate];
        v28 = [v27 hoistCompletionHandler];
        if (v28)
        {
          v29 = [MEMORY[0x277D37DB8] responseWithResult:2];
          (v28)[2](v28, v29);
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v24);
  }

  v30 = v13;
  v31 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_optionsForEvaluationRequest:(id)a3 withEvaluationContext:(id)a4
{
  v42[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:&unk_286FD1028];
  if (([v6 passcodeOnly] & 1) == 0)
  {
    if (PKPearlIsAvailable())
    {
      v9 = &unk_286FD0F98;
    }

    else
    {
      v9 = &unk_286FD0FB0;
    }

    [v8 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:v9];
  }

  if (PKUserIntentIsAvailable())
  {
    [v8 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:&unk_286FD10A0];
  }

  v10 = [(PKAuthenticator *)self _delegateSupportsPasscodePresentation];
  v11 = MEMORY[0x277CBEC38];
  if (v10)
  {
    v41 = &unk_286FD0F68;
    v42[0] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [v8 setObject:v12 forKeyedSubscript:&unk_286FD0F80];
  }

  if ([(PKAuthenticator *)self _delegateSupportsPassphrasePresentation])
  {
    v39 = &unk_286FD0F68;
    v40 = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v8 setObject:v13 forKeyedSubscript:&unk_286FD0F68];
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v14 setObject:v8 forKeyedSubscript:&unk_286FD10B8];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "maxBiometryFailures")}];
  [v14 setObject:v15 forKeyedSubscript:&unk_286FD10D0];

  v16 = MEMORY[0x277CCABB0];
  v17 = [v7 isPolicySupported] && objc_msgSend(v7, "policy") == 1004 && objc_msgSend(v6, "accessControlRef") != 0;
  v18 = [v16 numberWithInt:v17];
  [v14 setObject:v18 forKeyedSubscript:&unk_286FD10E8];

  v19 = MEMORY[0x277CBEC38];
  [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_286FD1100];
  [v14 setObject:&unk_286FD1028 forKeyedSubscript:&unk_286FD1118];
  [v14 setObject:v19 forKeyedSubscript:&unk_286FD1130];
  v20 = [v6 processName];

  if (v20)
  {
    v21 = [v6 processName];
    [v14 setObject:v21 forKeyedSubscript:&unk_286FD1148];
  }

  v22 = [v6 reason];

  if (v22)
  {
    v23 = [v6 reason];
    [v14 setObject:v23 forKeyedSubscript:&unk_286FD0F80];
  }

  v24 = [v6 processIdentifier];

  if (v24)
  {
    v25 = [v6 processIdentifier];
    [v14 setObject:v25 forKeyedSubscript:&unk_286FD1160];
  }

  if ([v7 isPolicySupported])
  {
    v26 = [v7 policy];
    if (v26 == 1017 || v26 == 1006)
    {
      v27 = [v6 PINTitle];
      if ([v27 length])
      {
        [v14 setObject:v27 forKeyedSubscript:&unk_286FD1178];
      }

      v28 = [v6 PINLength];
      if (v28)
      {
        [v14 setObject:v28 forKeyedSubscript:&unk_286FD1190];
      }
    }
  }

  if ([v7 forceApplePayCheck])
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_286FD11A8];
  }

  if ([v7 forceSkipUserIntent])
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_286FD11C0];
  }

  if (([v6 policy] - 2) <= 7)
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_286FD11D8];
  }

  v29 = [v6 physicalButtonTitle];

  if (v29)
  {
    v30 = [v6 physicalButtonTitle];
    [v14 setObject:v30 forKeyedSubscript:&unk_286FD11F0];
  }

  v31 = [v6 passcodeTitle];

  if (v31)
  {
    v32 = [v6 passcodeTitle];
    [v14 setObject:v32 forKeyedSubscript:&unk_286FD1208];
  }

  v33 = [v6 fallbackOptionTitle];
  v34 = [v33 length];

  if (v34)
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_286FD1220];
    v35 = [v6 fallbackOptionTitle];
    [v14 setObject:v35 forKeyedSubscript:&unk_286FD0FB0];
  }

  if ([v6 useLocationBasedAuthorization])
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_286FD1238];
  }

  v36 = [v14 copy];

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)_handleInstructionsForRequest:(id)a3 withContext:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 1);
  }
}

- (void)_evaluateEvaluationContext:(id)a3
{
  v4 = a3;
  v5 = [v4 request];
  v6 = [(PKAuthenticator *)self _optionsForEvaluationRequest:v5 withEvaluationContext:v4];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__PKAuthenticator__evaluateEvaluationContext___block_invoke;
  v9[3] = &unk_279A00240;
  objc_copyWeak(&v12, &location);
  v7 = v5;
  v10 = v7;
  v8 = v4;
  v11 = v8;
  [v8 evaluateWithOptions:v6 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __46__PKAuthenticator__evaluateEvaluationContext___block_invoke(id *a1, unsigned __int8 a2, void *a3, uint64_t a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v11 = a2 & (WeakRetained != 0);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 5;
  }

  if (v11 == 1 && [a1[4] policy] != 1)
  {
    v13 = [v8 externalizedContext];
    if (!v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v13 = 0;
    if (!v9)
    {
      goto LABEL_36;
    }
  }

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v9;
    _os_log_impl(&dword_25E0A9000, v14, OS_LOG_TYPE_DEFAULT, "Authentication Error: %@", &v27, 0xCu);
  }

  v15 = [v9 domain];
  v16 = [v15 isEqualToString:*MEMORY[0x277CD4770]];

  if (v16)
  {
    v17 = [v9 code];
    if (v17 > -8)
    {
      if (v17 <= -4)
      {
        if (v17 == -7)
        {
          v12 = 3;
        }

        else if (v17 == -4)
        {
          v18 = [v9 userInfo];
          v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277CD4778]];

          if (v19)
          {
            v20 = [v19 integerValue];
            v21 = 4;
            if (v20 == 9)
            {
              v21 = 1;
            }

            if (v20 == 18)
            {
              v12 = 3;
            }

            else
            {
              v12 = v21;
            }
          }

          else
          {
            v12 = 4;
          }
        }

        goto LABEL_36;
      }

      if (v17 != -3)
      {
        if (v17 == -2)
        {
          v12 = 1;
        }

        goto LABEL_36;
      }

LABEL_31:
      v12 = 7;
      goto LABEL_36;
    }

    switch(v17)
    {
      case -1023:
        if ([a1[4] policy] == 10)
        {
          v12 = 0;
          break;
        }

        goto LABEL_31;
      case -9:
        v12 = 2;
        break;
      case -8:
        v12 = 6;
        break;
    }
  }

LABEL_36:
  if (v11)
  {
    v22 = [a1[5] presentationFlags];
    v23 = MEMORY[0x277D38368];
    if ((v22 & 0x180) == 0)
    {
      v23 = MEMORY[0x277D38370];
    }

    MEMORY[0x25F8AA940](*v23, 0);
  }

  v24 = [a1[5] hoistCompletionHandler];
  if (v24)
  {
    v25 = [MEMORY[0x277D37DB8] responseWithResult:v12 biometricMatch:objc_msgSend(a1[5] credential:{"biometricMatch"), v13}];
    (v24)[2](v24, v25);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)evaluateRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[PKAuthenticatorEvaluationContext alloc] initWithRequest:v6 completionHandler:v7 forAuthenticator:self];
  if (![(PKAuthenticatorEvaluationContext *)v8 isInvalidated])
  {
    v9 = [(PKAuthenticator *)self _swapContext:v8];
    objc_initWeak(&location, self);
    v10 = objc_alloc_init(MEMORY[0x277D37DB0]);
    if (PKPearlIsAvailable() && LAUIIsSecureFaceIDUISupported() && LAUIIsSecureFaceIDUIEnabled() && (PKSystemApertureIsAvailable() & 1) == 0)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __50__PKAuthenticator_evaluateRequest_withCompletion___block_invoke;
      v25[3] = &unk_279A00290;
      objc_copyWeak(&v27, &location);
      v26 = v8;
      [v10 addOperation:v25];

      objc_destroyWeak(&v27);
    }

    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__PKAuthenticator_evaluateRequest_withCompletion___block_invoke_3;
    v18[3] = &unk_279A002E0;
    objc_copyWeak(&v22, &location);
    v19 = v6;
    v11 = v8;
    v20 = v11;
    v21 = v23;
    [v10 addOperation:v18];
    v12 = [MEMORY[0x277CBEB68] null];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__PKAuthenticator_evaluateRequest_withCompletion___block_invoke_5;
    v14[3] = &unk_279A00308;
    objc_copyWeak(&v17, &location);
    v16 = v23;
    v15 = v11;
    v13 = [v10 evaluateWithInput:v12 completion:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v22);
    _Block_object_dispose(v23, 8);

    objc_destroyWeak(&location);
  }
}

void __50__PKAuthenticator_evaluateRequest_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__PKAuthenticator_evaluateRequest_withCompletion___block_invoke_2;
    v9[3] = &unk_279A00268;
    v10 = *(a1 + 32);
    v12 = v7;
    v11 = v6;
    [WeakRetained waitForSecureIndicatorProvider:v9];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

uint64_t __50__PKAuthenticator_evaluateRequest_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) bindToSecureIndicatorProvider:a2];
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void __50__PKAuthenticator_evaluateRequest_withCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__PKAuthenticator_evaluateRequest_withCompletion___block_invoke_4;
    v11[3] = &unk_279A002B8;
    v14 = *(a1 + 48);
    v13 = v7;
    v12 = v6;
    [WeakRetained _handleInstructionsForRequest:v9 withContext:v10 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

void __50__PKAuthenticator_evaluateRequest_withCompletion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained && *(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [WeakRetained _evaluateEvaluationContext:*(a1 + 32)];
  }

  else
  {
    [*(a1 + 32) invalidate];
    v3 = [*(a1 + 32) hoistCompletionHandler];
    if (v3)
    {
      v4 = [MEMORY[0x277D37DB8] responseWithResult:5];
      (v3)[2](v3, v4);
    }
  }
}

- (void)fallbackToSystemPasscodeUI
{
  v2 = [(PKAuthenticator *)self _context];
  [v2 fallbackToPasscode];
}

- (void)restartEvaluation
{
  os_unfair_lock_lock(&self->_lock);
  context = self->_context;
  if (context)
  {
    v6 = [(PKAuthenticatorEvaluationContext *)context request];
    v4 = [(PKAuthenticatorEvaluationContext *)self->_context hoistCompletionHandler];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      if ([v6 useLegacyAuthenticator])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if (objc_opt_respondsToSelector())
        {
          [WeakRetained authenticatorWillRestartEvaluation:self];
        }
      }

      [(PKAuthenticator *)self evaluateRequest:v6 withCompletion:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v6 = 0;
    v4 = 0;
  }
}

- (void)accessExternalizedContextWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKAuthenticator *)self _context];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__PKAuthenticator_accessExternalizedContextWithCompletion___block_invoke;
  v7[3] = &unk_279A00330;
  v8 = v4;
  v6 = v4;
  [v5 accessLAContext:v7];
}

void __59__PKAuthenticator_accessExternalizedContextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 externalizedContext];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_invalidated = 1;
  v3 = self->_secureIndicatorProviderCompletions;
  secureIndicatorProviderCompletions = self->_secureIndicatorProviderCompletions;
  self->_secureIndicatorProviderCompletions = 0;

  os_unfair_lock_unlock(&self->_lock);
  [(PKAuthenticator *)self cancelEvaluation];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)authenticationIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  authenticationIdentifier = self->_authenticationIdentifier;
  os_unfair_lock_unlock(&self->_lock);
  return authenticationIdentifier;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_delegate, obj);
  if (self->_invalidated)
  {
    context = 0;
  }

  else
  {
    context = self->_context;
  }

  v5 = context;
  os_unfair_lock_unlock(&self->_lock);
  [(PKAuthenticatorEvaluationContext *)v5 setDelegate:obj];
}

- (int64_t)evaluationState
{
  v2 = [(PKAuthenticator *)self _context];
  v3 = [v2 evaluationState];

  return v3;
}

- (int64_t)coachingState
{
  v2 = [(PKAuthenticator *)self _context];
  v3 = [v2 coachingState];

  return v3;
}

- (BOOL)fingerPresent
{
  v2 = [(PKAuthenticator *)self _context];
  v3 = [v2 fingerPresent];

  return v3;
}

- (BOOL)passcodeActive
{
  v2 = [(PKAuthenticator *)self _context];
  v3 = [v2 passcodeActive];

  return v3;
}

- (BOOL)passphraseActive
{
  v2 = [(PKAuthenticator *)self _context];
  v3 = [v2 passphraseActive];

  return v3;
}

- (BOOL)passcodeWasPresented
{
  v2 = [(PKAuthenticator *)self _context];
  v3 = [v2 presentationFlags];

  return (v3 & 0x180) != 0;
}

- (BOOL)_delegateSupportsPasscodePresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (BOOL)_delegateSupportsPassphrasePresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (PKAuthenticatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (BOOL)secureIndicatorVisible
{
  os_unfair_lock_lock(&_SecureIndicatorLock);
  v2 = _SecureIndicatorVisibleCount != 0;
  os_unfair_lock_unlock(&_SecureIndicatorLock);
  return v2;
}

+ (void)performWhenSecureIndicatorRemoved:(id)a3
{
  v7 = a3;
  if (v7)
  {
    os_unfair_lock_lock(&_SecureIndicatorLock);
    if (_SecureIndicatorVisibleCount)
    {
      v3 = _SecureIndicatorDismissedCompletions;
      if (!_SecureIndicatorDismissedCompletions)
      {
        v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v5 = _SecureIndicatorDismissedCompletions;
        _SecureIndicatorDismissedCompletions = v4;

        v3 = _SecureIndicatorDismissedCompletions;
      }

      v6 = MEMORY[0x25F8AAFE0](v7);
      [v3 addObject:v6];

      os_unfair_lock_unlock(&_SecureIndicatorLock);
    }

    else
    {
      os_unfair_lock_unlock(&_SecureIndicatorLock);
      v7[2]();
    }
  }

  else
  {
    __break(1u);
  }
}

+ (id)trackSecureIndicatorVisibility
{
  os_unfair_lock_lock(&_SecureIndicatorLock);
  ++_SecureIndicatorVisibleCount;
  os_unfair_lock_unlock(&_SecureIndicatorLock);
  v2 = objc_alloc(MEMORY[0x277D37E60]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__PKAuthenticator_PKAuthenticatorSecureIndicator__trackSecureIndicatorVisibility__block_invoke_2;
  v10[3] = &unk_2799FFB20;
  v11 = &__block_literal_global_597;
  v3 = [v2 initWithBlock:v10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__PKAuthenticator_PKAuthenticatorSecureIndicator__trackSecureIndicatorVisibility__block_invoke_3;
  v7[3] = &unk_2799FFEB8;
  v8 = v3;
  v9 = &__block_literal_global_597;
  v4 = v3;
  v5 = MEMORY[0x25F8AAFE0](v7);

  return v5;
}

void __81__PKAuthenticator_PKAuthenticatorSecureIndicator__trackSecureIndicatorVisibility__block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&_SecureIndicatorLock);
  if (--_SecureIndicatorVisibleCount)
  {
    v0 = 0;
  }

  else
  {
    v0 = _SecureIndicatorDismissedCompletions;
    v1 = _SecureIndicatorDismissedCompletions;
    _SecureIndicatorDismissedCompletions = 0;
  }

  os_unfair_lock_unlock(&_SecureIndicatorLock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __81__PKAuthenticator_PKAuthenticatorSecureIndicator__trackSecureIndicatorVisibility__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  if (result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)registerSecureIndicatorProvider:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  os_unfair_lock_lock(&self->_lock);
  secureIndicatorProviders = self->_secureIndicatorProviders;
  if (!secureIndicatorProviders)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = self->_secureIndicatorProviders;
    self->_secureIndicatorProviders = v7;

    secureIndicatorProviders = self->_secureIndicatorProviders;
  }

  if ([(NSMutableArray *)secureIndicatorProviders indexOfObjectIdenticalTo:v5]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_secureIndicatorProviders addObject:v5];
  }

  v9 = self->_secureIndicatorProviderCompletions;
  secureIndicatorProviderCompletions = self->_secureIndicatorProviderCompletions;
  self->_secureIndicatorProviderCompletions = 0;

  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v9;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v17 + 1) + 8 * i) + 16))(*(*(&v17 + 1) + 8 * i));
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)unregisterSecureIndicatorProvider:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_secureIndicatorProviders removeObjectIdenticalTo:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    __break(1u);
  }
}

- (void)waitForSecureIndicatorProvider:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    __break(1u);
    return;
  }

  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    secureIndicatorProviders = self->_secureIndicatorProviders;
    if (secureIndicatorProviders)
    {
      v5 = [(NSMutableArray *)secureIndicatorProviders lastObject];
      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (self->_invalidated)
  {
    v5 = 0;
LABEL_7:
    os_unfair_lock_unlock(&self->_lock);
    v10[2](v10, v5);

    return;
  }

  secureIndicatorProviderCompletions = self->_secureIndicatorProviderCompletions;
  if (!secureIndicatorProviderCompletions)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = self->_secureIndicatorProviderCompletions;
    self->_secureIndicatorProviderCompletions = v7;

    secureIndicatorProviderCompletions = self->_secureIndicatorProviderCompletions;
  }

  v9 = MEMORY[0x25F8AAFE0](v10);
  [(NSMutableArray *)secureIndicatorProviderCompletions addObject:v9];

  os_unfair_lock_unlock(&self->_lock);
}

@end