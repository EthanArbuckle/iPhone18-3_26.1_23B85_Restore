@interface ISDialogButton
+ (id)buttonWithTitle:(id)title;
- (BOOL)isEqual:(id)equal superficial:(BOOL)superficial;
- (ISDialogButton)init;
- (ISDialogButton)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (int)_actionTypeForString:(id)string;
- (int64_t)_urlTypeForString:(id)string;
- (void)_openURLWithRequest:(id)request;
- (void)loadFromDictionary:(id)dictionary;
- (void)performDefaultActionForDialog:(id)dialog;
- (void)setActionTypeWithString:(id)string;
@end

@implementation ISDialogButton

- (ISDialogButton)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISDialogButton;
  return [(ISDialogButton *)&v4 init];
}

+ (id)buttonWithTitle:(id)title
{
  titleCopy = title;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTitle:titleCopy];

  return v4;
}

- (BOOL)isEqual:(id)equal superficial:(BOOL)superficial
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    title = [(ISDialogButton *)self title];
    title2 = [equalCopy title];
    if (title == title2)
    {
      if (!superficial)
      {
        goto LABEL_9;
      }

      LOBYTE(v10) = 1;
    }

    else
    {
      v9 = [title isEqual:title2];
      v10 = v9;
      if (!superficial)
      {
        if (!v9)
        {
LABEL_12:
          parameter = [(ISDialogButton *)self parameter];

          parameter2 = [equalCopy parameter];

          if (v10)
          {
            if (parameter == parameter2)
            {
              LOBYTE(v10) = 1;
            }

            else
            {
              LOBYTE(v10) = [parameter isEqual:parameter2];
            }
          }

          title = parameter;
          title2 = parameter2;
          goto LABEL_17;
        }

LABEL_9:
        actionType = [(ISDialogButton *)self actionType];
        if (actionType == [equalCopy actionType])
        {
          urlType = [(ISDialogButton *)self urlType];
          v10 = urlType == [equalCopy urlType];
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

- (void)loadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_storeStrong(&self->_dictionary, dictionary);
  v5 = [dictionaryCopy objectForKey:@"kind"];
  if (!v5)
  {
    v5 = [dictionaryCopy objectForKey:@"action"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialogButton *)self setActionType:[(ISDialogButton *)self _actionTypeForString:v5]];
  }

  v6 = [dictionaryCopy objectForKey:@"buyParams"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [dictionaryCopy objectForKey:@"buy-params"];

    v6 = v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialogButton *)self setParameter:v6];
  }

  v8 = [dictionaryCopy objectForKey:@"code"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialogButton *)self setParameter:v8];
  }

  v9 = [dictionaryCopy objectForKey:@"subtarget"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialogButton *)self setSubtarget:v9];
    [(ISDialogButton *)self setUrlType:[(ISDialogButton *)self _urlTypeForString:v9]];
  }

  v10 = [dictionaryCopy objectForKey:@"url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    [(ISDialogButton *)self setParameter:v11];
  }

  v12 = [dictionaryCopy objectForKey:@"tidContinue"];

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

