@interface VUIAgeVerification
+ (id)sharedInstance;
- (void)configureAgeVerification:(id)verification;
- (void)performAgeGateVerificationWithRatingValue:(id)value ratingDomain:(id)domain adamId:(id)id resourceType:(id)type canonicalMeta:(id)meta completion:(id)completion;
@end

@implementation VUIAgeVerification

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[VUIAgeVerification sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_5;

  return v3;
}

void __36__VUIAgeVerification_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_5;
  sharedInstance_sharedInstance_5 = v0;
}

- (void)configureAgeVerification:(id)verification
{
  v12 = *MEMORY[0x1E69E9840];
  verificationCopy = verification;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [verificationCopy description];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::setting preflightConfigDictionary %@", &v10, 0xCu);
  }

  v7 = [verificationCopy vui_numberForKey:@"isAgeVerificationEnabled"];
  -[VUIAgeVerification setIsAgeVerificationEnabled:](self, "setIsAgeVerificationEnabled:", [v7 BOOLValue]);
  v8 = [verificationCopy vui_numberForKey:@"minTvRatingRequiringAgeVerification"];
  if (v8)
  {
    [(VUIAgeVerification *)self setMinTvRatingRequiringAgeVerification:v8];
  }

  v9 = [verificationCopy vui_numberForKey:@"minMovieRatingRequiringAgeVerification"];
  if (v9)
  {
    [(VUIAgeVerification *)self setMinMovieRatingRequiringAgeVerification:v9];
  }
}

- (void)performAgeGateVerificationWithRatingValue:(id)value ratingDomain:(id)domain adamId:(id)id resourceType:(id)type canonicalMeta:(id)meta completion:(id)completion
{
  v74 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  domainCopy = domain;
  idCopy = id;
  *&v17 = COERCE_DOUBLE(type);
  metaCopy = meta;
  completionCopy = completion;
  v19 = VUIDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v67 = idCopy;
    v68 = 2112;
    v69 = v17;
    v70 = 2112;
    v71 = valueCopy;
    v72 = 2112;
    v73 = domainCopy;
    _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::Checking content with rating:%@ for ratingDomain:%@ adamId:%@ resourceType:%@", buf, 0x2Au);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  notificationToken = [(VUIAgeVerification *)self notificationToken];
  [defaultCenter removeObserver:notificationToken];

  LOBYTE(notificationToken) = [domainCopy isEqualToString:*MEMORY[0x1E69D5B18]];
  intValue = [valueCopy intValue];
  if (notificationToken)
  {
    [(VUIAgeVerification *)self minTvRatingRequiringAgeVerification];
  }

  else
  {
    [(VUIAgeVerification *)self minMovieRatingRequiringAgeVerification];
  }
  v23 = ;
  intValue2 = [v23 intValue];

  if (valueCopy && intValue >= intValue2)
  {
    v53 = metaCopy;
    activeAccount = [MEMORY[0x1E69D5920] activeAccount];
    v25 = [activeAccount ams_accountFlagValueForAccountFlag:*MEMORY[0x1E698C498]];
    [v25 doubleValue];
    v27 = v26;

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v30 = v29;

    v31 = VUIDefaultLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v67 = v30;
      v68 = 2048;
      *&v69 = v27 / 1000.0;
      _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::Content is restricted - checking if user needs age verification. Timestamp = %f , AMSAccountFlagAgeVerificationExpiration = %f", buf, 0x16u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke;
    aBlock[3] = &unk_1E872E9F0;
    v61 = completionCopy;
    v32 = _Block_copy(aBlock);
    vui_defaultBag = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v33 = MEMORY[0x1E695DF90];
    v34 = &stru_1F5DB25C0;
    v64[0] = VUIAgeVerificationAdamId;
    v64[1] = VUIAgeVerificationResourceType;
    v51 = idCopy;
    if (idCopy)
    {
      v35 = idCopy;
    }

    else
    {
      v35 = &stru_1F5DB25C0;
    }

    if (*&v17 != 0.0)
    {
      v34 = v17;
    }

    v65[0] = v35;
    v65[1] = v34;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
    v37 = [v33 dictionaryWithDictionary:v36];

    if (v53)
    {
      [v37 addEntriesFromDictionary:?];
    }

    v52 = domainCopy;
    v50 = v17;
    if ([MEMORY[0x1E69DF6F0] isTV])
    {
      v38 = 0;
    }

    else
    {
      v62 = VUIAgeVerificationClientFields;
      v63 = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    }

    v41 = objc_alloc(MEMORY[0x1E698CC48]);
    v42 = +[VUIPreflightManager defaultPreflightManager];
    presentingController = [v42 presentingController];
    v44 = [v41 initWithAccount:activeAccount bag:vui_defaultBag options:v38 viewController:presentingController];

    isVerificationNeeded = [v44 isVerificationNeeded];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_4;
    v55[3] = &unk_1E8730950;
    selfCopy = self;
    v58 = v32;
    v56 = v44;
    v59 = v30;
    v46 = v44;
    v47 = v32;
    [isVerificationNeeded addFinishBlock:v55];

    idCopy = v51;
    domainCopy = v52;
    v17 = v50;
    metaCopy = v53;
    v40 = completionCopy;
  }

  else
  {
    v39 = VUIDefaultLogObject();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v39, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::content not restricted", buf, 2u);
    }

    v40 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke(uint64_t a1, char a2, int a3)
{
  if (a3)
  {
    v5 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_2;
    block[3] = &unk_1E872FFC0;
    v6 = &v13;
    v13 = *(a1 + 32);
    v14 = a2;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v8 = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_3;
    v9 = &unk_1E872FFC0;
    v6 = &v10;
    v10 = *(a1 + 32);
    v11 = a2;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v8(v7);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }
  }
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_4_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    v14 = [a2 requiredType];
    v15 = VUIDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = v14;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::AMSUIAgeVerificationTask isVerificationNeeded: resultType=%lu", buf, 0xCu);
    }

    if (v14)
    {
      if (v14 == 1)
      {
        v13 = *(*(a1 + 48) + 16);
        goto LABEL_6;
      }

      if ((v14 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v16 = [*(a1 + 32) performTask];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_30;
        v25[3] = &unk_1E8730928;
        v17 = *(a1 + 48);
        v25[4] = *(a1 + 40);
        v26 = v17;
        v27 = *(a1 + 56);
        v28 = v14;
        [v16 addFinishBlock:v25];

        goto LABEL_7;
      }

      v18 = VUIDefaultLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_4_cold_2(v14, v18, v19, v20, v21, v22, v23, v24);
      }
    }
  }

  v13 = *(*(a1 + 48) + 16);
