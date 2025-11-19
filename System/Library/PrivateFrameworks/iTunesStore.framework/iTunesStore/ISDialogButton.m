@interface ISDialogButton
+ (id)buttonWithTitle:(id)a3;
- (BOOL)isEqual:(id)a3 superficial:(BOOL)a4;
- (ISDialogButton)init;
- (ISDialogButton)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (int)_actionTypeForString:(id)a3;
- (int64_t)_urlTypeForString:(id)a3;
- (void)_openURLWithRequest:(id)a3;
- (void)loadFromDictionary:(id)a3;
- (void)performDefaultActionForDialog:(id)a3;
- (void)setActionTypeWithString:(id)a3;
@end

@implementation ISDialogButton

- (ISDialogButton)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISDialogButton;
  return [(ISDialogButton *)&v4 init];
}

+ (id)buttonWithTitle:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTitle:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3 superficial:(BOOL)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(ISDialogButton *)self title];
    v8 = [v6 title];
    if (v7 == v8)
    {
      if (!a4)
      {
        goto LABEL_9;
      }

      LOBYTE(v10) = 1;
    }

    else
    {
      v9 = [v7 isEqual:v8];
      v10 = v9;
      if (!a4)
      {
        if (!v9)
        {
LABEL_12:
          v13 = [(ISDialogButton *)self parameter];

          v14 = [v6 parameter];

          if (v10)
          {
            if (v13 == v14)
            {
              LOBYTE(v10) = 1;
            }

            else
            {
              LOBYTE(v10) = [v13 isEqual:v14];
            }
          }

          v7 = v13;
          v8 = v14;
          goto LABEL_17;
        }

LABEL_9:
        v11 = [(ISDialogButton *)self actionType];
        if (v11 == [v6 actionType])
        {
          v12 = [(ISDialogButton *)self urlType];
          v10 = v12 == [v6 urlType];
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_12;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  LOBYTE(v10) = 0;
LABEL_18:

  return v10;
}

- (void)loadFromDictionary:(id)a3
{
  v13 = a3;
  objc_storeStrong(&self->_dictionary, a3);
  v5 = [v13 objectForKey:@"kind"];
  if (!v5)
  {
    v5 = [v13 objectForKey:@"action"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialogButton *)self setActionType:[(ISDialogButton *)self _actionTypeForString:v5]];
  }

  v6 = [v13 objectForKey:@"buyParams"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [v13 objectForKey:@"buy-params"];

    v6 = v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialogButton *)self setParameter:v6];
  }

  v8 = [v13 objectForKey:@"code"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialogButton *)self setParameter:v8];
  }

  v9 = [v13 objectForKey:@"subtarget"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialogButton *)self setSubtarget:v9];
    [(ISDialogButton *)self setUrlType:[(ISDialogButton *)self _urlTypeForString:v9]];
  }

  v10 = [v13 objectForKey:@"url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    [(ISDialogButton *)self setParameter:v11];
  }

  v12 = [v13 objectForKey:@"tidContinue"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_tidContinue = [v12 BOOLValue];
    if ([v12 BOOLValue])
    {
      [(ISDialogButton *)self setUrlType:1];
    }
  }
}

- (void)performDefaultActionForDialog:(id)a3
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ISDialogButton *)self actionType];
  if (v5 <= 5)
  {
    if ((v5 - 1) >= 2)
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
          v6 = [(ISDialogButton *)self parameter];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];

            v6 = v7;
          }

          v8 = [[ISOpenURLRequest alloc] initWithURL:v6];
          [(ISOpenURLRequest *)v8 setITunesStoreURL:0];
          [(ISDialogButton *)self _openURLWithRequest:v8];
        }

        goto LABEL_45;
      }

      v22 = MEMORY[0x277D69C10];
      v23 = [(ISDialogButton *)self parameter];
      v9 = [v22 purchaseWithBuyParameters:v23];

      if (SSIsDaemon())
      {
        v20 = [NSClassFromString(&cfstr_Purchasecontro.isa) sharedController];
        v37[0] = v9;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
        [v20 addPurchases:v21];
        goto LABEL_28;
      }

      v31 = objc_alloc(MEMORY[0x277D69C20]);
      v32 = [MEMORY[0x277CBEA60] arrayWithObject:v9];
      v20 = [v31 initWithPurchases:v32];

      v33 = v20;
