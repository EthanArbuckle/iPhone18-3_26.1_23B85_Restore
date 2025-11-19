@interface ISTouchIDDialog
- (ISTouchIDDialog)initWithDialogDictionary:(id)a3;
- (NSString)fallbackExplanation;
- (NSString)fallbackMessage;
- (id)buttonForButtonType:(int64_t)a3;
- (void)_init;
- (void)_parseDialogDictionary:(id)a3;
- (void)setFallbackExplanation:(id)a3;
- (void)setFallbackMessage:(id)a3;
@end

@implementation ISTouchIDDialog

- (ISTouchIDDialog)initWithDialogDictionary:(id)a3
{
  v4 = a3;
  __ISRecordSPIClassUsage(self);
  v8.receiver = self;
  v8.super_class = ISTouchIDDialog;
  v5 = [(ISDialog *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ISTouchIDDialog *)v5 _init];
    [(ISTouchIDDialog *)v6 _parseDialogDictionary:v4];
  }

  return v6;
}

- (void)_init
{
  self->_isDualAction = 0;
  v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  lock = self->_lock;
  self->_lock = v3;

  MEMORY[0x2821F96F8]();
}

- (NSString)fallbackExplanation
{
  [(NSLock *)self->_lock lock];
  v3 = [(SSPaymentSheet *)self->_paymentSheet explanation];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (NSString)fallbackMessage
{
  [(NSLock *)self->_lock lock];
  v3 = [(SSPaymentSheet *)self->_paymentSheet message];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setFallbackExplanation:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSLock *)lock lock];
  [(SSPaymentSheet *)self->_paymentSheet setExplanation:v5];

  v6 = self->_lock;

  [(NSLock *)v6 unlock];
}

- (void)setFallbackMessage:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSLock *)lock lock];
  [(SSPaymentSheet *)self->_paymentSheet setMessage:v5];

  v6 = self->_lock;

  [(NSLock *)v6 unlock];
}

- (id)buttonForButtonType:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(ISDialog *)self buttons];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 buttonType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_parseDialogDictionary:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D69C08];
  v5 = a3;
  v6 = [[v4 alloc] initWithDictionary:v5];

  v7 = [v6 dictionaryByEvaluatingConditions];
  v8 = [v7 objectForKey:@"explanation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISTouchIDDialog *)self setBody:v8];
  }

  v9 = [v7 objectForKey:@"isFree"];

  if (objc_opt_respondsToSelector())
  {
    -[ISTouchIDDialog setIsFree:](self, "setIsFree:", [v9 BOOLValue]);
  }

  v10 = [v7 objectForKey:@"message"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialog *)self setTitle:v10];
  }

  v11 = [v7 objectForKey:@"username"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISTouchIDDialog *)self setUsername:v11];
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [v7 objectForKey:@"cancelButtonString"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(ISTouchIDDialogButton);
    [(ISTouchIDDialogButton *)v14 setButtonType:0];
    [(ISDialogButton *)v14 setTitle:v13];
    v15 = [v7 objectForKey:@"cancelButtonAction"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialogButton *)v14 loadFromDictionary:v15];
    }

    [v12 addObject:v14];
  }

  else
  {
    v15 = v13;
  }

  v16 = [v7 objectForKey:@"passwordButtonString"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = objc_alloc_init(ISTouchIDDialogButton);
    [(ISTouchIDDialogButton *)v17 setButtonType:1];
    [(ISDialogButton *)v17 setTitle:v16];
    v18 = [v7 objectForKey:@"passwordButtonAction"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialogButton *)v17 loadFromDictionary:v18];
    }

    [v12 addObject:v17];
  }

  else
  {
    v18 = v16;
  }

  v19 = [v7 objectForKey:@"touchIDButtonAction"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objc_alloc_init(ISTouchIDDialogButton);
    [(ISTouchIDDialogButton *)v20 setButtonType:2];
    [(ISDialogButton *)v20 loadFromDictionary:v19];
    [v12 addObject:v20];
  }

  [(ISDialog *)self setButtons:v12];
  if (SSDebugShouldUseFileBasedPaymentSheetProxy())
  {
    v21 = +[ISBiometricStore diskBasedPaymentSheet];
    paymentSheet = self->_paymentSheet;
    self->_paymentSheet = v21;
  }

  else
  {
    v23 = [v7 objectForKey:@"paymentSheetInfo"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_26;
    }

    v19 = v23;
    paymentSheet = [(ISDialog *)self buyParams];
    v24 = [objc_alloc(MEMORY[0x277D69BE8]) initWithServerResponse:v19 buyParams:paymentSheet];

    v25 = self->_paymentSheet;
    self->_paymentSheet = v24;
  }

  v23 = v19;
LABEL_26:
  v26 = [v7 objectForKey:@"applePayPaymentSession"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v26 options:0];
    v48 = 0;
    v28 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v27 options:1 error:&v48];
    v47 = v48;
    if (v47)
    {
      v46 = v27;
      v29 = v6;
      v30 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v30)
      {
        v30 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v31 = [v30 shouldLog];
      if ([v30 shouldLogToDisk])
      {
        v32 = v31 | 2;
      }

      else
      {
        v32 = v31;
      }

      v33 = [v30 OSLogObject];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = v32;
      }

      else
      {
        v34 = v32 & 2;
      }

      if (!v34)
      {
        goto LABEL_61;
      }

      v35 = objc_opt_class();
      v49 = 138543618;
      v50 = v35;
      v51 = 2114;
      v52 = v47;
      v36 = v35;
      LODWORD(v45) = 22;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = self->_paymentSheet;
        if (v37)
        {
          [(SSPaymentSheet *)v37 setMerchantSession:v28];
          self->_isDualAction = 1;
LABEL_63:

          goto LABEL_64;
        }

        v46 = v27;
        v29 = v6;
        v30 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v30)
        {
          v30 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v40 = [v30 shouldLog];
        if ([v30 shouldLogToDisk])
        {
          v40 |= 2u;
        }

        v33 = [v30 OSLogObject];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v41 = v40;
        }

        else
        {
          v41 = v40 & 2;
        }

        if (!v41)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v46 = v27;
        v29 = v6;
        v30 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v30)
        {
          v30 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v38 = [v30 shouldLog];
        if ([v30 shouldLogToDisk])
        {
          v38 |= 2u;
        }

        v33 = [v30 OSLogObject];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v39 = v38;
        }

        else
        {
          v39 = v38 & 2;
        }

        if (!v39)
        {
          goto LABEL_61;
        }
      }

      v42 = objc_opt_class();
      v49 = 138543362;
      v50 = v42;
      v36 = v42;
      LODWORD(v45) = 12;
    }

    v43 = _os_log_send_and_compose_impl();

    if (!v43)
    {
LABEL_62:

      v6 = v29;
      v27 = v46;
      goto LABEL_63;
    }

    v33 = [MEMORY[0x277CCACA8] stringWithCString:v43 encoding:{4, &v49, v45}];
    free(v43);
    SSFileLog();
LABEL_61:

    goto LABEL_62;
  }

LABEL_64:

  v44 = *MEMORY[0x277D85DE8];
}

@end