LABEL_6:
  v13();
LABEL_7:
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_30(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_30_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

LABEL_5:
    v13 = *(a1[5] + 16);
LABEL_6:
    v13();
    goto LABEL_7;
  }

  v14 = [a2 successType];
  v15 = VUIDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = v14;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::AMSUIAgeVerificationTask performTask: successType=%lu", buf, 0xCu);
  }

  if (!v14)
  {
    goto LABEL_5;
  }

  if ((v14 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v13 = *(a1[5] + 16);
    goto LABEL_6;
  }

  v16 = VUIDefaultLogObject();
  v17 = v16;
  if (v14 != 2)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_30_cold_2(a1, v17, v24, v25, v26, v27, v28, v29);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::starting verification flow, adding observer for ACDAccountStoreDidChangeNotification", buf, 2u);
  }

  (*(a1[5] + 16))();
  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  v19 = *MEMORY[0x1E6959968];
  v20 = [MEMORY[0x1E696ADC8] mainQueue];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_32;
  v30[3] = &unk_1E8730900;
  v30[5] = a1[6];
  v30[4] = a1[4];
  v21 = [v18 addObserverForName:v19 object:0 queue:v20 usingBlock:v30];
  v22 = a1[4];
  v23 = *(v22 + 32);
  *(v22 + 32) = v21;

LABEL_7:
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_32(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D5920] activeAccount];
  v3 = [v2 ams_accountFlagValueForAccountFlag:*MEMORY[0x1E698C498]];
  [v3 doubleValue];
  v5 = v4 / 1000.0;

  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::received ACDAccountStoreDidChangeNotification during age verification - rechecking AMSAccountFlagAgeVerificationExpiration=%f", &v10, 0xCu);
  }

  v7 = *(a1 + 40);
  v8 = VUIDefaultLogObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5 <= v7)
  {
    if (v9)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::user is still not age-verified", &v10, 2u);
    }
  }

  else
  {
    if (v9)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::user is now age-verified. Use will need to retry playback", &v10, 2u);
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 removeObserver:*(*(a1 + 32) + 32)];
  }
}

@end