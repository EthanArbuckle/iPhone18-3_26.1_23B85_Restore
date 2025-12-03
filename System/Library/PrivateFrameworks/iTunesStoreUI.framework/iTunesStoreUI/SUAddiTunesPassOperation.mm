@interface SUAddiTunesPassOperation
- (SUAddiTunesPassOperation)initWithViewController:(id)controller;
- (void)addPassesViewControllerDidFinish:(id)finish;
- (void)run;
@end

@implementation SUAddiTunesPassOperation

- (SUAddiTunesPassOperation)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SUAddiTunesPassOperation;
  v6 = [(SUAddiTunesPassOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationContext, controller);
  }

  return v7;
}

- (void)run
{
  v68 = *MEMORY[0x1E69E9840];
  defaultStore = [MEMORY[0x1E69D4890] defaultStore];
  activeAccount = [defaultStore activeAccount];
  iTunesPassSerialNumber = [activeAccount ITunesPassSerialNumber];

  if (!iTunesPassSerialNumber)
  {
LABEL_11:
    v13 = objc_alloc(MEMORY[0x1E69E4770]);
    v14 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
    v6 = [v13 initWithBagContext:v14];

    [v6 start];
    uRLBag = [v6 URLBag];
    v8 = uRLBag;
    if (!uRLBag)
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v39 = shouldLog | 2;
      }

      else
      {
        v39 = shouldLog;
      }

      oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v39 &= 2u;
      }

      if (!v39)
      {
        goto LABEL_59;
      }

      goto LABEL_36;
    }

    mEMORY[0x1E69D4938] = [uRLBag valueForKey:@"getAddCreditPassUrl"];
    if ([mEMORY[0x1E69D4938] length])
    {
      v16 = [MEMORY[0x1E695DFF8] URLWithString:mEMORY[0x1E69D4938]];
      if (v16)
      {
        oSLogObject = v16;
        v17 = objc_alloc_init(MEMORY[0x1E69E47E0]);
        provider = [MEMORY[0x1E69E4738] provider];
        [v17 setDataProvider:provider];

        authenticationContext = [(SUAddiTunesPassOperation *)self authenticationContext];
        [v17 setAuthenticationContext:authenticationContext];

        v20 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:oSLogObject];
        [v17 setRequestProperties:v20];

        v63 = 0;
        v58 = v17;
        [(SUAddiTunesPassOperation *)self runSubOperation:v17 returningError:&v63];
        v21 = v63;
        if (v21 || ([v17 dataProvider], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "output"), v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v23, v21 = 0, v22, (isKindOfClass & 1) == 0))
        {
          mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
          shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
          if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
          {
            shouldLog2 |= 2u;
          }

          v44 = mEMORY[0x1E69D4938]2;
          oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
          if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
          {
            shouldLog2 &= 2u;
          }

          if (shouldLog2)
          {
            v45 = objc_opt_class();
            v64 = 138543618;
            v65 = v45;
            v66 = 2114;
            v56 = v21;
            v67 = v21;
            v46 = v45;
            LODWORD(v53) = 22;
            v47 = _os_log_send_and_compose_impl();

            if (!v47)
            {
              v21 = v56;
              v32 = v44;
LABEL_58:

              goto LABEL_59;
            }

            oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:{4, &v64, v53}];
            free(v47);
            v32 = v44;
            SSFileLog();
            v21 = v56;
          }

          else
          {
            v32 = v44;
          }

