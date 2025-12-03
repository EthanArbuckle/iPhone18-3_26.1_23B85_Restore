@interface ISBiometricOptInOperation
- (BOOL)_performOptInDialogOperationWithError:(id *)error;
- (BOOL)_performPasscodeDialogOperationWithError:(id *)error;
- (BOOL)promptUser;
- (ISBiometricOptInOperation)init;
- (id)_newSourceByStartingTimeoutTimer;
- (id)resultBlock;
- (void)_loadURLBag;
- (void)_performOptInDialogMetricsWithResult:(BOOL)result error:(id)error;
- (void)_updateTouchIDSettingsForAccount:(id)account;
- (void)run;
- (void)setPromptUser:(BOOL)user;
- (void)setResultBlock:(id)block;
@end

@implementation ISBiometricOptInOperation

- (ISBiometricOptInOperation)init
{
  v6.receiver = self;
  v6.super_class = ISBiometricOptInOperation;
  v2 = [(ISOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.ISBiometricOptInOperation", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (BOOL)promptUser
{
  [(ISOperation *)self lock];
  promptUser = self->_promptUser;
  [(ISOperation *)self unlock];
  return promptUser;
}

- (id)resultBlock
{
  [(ISOperation *)self lock];
  v3 = [self->_resultBlock copy];
  [(ISOperation *)self unlock];
  v4 = MEMORY[0x277C8C270](v3);

  return v4;
}

- (void)setPromptUser:(BOOL)user
{
  userCopy = user;
  [(ISOperation *)self lock];
  if (self->_promptUser != userCopy)
  {
    self->_promptUser = userCopy;
  }

  [(ISOperation *)self unlock];
}

- (void)setResultBlock:(id)block
{
  blockCopy = block;
  [(ISOperation *)self lock];
  if (self->_resultBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    resultBlock = self->_resultBlock;
    self->_resultBlock = v4;
  }

  [(ISOperation *)self unlock];
}

- (void)run
{
  v31 = *MEMORY[0x277D85DE8];
  if (![(ISBiometricOptInOperation *)self promptUser])
  {
    v5 = 0;
    goto LABEL_15;
  }

  v28 = 0;
  v3 = [(ISBiometricOptInOperation *)self _performOptInDialogOperationWithError:&v28];
  v4 = v28;
  v5 = v4;
  if (v3)
  {
    v27 = v4;
    v6 = [(ISBiometricOptInOperation *)self _performPasscodeDialogOperationWithError:&v27];
    v7 = v27;

    v5 = v7;
    if (v6)
    {
LABEL_15:
      defaultStore = [MEMORY[0x277D69A20] defaultStore];
      activeAccount = [defaultStore activeAccount];

      if (activeAccount)
      {
        [(ISBiometricOptInOperation *)self _updateTouchIDSettingsForAccount:activeAccount];
        v16 = 1;
        goto LABEL_30;
      }

      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v18 = shouldLog | 2;
      }

      else
      {
        v18 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v20 = objc_opt_class();
        v29 = 138543362;
        v30 = v20;
        v21 = v20;
        LODWORD(v26) = 12;
        v22 = _os_log_send_and_compose_impl();

        if (!v22)
        {
          goto LABEL_28;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:{4, &v29, v26}];
        free(v22);
        SSFileLog();
      }

      goto LABEL_28;
    }
  }

  activeAccount = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!activeAccount)
  {
    activeAccount = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [activeAccount shouldLog];
  if ([activeAccount shouldLogToDisk])
  {
    v10 = shouldLog2 | 2;
  }

  else
  {
    v10 = shouldLog2;
  }

  mEMORY[0x277D69B38] = [activeAccount OSLogObject];
  if (!os_log_type_enabled(mEMORY[0x277D69B38], OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_28;
  }

  v12 = objc_opt_class();
  v29 = 138543362;
  v30 = v12;
  v13 = v12;
  LODWORD(v26) = 12;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v29, v26}];
    free(v14);
    SSFileLog();
LABEL_28:
  }

  v16 = 0;
LABEL_30:

  [(ISOperation *)self setError:v5];
  [(ISOperation *)self setSuccess:v16];
  resultBlock = [(ISBiometricOptInOperation *)self resultBlock];
  v24 = resultBlock;
  if (resultBlock)
  {
    (*(resultBlock + 16))(resultBlock, v16, v5);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_loadURLBag
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ISLoadURLBagOperation);
  v18 = 0;
  v4 = [(ISOperation *)self runSubOperation:v3 returningError:&v18];
  v5 = v18;
  v6 = v5;
  if (v4 && v5 == 0)
  {
    uRLBag = [(ISLoadURLBagOperation *)v3 URLBag];
    urlBag = self->_urlBag;
    self->_urlBag = uRLBag;
    goto LABEL_17;
  }

  urlBag = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!urlBag)
  {
    urlBag = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [urlBag shouldLog];
  if ([urlBag shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [urlBag OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v12 = objc_opt_class();
  v19 = 138543618;
  v20 = v12;
  v21 = 2114;
  v22 = v6;
  v13 = v12;
  LODWORD(v17) = 22;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v19, v17}];
    free(v14);
    SSFileLog();
LABEL_15:
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_performOptInDialogMetricsWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  v46 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  urlBag = self->_urlBag;
  if (urlBag || ([(ISBiometricOptInOperation *)self _loadURLBag], (urlBag = self->_urlBag) != 0))
  {
    mEMORY[0x277D69B38]3 = [(ISURLBag *)urlBag valueForKey:*MEMORY[0x277D6A4F8]];
    if ([mEMORY[0x277D69B38]3 count])
    {
      v9 = +[ISDevice sharedInstance];
      deviceBiometricStyle = [v9 deviceBiometricStyle];

      if (deviceBiometricStyle == 3)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"BIO_OPT_IN_FACE_EXPLANATION";
        goto LABEL_19;
      }

      if (deviceBiometricStyle == 2)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"BIO_OPT_IN_EXPLANATION";
LABEL_19:
        mEMORY[0x277D69B38]2 = [v11 localizedStringForKey:v13 value:&stru_2884BCFD0 table:@"Mesa"];

LABEL_32:
        v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v26 setObject:*MEMORY[0x277D6A470] forKey:*MEMORY[0x277D69DB0]];
        [v26 setObject:&unk_2884CA920 forKey:*MEMORY[0x277D69DC0]];
        if (resultCopy)
        {
          v27 = MEMORY[0x277CBEC38];
        }

        else
        {
          v27 = MEMORY[0x277CBEC28];
        }

        [v26 setObject:v27 forKey:{*MEMORY[0x277D69DD0], v40}];
        if (errorCopy)
        {
          [v26 setObject:errorCopy forKey:*MEMORY[0x277D69DB8]];
        }

        if (mEMORY[0x277D69B38]2)
        {
          [v26 setObject:mEMORY[0x277D69B38]2 forKey:*MEMORY[0x277D69DC8]];
        }

        topicName = [(ISBiometricOptInOperation *)self topicName];

        if (topicName)
        {
          topicName2 = [(ISBiometricOptInOperation *)self topicName];
          [v26 setObject:topicName2 forKey:*MEMORY[0x277D69DD8]];
        }

        userAgent = [(ISBiometricOptInOperation *)self userAgent];

        if (userAgent)
        {
          userAgent2 = [(ISBiometricOptInOperation *)self userAgent];
          [v26 setObject:userAgent2 forKey:*MEMORY[0x277D69DE0]];
        }

        v32 = [MEMORY[0x277D69A60] authorizationDialogEventForParameters:v26];
        v33 = [objc_alloc(MEMORY[0x277D69B70]) initWithGlobalConfiguration:mEMORY[0x277D69B38]3];
        v34 = objc_alloc_init(MEMORY[0x277D69B78]);
        [v34 setGlobalConfiguration:v33];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __72__ISBiometricOptInOperation__performOptInDialogMetricsWithResult_error___block_invoke;
        v43[3] = &unk_27A670F68;
        v43[4] = self;
        [v34 insertEvent:v32 withCompletionHandler:v43];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __72__ISBiometricOptInOperation__performOptInDialogMetricsWithResult_error___block_invoke_26;
        v42[3] = &unk_27A670F68;
        v42[4] = self;
        [v34 flushUnreportedEventsWithCompletionHandler:v42];

        goto LABEL_44;
      }

      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v22 = shouldLog | 2;
      }

      else
      {
        v22 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v22 &= 2u;
      }

      if (v22)
      {
        v44 = 138543362;
        v45 = objc_opt_class();
        v24 = v45;
        LODWORD(v41) = 12;
        v40 = &v44;
        v25 = _os_log_send_and_compose_impl();

        if (!v25)
        {
LABEL_31:

          mEMORY[0x277D69B38]2 = 0;
          goto LABEL_32;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:{4, &v44, v41}];
        free(v25);
        v40 = oSLogObject;
        SSFileLog();
      }

      goto LABEL_31;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v16 = shouldLog2 | 2;
    }

    else
    {
      v16 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v16 &= 2u;
    }

    if (!v16)
    {
      goto LABEL_17;
    }

    v44 = 138543362;
    v45 = objc_opt_class();
    v18 = v45;
    LODWORD(v41) = 12;
    v19 = _os_log_send_and_compose_impl();

    if (v19)
    {
      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v44, v41}];
      free(v19);
      SSFileLog();
