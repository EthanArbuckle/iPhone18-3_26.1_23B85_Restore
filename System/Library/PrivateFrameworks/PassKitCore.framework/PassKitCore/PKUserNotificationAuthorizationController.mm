@interface PKUserNotificationAuthorizationController
+ (id)sharedInstance;
- (PKUserNotificationAuthorizationController)init;
- (unint64_t)_contentTypeToDisplayWithPasses:(id)passes;
- (void)_authorizationStatusRequiresPromptWithCompletion:(id)completion;
- (void)_shouldOfferAuthorizationPromptForPeerPaymentReasonWithPeerPaymentPass:(id)pass completion:(id)completion;
- (void)addDelegate:(id)delegate;
- (void)authorizationStatusWithCompletion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)requestNotificationAuthorizationWithCompletion:(id)completion;
- (void)setPresentedNotificationAuthorizationPromptShown;
- (void)shouldOfferAuthorizationPromptWithPasses:(id)passes completion:(id)completion;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation PKUserNotificationAuthorizationController

void __59__PKUserNotificationAuthorizationController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKUserNotificationAuthorizationController);
  v1 = _MergedGlobals_203;
  _MergedGlobals_203 = v0;
}

- (PKUserNotificationAuthorizationController)init
{
  v10.receiver = self;
  v10.super_class = PKUserNotificationAuthorizationController;
  v2 = [(PKUserNotificationAuthorizationController *)&v10 init];
  if (v2)
  {
    if (PKRunningInPassbook())
    {
      currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
    }

    else
    {
      currentNotificationCenter = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.Passbook"];
    }

    center = v2->_center;
    v2->_center = currentNotificationCenter;

    [(UNUserNotificationCenter *)v2->_center setDelegate:v2];
    v2->_delegatesLock._os_unfair_lock_opaque = 0;
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    delegates = v2->_delegates;
    v2->_delegates = pk_weakObjectsHashTableUsingPointerPersonality;

    v7 = +[PKPaymentService paymentService];
    paymentService = v2->_paymentService;
    v2->_paymentService = v7;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1ED6D18E8 != -1)
  {
    dispatch_once(&qword_1ED6D18E8, &__block_literal_global_50);
  }

  v3 = _MergedGlobals_203;

  return v3;
}

- (void)shouldOfferAuthorizationPromptWithPasses:(id)passes completion:(id)completion
{
  passesCopy = passes;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x3032000000;
    v66[3] = __Block_byref_object_copy__17;
    v66[4] = __Block_byref_object_dispose__17;
    v67 = 0;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x2020000000;
    v65 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = [(PKUserNotificationAuthorizationController *)self _contentTypeToDisplayWithPasses:passesCopy];
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
    v11 = PKGetNotificationAuthorizationPromptCount();
    v12 = +[PKPaymentWebService sharedService];
    context = [v12 context];
    configuration = [context configuration];
    notificationAuthorizationPromptPresentationCount = [configuration notificationAuthorizationPromptPresentationCount];

    if (v11 >= notificationAuthorizationPromptPresentationCount)
    {
      v16 = 1;
    }

    else
    {
      v16 = PKHasPromptedNotificationAuthorizationForContentType(v61[3]);
    }

    if (PKBypassNotificationAuthorizationPromptCount())
    {
      v17 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: bypassing notification count & delay due to toggle", buf, 2u);
      }

      v16 = 0;
    }

    else
    {
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke;
      v56[3] = &unk_1E79CD7C0;
      v18 = v9;
      v57 = v9;
      v58 = v66;
      [(PKAsyncUnaryOperationComposer *)v8 addOperation:v56];
      v17 = v57;
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_2;
    v52[3] = &unk_1E79CD838;
    v19 = v9;
    v53 = v9;
    selfCopy = self;
    v55 = v66;
    [(PKAsyncUnaryOperationComposer *)v8 addOperation:v52];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_5;
    v48[3] = &unk_1E79CD838;
    v20 = v9;
    v49 = v9;
    v21 = passesCopy;
    v50 = v21;
    v51 = v66;
    [(PKAsyncUnaryOperationComposer *)v8 addOperation:v48];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_6;
    v41[3] = &unk_1E79CD8B0;
    v22 = v9;
    v42 = v9;
    v47 = v16;
    v43 = v21;
    selfCopy2 = self;
    v45 = v64;
    v46 = v66;
    [(PKAsyncUnaryOperationComposer *)v8 addOperation:v41];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_9;
    v36[3] = &unk_1E79CD8D8;
    v23 = v9;
    v40 = v16;
    v37 = v9;
    v38 = v66;
    v39 = v64;
    [(PKAsyncUnaryOperationComposer *)v8 addOperation:v36];
    null = [MEMORY[0x1E695DFB0] null];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_10;
    v27[3] = &unk_1E79CD900;
    v25 = v9;
    v28 = v9;
    selfCopy3 = self;
    v31 = v64;
    v32 = &v60;
    v35 = v16;
    v33 = v66;
    v34 = v11;
    v30 = completionCopy;
    v26 = [(PKAsyncUnaryOperationComposer *)v8 evaluateWithInput:null completion:v27];

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(v64, 8);
    _Block_object_dispose(v66, 8);
  }
}

