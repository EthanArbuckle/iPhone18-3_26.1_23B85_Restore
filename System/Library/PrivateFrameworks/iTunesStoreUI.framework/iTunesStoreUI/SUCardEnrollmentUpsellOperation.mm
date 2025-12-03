@interface SUCardEnrollmentUpsellOperation
- (SUCardEnrollmentUpsellOperation)initWithViewController:(id)controller;
- (id)_paymentSetupFeature;
- (void)paymentSetupViewControllerDidDismiss;
- (void)run;
@end

@implementation SUCardEnrollmentUpsellOperation

- (SUCardEnrollmentUpsellOperation)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = SUCardEnrollmentUpsellOperation;
  v6 = [(SUCardEnrollmentUpsellOperation *)&v10 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.AppleMediaServices.SUCardEnrollmentUpsellOperation.dispatch", 0);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    objc_storeStrong(&v6->_viewController, controller);
  }

  return v6;
}

- (void)run
{
  v60 = *MEMORY[0x1E69E9840];
  _paymentSetupFeature = [(SUCardEnrollmentUpsellOperation *)self _paymentSetupFeature];
  if (_paymentSetupFeature)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__SUCardEnrollmentUpsellOperation_run__block_invoke;
    block[3] = &unk_1E81644A8;
    block[4] = self;
    mEMORY[0x1E69D4938]5 = _paymentSetupFeature;
    v56 = mEMORY[0x1E69D4938]5;
    dispatch_sync(dispatchQueue, block);
    v6 = objc_alloc_init(ISWeakLinkedClassForString());
    referrerIdentifier = [(SUCardEnrollmentUpsellOperation *)self referrerIdentifier];
    [v6 setReferrerIdentifier:referrerIdentifier];

    v8 = objc_alloc_init(ISWeakLinkedClassForString());
    [v8 setConfiguration:v6];
    v57 = mEMORY[0x1E69D4938]5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    [v8 setPaymentSetupFeatures:v9];

    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    mEMORY[0x1E69D4938]2 = mEMORY[0x1E69D4938];
    if (v8)
    {
      if (!mEMORY[0x1E69D4938])
      {
        mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      }

      shouldLog = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        v13 = shouldLog | 2;
      }

      else
      {
        v13 = shouldLog;
      }

      oSLogObject = [mEMORY[0x1E69D4938]2 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v15 = objc_opt_class();
        v58 = 138543362;
        v59 = v15;
        v16 = v15;
        LODWORD(v49) = 12;
        v47 = &v58;
        v17 = _os_log_send_and_compose_impl();

        if (!v17)
        {
          goto LABEL_14;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v58, v49}];
        free(v17);
        v47 = oSLogObject;
        SSFileLog();
      }

LABEL_14:
      v18 = dispatch_semaphore_create(0);
      [(SUCardEnrollmentUpsellOperation *)self setSemaphore:v18];

      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __38__SUCardEnrollmentUpsellOperation_run__block_invoke_12;
      v52[3] = &unk_1E81644A8;
      v53 = v8;
      selfCopy = self;
      dispatch_async(MEMORY[0x1E69E96A0], v52);
      semaphore = [(SUCardEnrollmentUpsellOperation *)self semaphore];
      dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

      mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
      if (!mEMORY[0x1E69D4938]3)
      {
        mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x1E69D4938]3 shouldLog];
      if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
      {
        v22 = shouldLog2 | 2;
      }

      else
      {
        v22 = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x1E69D4938]3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v22 &= 2u;
      }

      if (v22)
      {
        v24 = objc_opt_class();
        v58 = 138543362;
        v59 = v24;
        v25 = v24;
        LODWORD(v49) = 12;
        v48 = &v58;
        v26 = _os_log_send_and_compose_impl();

        if (!v26)
        {
          goto LABEL_25;
        }

        oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v58, v49}];
        free(v26);
        v48 = oSLogObject2;
        SSFileLog();
      }