LABEL_17:
    }
  }

  else
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      v37 = shouldLog3 | 2;
    }

    else
    {
      v37 = shouldLog3;
    }

    mEMORY[0x277D69B38]2 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (!os_log_type_enabled(mEMORY[0x277D69B38]2, OS_LOG_TYPE_INFO))
    {
      v37 &= 2u;
    }

    if (v37)
    {
      v44 = 138543362;
      v45 = objc_opt_class();
      v38 = v45;
      LODWORD(v41) = 12;
      v39 = _os_log_send_and_compose_impl();

      if (!v39)
      {
        goto LABEL_45;
      }

      mEMORY[0x277D69B38]2 = [MEMORY[0x277CCACA8] stringWithCString:v39 encoding:{4, &v44, v41}];
      free(v39);
      SSFileLog();
    }
  }

LABEL_44:

LABEL_45:
  v35 = *MEMORY[0x277D85DE8];
}

void __72__ISBiometricOptInOperation__performOptInDialogMetricsWithResult_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = *(a1 + 32);
      *v13 = 138543618;
      *&v13[4] = objc_opt_class();
      *&v13[12] = 2114;
      *&v13[14] = v3;
      v9 = *&v13[4];
      LODWORD(v12) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }

      v7 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, v13, v12, *v13, *&v13[16], v14}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