void __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a3;
  v6 = a4;
  v7 = PKLastUserNotificationAuthorizationPromptDate();
  [v7 timeIntervalSinceNow];
  v9 = fabs(v8);
  v10 = v9 >= 600.0 || v7 == 0;
  v11 = !v10;
  if (!v10)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"not required as it was presented in the last seconds: %lu", v9];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v6[2](v6, v15, v11);
}

void __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_3;
  v13[3] = &unk_1E79CD810;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v16 = v7;
  v17 = v10;
  v14 = v9;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  [v8 _authorizationStatusRequiresPromptWithCompletion:v13];
}

void __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_4;
  block[3] = &unk_1E79CD7E8;
  v9 = a2;
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  v7 = *(a1 + 40);
  dispatch_async(v3, block);
}

uint64_t __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_4(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = *(*(a1 + 48) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = @"Authorization status";
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [*(a1 + 40) count];
  if (!v7)
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = @"0 passes";
  }

  v6[2](v6, v10, v7 == 0);
}

void __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 40) firstObject];
  v9 = [v8 secureElementPass];

  v10 = [*(a1 + 40) count] != 1 || v9 == 0;
  if (v10 || ![v9 hasAssociatedPeerPaymentAccount] || (*(a1 + 72) & 1) != 0)
  {
    v7[2](v7, v6, 0);
  }

  else
  {
    v11 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_7;
    v12[3] = &unk_1E79CD888;
    v13 = *(a1 + 32);
    v16 = *(a1 + 56);
    v15 = v7;
    v14 = v6;
    [v11 _shouldOfferAuthorizationPromptForPeerPaymentReasonWithPeerPaymentPass:v9 completion:v12];
  }
}

void __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_7(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_8;
  block[3] = &unk_1E79CD860;
  v15 = a2;
  v14 = *(a1 + 64);
  v11 = v5;
  v9 = *(a1 + 48);
  v7 = v9;
  v13 = v9;
  v12 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_8(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = *(a1 + 72);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_9(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void, void))
{
  if (*(a1 + 56))
  {
    (a4)[2](a4, a3, 0);
  }

  else
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = @"new content type";
    v8 = a4;
    v9 = a3;

    *(*(*(a1 + 48) + 8) + 24) = 1;
    (*(v8 + 2))(v8, v9, 1);
  }
}

void __97__PKUserNotificationAuthorizationController_shouldOfferAuthorizationPromptWithPasses_completion___block_invoke_10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 56) + 8);
  if (*(v8 + 24) == 1)
  {
    *(*(a1 + 40) + 40) = *(*(*(a1 + 64) + 8) + 24);
  }

  else if (*(a1 + 88) == 1)
  {
    *(v8 + 24) = 0;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"not required as the presentation count limit has been reached presented: %lu times", *(a1 + 80)];
    v10 = *(*(a1 + 72) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = *(*(*(a1 + 72) + 8) + 40);
    v15 = PKNotificationContentTypeToString(*(*(*(a1 + 64) + 8) + 24));
    *buf = 138543874;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: shouldOfferAuthorizationPromptWithDataProvider %{public}@ reason: %@, contentType %{public}@", buf, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_shouldOfferAuthorizationPromptForPeerPaymentReasonWithPeerPaymentPass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    if (passCopy)
    {
      devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];

      if (devicePrimaryPaymentApplication)
      {
        v9 = +[PKPeerPaymentService sharedInstance];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __127__PKUserNotificationAuthorizationController__shouldOfferAuthorizationPromptForPeerPaymentReasonWithPeerPaymentPass_completion___block_invoke;
        v10[3] = &unk_1E79CD928;
        v11 = v7;
        [v9 accountWithCompletion:v10];
      }

      else
      {
        (v7)[2](v7, 0, @"Apple Cash is ghost pass");
      }
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, @"no apple cash pass");
    }
  }
}