- (void)performDefaultActionForDialog:(id)dialog
{
  v37[1] = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  actionType = [(ISDialogButton *)self actionType];
  if (actionType <= 5)
  {
    if ((actionType - 1) >= 2)
    {
      if (actionType != 3)
      {
        if (actionType == 4)
        {
          parameter = [(ISDialogButton *)self parameter];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = [MEMORY[0x277CBEBC0] URLWithString:parameter];

            parameter = v7;
          }

          v8 = [[ISOpenURLRequest alloc] initWithURL:parameter];
          [(ISOpenURLRequest *)v8 setITunesStoreURL:0];
          [(ISDialogButton *)self _openURLWithRequest:v8];
        }

        goto LABEL_45;
      }

      v22 = MEMORY[0x277D69C10];
      parameter2 = [(ISDialogButton *)self parameter];
      parameter4 = [v22 purchaseWithBuyParameters:parameter2];

      if (SSIsDaemon())
      {
        nSClassFromString(&cfstr_Purchasecontro.isa) = [NSClassFromString(&cfstr_Purchasecontro.isa) sharedController];
        v37[0] = parameter4;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
        [nSClassFromString(&cfstr_Purchasecontro.isa) addPurchases:v21];
        goto LABEL_28;
      }

      v31 = objc_alloc(MEMORY[0x277D69C20]);
      v32 = [MEMORY[0x277CBEA60] arrayWithObject:parameter4];
      nSClassFromString(&cfstr_Purchasecontro.isa) = [v31 initWithPurchases:v32];

      v33 = nSClassFromString(&cfstr_Purchasecontro.isa);
LABEL_42:
      [v33 start];
      goto LABEL_43;
    }

    parameter3 = [(ISDialogButton *)self parameter];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:parameter3];

      parameter3 = v13;
    }

    authenticationContext = [dialogCopy authenticationContext];
    v15 = [authenticationContext mutableCopy];

    if ([(ISDialogButton *)self shouldContinueTouchIDSession])
    {
      touchIDContinueToken = [dialogCopy touchIDContinueToken];
      [v15 setTouchIDContinueToken:touchIDContinueToken];
    }

    urlType = [(ISDialogButton *)self urlType];
    if (urlType == 2)
    {
      schemeSwizzledURL = [parameter3 schemeSwizzledURL];

      if (SSIsDaemon())
      {
        v19 = objc_alloc_init(ISStoreURLOperation);
        v25 = +[(ISDataProvider *)ISProtocolDataProvider];
        [(ISURLOperation *)v19 setDataProvider:v25];

        v26 = [objc_alloc(MEMORY[0x277D69CA0]) initWithURL:schemeSwizzledURL];
        [(ISURLOperation *)v19 setRequestProperties:v26];
        v27 = +[ISOperationQueue mainQueue];
        [v27 addOperation:v19];
      }

      else
      {
        v34 = objc_alloc(MEMORY[0x277D69BD0]);
        v35 = [MEMORY[0x277CCAD20] requestWithURL:schemeSwizzledURL];
        v19 = [v34 initWithURLRequest:v35];

        [(ISStoreURLOperation *)v19 setITunesStoreRequest:1];
        [(ISStoreURLOperation *)v19 setShouldProcessProtocol:1];
        v26 = [objc_alloc(MEMORY[0x277D69C98]) initWithRequestProperties:v19];
        [v26 start];
      }

      parameter3 = schemeSwizzledURL;
    }

    else
    {
      if (urlType == 1)
      {
        v18 = ISAccountURLWithURL(parameter3, v15);
        v19 = [ISOpenURLRequest openURLRequestWithURL:v18];

        if (!v19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v19 = [ISOpenURLRequest openURLRequestWithURL:parameter3];
        if (!v19)
        {
LABEL_40:

          goto LABEL_45;
        }
      }

      preferredITunesStoreClient = [v15 preferredITunesStoreClient];
      [(ISStoreURLOperation *)v19 setTargetIdentifier:preferredITunesStoreClient];

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

  switch(actionType)
  {
    case 6:
      parameter4 = [(ISDialog *)[ISQRCodeDialog alloc] initWithDialogDictionary:self->_dictionary];
      v11 = [ISDialogOperation operationWithDialog:parameter4];
      goto LABEL_25;
    case 9:
      [MEMORY[0x277D69AB8] retryAllRestoreDownloads];
      break;
    case 11:
      parameter4 = [(ISDialogButton *)self parameter];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x277CBEBC0] URLWithString:parameter4];

        parameter4 = v10;
      }

      if (!parameter4)
      {
        goto LABEL_44;
      }

      if ((SSIsDaemon() & 1) == 0)
      {
        v33 = [objc_alloc(MEMORY[0x277D69A48]) initWithURL:parameter4];
        nSClassFromString(&cfstr_Purchasecontro.isa) = v33;
        goto LABEL_42;
      }

      v11 = [objc_alloc(NSClassFromString(&cfstr_Askpermissiona.isa)) initWithURL:parameter4];
LABEL_25:
      nSClassFromString(&cfstr_Purchasecontro.isa) = v11;
      v21 = +[ISOperationQueue mainQueue];
      [v21 addOperation:nSClassFromString(&cfstr_Purchasecontro.isa)];
LABEL_28:

LABEL_43:
LABEL_44:

      break;
  }

LABEL_45:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)setActionTypeWithString:(id)string
{
  v4 = [(ISDialogButton *)self _actionTypeForString:string];

  [(ISDialogButton *)self setActionType:v4];
}

- (int)_actionTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Buy"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"OpenURL"])
  {
    v4 = 4;
  }

  else if ([stringCopy caseInsensitiveCompare:@"goback"])
  {
    if ([stringCopy isEqualToString:@"QRCode"])
    {
      v4 = 6;
    }

    else if ([stringCopy isEqualToString:@"redeem-code"])
    {
      v4 = 7;
    }

    else if ([stringCopy isEqualToString:@"RetryRestoreAll"])
    {
      v4 = 9;
    }

    else if ([stringCopy isEqualToString:@"Review"])
    {
      v4 = 8;
    }

    else if ([stringCopy isEqualToString:@"Goto"])
    {
      v4 = 1;
    }

    else if ([stringCopy isEqualToString:@"GotoFinance"])
    {
      v4 = 2;
    }

    else if ([stringCopy isEqualToString:@"ServiceAction"])
    {
      v4 = 10;
    }

    else if ([stringCopy isEqualToString:@"FamilyPermissionAction"])
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

- (void)_openURLWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[ISOpenURLOperation alloc] initWithOpenURLRequest:requestCopy];

  v4 = +[ISOperationQueue mainQueue];
  [v4 addOperation:v5];
}

- (int64_t)_urlTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasPrefix:*MEMORY[0x277D69E20]])
  {
    v4 = 1;
  }

  else if ([stringCopy hasPrefix:*MEMORY[0x277D69E28]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ISDialogButton)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (!encodingCopy || MEMORY[0x277C8C570](encodingCopy) != MEMORY[0x277D86468])
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
    absoluteString = [self->_parameter absoluteString];
    SSXPCDictionarySetCFObject();
  }

  else
  {
    SSXPCDictionarySetCFObject();
  }

  return v3;
}

@end