void __72__ISBiometricOptInOperation__performOptInDialogMetricsWithResult_error___block_invoke_26(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = *(a1 + 32);
      *v13 = 138543618;
      *&v13[4] = objc_opt_class();
      *&v13[12] = 2114;
      *&v13[14] = v3;
      v9 = *&v13[4];
      LODWORD(v12) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }

      v7 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, v13, v12, *v13, *&v13[16], v14}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_performPasscodeDialogOperationWithError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__13;
  v36 = __Block_byref_object_dispose__13;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  if (SSIsDaemon())
  {
    v4 = +[ISDevice sharedInstance];
    deviceBiometricStyle = [v4 deviceBiometricStyle];

    if (deviceBiometricStyle == 2)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [mEMORY[0x277D69B38] localizedStringForKey:@"PASSCODE_TITLE" value:&stru_2884BCFD0 table:@"Mesa"];
      goto LABEL_6;
    }

    if (deviceBiometricStyle == 3)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [mEMORY[0x277D69B38] localizedStringForKey:@"PASSCODE_TITLE_FACE" value:&stru_2884BCFD0 table:@"Mesa"];
LABEL_6:
      v8 = v7;
LABEL_19:

      if (*(v29 + 24) == 1)
      {
        do
        {
          _newSourceByStartingTimeoutTimer = [(ISBiometricOptInOperation *)self _newSourceByStartingTimeoutTimer];
          v18 = [objc_alloc(NSClassFromString(&cfstr_Devicepasscode.isa)) initWithTitle:v8 message:0];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __70__ISBiometricOptInOperation__performPasscodeDialogOperationWithError___block_invoke;
          v27[3] = &unk_27A671428;
          v27[4] = &v38;
          v27[5] = &v28;
          v27[6] = &v32;
          [v18 setTokenBlock:v27];
          v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = [v19 localizedStringForKey:@"PASSCODE_INCORRECT" value:&stru_2884BCFD0 table:@"Mesa"];

          [(ISOperation *)self runSubOperation:v18 returningError:0];
          dispatch_source_cancel(_newSourceByStartingTimeoutTimer);

          v8 = v20;
        }

        while ((v29[3] & 1) != 0);
      }

      else
      {
        v20 = v8;
      }

      goto LABEL_24;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v12 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = shouldLog;
    }

    else
    {
      v13 = shouldLog & 2;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v42 = 138543362;
      v43 = v14;
      v15 = v14;
      LODWORD(v25) = 12;
      v24 = &v42;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_18:
        v8 = &stru_2884BCFD0;
        goto LABEL_19;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v42, v25}];
      free(v16);
      v24 = v12;
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_24:
  if (error)
  {
    *error = v33[5];
  }

  v21 = v39[3] == 1;
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __70__ISBiometricOptInOperation__performPasscodeDialogOperationWithError___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a2 == 2;
  v5 = [a4 copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_performOptInDialogOperationWithError:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = +[ISDevice sharedInstance];
  deviceBiometricStyle = [v3 deviceBiometricStyle];

  if (deviceBiometricStyle == 3)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"BIO_OPT_IN_FACE_EXPLANATION";
    goto LABEL_5;
  }

  if (deviceBiometricStyle != 2)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v49 = 138543362;
      v50 = objc_opt_class();
      v13 = v50;
      LODWORD(v40) = 12;
      v39 = &v49;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_17:

        v8 = 0;
        goto LABEL_18;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v49, v40}];
      free(v14);
      v39 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_17;
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  v7 = @"BIO_OPT_IN_EXPLANATION";
LABEL_5:
  v8 = [v5 localizedStringForKey:v7 value:&stru_2884BCFD0 table:@"Mesa"];