void __127__PKUserNotificationAuthorizationController__shouldOfferAuthorizationPromptForPeerPaymentReasonWithPeerPaymentPass_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 stage] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [v3 state];
  }

  (*(*(a1 + 32) + 16))();
}

- (unint64_t)_contentTypeToDisplayWithPasses:(id)passes
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = passes;
  v3 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (!v3)
  {
    v17 = 0;
    goto LABEL_52;
  }

  v5 = v3;
  v6 = 0;
  v23 = 0;
  log = 0;
  isTransitPass = 0;
  isAppleCardPass = 0;
  v9 = 0;
  v10 = *v27;
  *&v4 = 138412290;
  v19 = v4;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        v14 = v13;
        if ((v9 & 1) != 0 || [v13 cardType] == 1 || objc_msgSend(v14, "isEMoneyPass"))
        {
          v9 = 1;
          if (isAppleCardPass)
          {
            goto LABEL_11;
          }

LABEL_18:
          isAppleCardPass = [v14 isAppleCardPass];
          if (isTransitPass)
          {
            goto LABEL_19;
          }

LABEL_12:
          isTransitPass = [v14 isTransitPass];
        }

        else
        {
          v9 = 0;
          if ((isAppleCardPass & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_11:
          isAppleCardPass = 1;
          if ((isTransitPass & 1) == 0)
          {
            goto LABEL_12;
          }

LABEL_19:
          isTransitPass = 1;
        }

        if (v23 & log)
        {
          v23 = 1;
          log = 1;
        }

        else if ([v14 isIdentityPass])
        {
          identityType = [v14 identityType];
          if ((identityType - 3) >= 3)
          {
            if ((identityType - 1) < 2)
            {
              v23 = 1;
              goto LABEL_32;
            }

            if (identityType)
            {
              goto LABEL_32;
            }

            loga = PKLogFacilityTypeGetObject(0);
            if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
            {
              localizedDescription = [v14 localizedDescription];
              *buf = v19;
              v31 = localizedDescription;
              _os_log_impl(&dword_1AD337000, loga, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: Unknown Identity pass type encountered, assuming type IDCard behavior. pass: %@", buf, 0xCu);
            }
          }

          objc_storeStrong(&self->_relevantPass, v12);
          log = 1;
        }

LABEL_32:

        continue;
      }

      v6 = v6 || [v12 style] == 4 || objc_msgSend(v12, "style") == 10;
    }

    v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  }

  while (v5);
  if ((isAppleCardPass | isTransitPass))
  {
    v16 = 1;
    if ((isAppleCardPass & 1) == 0)
    {
      v16 = 2;
    }

LABEL_42:
    LOBYTE(log) = 1;
    if (v6)
    {
      goto LABEL_43;
    }

LABEL_46:
    if (v9)
    {
      goto LABEL_47;
    }

    v17 = 0;
LABEL_50:
    if (log)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v23)
    {
      v16 = 3;
      goto LABEL_42;
    }

    v16 = 4;
    if (!v6)
    {
      goto LABEL_46;
    }

LABEL_43:
    if ((v9 & 1) == 0)
    {
      v17 = 6;
      goto LABEL_50;
    }

LABEL_47:
    if (log)
    {
LABEL_51:
      v17 = v16;
    }

    else
    {
      v17 = 5;
    }
  }

LABEL_52:

  return v17;
}

- (void)_authorizationStatusRequiresPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: _authorizationStatusRequiresPromptWithCompletion", buf, 2u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __94__PKUserNotificationAuthorizationController__authorizationStatusRequiresPromptWithCompletion___block_invoke;
    v6[3] = &unk_1E79CD950;
    v7 = completionCopy;
    [(PKUserNotificationAuthorizationController *)self authorizationStatusWithCompletion:v6];
  }
}

uint64_t __94__PKUserNotificationAuthorizationController__authorizationStatusRequiresPromptWithCompletion___block_invoke(uint64_t a1, unint64_t a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = 0x19u >> a2;
  if (!a3)
  {
    LOBYTE(v4) = 0;
  }

  if (a2 <= 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: _authorizationStatusRequiresPromptWithCompletion requiresPrompt: %@", &v9, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)authorizationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: getting notification settings", buf, 2u);
    }

    center = self->_center;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__PKUserNotificationAuthorizationController_authorizationStatusWithCompletion___block_invoke;
    v7[3] = &unk_1E79CD978;
    v8 = completionCopy;
    [(UNUserNotificationCenter *)center getNotificationSettingsWithCompletionHandler:v7];
  }
}