LABEL_25:
      _paymentSetupFeature2 = [(SUCardEnrollmentUpsellOperation *)self _paymentSetupFeature];

      if (_paymentSetupFeature2)
      {
        v28 = self->_dispatchQueue;
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __38__SUCardEnrollmentUpsellOperation_run__block_invoke_14;
        v50[3] = &unk_1E81644A8;
        v50[4] = self;
        v51 = _paymentSetupFeature2;
        dispatch_sync(v28, v50);

LABEL_61:
        mEMORY[0x1E69D4938]2 = v53;
        mEMORY[0x1E69D4938]5 = _paymentSetupFeature2;
        goto LABEL_62;
      }

      mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
      if (!mEMORY[0x1E69D4938]4)
      {
        mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x1E69D4938]4 shouldLog];
      if ([mEMORY[0x1E69D4938]4 shouldLogToDisk])
      {
        v42 = shouldLog3 | 2;
      }

      else
      {
        v42 = shouldLog3;
      }

      oSLogObject3 = [mEMORY[0x1E69D4938]4 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v42 &= 2u;
      }

      if (v42)
      {
        v44 = objc_opt_class();
        v58 = 138543362;
        v59 = v44;
        v45 = v44;
        LODWORD(v49) = 12;
        v46 = _os_log_send_and_compose_impl();

        if (!v46)
        {
LABEL_60:

          goto LABEL_61;
        }

        oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v46 encoding:{4, &v58, v49}];
        free(v46);
        SSFileLog();
      }

      goto LABEL_60;
    }

    if (!mEMORY[0x1E69D4938])
    {
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v35 = shouldLog4 | 2;
    }

    else
    {
      v35 = shouldLog4;
    }

    oSLogObject4 = [mEMORY[0x1E69D4938]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v35 &= 2u;
    }

    if (v35)
    {
      v37 = objc_opt_class();
      v58 = 138543362;
      v59 = v37;
      v38 = v37;
      LODWORD(v49) = 12;
      v39 = _os_log_send_and_compose_impl();

      if (!v39)
      {
LABEL_62:

        goto LABEL_63;
      }

      oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v39 encoding:{4, &v58, v49}];
      free(v39);
      SSFileLog();
    }

    goto LABEL_62;
  }

  mEMORY[0x1E69D4938]5 = [MEMORY[0x1E69D4938] sharedConfig];
  if (!mEMORY[0x1E69D4938]5)
  {
    mEMORY[0x1E69D4938]5 = [MEMORY[0x1E69D4938] sharedConfig];
  }

  shouldLog5 = [mEMORY[0x1E69D4938]5 shouldLog];
  if ([mEMORY[0x1E69D4938]5 shouldLogToDisk])
  {
    v30 = shouldLog5 | 2;
  }

  else
  {
    v30 = shouldLog5;
  }

  oSLogObject5 = [mEMORY[0x1E69D4938]5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
  {
    v30 &= 2u;
  }

  if (!v30)
  {
    goto LABEL_37;
  }

  v58 = 138543362;
  v59 = objc_opt_class();
  v32 = v59;
  LODWORD(v49) = 12;
  v33 = _os_log_send_and_compose_impl();

  if (v33)
  {
    oSLogObject5 = [MEMORY[0x1E696AEC0] stringWithCString:v33 encoding:{4, &v58, v49}];
    free(v33);
    SSFileLog();
LABEL_37:
  }

LABEL_63:
}

uint64_t __38__SUCardEnrollmentUpsellOperation_run__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D4938] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = objc_opt_class();
  v7 = MEMORY[0x1E696AD98];
  v8 = *(a1 + 40);
  v9 = v6;
  [v7 numberWithInteger:{objc_msgSend(v8, "state")}];
  v13 = 138543618;
  v14 = v6;
  v16 = v15 = 2114;
  LODWORD(v12) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v13, v12}];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  result = [*(a1 + 40) state];
  *(*(a1 + 32) + 352) = result;
  return result;
}

void __38__SUCardEnrollmentUpsellOperation_run__block_invoke_12(uint64_t a1)
{
  v3 = [[SUPaymentSetupViewController alloc] initWithPaymentSetupRequest:*(a1 + 32)];
  [(SUPaymentSetupViewController *)v3 setDelegate:*(a1 + 40)];
  v2 = [*(a1 + 40) viewController];
  [v2 presentViewController:v3 animated:0 completion:&__block_literal_global_13];
}

void __38__SUCardEnrollmentUpsellOperation_run__block_invoke_2()
{
  v0 = [MEMORY[0x1E69D4938] sharedConfig];
  if (!v0)
  {
    v0 = [MEMORY[0x1E69D4938] sharedConfig];
  }

  v1 = [v0 shouldLog];
  if ([v0 shouldLogToDisk])
  {
    v2 = v1 | 2;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v0 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 2;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v7[0] = 0;
  LODWORD(v6) = 2;
  v5 = _os_log_send_and_compose_impl();

  if (v5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, v7, v6}];
    free(v5);
    SSFileLog();
LABEL_12:
  }
}

uint64_t __38__SUCardEnrollmentUpsellOperation_run__block_invoke_14(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D4938] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = objc_opt_class();
  v7 = MEMORY[0x1E696AD98];
  v8 = *(a1 + 40);
  v9 = v6;
  [v7 numberWithInteger:{objc_msgSend(v8, "state")}];
  v13 = 138543618;
  v14 = v6;
  v16 = v15 = 2114;
  LODWORD(v12) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v13, v12}];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  result = [*(a1 + 40) state];
  *(*(a1 + 32) + 352) = result;
  return result;
}

- (id)_paymentSetupFeature
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E698CAB8]);
  referrerIdentifier = [(SUCardEnrollmentUpsellOperation *)self referrerIdentifier];
  v5 = [v3 initWithIdentifier:referrerIdentifier];

  performPaymentSetupFeatureLookup = [v5 performPaymentSetupFeatureLookup];
  v18 = 0;
  v7 = [performPaymentSetupFeatureLookup resultWithError:&v18];
  v8 = v18;

  if (v8)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    if (!mEMORY[0x1E69D4938])
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    }

    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v13 = objc_opt_class();
      v19 = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v8;
      v14 = v13;
      LODWORD(v17) = 22;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_13:

        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v19, v17}];
      free(v15);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

- (void)paymentSetupViewControllerDidDismiss
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  if (!mEMORY[0x1E69D4938])
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  }

  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  LODWORD(v11) = 138543362;
  *(&v11 + 4) = objc_opt_class();
  v7 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v11, v10, v11}];
    free(v8);
    SSFileLog();
LABEL_11:
  }

  semaphore = [(SUCardEnrollmentUpsellOperation *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

@end