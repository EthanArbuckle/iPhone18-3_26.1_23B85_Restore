@interface SUAddiTunesPassOperation
- (SUAddiTunesPassOperation)initWithViewController:(id)a3;
- (void)addPassesViewControllerDidFinish:(id)a3;
- (void)run;
@end

@implementation SUAddiTunesPassOperation

- (SUAddiTunesPassOperation)initWithViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUAddiTunesPassOperation;
  v6 = [(SUAddiTunesPassOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationContext, a3);
  }

  return v7;
}

- (void)run
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69D4890] defaultStore];
  v4 = [v3 activeAccount];
  v5 = [v4 ITunesPassSerialNumber];

  if (!v5)
  {
LABEL_11:
    v13 = objc_alloc(MEMORY[0x1E69E4770]);
    v14 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
    v6 = [v13 initWithBagContext:v14];

    [v6 start];
    v15 = [v6 URLBag];
    v8 = v15;
    if (!v15)
    {
      v9 = [MEMORY[0x1E69D4938] sharedConfig];
      v38 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v39 = v38 | 2;
      }

      else
      {
        v39 = v38;
      }

      v12 = [v9 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v39 &= 2u;
      }

      if (!v39)
      {
        goto LABEL_59;
      }

      goto LABEL_36;
    }

    v9 = [v15 valueForKey:@"getAddCreditPassUrl"];
    if ([v9 length])
    {
      v16 = [MEMORY[0x1E695DFF8] URLWithString:v9];
      if (v16)
      {
        v12 = v16;
        v17 = objc_alloc_init(MEMORY[0x1E69E47E0]);
        v18 = [MEMORY[0x1E69E4738] provider];
        [v17 setDataProvider:v18];

        v19 = [(SUAddiTunesPassOperation *)self authenticationContext];
        [v17 setAuthenticationContext:v19];

        v20 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:v12];
        [v17 setRequestProperties:v20];

        v63 = 0;
        v58 = v17;
        [(SUAddiTunesPassOperation *)self runSubOperation:v17 returningError:&v63];
        v21 = v63;
        if (v21 || ([v17 dataProvider], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "output"), v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v23, v21 = 0, v22, (isKindOfClass & 1) == 0))
        {
          v42 = [MEMORY[0x1E69D4938] sharedConfig];
          v43 = [v42 shouldLog];
          if ([v42 shouldLogToDisk])
          {
            v43 |= 2u;
          }

          v44 = v42;
          v27 = [v42 OSLogObject];
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v43 &= 2u;
          }

          if (v43)
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

            v27 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:{4, &v64, v53}];
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

        v25 = [v17 dataProvider];
        v26 = [v25 output];

        v62 = 0;
        v55 = v26;
        v27 = [objc_alloc(ISWeakLinkedClassForString()) initWithData:v26 error:&v62];
        v21 = v62;
        if (v27)
        {
          [(SUAddiTunesPassOperation *)self setPresentedPass:v27];
          v28 = dispatch_semaphore_create(0);
          [(SUAddiTunesPassOperation *)self setSemaphore:v28];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __31__SUAddiTunesPassOperation_run__block_invoke;
          block[3] = &unk_1E81644A8;
          v60 = v27;
          v61 = self;
          dispatch_async(MEMORY[0x1E69E96A0], block);
          v29 = [(SUAddiTunesPassOperation *)self semaphore];
          dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);

          if ([(SUAddiTunesPassOperation *)self addedCard])
          {
            v30 = [(SUAddiTunesPassOperation *)self presentedPass];
            [(SUAddiTunesPassOperation *)self setPass:v30];

            [(SUAddiTunesPassOperation *)self setSuccess:1];
          }

          v31 = v60;
          goto LABEL_20;
        }

        v31 = [MEMORY[0x1E69D4938] sharedConfig];
        v48 = [v31 shouldLog];
        if ([v31 shouldLogToDisk])
        {
          v48 |= 2u;
        }

        v54 = [v31 OSLogObject];
        if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v48 &= 2u;
        }

        if (v48)
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
          v52 = v54;
          v32 = v55;
        }

        goto LABEL_56;
      }
    }

    v12 = [MEMORY[0x1E69D4938] sharedConfig];
    v33 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v34 = v33 | 2;
    }

    else
    {
      v34 = v33;
    }

    v35 = [v12 OSLogObject];
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
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

      v35 = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:{4, &v64, v53}];
      free(v37);
      SSFileLog();
    }

    goto LABEL_59;
  }

  v6 = objc_alloc_init(ISWeakLinkedClassForString());
  v7 = [v6 passWithPassTypeIdentifier:@"pass.com.apple.itunes.storecredit" serialNumber:v5];
  if (!v7)
  {

    goto LABEL_11;
  }

  v8 = v7;
  v9 = [MEMORY[0x1E69D4938] sharedConfig];
  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
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
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v41 encoding:{4, &v64, v53}];
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

- (void)addPassesViewControllerDidFinish:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(ISWeakLinkedClassForString());
  v6 = [(SUAddiTunesPassOperation *)self presentedPass];
  v7 = [v5 containsPass:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E69D4890] defaultStore];
    v9 = [v8 activeAccount];

    v10 = [(SUAddiTunesPassOperation *)self presentedPass];
    v11 = [v10 serialNumber];
    [v9 setITunesPassSerialNumber:v11];

    v12 = [MEMORY[0x1E69D4890] defaultStore];
    v24 = 0;
    [v12 saveAccount:v9 error:&v24];
    v13 = v24;

    if (!v13)
    {
      [(SUAddiTunesPassOperation *)self setAddedCard:1];
      goto LABEL_14;
    }

    v14 = [MEMORY[0x1E69D4938] sharedConfig];
    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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

      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v25, v23}];
      free(v20);
      v22 = v17;
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_15:
  [v4 dismissViewControllerAnimated:1 completion:{0, v22}];
  v21 = [(SUAddiTunesPassOperation *)self semaphore];
  dispatch_semaphore_signal(v21);
}

@end