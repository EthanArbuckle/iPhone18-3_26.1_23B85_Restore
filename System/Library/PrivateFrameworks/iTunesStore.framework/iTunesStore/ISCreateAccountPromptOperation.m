@interface ISCreateAccountPromptOperation
- (BOOL)_hasActiveICloudAccount;
- (ISCreateAccountPromptOperation)initWithReason:(id)a3;
- (id)_newCreateAccountDialog;
- (int64_t)_mapCorrectSelectedButtonWithDialog:(id)a3;
- (void)run;
@end

@implementation ISCreateAccountPromptOperation

- (ISCreateAccountPromptOperation)initWithReason:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISCreateAccountPromptOperation;
  v6 = [(ISOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reason, a3);
  }

  return v7;
}

- (void)run
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = ISWeakLinkedClassForString(&cfstr_Mcprofileconne.isa, 0x11);
  v4 = ISWeakLinkedStringConstantForString("MCFeatureAccountModificationAllowed", 0x11);
  v5 = [(objc_class *)v3 sharedConnection];
  v6 = [v5 effectiveBoolValueForSetting:v4];

  if (v6 != 2)
  {
    v7 = [(ISCreateAccountPromptOperation *)self _newCreateAccountDialog];
    v14 = [MEMORY[0x277D69B38] sharedAccountsConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x277D69B38] sharedConfig];
    }

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
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
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

      v17 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v47, v43}];
      free(v19);
      SSFileLog();
    }

LABEL_25:
    v20 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.TestFlight", @"com.apple.iTunesU", 0}];
    v21 = [MEMORY[0x277CCA8D8] mainBundle];
    v22 = [v21 bundleIdentifier];

    v23 = [v20 containsObject:v22];
    v24 = off_27A66FA50;
    if (!v23)
    {
      v24 = off_27A66F978;
    }

    v25 = [(__objc2_class *)*v24 operationWithDialog:v7];
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
    v28 = [MEMORY[0x277D69B38] sharedAccountsConfig];
    v29 = v28;
    if (v27 == 1)
    {
      if (!v28)
      {
        v29 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v35 = [v29 shouldLog];
      if ([v29 shouldLogToDisk])
      {
        v35 |= 2u;
      }

      v31 = [v29 OSLogObject];
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v35 &= 2u;
      }

      if (!v35)
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
      if (!v28)
      {
        v29 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v38 = [v29 shouldLog];
      if ([v29 shouldLogToDisk])
      {
        v38 |= 2u;
      }

      v31 = [v29 OSLogObject];
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v38 &= 2u;
      }

      if (!v38)
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
      if (!v28)
      {
        v29 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v30 = [v29 shouldLog];
      if ([v29 shouldLogToDisk])
      {
        v30 |= 2u;
      }

      v31 = [v29 OSLogObject];
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v30 &= 2u;
      }

      if (!v30)
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

    v31 = [MEMORY[0x277CCACA8] stringWithCString:v34 encoding:{4, &v47, v44}];
    free(v34);
    v42 = v31;
    SSFileLog();
LABEL_60:

    goto LABEL_61;
  }

  v7 = [MEMORY[0x277D69B38] sharedAccountsConfig];
  if (!v7)
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
    v10 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v47, v43}];
    free(v12);
    v42 = v10;
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
  v15 = [(ISCreateAccountPromptOperation *)self reason];
  if ([v15 length])
  {
    [(ISDialog *)v3 setMessage:v15];
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

- (int64_t)_mapCorrectSelectedButtonWithDialog:(id)a3
{
  v4 = a3;
  v5 = [v4 selectedButton];
  if (v5)
  {
    v6 = [v4 dialog];
    v7 = [v6 buttons];
    v8 = [v7 indexOfObjectIdenticalTo:v5];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = [(ISCreateAccountPromptOperation *)self _hasActiveICloudAccount];
  v10 = 2 * (v8 == 1);
  if (v8 == 2)
  {
    v10 = 1;
  }

  if (v9)
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
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 aa_personID];

  LOBYTE(v3) = [v4 length] != 0;
  return v3;
}

@end