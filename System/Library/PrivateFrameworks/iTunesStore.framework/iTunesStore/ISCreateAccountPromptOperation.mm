@interface ISCreateAccountPromptOperation
- (BOOL)_hasActiveICloudAccount;
- (ISCreateAccountPromptOperation)initWithReason:(id)reason;
- (id)_newCreateAccountDialog;
- (int64_t)_mapCorrectSelectedButtonWithDialog:(id)dialog;
- (void)run;
@end

@implementation ISCreateAccountPromptOperation

- (ISCreateAccountPromptOperation)initWithReason:(id)reason
{
  reasonCopy = reason;
  v9.receiver = self;
  v9.super_class = ISCreateAccountPromptOperation;
  v6 = [(ISOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reason, reason);
  }

  return v7;
}

- (void)run
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = ISWeakLinkedClassForString(&cfstr_Mcprofileconne.isa, 0x11);
  v4 = ISWeakLinkedStringConstantForString("MCFeatureAccountModificationAllowed", 0x11);
  sharedConnection = [(objc_class *)v3 sharedConnection];
  v6 = [sharedConnection effectiveBoolValueForSetting:v4];

  if (v6 != 2)
  {
    _newCreateAccountDialog = [(ISCreateAccountPromptOperation *)self _newCreateAccountDialog];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v47 = 138543362;
      v48 = objc_opt_class();
      v18 = v48;
      LODWORD(v43) = 12;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
        goto LABEL_25;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v47, v43}];
      free(v19);
      SSFileLog();
    }

LABEL_25:
    v20 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.TestFlight", @"com.apple.iTunesU", 0}];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v23 = [v20 containsObject:bundleIdentifier];
    v24 = off_27A66FA50;
    if (!v23)
    {
      v24 = off_27A66F978;
    }

    v25 = [(__objc2_class *)*v24 operationWithDialog:_newCreateAccountDialog];
    v26 = [MEMORY[0x277CBEA60] arrayWithObject:@"com.apple.itunesstored.lock.createaccount"];
    [v25 setSerializationLockIdentifiers:v26];

    v46 = 0;
    LODWORD(v26) = [(ISOperation *)self runSubOperation:v25 returningError:&v46];
    v12 = v46;
    v13 = 0;
    if (!v26)
    {
      goto LABEL_62;
    }

    v45 = v20;
    v27 = [(ISCreateAccountPromptOperation *)self _mapCorrectSelectedButtonWithDialog:v25];
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsConfig];
    mEMORY[0x277D69B38]3 = mEMORY[0x277D69B38]2;
    if (v27 == 1)
    {
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        shouldLog2 &= 2u;
      }

      if (!shouldLog2)
      {
        v13 = 3;
        goto LABEL_60;
      }

      v36 = objc_opt_class();
      v47 = 138543362;
      v48 = v36;
      v37 = v36;
      LODWORD(v44) = 12;
      v42 = &v47;
      v34 = _os_log_send_and_compose_impl();

      v13 = 3;
      if (!v34)
      {
        goto LABEL_61;
      }
    }

    else if (v27)
    {
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        shouldLog3 |= 2u;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog3 &= 2u;
      }

      if (!shouldLog3)
      {
        v13 = 2;
        goto LABEL_60;
      }

      v39 = objc_opt_class();
      v47 = 138543362;
      v48 = v39;
      v40 = v39;
      LODWORD(v44) = 12;
      v42 = &v47;
      v34 = _os_log_send_and_compose_impl();

      v13 = 2;
      if (!v34)
      {
LABEL_61:

        v20 = v45;
LABEL_62:

        goto LABEL_63;
      }
    }

    else
    {
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog4 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        shouldLog4 |= 2u;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        shouldLog4 &= 2u;
      }

      if (!shouldLog4)
      {
        v13 = 4;
        goto LABEL_60;
      }

      v32 = objc_opt_class();
      v47 = 138543362;
      v48 = v32;
      v33 = v32;
      LODWORD(v44) = 12;
      v42 = &v47;
      v34 = _os_log_send_and_compose_impl();

      v13 = 4;
      if (!v34)
      {
        goto LABEL_61;
      }
    }

    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v34 encoding:{4, &v47, v44}];
    free(v34);
    v42 = oSLogObject2;
    SSFileLog();