LABEL_18:
  v41 = v8;
  v15 = [[ISDialog alloc] initWithTitle:v8 message:0];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"BIO_OPT_IN_NOT_NOW" value:&stru_2884BCFD0 table:@"Mesa"];
  v18 = [ISDialogButton buttonWithTitle:v17];

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"BIO_OPT_IN_OK" value:&stru_2884BCFD0 table:@"Mesa"];
  v21 = [ISDialogButton buttonWithTitle:v20];

  v48[0] = v18;
  v48[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  [(ISDialog *)v15 setButtons:v22];

  [(ISDialog *)v15 setDefaultButtonIndex:1];
  v23 = objc_opt_new();
  selfCopy2 = self;
  _newSourceByStartingTimeoutTimer = [(ISBiometricOptInOperation *)self _newSourceByStartingTimeoutTimer];
  v26 = [ISDialogOperation operationWithDialog:v15];
  v47 = 0;
  v27 = [(ISOperation *)self runSubOperation:v26 returningError:&v47];
  v28 = v47;
  if (v27 && ([v26 selectedButton], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v30 = v29;
    buttons = [(ISDialog *)v15 buttons];
    v32 = [buttons indexOfObjectIdenticalTo:v30];

    selfCopy2 = self;
    dispatch_source_cancel(_newSourceByStartingTimeoutTimer);
    if (v32 == 1)
    {
      v33 = 1;
      goto LABEL_24;
    }
  }

  else
  {
    dispatch_source_cancel(_newSourceByStartingTimeoutTimer);
  }

  [v23 setBiometricState:{1, v39}];
  v33 = 0;
LABEL_24:
  dispatchQueue = selfCopy2->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ISBiometricOptInOperation__performOptInDialogOperationWithError___block_invoke;
  block[3] = &unk_27A671450;
  block[4] = selfCopy2;
  v46 = v33;
  v35 = v28;
  v45 = v35;
  dispatch_async(dispatchQueue, block);
  if (error)
  {
    v36 = v35;
    *error = v35;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)_updateTouchIDSettingsForAccount:(id)account
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  accountCopy = account;
  v5 = [v3 stringWithFormat:@"%@", objc_opt_class()];
  uniqueIdentifier = [accountCopy uniqueIdentifier];

  v7 = [[ISBiometricUpdateTouchIDSettingsOperation alloc] initWithAccountIdentifier:uniqueIdentifier];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__ISBiometricOptInOperation__updateTouchIDSettingsForAccount___block_invoke;
  v20[3] = &unk_27A671478;
  v8 = v5;
  v21 = v8;
  [(ISBiometricUpdateTouchIDSettingsOperation *)v7 setResultBlock:v20];
  v9 = +[ISOperationQueue mainQueue];
  [v9 addOperation:v7];

  v10 = objc_opt_new();
  [v10 setBiometricState:2];
  [v10 saveIdentityMapForAccountIdentifier:uniqueIdentifier];
  [v10 registerAccountIdentifier:uniqueIdentifier];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v13 = shouldLog | 2;
  }

  else
  {
    v13 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  v15 = objc_opt_class();
  v22 = 138543618;
  v23 = v15;
  v24 = 2112;
  v25 = uniqueIdentifier;
  v16 = v15;
  LODWORD(v19) = 22;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v22, v19}];
    free(v17);
    SSFileLog();