LABEL_42:
      [v33 start];
      goto LABEL_43;
    }

    v12 = [(ISDialogButton *)self parameter];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];

      v12 = v13;
    }

    v14 = [v4 authenticationContext];
    v15 = [v14 mutableCopy];

    if ([(ISDialogButton *)self shouldContinueTouchIDSession])
    {
      v16 = [v4 touchIDContinueToken];
      [v15 setTouchIDContinueToken:v16];
    }

    v17 = [(ISDialogButton *)self urlType];
    if (v17 == 2)
    {
      v24 = [v12 schemeSwizzledURL];

      if (SSIsDaemon())
      {
        v19 = objc_alloc_init(ISStoreURLOperation);
        v25 = +[(ISDataProvider *)ISProtocolDataProvider];
        [(ISURLOperation *)v19 setDataProvider:v25];

        v26 = [objc_alloc(MEMORY[0x277D69CA0]) initWithURL:v24];
        [(ISURLOperation *)v19 setRequestProperties:v26];
        v27 = +[ISOperationQueue mainQueue];
        [v27 addOperation:v19];
      }

      else
      {
        v34 = objc_alloc(MEMORY[0x277D69BD0]);
        v35 = [MEMORY[0x277CCAD20] requestWithURL:v24];
        v19 = [v34 initWithURLRequest:v35];

        [(ISStoreURLOperation *)v19 setITunesStoreRequest:1];
        [(ISStoreURLOperation *)v19 setShouldProcessProtocol:1];
        v26 = [objc_alloc(MEMORY[0x277D69C98]) initWithRequestProperties:v19];
        [v26 start];
      }

      v12 = v24;
    }

    else
    {
      if (v17 == 1)
      {
        v18 = ISAccountURLWithURL(v12, v15);
        v19 = [ISOpenURLRequest openURLRequestWithURL:v18];

        if (!v19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v19 = [ISOpenURLRequest openURLRequestWithURL:v12];
        if (!v19)
        {
LABEL_40:

          goto LABEL_45;
        }
      }

      v28 = [v15 preferredITunesStoreClient];
      [(ISStoreURLOperation *)v19 setTargetIdentifier:v28];

      if ([(ISDialogButton *)self actionType]== 2)
      {
        v29 = [(ISStoreURLOperation *)v19 URL];
        v30 = [v29 urlByReplacingSchemeWithScheme:@"itms-ui"];

        [(ISStoreURLOperation *)v19 setURL:v30];
      }

      [(ISDialogButton *)self _openURLWithRequest:v19];
    }

    goto LABEL_40;
  }

  switch(v5)
  {
    case 6:
      v9 = [(ISDialog *)[ISQRCodeDialog alloc] initWithDialogDictionary:self->_dictionary];
      v11 = [ISDialogOperation operationWithDialog:v9];
      goto LABEL_25;
    case 9:
      [MEMORY[0x277D69AB8] retryAllRestoreDownloads];
      break;
    case 11:
      v9 = [(ISDialogButton *)self parameter];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];

        v9 = v10;
      }

      if (!v9)
      {
        goto LABEL_44;
      }

      if ((SSIsDaemon() & 1) == 0)
      {
        v33 = [objc_alloc(MEMORY[0x277D69A48]) initWithURL:v9];
        v20 = v33;
        goto LABEL_42;
      }

      v11 = [objc_alloc(NSClassFromString(&cfstr_Askpermissiona.isa)) initWithURL:v9];
LABEL_25:
      v20 = v11;
      v21 = +[ISOperationQueue mainQueue];
      [v21 addOperation:v20];
LABEL_28:

LABEL_43:
LABEL_44:

      break;
  }