LABEL_60:

    goto LABEL_61;
  }

  _newCreateAccountDialog = [MEMORY[0x277D69B38] sharedAccountsConfig];
  if (!_newCreateAccountDialog)
  {
    _newCreateAccountDialog = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog5 = [_newCreateAccountDialog shouldLog];
  if ([_newCreateAccountDialog shouldLogToDisk])
  {
    v9 = shouldLog5 | 2;
  }

  else
  {
    v9 = shouldLog5;
  }

  oSLogObject3 = [_newCreateAccountDialog OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v47 = 138543362;
  v48 = objc_opt_class();
  v11 = v48;
  LODWORD(v43) = 12;
  v42 = &v47;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v47, v43}];
    free(v12);
    v42 = oSLogObject3;
    SSFileLog();
LABEL_12:

    v12 = 0;
  }

  v13 = 8;
LABEL_63:

  [(ISOperation *)self setError:v12];
  [(ISCreateAccountPromptOperation *)self setResponseType:v13];
  [(ISOperation *)self setSuccess:v13 != 0, v42];

  v41 = *MEMORY[0x277D85DE8];
}

- (id)_newCreateAccountDialog
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ISDialog);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"USE_EXISTING_ACCOUNT" value:&stru_2884BCFD0 table:0];
  v6 = [ISDialogButton buttonWithTitle:v5];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CREATE_NEW_ACCOUNT" value:&stru_2884BCFD0 table:0];
  v9 = [ISDialogButton buttonWithTitle:v8];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_2884BCFD0 table:0];
  v12 = [ISDialogButton buttonWithTitle:v11];

  if ([(ISCreateAccountPromptOperation *)self _hasActiveICloudAccount])
  {
    v22[0] = v12;
    v22[1] = v6;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v14 = 0;
  }

  else
  {
    v21[0] = v6;
    v21[1] = v12;
    v21[2] = v9;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    v14 = 1;
  }

  [(ISDialog *)v3 setButtons:v13];
  [(ISDialog *)v3 setDefaultButtonIndex:v14];
  [(ISDialog *)v3 setExpectsResponse:1];
  [(ISDialog *)v3 setOneButtonPerLine:1];
  reason = [(ISCreateAccountPromptOperation *)self reason];
  if ([reason length])
  {
    [(ISDialog *)v3 setMessage:reason];
    v16 = @"SIGN_IN_WITH_REASON";
  }

  else
  {
    v16 = @"SIGN_IN";
  }

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:v16 value:&stru_2884BCFD0 table:0];
  [(ISDialog *)v3 setTitle:v18];

  v19 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int64_t)_mapCorrectSelectedButtonWithDialog:(id)dialog
{
  dialogCopy = dialog;
  selectedButton = [dialogCopy selectedButton];
  if (selectedButton)
  {
    dialog = [dialogCopy dialog];
    buttons = [dialog buttons];
    v8 = [buttons indexOfObjectIdenticalTo:selectedButton];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _hasActiveICloudAccount = [(ISCreateAccountPromptOperation *)self _hasActiveICloudAccount];
  v10 = 2 * (v8 == 1);
  if (v8 == 2)
  {
    v10 = 1;
  }

  if (_hasActiveICloudAccount)
  {
    v11 = 2 * (v8 == 0);
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (BOOL)_hasActiveICloudAccount
{
  v2 = objc_alloc_init(getACAccountStoreClass());
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  aa_personID = [aa_primaryAppleAccount aa_personID];

  LOBYTE(aa_primaryAppleAccount) = [aa_personID length] != 0;
  return aa_primaryAppleAccount;
}

@end