LABEL_11:
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __62__ISBiometricOptInOperation__updateTouchIDSettingsForAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (!v9)
    {

      goto LABEL_24;
    }

    v11 = *(a1 + 32);
    [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v19 = 138543874;
    v20 = v11;
    v22 = v21 = 2114;
    v23 = 2114;
    v24 = v5;
    LODWORD(v18) = 32;
    v12 = _os_log_send_and_compose_impl();

    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (!v6)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v13 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v7 OSLogObject];
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  v16 = *(a1 + 32);
  [MEMORY[0x277CCABB0] numberWithInteger:0];
  v19 = 138543618;
  v20 = v16;
  v22 = v21 = 2114;
  LODWORD(v18) = 22;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
LABEL_21:
    v15 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v19, v18}];
    free(v12);
    SSFileLog();
LABEL_22:
  }

LABEL_24:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_newSourceByStartingTimeoutTimer
{
  v3 = dispatch_get_global_queue(0, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);

  v5 = dispatch_time(0, 180000000000);
  dispatch_source_set_timer(v4, v5, 0, 0);
  v6 = [MEMORY[0x277D69D50] weakReferenceWithObject:self];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __61__ISBiometricOptInOperation__newSourceByStartingTimeoutTimer__block_invoke;
  handler[3] = &unk_27A670818;
  v10 = v6;
  v7 = v6;
  dispatch_source_set_event_handler(v4, handler);
  dispatch_resume(v4);

  return v4;
}

void __61__ISBiometricOptInOperation__newSourceByStartingTimeoutTimer__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) object];
  v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x277D69B38] sharedConfig];
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

  LODWORD(v10) = 138543362;
  *(&v10 + 4) = objc_opt_class();
  v6 = *(&v10 + 4);
  LODWORD(v9) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v10, v9, v10}];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  [v1 cancel];
  v8 = *MEMORY[0x277D85DE8];
}

@end