LABEL_45:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)setActionTypeWithString:(id)a3
{
  v4 = [(ISDialogButton *)self _actionTypeForString:a3];

  [(ISDialogButton *)self setActionType:v4];
}

- (int)_actionTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Buy"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"OpenURL"])
  {
    v4 = 4;
  }

  else if ([v3 caseInsensitiveCompare:@"goback"])
  {
    if ([v3 isEqualToString:@"QRCode"])
    {
      v4 = 6;
    }

    else if ([v3 isEqualToString:@"redeem-code"])
    {
      v4 = 7;
    }

    else if ([v3 isEqualToString:@"RetryRestoreAll"])
    {
      v4 = 9;
    }

    else if ([v3 isEqualToString:@"Review"])
    {
      v4 = 8;
    }

    else if ([v3 isEqualToString:@"Goto"])
    {
      v4 = 1;
    }

    else if ([v3 isEqualToString:@"GotoFinance"])
    {
      v4 = 2;
    }

    else if ([v3 isEqualToString:@"ServiceAction"])
    {
      v4 = 10;
    }

    else if ([v3 isEqualToString:@"FamilyPermissionAction"])
    {
      v4 = 11;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (void)_openURLWithRequest:(id)a3
{
  v3 = a3;
  v5 = [[ISOpenURLOperation alloc] initWithOpenURLRequest:v3];

  v4 = +[ISOperationQueue mainQueue];
  [v4 addOperation:v5];
}

- (int64_t)_urlTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:*MEMORY[0x277D69E20]])
  {
    v4 = 1;
  }

  else if ([v3 hasPrefix:*MEMORY[0x277D69E28]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ISDialogButton)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || MEMORY[0x277C8C570](v4) != MEMORY[0x277D86468])
  {
    v6 = 0;
LABEL_4:

    goto LABEL_5;
  }

  v6 = [(ISDialogButton *)self init];
  if (v6)
  {
    v6->_actionType = xpc_dictionary_get_int64(v5, "0");
    objc_opt_class();
    v8 = SSXPCDictionaryCopyCFObjectWithClass();
    dictionary = v6->_dictionary;
    v6->_dictionary = v8;

    objc_opt_class();
    v10 = SSXPCDictionaryCopyCFObjectWithClass();
    subtarget = v6->_subtarget;
    v6->_subtarget = v10;

    v6->_tidContinue = xpc_dictionary_get_BOOL(v5, "6");
    objc_opt_class();
    v12 = SSXPCDictionaryCopyCFObjectWithClass();
    title = v6->_title;
    v6->_title = v12;

    v6->_urlType = xpc_dictionary_get_int64(v5, "5");
    actionType = v6->_actionType;
    if (actionType <= 0xB)
    {
      v15 = 1 << actionType;
      if ((v15 & 0xC12) != 0)
      {
        objc_opt_class();
        self = SSXPCDictionaryCopyCFObjectWithClass();
        if (self)
        {
          v16 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:self];
          parameter = v6->_parameter;
          v6->_parameter = v16;
        }
      }

      else
      {
        if ((v15 & 0x88) == 0)
        {
          goto LABEL_5;
        }

        objc_opt_class();
        v18 = SSXPCDictionaryCopyCFObjectWithClass();
        self = v6->_parameter;
        v6->_parameter = v18;
      }

      goto LABEL_4;
    }
  }

LABEL_5:

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", self->_actionType);
  dictionary = self->_dictionary;
  SSXPCDictionarySetCFObject();
  subtarget = self->_subtarget;
  SSXPCDictionarySetCFObject();
  xpc_dictionary_set_BOOL(v3, "6", self->_tidContinue);
  title = self->_title;
  SSXPCDictionarySetCFObject();
  xpc_dictionary_set_int64(v3, "5", self->_urlType);
  parameter = self->_parameter;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = self->_parameter;
  if (isKindOfClass)
  {
    v10 = [self->_parameter absoluteString];
    SSXPCDictionarySetCFObject();
  }

  else
  {
    SSXPCDictionarySetCFObject();
  }

  return v3;
}

@end