void __79__PKUserNotificationAuthorizationController_authorizationStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: notification settings: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 authorizationStatus], v3 != 0);
}

- (void)requestNotificationAuthorizationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: requesting authoirzation", buf, 2u);
  }

  paymentService = self->_paymentService;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__PKUserNotificationAuthorizationController_requestNotificationAuthorizationWithCompletion___block_invoke;
  v8[3] = &unk_1E79C4E50;
  v9 = completionCopy;
  v7 = completionCopy;
  [(PKPaymentService *)paymentService requestNotificationAuthorizationWithCompletion:v8];
}

void __92__PKUserNotificationAuthorizationController_requestNotificationAuthorizationWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: requestAuthorizationWithOptions success: %@ error: %@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__PKUserNotificationAuthorizationController_requestNotificationAuthorizationWithCompletion___block_invoke_105;
    block[3] = &unk_1E79C4540;
    v11 = v8;
    v12 = a2;
    v10 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)setPresentedNotificationAuthorizationPromptShown
{
  v3 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: presentation count incremented", v5, 2u);
  }

  PKIncrementNotificationAuthorizationPromptCount();
  date = [MEMORY[0x1E695DF00] date];
  PKSetLastUserNotificationAuthorizationPromptDate(date);

  PKSetHasPromptedNotificationAuthorizationForContentType(self->_previouslyCheckedContentType, 1);
}

- (void)addDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    os_unfair_lock_lock(&self->_delegatesLock);
    [(NSHashTable *)self->_delegates addObject:delegateCopy];

    os_unfair_lock_unlock(&self->_delegatesLock);
  }
}

- (void)removeDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    os_unfair_lock_lock(&self->_delegatesLock);
    [(NSHashTable *)self->_delegates removeObject:delegateCopy];

    os_unfair_lock_unlock(&self->_delegatesLock);
  }
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  centerCopy = center;
  notificationCopy = notification;
  handlerCopy = handler;
  v10 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = notificationCopy;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: willPresentNotification: %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_delegatesLock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  os_unfair_lock_unlock(&self->_delegatesLock);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = allObjects;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    v16 = MEMORY[0x1E69E96A0];
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v23 + 1) + 8 * v17);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __114__PKUserNotificationAuthorizationController_userNotificationCenter_willPresentNotification_withCompletionHandler___block_invoke;
        block[3] = &unk_1E79C4D60;
        block[4] = v18;
        v21 = notificationCopy;
        v22 = handlerCopy;
        dispatch_async(v16, block);

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:{16, centerCopy}];
    }

    while (v14);
  }
}

uint64_t __114__PKUserNotificationAuthorizationController_userNotificationCenter_willPresentNotification_withCompletionHandler___block_invoke(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 willPresentNotification:v4 withCompletionHandler:v5];
  }

  return result;
}

- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification
{
  v26 = *MEMORY[0x1E69E9840];
  centerCopy = center;
  notificationCopy = notification;
  v8 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = notificationCopy;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: openSettingsForNotification : %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_delegatesLock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  os_unfair_lock_unlock(&self->_delegatesLock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = allObjects;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    v14 = MEMORY[0x1E69E96A0];
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __96__PKUserNotificationAuthorizationController_userNotificationCenter_openSettingsForNotification___block_invoke;
        v17[3] = &unk_1E79C4DD8;
        v17[4] = v16;
        v18 = notificationCopy;
        dispatch_async(v14, v17);

        ++v15;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

uint64_t __96__PKUserNotificationAuthorizationController_userNotificationCenter_openSettingsForNotification___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 openSettingsForNotification:v4];
  }

  return result;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  v11 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = responseCopy;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKUserNotificationAuthorizationController: didReceiveNotificationResponse: %@", &v18, 0xCu);
  }

  actionIdentifier = [responseCopy actionIdentifier];
  v13 = PKUserNotificationActionFromUNNotificationActionIdentifier(actionIdentifier);

  paymentService = self->_paymentService;
  notification = [responseCopy notification];
  request = [notification request];
  identifier = [request identifier];
  [(PKPaymentService *)paymentService userNotificationActionPerformed:v13 applicationMessageContentIdentifier:identifier completion:0];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

@end