LABEL_57:

          goto LABEL_58;
        }

        dataProvider = [v17 dataProvider];
        output = [dataProvider output];

        v62 = 0;
        v55 = output;
        oSLogObject2 = [objc_alloc(ISWeakLinkedClassForString()) initWithData:output error:&v62];
        v21 = v62;
        if (oSLogObject2)
        {
          [(SUAddiTunesPassOperation *)self setPresentedPass:oSLogObject2];
          v28 = dispatch_semaphore_create(0);
          [(SUAddiTunesPassOperation *)self setSemaphore:v28];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __31__SUAddiTunesPassOperation_run__block_invoke;
          block[3] = &unk_1E81644A8;
          v60 = oSLogObject2;
          selfCopy = self;
          dispatch_async(MEMORY[0x1E69E96A0], block);
          semaphore = [(SUAddiTunesPassOperation *)self semaphore];
          dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

          if ([(SUAddiTunesPassOperation *)self addedCard])
          {
            presentedPass = [(SUAddiTunesPassOperation *)self presentedPass];
            [(SUAddiTunesPassOperation *)self setPass:presentedPass];

            [(SUAddiTunesPassOperation *)self setSuccess:1];
          }

          mEMORY[0x1E69D4938]3 = v60;
          goto LABEL_20;
        }

        mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
        if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
        {
          shouldLog3 |= 2u;
        }

        oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
        if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
        {
          shouldLog3 &= 2u;
        }

        if (shouldLog3)
        {
          v57 = v21;
          v49 = objc_opt_class();
          v64 = 138543362;
          v65 = v49;
          v50 = v49;
          LODWORD(v53) = 12;
          v51 = _os_log_send_and_compose_impl();

          if (!v51)
          {
            v21 = v57;
LABEL_20:
            v32 = v55;
LABEL_56:

            goto LABEL_57;
          }

          v52 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:{4, &v64, v53}];
          free(v51);
          SSFileLog();
          v32 = v55;
          v21 = v57;
        }

        else
        {
          v52 = oSLogObject3;
          v32 = v55;
        }

        goto LABEL_56;
      }
    }

    oSLogObject = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog4 = [oSLogObject shouldLog];
    if ([oSLogObject shouldLogToDisk])
    {
      v34 = shouldLog4 | 2;
    }

    else
    {
      v34 = shouldLog4;
    }

    v12OSLogObject = [oSLogObject OSLogObject];
    if (!os_log_type_enabled(v12OSLogObject, OS_LOG_TYPE_ERROR))
    {
      v34 &= 2u;
    }

    if (v34)
    {
      v64 = 138543362;
      v65 = objc_opt_class();
      v36 = v65;
      LODWORD(v53) = 12;
      v37 = _os_log_send_and_compose_impl();

      if (!v37)
      {
LABEL_59:

        goto LABEL_60;
      }

      v12OSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:{4, &v64, v53}];
      free(v37);
      SSFileLog();
    }

    goto LABEL_59;
  }

  v6 = objc_alloc_init(ISWeakLinkedClassForString());
  v7 = [v6 passWithPassTypeIdentifier:@"pass.com.apple.itunes.storecredit" serialNumber:iTunesPassSerialNumber];
  if (!v7)
  {

    goto LABEL_11;
  }

  v8 = v7;
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog5 = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v11 = shouldLog5 | 2;
  }

  else
  {
    v11 = shouldLog5;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_59;
  }

LABEL_36:
  v64 = 138543362;
  v65 = objc_opt_class();
  v40 = v65;
  LODWORD(v53) = 12;
  v41 = _os_log_send_and_compose_impl();

  if (v41)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v41 encoding:{4, &v64, v53}];
    free(v41);
    SSFileLog();
    goto LABEL_59;
  }

LABEL_60:
}

void __31__SUAddiTunesPassOperation_run__block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(ISWeakLinkedClassForString()) initWithPass:*(a1 + 32)];
  [v3 setDelegate:*(a1 + 40)];
  v2 = [*(a1 + 40) viewController];
  [v2 presentViewController:v3 animated:1 completion:0];
}

- (void)addPassesViewControllerDidFinish:(id)finish
{
  v29 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  v5 = objc_alloc_init(ISWeakLinkedClassForString());
  presentedPass = [(SUAddiTunesPassOperation *)self presentedPass];
  v7 = [v5 containsPass:presentedPass];

  if (v7)
  {
    defaultStore = [MEMORY[0x1E69D4890] defaultStore];
    activeAccount = [defaultStore activeAccount];

    presentedPass2 = [(SUAddiTunesPassOperation *)self presentedPass];
    serialNumber = [presentedPass2 serialNumber];
    [activeAccount setITunesPassSerialNumber:serialNumber];

    defaultStore2 = [MEMORY[0x1E69D4890] defaultStore];
    v24 = 0;
    [defaultStore2 saveAccount:activeAccount error:&v24];
    v13 = v24;

    if (!v13)
    {
      [(SUAddiTunesPassOperation *)self setAddedCard:1];
      goto LABEL_14;
    }

    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v25 = 138543618;
      v26 = v18;
      v27 = 2114;
      v28 = v13;
      v19 = v18;
      LODWORD(v23) = 22;
      v22 = &v25;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_12:

LABEL_14:
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v25, v23}];
      free(v20);
      v22 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_15:
  [finishCopy dismissViewControllerAnimated:1 completion:{0, v22}];
  semaphore = [(SUAddiTunesPassOperation *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

@end